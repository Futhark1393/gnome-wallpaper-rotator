#!/bin/bash

# --- KONFİGÜRASYON ---
# Arkaplan resimlerinin bulunduğu klasör.
# Bu scripti kullanan kişi burayı kendi yoluna göre değiştirmelidir.
DIR="/usr/share/backgrounds/Wallpapers/"

# --- KONTROLLER ---
if [ ! -d "$DIR" ]; then
    echo "Hata: Belirtilen klasör mevcut değil: $DIR"
    echo "Lütfen script içindeki 'DIR' değişkenini düzenleyin."
    exit 1
fi

# --- MANTIK ---

# 1. Dosyaları listele (Boşluklu isimleri destekler)
shopt -s nullglob
FILES=("$DIR"/*.jpg "$DIR"/*.png "$DIR"/*.jpeg "$DIR"/*.JPG "$DIR"/*.PNG)
shopt -u nullglob

# 2. Klasör boşsa çık
COUNT=${#FILES[@]}
if [ "$COUNT" -eq 0 ]; then
    echo "Uyarı: $DIR klasöründe hiç resim bulunamadı."
    exit 1
fi

# 3. Mevcut arkaplanı GNOME ayarlarından çek
CURRENT_URI=$(gsettings get org.gnome.desktop.background picture-uri)
# 'file://' protokolünü ve tırnakları temizle
CURRENT_PATH=$(echo "$CURRENT_URI" | sed "s/'//g" | sed "s|^file://||")

# 4. Mevcut resmin index'ini bul
CURRENT_INDEX=-1
for i in "${!FILES[@]}"; do
   if [[ "${FILES[$i]}" == "$CURRENT_PATH" ]]; then
       CURRENT_INDEX=$i
       break
   fi
done

# 5. Sıradaki resmi belirle (Döngüsel mantık)
if [ "$CURRENT_INDEX" -eq -1 ]; then
    NEXT_INDEX=0
else
    NEXT_INDEX=$(( (CURRENT_INDEX + 1) % COUNT ))
fi

NEXT_FILE="file://${FILES[$NEXT_INDEX]}"

# 6. Yeni arkaplanı uygula (Hem aydınlık hem karanlık mod için)
gsettings set org.gnome.desktop.background picture-uri "$NEXT_FILE"
gsettings set org.gnome.desktop.background picture-uri-dark "$NEXT_FILE"

echo "Yeni arkaplan uygulandı: $NEXT_FILE"
