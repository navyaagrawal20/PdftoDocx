# PDF to Word Converter - Internship Assignment

## 📝 Project Overview

This project is a web-based application that converts PDF documents to Microsoft Word format while preserving the original layout, formatting, and structure. Developed as part of an internship assignment for **The Medius**.


**Task:** Create an MS Word document from scratch using Python, replicating the content and layout of a given PDF file.

**Scope:**
- Read and analyze PDF file structure
- Extract content with layout information
- Create MS Word document using python-docx
- Maintain precise spacing, alignment, and formatting
- Deploy as a web application

## 🛠️ Technology Stack

- **Python 3.11.6** - Core programming language
- **Flask** - Web framework for the application
- **python-docx** - Library for creating Word documents
- **pdfplumber** - PDF content extraction with layout details
- **PyPDF2** - Additional PDF processing capabilities
- **Gunicorn** - Production-grade WSGI server

## 📁 Project Structure

```
intership_py/
├── app.py                      # Main Flask application
├── pdf_to_docx_enhanced.py     # Enhanced conversion script
├── read_pdf.py                 # PDF analysis utility
├── templates/
│   ├── index.html              # Main upload page
│   └── about.html              # About page
├── uploads/                    # Uploaded PDF files
├── outputs/                    # Generated Word documents
├── requirements.txt            # Python dependencies
├── Procfile                    # Heroku deployment config
├── runtime.txt                 # Python version specification
└── README.md                   # Project documentation
```

## 🚀 Installation & Setup

### Prerequisites
- Python 3.11 or higher
- pip (Python package manager)

### Local Development

1. **Clone or Download the Repository**
```bash
cd intership_py
```

2. **Create Virtual Environment**
```bash
python -m venv .venv
```

3. **Activate Virtual Environment**

Windows:
```bash
.venv\Scripts\activate
```

Linux/Mac:
```bash
source .venv/bin/activate
```

4. **Install Dependencies**
```bash
pip install -r requirements.txt
```

5. **Run the Application**
```bash
python app.py
```

6. **Access the Application**
Open your browser and navigate to: `http://localhost:5000`

## 📊 Usage

### Web Application
1. Open the application in your browser
2. Click "Choose PDF File" to select a PDF
3. Click "Convert to Word Document"
4. The converted Word file will download automatically

### Command Line Script
```bash
python pdf_to_docx_enhanced.py
```
This will convert `django_assignment.pdf` to `replicated_document.docx`


## 🎨 Features

✅ **Precise Layout Replication**
- Maintains original document structure
- Preserves heading hierarchy
- Retains spacing and alignment

✅ **Format Preservation**
- Bold and underlined text
- Font sizes and styles
- Paragraph spacing

✅ **User-Friendly Interface**
- Clean, modern design
- Drag-and-drop file upload
- Instant conversion and download

✅ **Responsive Design**
- Works on desktop and mobile
- Optimized user experience

## 📝 Development Approach

### 1. PDF Analysis
Used `pdfplumber` to extract:
- Text content with positioning
- Font sizes and styles
- Layout structure

### 2. Document Creation
Implemented `python-docx` to:
- Create formatted paragraphs
- Apply font sizes and styles
- Set alignment and spacing
- Maintain document structure

### 3. Web Interface
Built Flask application with:
- File upload handling
- Conversion processing
- Secure file management
- Download functionality

### 4. Testing & Validation
- Compared output with source PDF
- Verified formatting accuracy
- Tested on multiple devices
- Validated deployment readiness

## 🔧 Code Quality

- **Modular Structure**: Separated concerns into different modules
- **Error Handling**: Comprehensive exception management
- **Documentation**: Clear comments and docstrings
- **Best Practices**: Follows PEP 8 style guidelines

## 📄 Sample Output

The application successfully converts the assignment PDF containing:
- Form headers and titles
- Legal document structure
- Template variables (Jinja2 syntax)
- Contact information fields
- Multi-section layout

## 🐛 Troubleshooting

**Issue**: PDF not uploading
- **Solution**: Ensure file is a valid PDF and under 16MB

**Issue**: Conversion fails
- **Solution**: Check if PDF contains extractable text

**Issue**: Layout differences
- **Solution**: Some PDFs with complex layouts may require manual adjustment



This project is created for educational and internship evaluation purposes.

---

**Note**: This application demonstrates proficiency in Python programming, document processing, web development, and deployment practices.
