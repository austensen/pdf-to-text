import subprocess
from pathlib import Path

HERE = Path(__file__).parent
PDF_DIR = HERE / 'pdf'
TXT_DIR = HERE / 'txt'

def pdfs_to_txts(pdf_dir, txt_dir):
    for pdf_file in pdf_dir.glob('*.pdf'):
        txt_file = txt_dir.joinpath(pdf_file.stem + '.txt')
        subprocess.call(['pdftotext', '-table', '-enc', 'UTF-8', pdf_file, txt_file])


def main():
    pdfs_to_txts(PDF_DIR, TXT_DIR)


if __name__ == '__main__':
    main()
