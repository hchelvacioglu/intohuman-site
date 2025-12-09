# Backup Yönetimi

## 📋 Backup Bilgileri

Bu klasör sitenin eksiksiz backup'larını içerir.

**Son Backup:** `complete-backup-20251206-205738`
**Backup Tarihi:** 6 Aralık 2025, 20:57:38

## 📦 Backup İçeriği

Aşağıdaki dosyalar ve klasörler backup'lanmıştır:

- `layouts/` - Site şablonları
- `assets/` - CSS, JS ve diğer asset dosyaları
- `content/` - İçerik dosyaları (Markdown)
- `static/` - Statik dosyalar (resimler, fonts vb.)
- `data/` - Veri dosyaları
- `i18n/` - Çeviri dosyaları
- `archetypes/` - İçerik şablonları
- `hugo.toml` - Hugo konfigürasyonu
- `package.json` - NPM paket dosyası
- `tailwind.config.js` - Tailwind CSS konfigürasyonu
- `postcss.config.mjs` - PostCSS konfigürasyonu

## 🔄 Backup'ı Geri Yükleme

Backup'ı geri yüklemek için terminalden şu komutu çalıştırın:

```bash
bash backups/RESTORE.sh
```

Script sizden onay isteyecek, ardından tüm dosyaları geri yükleyecektir.

## ✅ Geri Yükleme Sonrası

1. Hugo sunucusunu durdurun (varsa Ctrl+C)
2. Hugo sunucusunu yeniden başlatın:
   ```bash
   hugo server
   ```
3. Tarayıcıdan `http://localhost:1313` adresini ziyaret edin

## 📌 Not

- Bu backup, sitenin o anki tam durumunu içerir
- Daha sonra yeni backup'lar oluşturmak isterseniz, aynı yapıyı takip edebilirsiniz
- Backup dosyaları sitenin ana dizinini etkilemez, güvenle saklanabilir
