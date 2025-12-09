// Hamburger menüyü düzelt - sayfa yüklendiğinde çalış
(function() {
  function initCustomMenu() {
    const sidebar = document.querySelector('aside.sidebar-container');
    
    if (sidebar) {
      // Mevcut TOC içeriğini tamamen temizle
      const existingContent = sidebar.querySelectorAll('.hextra-scrollbar, nav');
      existingContent.forEach(el => el.remove());
      
      // Özel menü zaten varsa tekrar ekleme
      if (sidebar.querySelector('.custom-main-menu')) {
        return;
      }
      
      // Ana menü container'ı oluştur
      const menuContainer = document.createElement('nav');
      menuContainer.className = 'custom-main-menu';
      
      // Menü öğeleri - hugo.toml'deki ile aynı
      const menuItems = [
        { name: 'Blog', url: '/blog/' },
        { name: 'Hakkında', url: '/about/' },
        { name: 'İletişim', url: '/contact/' }
      ];
      
      // Her menü öğesini oluştur
      menuItems.forEach(item => {
        const link = document.createElement('a');
        link.href = item.url;
        link.textContent = item.name;
        menuContainer.appendChild(link);
      });
      
      // Menüyü sidebar'a ekle
      sidebar.appendChild(menuContainer);
    }
  }
  
  // Sayfa yüklendiğinde çalıştır
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initCustomMenu);
  } else {
    initCustomMenu();
  }
  
  // Hamburger tıklamalarında da kontrol et
  document.addEventListener('click', function(e) {
    if (e.target.closest('.hextra-hamburger')) {
      setTimeout(initCustomMenu, 100);
    }
  });
})();
