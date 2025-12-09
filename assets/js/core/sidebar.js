document.addEventListener("DOMContentLoaded", function () {
  scrollToActiveItem();
  enableCollapsibles();

  // Hamburger menü overlay kontrolü
  var menuButton = document.querySelector(".hextra-hamburger-menu, .menu-button");
  var sidebar = document.querySelector(".hextra-sidebar-container");
  var overlay = document.getElementById("menuOverlay");
  
  // Custom Hamburger Menu & Overlay JS
  var hamburger = document.getElementById("customHamburger");
  var customOverlay = document.getElementById("customOverlay");
  if (hamburger && customOverlay) {
    hamburger.addEventListener("click", function () {
      customOverlay.classList.toggle("active");
    });
    customOverlay.addEventListener("click", function (e) {
      if (e.target === customOverlay) {
        customOverlay.classList.remove("active");
      }
    });
  }

  if (menuButton && overlay && sidebar) {
    menuButton.addEventListener("click", function () {
      // Menü açıldığında overlay'i göster
      overlay.style.display = "block";
    });

    // Menü kapandığında overlay'i gizle
    document.addEventListener("click", function (e) {
      if (!sidebar.contains(e.target) && !menuButton.contains(e.target)) {
        overlay.style.display = "none";
      }
    });
  }
});

function enableCollapsibles() {
  const buttons = document.querySelectorAll(".hextra-sidebar-collapsible-button");
  buttons.forEach(function (button) {
    button.addEventListener("click", function (e) {
      e.preventDefault();
      const list = button.parentElement.parentElement;
      if (list) {
        list.classList.toggle("open")
      }
    });
  });
}

function scrollToActiveItem() {
  const sidebarScrollbar = document.querySelector("aside.hextra-sidebar-container > .hextra-scrollbar");
  const activeItems = document.querySelectorAll(".hextra-sidebar-active-item");
  const visibleActiveItem = Array.from(activeItems).find(function (activeItem) {
    return activeItem.getBoundingClientRect().height > 0;
  });

  if (!visibleActiveItem) {
    return;
  }

  const yOffset = visibleActiveItem.clientHeight;
  const yDistance = visibleActiveItem.getBoundingClientRect().top - sidebarScrollbar.getBoundingClientRect().top;
  sidebarScrollbar.scrollTo({
    behavior: "instant",
    top: yDistance - yOffset
  });
}
