// Hamburger menu for mobile navigation

document.addEventListener('DOMContentLoaded', function () {
  const menu = document.querySelector('.hamburger-menu');
  const overlay = document.querySelector('.mobile-menu-overlay');
  const sidebarContainer = document.querySelector('.sidebar-container');

  if (!menu || !overlay || !sidebarContainer) return;

  // Initialize the overlay
  const overlayClasses = ['hx-fixed', 'hx-inset-0', 'hx-z-10', 'hx-bg-black/80', 'dark:hx-bg-black/60'];
  overlay.classList.add('hx-bg-transparent');
  overlay.classList.remove("hx-hidden", ...overlayClasses);

  function setMenuOpen(open) {
    // Toggle the hamburger menu
    menu.classList.toggle('gcve-menu-open', open);
    menu.setAttribute('aria-expanded', String(open));
    menu.querySelector('svg').classList.toggle('open', open);

    // When the menu is open, we want to show the navigation sidebar.
    // Keep the original Hextra transform classes for phones, and add a
    // project class so the same menu can be opened on tablet-sized screens.
    sidebarContainer.classList.toggle('gcve-menu-open', open);
    sidebarContainer.classList.toggle('max-md:[transform:translate3d(0,-100%,0)]', !open);
    sidebarContainer.classList.toggle('max-md:[transform:translate3d(0,0,0)]', open);

    // When the menu is open, we want to prevent the body from scrolling
    document.body.classList.toggle('gcve-menu-open', open);
    document.body.classList.toggle('hx-overflow-hidden', open);
    document.body.classList.toggle('md:hx-overflow-auto', open);
  }

  function toggleMenu() {
    setMenuOpen(!menu.classList.contains('gcve-menu-open'));
  }

  menu.addEventListener('click', (e) => {
    e.preventDefault();
    toggleMenu();

    if (overlay.classList.contains('hx-bg-transparent')) {
      // Show the overlay
      overlay.classList.add(...overlayClasses);
      overlay.classList.remove('hx-bg-transparent');
    } else {
      // Hide the overlay
      overlay.classList.remove(...overlayClasses);
      overlay.classList.add('hx-bg-transparent');
    }
  });

  overlay.addEventListener('click', (e) => {
    e.preventDefault();
    setMenuOpen(false);

    // Hide the overlay
    overlay.classList.remove(...overlayClasses);
    overlay.classList.add('hx-bg-transparent');
  });
});
