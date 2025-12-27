import pdfplumber

def read_pdf(pdf_path):
    """Read PDF and extract all text with structure information"""
    with pdfplumber.open(pdf_path) as pdf:
        print(f"Total pages: {len(pdf.pages)}")
        print("=" * 80)
        
        for page_num, page in enumerate(pdf.pages, 1):
            print(f"\n--- PAGE {page_num} ---")
            print(f"Page dimensions: {page.width} x {page.height}")
            
            # Extract text
            text = page.extract_text()
            print("\nExtracted Text:")
            print(text)
            
            # Extract words with positions for layout analysis
            words = page.extract_words()
            if words:
                print(f"\nTotal words on page: {len(words)}")
                print("\nFirst few words with positions:")
                for i, word in enumerate(words[:10]):
                    print(f"  {word['text']} - x0:{word['x0']:.1f}, top:{word['top']:.1f}, "
                          f"size:{word.get('size', 'N/A')}")
            
            print("=" * 80)

if __name__ == "__main__":
    pdf_file = "django_assignment.pdf"
    read_pdf(pdf_file)
