# GNOME Wallpaper Rotator 🖥️

Bu proje, GNOME masaüstü ortamı için geliştirilmiş, belirlenen klasördeki duvar kağıtlarını otomatik olarak değiştiren hafif bir Bash script çözümüdür. **Fedora 43** ve **GNOME 49.3** üzerinde test edilmiştir.

---

## 🇹🇷 Türkçe Açıklama

### Özellikler
* **Otomatik Döngü:** Arkaplanı varsayılan olarak her 10 dakikada bir değiştirir (Süre ayarlanabilir).
* **Akıllı Algılama:** Mevcut duvar kağıdını bulur ve klasördeki bir sonraki resme geçer.
* **Tema Desteği:** Hem Aydınlık (Light) hem de Karanlık (Dark) mod ayarlarını günceller (`picture-uri` & `picture-uri-dark`).
* **Format Desteği:** `.jpg`, `.jpeg`, `.png` uzantılarını destekler.

### Kurulum ve Kullanım

1.  **Repoyu Klonlayın:**
    ```bash
    git clone [https://github.com/KULLANICI_ADIN/REPO_ADIN.git](https://github.com/KULLANICI_ADIN/REPO_ADIN.git)
    cd REPO_ADIN
    ```

2.  **Scriptlere Çalıştırma İzni Verin:**
    ```bash
    chmod +x *.sh
    ```

3.  **Ayarları Yapılandırın:**
    `change_wallpaper.sh` dosyasını bir metin editörü ile açın ve `DIR` değişkenine duvar kağıtlarınızın bulunduğu klasör yolunu yazın.
    ```bash
    DIR="/home/kullaniciadi/Resimler/DuvarKagitlari/"
    ```

4.  **Çalıştırın:**
    Scripti arka planda çalışmak üzere başlatın:
    ```bash
    ./auto_wallpaper_loop.sh &
    ```

---

## 🇬🇧 English Description

A simple, lightweight Bash script solution to automatically cycle through wallpapers on GNOME Desktop Environment.

### Features
* **Loop Cycle:** Automatically changes wallpaper every 10 minutes (configurable).
* **Smart Detection:** Finds the current wallpaper and switches to the next one in the directory.
* **Theme Support:** Updates both Light and Dark mode settings (`picture-uri` & `picture-uri-dark`).
* **Format Support:** Supports `.jpg`, `.jpeg`, `.png` (case insensitive).

### Installation & Usage

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/YOUR_USERNAME/REPO_NAME.git](https://github.com/YOUR_USERNAME/REPO_NAME.git)
    cd REPO_NAME
    ```

2.  **Make scripts executable:**
    ```bash
    chmod +x *.sh
    ```

3.  **Configure:**
    Open `change_wallpaper.sh` with a text editor and change the `DIR` variable to your wallpaper folder path.
    ```bash
    DIR="/home/yourusername/Pictures/Wallpapers/"
    ```

4.  **Run:**
    Run the loop in the background:
    ```bash
    ./auto_wallpaper_loop.sh &
    ```

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
