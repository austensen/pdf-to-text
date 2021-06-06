FROM python:3.9

ARG XPDF_VERSION=4.03

RUN curl https://dl.xpdfreader.com/xpdf-tools-linux-${XPDF_VERSION}.tar.gz > /xpdf.tar.gz \
  && tar -zxvf /xpdf.tar.gz \
  && cp xpdf-tools-linux-${XPDF_VERSION}/bin64/pdftotext /bin \
  && rm -rf xpdf-tools-linux-${XPDF_VERSION} \
  && rm /xpdf.tar.gz

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . /app

WORKDIR /app

CMD ["python", "pdf-to-text.py"]
