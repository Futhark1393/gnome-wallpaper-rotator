#!/bin/bash

# Scriptin bulunduğu dizini al
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Sonsuz döngü
while true; do
    # 1. Bekleme süresi (Varsayılan: 600 saniye / 10 dakika)
    sleep 600
    
    # 2. Diğer scripti çalıştır
    # Script aynı klasörde olduğu sürece çalışır, tam yola gerek kalmaz.
    if [ -f "$SCRIPT_DIR/change_wallpaper.sh" ]; then
        "$SCRIPT_DIR/change_wallpaper.sh"
    else
        echo "Hata: change_wallpaper.sh dosyası $SCRIPT_DIR konumunda bulunamadı."
        sleep 60 # Hata durumunda logu şişirmemek için kısa bekleme
    fi
done
