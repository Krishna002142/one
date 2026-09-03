<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop — Effortless Shopping</title>

  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Space+Grotesk:wght@600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

  <style>
    :root {
      --primary: #4338ca;
      --primary-hover: #3730a3;
      --accent: #06b6d4;
      --surface: #ffffff;
      --surface-subtle: #f8fafc;
      --surface-border: #e2e8f0;
      --text: #0f172a;
      --text-muted: #64748b;
      --danger: #ef4444;
      --success: #10b981;
      --radius: 14px;
      --radius-sm: 8px;
      --shadow-sm: 0 1px 3px rgba(0,0,0,0.06);
      --shadow: 0 10px 25px -5px rgba(0,0,0,0.08);
      --shadow-xl: 0 25px 50px -12px rgba(0,0,0,0.2);
    }

    body.dark {
      --surface: #0f172a;
      --surface-subtle: #1e293b;
      --surface-border: #334155;
      --text: #f8fafc;
      --text-muted: #94a3b8;
    }

    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: 'Plus Jakarta Sans', sans-serif;
      background: var(--surface-subtle);
      color: var(--text);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container { width: min(1200px, calc(100% - 32px)); margin: 0 auto; }
    button { font: inherit; cursor: pointer; border: none; outline: none; }
    a { color: inherit; text-decoration: none; }

    /* ANNOUNCEMENT BANNER */
    .top-banner {
      background: linear-gradient(90deg, #4338ca, #3b82f6);
      color: #fff;
      font-size: 13px;
      padding: 7px 16px;
      text-align: center;
      font-weight: 600;
    }

    /* HEADER */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(14px);
      border-bottom: 1px solid var(--surface-border);
    }
    .dark header { background: rgba(15, 23, 42, 0.9); }
    .header-inner {
      height: 70px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }
    .logo {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 22px;
      font-weight: 700;
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .logo-badge {
      width: 36px;
      height: 36px;
      border-radius: 10px;
      background: var(--primary);
      color: #fff;
      display: grid;
      place-items: center;
      font-size: 16px;
    }

    .search-wrapper {
      flex: 1;
      max-width: 480px;
      position: relative;
    }
    .search-wrapper input {
      width: 100%;
      height: 44px;
      padding: 0 40px 0 42px;
      border-radius: 50px;
      border: 1px solid var(--surface-border);
      background: var(--surface);
      color: var(--text);
      font-size: 14px;
      transition: all 0.2s ease;
    }
    .search-wrapper input:focus {
      border-color: var(--primary);
      box-shadow: 0 0 0 4px rgba(67, 56, 202, 0.12);
    }
    .search-wrapper .search-icon {
      position: absolute;
      left: 15px;
      top: 50%;
      transform: translateY(-50%);
      color: var(--text-muted);
    }

    .header-actions { display: flex; align-items: center; gap: 8px; }
    .action-btn {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: var(--surface);
      border: 1px solid var(--surface-border);
      color: var(--text);
      display: grid;
      place-items: center;
      position: relative;
      transition: transform 0.15s ease;
    }
    .action-btn:hover { transform: translateY(-2px); }
    .badge-counter {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--danger);
      color: #fff;
      border-radius: 20px;
      font-size: 11px;
      font-weight: 700;
      padding: 2px 6px;
      min-width: 18px;
      text-align: center;
    }

    /* HERO */
    .hero-banner {
      margin: 24px 0;
      border-radius: 24px;
      background: linear-gradient(120deg, #0f172a 40%, rgba(15, 23, 42, 0.8)), url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1200&q=80') center/cover;
      color: #fff;
      padding: 60px 48px;
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      gap: 16px;
    }
    .hero-banner h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: clamp(28px, 4vw, 44px);
      line-height: 1.15;
      max-width: 550px;
    }
    .hero-banner p { color: #cbd5e1; max-width: 480px; font-size: 15px; }
    .btn-cta {
      background: #fff;
      color: #0f172a;
      font-weight: 700;
      padding: 12px 24px;
      border-radius: 50px;
      transition: transform 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .btn-cta:hover { transform: translateY(-2px); }

    /* FILTERS & CONTROLS */
    .catalog-controls {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 16px;
      margin: 32px 0 24px;
    }
    .filter-pills {
      display: flex;
      gap: 8px;
      overflow-x: auto;
      padding-bottom: 4px;
      scrollbar-width: none;
    }
    .filter-pills::-webkit-scrollbar { display: none; }
    .pill {
      padding: 8px 16px;
      border-radius: 50px;
      background: var(--surface);
      border: 1px solid var(--surface-border);
      color: var(--text-muted);
      font-size: 13px;
      font-weight: 600;
      white-space: nowrap;
      transition: all 0.2s ease;
    }
    .pill.active, .pill:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .sort-dropdown {
      padding: 8px 14px;
      border-radius: var(--radius-sm);
      border: 1px solid var(--surface-border);
      background: var(--surface);
      color: var(--text);
      font-size: 13px;
      font-weight: 500;
    }

    /* PRODUCT GRID */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 20px;
      margin-bottom: 60px;
    }
    .product-card {
      background: var(--surface);
      border: 1px solid var(--surface-border);
      border-radius: var(--radius);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      transition: transform 0.2s, box-shadow 0.2s;
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow);
    }
    .image-container {
      position: relative;
      height: 220px;
      background: #f1f5f9;
      overflow: hidden;
    }
    .image-container img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.3s;
    }
    .product-card:hover .image-container img { transform: scale(1.05); }
    .badge-tag {
      position: absolute;
      top: 10px;
      left: 10px;
      background: var(--text);
      color: var(--surface);
      font-size: 11px;
      font-weight: 700;
      padding: 4px 8px;
      border-radius: 6px;
    }
    .like-btn {
      position: absolute;
      top: 10px;
      right: 10px;
      width: 32px;
      height: 32px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.9);
      color: var(--text-muted);
      display: grid;
      place-items: center;
      transition: color 0.2s;
    }
    .like-btn.active { color: var(--danger); }
    .card-body {
      padding: 16px;
      display: flex;
      flex-direction: column;
      flex: 1;
    }
    .card-meta {
      font-size: 12px;
      color: var(--text-muted);
      text-transform: uppercase;
      font-weight: 700;
      letter-spacing: 0.5px;
    }
    .card-title {
      font-size: 15px;
      font-weight: 700;
      margin: 4px 0 8px;
      line-height: 1.3;
    }
    .card-rating {
      font-size: 12px;
      color: #f59e0b;
      display: flex;
      align-items: center;
      gap: 4px;
      margin-bottom: 12px;
    }
    .card-rating span { color: var(--text-muted); font-size: 11px; }
    .card-footer {
      margin-top: auto;
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-top: 1px solid var(--surface-border);
      padding-top: 12px;
    }
    .price { font-size: 17px; font-weight: 800; }
    .btn-add {
      background: var(--surface-subtle);
      color: var(--text);
      border: 1px solid var(--surface-border);
      border-radius: 8px;
      padding: 8px 14px;
      font-size: 13px;
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: all 0.15s ease;
    }
    .btn-add:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }

    /* CART SLIDEOUT */
    .drawer-backdrop {
      position: fixed;
      inset: 0;
      background: rgba(15, 23, 42, 0.4);
      backdrop-filter: blur(2px);
      z-index: 200;
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.25s ease;
    }
    .drawer-backdrop.active { opacity: 1; pointer-events: auto; }
    .drawer {
      position: fixed;
      right: 0;
      top: 0;
      width: min(400px, 100%);
      height: 100%;
      background: var(--surface);
      z-index: 210;
      transform: translateX(100%);
      transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1);
      display: flex;
      flex-direction: column;
    }
    .drawer.active { transform: translateX(0); }
    .drawer-header {
      padding: 16px 20px;
      border-bottom: 1px solid var(--surface-border);
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    .drawer-body {
      flex: 1;
      overflow-y: auto;
      padding: 16px 20px;
      display: flex;
      flex-direction: column;
      gap: 16px;
    }
    .cart-line {
      display: flex;
      gap: 12px;
      align-items: center;
      padding-bottom: 12px;
      border-bottom: 1px solid var(--surface-border);
    }
    .cart-line img { width: 60px; height: 60px; border-radius: 8px; object-fit: cover; }
    .cart-details { flex: 1; }
    .cart-qty-ctrl {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 6px;
    }
    .cart-qty-ctrl button {
      width: 24px;
      height: 24px;
      border-radius: 4px;
      background: var(--surface-subtle);
      border: 1px solid var(--surface-border);
      color: var(--text);
    }
    .drawer-footer {
      padding: 20px;
      border-top: 1px solid var(--surface-border);
      background: var(--surface-subtle);
    }
    .btn-checkout {
      width: 100%;
      background: var(--primary);
      color: #fff;
      font-weight: 700;
      padding: 12px;
      border-radius: 10px;
      margin-top: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    /* TOAST */
    .toast-box {
      position: fixed;
      bottom: 24px;
      right: 24px;
      z-index: 300;
      display: flex;
      flex-direction: column;
      gap: 8px;
      pointer-events: none;
    }
    .toast {
      background: #0f172a;
      color: #fff;
      padding: 10px 16px;
      border-radius: 8px;
      font-size: 13px;
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 8px;
      box-shadow: var(--shadow-xl);
      animation: pop 0.2s cubic-bezier(0.16, 1, 0.3, 1);
    }
    @keyframes pop {
      from { transform: translateY(12px) scale(0.95); opacity: 0; }
      to { transform: translateY(0) scale(1); opacity: 1; }
    }

    /* EMPTY STATE */
    .empty-state {
      text-align: center;
      padding: 40px 16px;
      color: var(--text-muted);
    }
    .empty-state i { font-size: 40px; margin-bottom: 12px; }

    @media (max-width: 640px) {
      .hero-banner { padding: 32px 20px; }
      .product-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .image-container { height: 160px; }
      .card-body { padding: 10px; }
      .card-title { font-size: 13px; }
      .price { font-size: 15px; }
    }
  </style>
</head>

<body>

  <div class="top-banner">
    ✨ Free standard shipping on orders over $50 • 30-day hassle-free returns
  </div>

  <header>
    <div class="container header-inner">
      <a href="#" class="logo">
        <div class="logo-badge"><i class="fa-solid fa-basket-shopping"></i></div>
        <span>Nexus<b>Shop</b></span>
      </a>

      <div class="search-wrapper">
        <i class="fa-solid fa-magnifying-glass search-icon"></i>
        <input type="search" id="searchInput" placeholder="Search by item, category..." autocomplete="off" />
      </div>

      <div class="header-actions">
        <button class="action-btn" id="themeBtn" title="Toggle dark/light">
          <i class="fa-regular fa-moon"></i>
        </button>
        <button class="action-btn" id="wishlistBtn" title="Wishlist">
          <i class="fa-regular fa-heart"></i>
          <span class="badge-counter" id="wishlistBadge">0</span>
        </button>
        <button class="action-btn" id="cartBtn" title="Cart">
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="badge-counter" id="cartBadge">0</span>
        </button>
      </div>
    </div>
  </header>

  <main class="container">
    <!-- HERO -->
    <div class="hero-banner">
      <h1>Everyday Essentials, Elevated.</h1>
      <p>Curated tech, style, and everyday lifestyle gear with transparent pricing.</p>
      <a href="#catalog" class="btn-cta">Explore Catalog <i class="fa-solid fa-arrow-down"></i></a>
    </div>

    <!-- CONTROLS -->
    <div class="catalog-controls" id="catalog">
      <div class="filter-pills" id="filterPills">
        <button class="pill active" data-category="all">All Items</button>
        <button class="pill" data-category="phones">Phones</button>
        <button class="pill" data-category="laptops">Laptops</button>
        <button class="pill" data-category="audio">Audio</button>
        <button class="pill" data-category="fashion">Fashion</button>
        <button class="pill" data-category="accessories">Accessories</button>
      </div>

      <select class="sort-dropdown" id="sortSelect">
        <option value="popular">Most Popular</option>
        <option value="low">Price: Low to High</option>
        <option value="high">Price: High to Low</option>
      </select>
    </div>

    <!-- PRODUCTS -->
    <div class="product-grid" id="productGrid"></div>
  </main>

  <!-- CART SLIDEOUT DRAWER -->
  <div class="drawer-backdrop" id="drawerBackdrop"></div>
  <aside class="drawer" id="cartDrawer">
    <div class="drawer-header">
      <h3>Your Bag (<span id="cartTotalItems">0</span>)</h3>
      <button class="action-btn" id="closeDrawer"><i class="fa-solid fa-xmark"></i></button>
    </div>
    <div class="drawer-body" id="cartItemsList"></div>
    <div class="drawer-footer">
      <div style="display:flex; justify-content:space-between; font-weight:700;">
        <span>Subtotal</span>
        <span id="cartTotalPrice">$0.00</span>
      </div>
      <button class="btn-checkout" id="checkoutBtn">
        Proceed to Checkout <i class="fa-solid fa-arrow-right"></i>
      </button>
    </div>
  </aside>

  <!-- TOAST ALERTS -->
  <div class="toast-box" id="toastBox"></div>

  <script>
    const products = [
      { id: 1, name: "iPhone 14 Pro Max", category: "phones", price: 1099, rating: 5, reviews: 128, badge: "Popular", image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80" },
      { id: 2, name: 'MacBook Pro 14"', category: "laptops", price: 1999, rating: 5, reviews: 86, badge: "Best Gear", image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80" },
      { id: 3, name: "Apple Watch Series 8", category: "accessories", price: 349, rating: 4, reviews: 214, badge: "-13%", image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80" },
      { id: 4, name: "Nike Air Max", category: "fashion", price: 150, rating: 4, reviews: 53, image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80" },
      { id: 5, name: "Sony A7 IV Camera", category: "accessories", price: 2499, rating: 5, reviews: 42, badge: "Pro", image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80" },
      { id: 6, name: "Premium Headphones", category: "audio", price: 399, rating: 5, reviews: 156, badge: "Top Sound", image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80" },
      { id: 7, name: "Travel Urban Pack", category: "accessories", price: 79, rating: 4, reviews: 67, badge: "Sale", image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80" },
      { id: 8, name: "Minimalist Sneakers", category: "fashion", price: 120, rating: 5, reviews: 89, image: "https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=600&q=80" }
    ];

    let cart = JSON.parse(localStorage.getItem('user_cart')) || [];
    let wishlist = JSON.parse(localStorage.getItem('user_wishlist')) || [];
    let activeFilter = 'all';

    const productGrid = document.getElementById('productGrid');
    const searchInput = document.getElementById('searchInput');
    const cartDrawer = document.getElementById('cartDrawer');
    const drawerBackdrop = document.getElementById('drawerBackdrop');

    function notify(text, icon = 'fa-check') {
      const toast = document.createElement('div');
      toast.className = 'toast';
      toast.innerHTML = `<i class="fa-solid ${icon}"></i> <span>${text}</span>`;
      document.getElementById('toastBox').appendChild(toast);
      setTimeout(() => toast.remove(), 2500);
    }

    function renderProducts() {
      const search = searchInput.value.toLowerCase().trim();
      const sort = document.getElementById('sortSelect').value;

      let list = products.filter(p => {
        const matchCategory = activeFilter === 'all' || p.category === activeFilter;
        const matchSearch = p.name.toLowerCase().includes(search) || p.category.toLowerCase().includes(search);
        return matchCategory && matchSearch;
      });

      if (sort === 'low') list.sort((a,b) => a.price - b.price);
      if (sort === 'high') list.sort((a,b) => b.price - a.price);

      if (list.length === 0) {
        productGrid.innerHTML = `
          <div class="empty-state" style="grid-column: 1 / -1;">
            <i class="fa-solid fa-magnifying-glass"></i>
            <h3>No results found</h3>
            <p>Try searching for something else or reset filters.</p>
          </div>`;
        return;
      }

      productGrid.innerHTML = list.map(item => `
        <article class="product-card">
          <div class="image-container">
            ${item.badge ? `<span class="badge-tag">${item.badge}</span>` : ''}
            <button class="like-btn ${wishlist.includes(item.id) ? 'active' : ''}" onclick="toggleWishlist(${item.id})">
              <i class="fa-${wishlist.includes(item.id) ? 'solid' : 'regular'} fa-heart"></i>
            </button>
            <img src="${item.image}" alt="${item.name}" loading="lazy" />
          </div>
          <div class="card-body">
            <span class="card-meta">${item.category}</span>
            <h4 class="card-title">${item.name}</h4>
            <div class="card-rating">
              ${'★'.repeat(item.rating)} <span>(${item.reviews})</span>
            </div>
            <div class="card-footer">
              <span class="price">$${item.price.toLocaleString()}</span>
              <button class="btn-add" onclick="addToCart(${item.id})">
                <i class="fa-solid fa-plus"></i> Add
              </button>
            </div>
          </div>
        </article>
      `).join('');
    }

    function addToCart(id) {
      const item = cart.find(i => i.id === id);
      if (item) item.qty++;
      else cart.push({ id, qty: 1 });
      saveState();
      updateCartUI();
      openCart();
      const product = products.find(p => p.id === id);
      notify(`${product.name} added to cart`);
    }

    function changeCartQty(id, delta) {
      const entry = cart.find(i => i.id === id);
      if (!entry) return;
      entry.qty += delta;
      if (entry.qty <= 0) cart = cart.filter(i => i.id !== id);
      saveState();
      updateCartUI();
    }

    function updateCartUI() {
      const totalCount = cart.reduce((sum, item) => sum + item.qty, 0);
      document.getElementById('cartBadge').textContent = totalCount;
      document.getElementById('cartTotalItems').textContent = totalCount;

      const itemsList = document.getElementById('cartItemsList');
      if (cart.length === 0) {
        itemsList.innerHTML = `
          <div class="empty-state">
            <i class="fa-solid fa-bag-shopping"></i>
            <p>Your bag is currently empty.</p>
          </div>`;
        document.getElementById('cartTotalPrice').textContent = "$0.00";
        return;
      }

      let subtotal = 0;
      itemsList.innerHTML = cart.map(line => {
        const product = products.find(p => p.id === line.id);
        subtotal += product.price * line.qty;
        return `
          <div class="cart-line">
            <img src="${product.image}" alt="${product.name}" />
            <div class="cart-details">
              <h5 style="font-size:14px; margin-bottom:2px;">${product.name}</h5>
              <div style="font-weight:700; font-size:13px;">$${product.price}</div>
              <div class="cart-qty-ctrl">
                <button onclick="changeCartQty(${product.id}, -1)">-</button>
                <span style="font-size:13px; font-weight:600;">${line.qty}</span>
                <button onclick="changeCartQty(${product.id}, 1)">+</button>
              </div>
            </div>
          </div>`;
      }).join('');

      document.getElementById('cartTotalPrice').textContent = `$${subtotal.toLocaleString()}`;
    }

    function toggleWishlist(id) {
      if (wishlist.includes(id)) {
        wishlist = wishlist.filter(item => item !== id);
        notify("Removed from saved list");
      } else {
        wishlist.push(id);
        notify("Saved to your wishlist", "fa-heart");
      }
      saveState();
      document.getElementById('wishlistBadge').textContent = wishlist.length;
      renderProducts();
    }

    function saveState() {
      localStorage.setItem('user_cart', JSON.stringify(cart));
      localStorage.setItem('user_wishlist', JSON.stringify(wishlist));
    }

    function openCart() {
      cartDrawer.classList.add('active');
      drawerBackdrop.classList.add('active');
    }

    function closeCart() {
      cartDrawer.classList.remove('active');
      drawerBackdrop.classList.remove('active');
    }

    // EVENT LISTENERS
    document.getElementById('cartBtn').addEventListener('click', openCart);
    document.getElementById('closeDrawer').addEventListener('click', closeCart);
    drawerBackdrop.addEventListener('click', closeCart);

    document.querySelectorAll('.filter-pills .pill').forEach(btn => {
      btn.addEventListener('click', (e) => {
        document.querySelectorAll('.filter-pills .pill').forEach(p => p.classList.remove('active'));
        e.target.classList.add('active');
        activeFilter = e.target.dataset.category;
        renderProducts();
      });
    });

    searchInput.addEventListener('input', renderProducts);
    document.getElementById('sortSelect').addEventListener('change', renderProducts);

    document.getElementById('themeBtn').addEventListener('click', () => {
      document.body.classList.toggle('dark');
      const icon = document.querySelector('#themeBtn i');
      icon.className = document.body.classList.contains('dark') ? 'fa-regular fa-sun' : 'fa-regular fa-moon';
    });

    document.getElementById('checkoutBtn').addEventListener('click', () => {
      if (cart.length === 0) return notify("Your bag is empty", "fa-circle-exclamation");
      notify("Redirecting to checkout...", "fa-credit-card");
    });

    // INIT
    renderProducts();
    updateCartUI();
    document.getElementById('wishlistBadge').textContent = wishlist.length;
  </script>
</body>
</html>
