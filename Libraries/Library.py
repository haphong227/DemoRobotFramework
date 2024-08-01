import pytesseract
from PIL import Image

pytesseract.pytesseract.tesseract_cmd = r'E:\App\tesseract-ocr-w64-setup-5.4.0.20240606.exe'
def extract_text_from_image(image_path):
    # Mở hình ảnh
    image = Image.open(image_path)
    # Sử dụng Tesseract để nhận diện văn bản
    text = pytesseract.image_to_string(image)
    return text