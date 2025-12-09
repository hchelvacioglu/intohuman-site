#!/bin/bash

# Backup Restore Script
# Bu script, complete-backup klasöründeki dosyaları ana dizine geri yükler

BACKUP_DIR="complete-backup-20251206-205738"
PROJECT_ROOT="/Users/cihan/Desktop/blogum"

echo "⚠️  Uyarı: Bu script, sitenin şu anki durumunu değiştirecektir!"
echo "Backup klasöründeki dosyalar kullanılarak geri yüklenecek: $BACKUP_DIR"
echo ""
read -p "Devam etmek istediğinize emin misiniz? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "İşlem iptal edildi."
    exit 1
fi

cd "$PROJECT_ROOT"

echo "📦 Backup dosyaları geri yükleniyor..."

# Klasörleri geri yükle
cp -r "backups/$BACKUP_DIR/layouts" . && echo "✓ layouts klasörü geri yüklendi"
cp -r "backups/$BACKUP_DIR/assets" . && echo "✓ assets klasörü geri yüklendi"
cp -r "backups/$BACKUP_DIR/content" . && echo "✓ content klasörü geri yüklendi"
cp -r "backups/$BACKUP_DIR/static" . && echo "✓ static klasörü geri yüklendi"
cp -r "backups/$BACKUP_DIR/data" . && echo "✓ data klasörü geri yüklendi"
cp -r "backups/$BACKUP_DIR/i18n" . && echo "✓ i18n klasörü geri yüklendi"
cp -r "backups/$BACKUP_DIR/archetypes" . && echo "✓ archetypes klasörü geri yüklendi"

# Dosyaları geri yükle
cp "backups/$BACKUP_DIR/hugo.toml" . && echo "✓ hugo.toml geri yüklendi"
cp "backups/$BACKUP_DIR/package.json" . && echo "✓ package.json geri yüklendi"
cp "backups/$BACKUP_DIR/tailwind.config.js" . && echo "✓ tailwind.config.js geri yüklendi"
cp "backups/$BACKUP_DIR/postcss.config.mjs" . && echo "✓ postcss.config.mjs geri yüklendi"

echo ""
echo "✅ Backup başarıyla geri yüklendi!"
echo "🔄 Değişiklikleri görmek için Hugo sunucusunu yeniden başlatın (Ctrl+C sonra hugo server)"
