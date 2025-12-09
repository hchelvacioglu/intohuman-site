#!/bin/bash

# GIF Oluşturma Scripti
# Kullanım: ./scripts/create-gif.sh "maraton" 15
# Bu, maraton_slide-01.png'den maraton_slide-15.png'ye kadar bir GIF oluşturur

if [ $# -lt 2 ]; then
    echo "Kullanım: $0 <prefix> <max_slide_number> [delay] [quality]"
    echo "Örnek: $0 maraton 16 50 70"
    echo ""
    echo "Parametreler:"
    echo "  prefix: Resim dosyasının başlangıç kısmı (örn: maraton, beacontact)"
    echo "  max_slide_number: Son slide numarası"
    echo "  delay: Frame arası gecikme (ms, varsayılan: 50)"
    echo "  quality: GIF kalitesi 1-100 (varsayılan: 75)"
    exit 1
fi

PREFIX="$1"
MAX_SLIDES="$2"
DELAY="${3:-50}"
QUALITY="${4:-75}"
OUTPUT_DIR="./public/images"
OUTPUT_FILE="$OUTPUT_DIR/${PREFIX}.gif"

# Çıkış dizinini kontrol et
if [ ! -d "$OUTPUT_DIR" ]; then
    echo "Hata: $OUTPUT_DIR dizini bulunamadı"
    exit 1
fi

echo "GIF oluşturuluyor: $PREFIX"
echo "Slide sayısı: $MAX_SLIDES"
echo "Frame gecikmesi: ${DELAY}ms"
echo "Kalite: $QUALITY%"
echo ""

# Resimlerin var olup olmadığını kontrol et
FIRST_FILE="$OUTPUT_DIR/${PREFIX}_slide-01.png"
if [ ! -f "$FIRST_FILE" ]; then
    echo "Hata: $FIRST_FILE bulunamadı"
    echo "Mevcut dosyalar:"
    ls "$OUTPUT_DIR" | grep "$PREFIX" | head -5
    exit 1
fi

# GIF oluştur
echo "İşleniyor..."
convert -delay "${DELAY}" \
        -loop 0 \
        -quality "${QUALITY}" \
        -colors 256 \
        $(for i in $(seq -f "%02g" 1 $MAX_SLIDES); do echo "$OUTPUT_DIR/${PREFIX}_slide-${i}.png"; done) \
        "$OUTPUT_FILE"

if [ $? -eq 0 ]; then
    SIZE=$(du -h "$OUTPUT_FILE" | cut -f1)
    echo ""
    echo "✅ Başarılı! GIF oluşturuldu:"
    echo "   Dosya: $OUTPUT_FILE"
    echo "   Boyut: $SIZE"
else
    echo "❌ Hata: GIF oluşturulurken hata oluştu"
    exit 1
fi
