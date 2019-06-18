TEXC=pdflatex
CFLAGS=-interaction=nonstopmode -halt-on-error -file-line-error
TARGET=programme

all: $(TARGET).pdf

$(TARGET).aux: $(TARGET).tex
	$(TEXC) $(CFLAGS) $(TARGET)

$(TARGET).pdf: $(TARGET).aux
	$(TEXC) $(CFLAGS) $(TARGET)
	$(TEXC) $(CFLAGS) $(TARGET)

clean:
	rm -f *.log *.aux
	rm -f $(TARGET).pdf
