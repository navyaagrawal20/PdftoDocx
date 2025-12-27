import os
import sys
from pathlib import Path
from tempfile import NamedTemporaryFile
from django.http import FileResponse, HttpResponseBadRequest
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from django.conf import settings

# Ensure root project dir is on sys.path so we can import pdf_to_docx
ROOT_DIR = Path(__file__).resolve().parents[2]
if str(ROOT_DIR) not in sys.path:
	sys.path.insert(0, str(ROOT_DIR))

from pdf_to_docx import create_word_with_pdf2docx, create_word_document_with_layout


@csrf_exempt  # for quick demo; enable CSRF in production
def upload(request):
	if request.method == 'GET':
		return render(request, 'converter/upload.html')

	if 'file' not in request.FILES:
		return HttpResponseBadRequest('No file uploaded')

	pdf_file = request.FILES['file']
	if not pdf_file.name.lower().endswith('.pdf'):
		return HttpResponseBadRequest('Only PDF files are supported')

	# Write uploaded PDF to temp file
	with NamedTemporaryFile(delete=False, suffix='.pdf') as temp_in:
		for chunk in pdf_file.chunks():
			temp_in.write(chunk)
		temp_in_path = temp_in.name

	# Prepare output path under outputs/
	output_dir = os.path.join(settings.BASE_DIR, 'outputs')
	os.makedirs(output_dir, exist_ok=True)
	with NamedTemporaryFile(delete=False, suffix='.docx', dir=output_dir) as temp_out:
		output_path = temp_out.name

	try:
		try:
			create_word_with_pdf2docx(temp_in_path, output_path)
		except Exception:
			create_word_document_with_layout(temp_in_path, output_path)
		filename = os.path.basename(output_path)
		return FileResponse(open(output_path, 'rb'), as_attachment=True, filename=filename)
	finally:
		if os.path.exists(temp_in_path):
			os.remove(temp_in_path)
		# keep output so download works
