<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
  <title>NEXUS PRIME — Haute Modern Living</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700;800&family=Plus+Jakarta+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,400&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

  <style>
    :root {
      --bg-base: #080a10;
      --bg-subtle: #0f1422;
      --surface-1: rgba(255, 255, 255, 0.04);
      --surface-2: rgba(255, 255, 255, 0.08);
      --surface-glass: rgba(18, 24, 38, 0.65);
      --border-subtle: rgba(255, 255, 255, 0.08);
      --border-accent: rgba(99, 102, 241, 0.4);

      --gold: #f59e0b;
      --gold-gradient: linear-gradient(135deg, #fbbf24 0%, #d97706 100%);
      --accent: #6366f1;
      --accent-gradient: linear-gradient(135deg, #818cf8 0%, #4f46e5 100%);
      --accent-glow: rgba(99, 102, 241, 0.35);

      --text-main: #f8fafc;
      --text-muted: #94a3b8;
      --text-dim: #64748b;

      --radius-sm: 12px;
      --radius-md: 20px;
      --radius-lg: 32px;

      --shadow-ambient: 0 30px 100px -20px rgba(0, 0, 0, 0.7);
      --shadow-glow: 0 0 40px var(--accent-glow);
    }

    * { box-sizing: border-box; margin: 0; padding: 0; -webkit-tap-highlight-color: transparent; }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Plus Jakarta Sans', sans-serif;
      background: var(--bg-base);
      color: var(--text-main);
      overflow-x: hidden;
      line-height: 1.6;
    }

    /* BACKGROUND ATMOSPHERIC GLOWS */
    .ambient-glow {
      position: fixed;
      width: 650px;
      height: 650px;
      border-radius: 50%;
      pointer-events: none;
      z-index: 0;
      filter: blur(140px);
      opacity: 0.18;
    }
    .glow-1 { top: -150px; left: -100px; background: #6366f1; }
    .glow-2 { top: 40%; right: -200px; background: #ec4899; }
    .glow-3 { bottom: 5%; left: 10%; background: #06b6d4; }

    .container { width: min(1320px, calc(100% - 48px)); margin: 0 auto; position: relative; z-index: 1; }
    button { font: inherit; cursor: pointer; border: none; outline: none; background: transparent; color: inherit; }

    /* TICKER */
    .vip-strip {
      background: rgba(15, 20, 34, 0.9);
      border-bottom: 1px solid var(--border-subtle);
      font-size: 12px;
      letter-spacing: 1px;
      text-transform: uppercase;
      font-weight: 700;
      padding: 10px 0;
      text-align: center;
      color: var(--text-muted);
      display: flex;
      justify-content: center;
      gap: 30px;
    }
    .vip-strip span { display: inline-flex; align-items: center; gap: 8px; }
    .vip-strip i { color: #fbbf24; }

    /* HEADER */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(8, 10, 16, 0.75);
      backdrop-filter: blur(28px);
      -webkit-backdrop-filter: blur(28px);
      border-bottom: 1px solid var(--border-subtle);
      transition: all 0.3s ease;
    }
    .header-layout {
      height: 84px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 32px;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      font-family: 'Space Grotesk', sans-serif;
      font-size: 24px;
      font-weight: 700;
      letter-spacing: -0.5px;
      text-decoration: none;
    }
    .brand-crest {
      width: 44px;
      height: 44px;
      border-radius: 14px;
      background: var(--accent-gradient);
      display: grid;
      place-items: center;
      box-shadow: var(--shadow-glow);
    }
    .brand-crest i { font-size: 18px; color: #fff; }

    .search-cockpit {
      flex: 1;
      max-width: 520px;
      position: relative;
    }
    .search-cockpit input {
      width: 100%;
      height: 50px;
      border-radius: 50px;
      background: var(--surface-1);
      border: 1px solid var(--border-subtle);
      color: #fff;
      padding: 0 24px 0 52px;
      font-size: 14px;
      transition: all 0.3s;
    }
    .search-cockpit input:focus {
      background: var(--surface-2);
      border-color: var(--accent);
      box-shadow: 0 0 0 4px var(--accent-glow);
    }
    .search-cockpit i {
      position: absolute;
      left: 20px;
      top: 50%;
      transform: translateY(-50%);
      color: var(--text-dim);
    }

    .nav-actions { display: flex; align-items: center; gap: 14px; }
    .glass-btn {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      background: var(--surface-1);
      border: 1px solid var(--border-subtle);
      display: grid;
      place-items: center;
      position: relative;
      transition: all 0.25s;
    }
    .glass-btn:hover {
      background: var(--surface-2);
      transform: translateY(-2px);
      border-color: rgba(255,255,255,0.2);
    }
    .counter-pill {
      position: absolute;
      top: -3px;
      right: -3px;
      background: var(--accent-gradient);
      color: #fff;
      font-size: 10px;
      font-weight: 800;
      height: 20px;
      min-width: 20px;
      padding: 0 6px;
      border-radius: 50px;
      display: grid;
      place-items: center;
      box-shadow: 0 2px 10px rgba(99, 102, 241, 0.5);
    }

    /* HERO SPLENDOR */
    .hero {
      padding: 40px 0 60px;
    }
    .hero-stage {
      position: relative;
      border-radius: var(--radius-lg);
      padding: 80px;
      overflow: hidden;
      border: 1px solid var(--border-subtle);
      background: radial-gradient(circle at 80% 20%, rgba(99, 102, 241, 0.25) 0%, transparent 60%),
                  linear-gradient(180deg, rgba(15, 20, 34, 0.8) 0%, rgba(8, 10, 16, 0.95) 100%);
      display: flex;
      align-items: center;
      min-height: 520px;
    }
    .hero-content {
      max-width: 600px;
      position: relative;
      z-index: 2;
    }
    .prestige-pill {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: rgba(255, 255, 255, 0.06);
      border: 1px solid rgba(255, 255, 255, 0.12);
      padding: 6px 16px;
      border-radius: 50px;
      font-size: 12px;
      font-weight: 700;
      letter-spacing: 1px;
      text-transform: uppercase;
      margin-bottom: 24px;
    }
    .hero-content h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: clamp(38px, 5vw, 68px);
      line-height: 1.05;
      margin-bottom: 20px;
      letter-spacing: -1.5px;
      background: linear-gradient(180deg, #ffffff 40%, #94a3b8 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
    .hero-content p {
      font-size: 17px;
      color: var(--text-muted);
      margin-bottom: 36px;
    }
    .prime-btn {
      display: inline-flex;
      align-items: center;
      gap: 12px;
      background: #ffffff;
      color: #080a10;
      padding: 18px 36px;
      border-radius: 50px;
      font-weight: 800;
      font-size: 15px;
      transition: all 0.3s cubic-bezier(0.16, 1, 0.3, 1);
      box-shadow: 0 10px 40px rgba(255,255,255,0.2);
    }
    .prime-btn:hover {
      transform: translateY(-3px) scale(1.02);
      box-shadow: 0 15px 50px rgba(255,255,255,0.3);
    }

    /* CURATED STATS */
    .stats-bar {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
      margin-bottom: 80px;
    }
    .stat-tile {
      background: var(--surface-1);
      border: 1px solid var(--border-subtle);
      border-radius: var(--radius-md);
      padding: 24px;
      backdrop-filter: blur(20px);
      display: flex;
      align-items: center;
      gap: 18px;
    }
    .stat-icon {
      width: 50px;
      height: 50px;
      border-radius: 16px;
      background: var(--surface-2);
      display: grid;
      place-items: center;
      font-size: 20px;
      color: var(--accent);
      border: 1px solid var(--border-subtle);
    }
    .stat-info h4 { font-size: 15px; font-weight: 700; }
    .stat-info p { font-size: 13px; color: var(--text-muted); }

    /* SECTION HEADER */
    .section-head {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 36px;
    }
    .section-head h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 32px;
      letter-spacing: -0.5px;
    }
    .section-head p { color: var(--text-muted); font-size: 15px; }

    /* DISCOVERY FILTER BAR */
    .filter-island {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: var(--surface-1);
      border: 1px solid var(--border-subtle);
      padding: 8px 12px;
      border-radius: 60px;
      margin-bottom: 40px;
      backdrop-filter: blur(20px);
      gap: 16px;
    }
    .category-dock {
      display: flex;
      gap: 6px;
      overflow-x: auto;
      scrollbar-width: none;
    }
    .category-dock::-webkit-scrollbar { display: none; }
    .dock-pill {
      padding: 10px 22px;
      border-radius: 50px;
      font-size: 13px;
      font-weight: 600;
      color: var(--text-muted);
      transition: all 0.25s;
      white-space: nowrap;
    }
    .dock-pill.active, .dock-pill:hover {
      background: var(--surface-2);
      color: #fff;
    }
    .dock-pill.active {
      background: var(--accent-gradient);
      box-shadow: 0 4px 20px var(--accent-glow);
    }
    .sort-capsule {
      background: transparent;
      border: none;
      color: var(--text-muted);
      font-weight: 600;
      font-size: 13px;
      padding-right: 12px;
      outline: none;
    }
    .sort-capsule option { background: var(--bg-subtle); color: #fff; }

    /* PRODUCT SHOWCASE */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(290px, 1fr));
      gap: 28px;
      margin-bottom: 120px;
    }
    .product-card {
      background: var(--surface-1);
      border: 1px solid var(--border-subtle);
      border-radius: var(--radius-md);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      position: relative;
      transition: all 0.35s cubic-bezier(0.16, 1, 0.3, 1);
    }
    .product-card:hover {
      transform: translateY(-8px);
      border-color: rgba(255, 255, 255, 0.2);
      box-shadow: var(--shadow-ambient);
    }
    .visual-stage {
      position: relative;
      height: 310px;
      background: radial-gradient(circle at center, #1b2336 0%, #0d121f 100%);
      display: grid;
      place-items: center;
      overflow: hidden;
    }
    .visual-stage img {
      width: 82%;
      height: 82%;
      object-fit: cover;
      border-radius: var(--radius-sm);
      transition: transform 0.5s cubic-bezier(0.16, 1, 0.3, 1);
    }
    .product-card:hover .visual-stage img {
      transform: scale(1.08);
    }
    .badge-insignia {
      position: absolute;
      top: 14px;
      left: 14px;
      background: rgba(255, 255, 255, 0.12);
      backdrop-filter: blur(16px);
      border: 1px solid rgba(255, 255, 255, 0.15);
      color: #fff;
      font-size: 11px;
      font-weight: 800;
      padding: 5px 12px;
      border-radius: 50px;
      letter-spacing: 0.5px;
    }
    .badge-insignia.sale {
      background: var(--gold-gradient);
      color: #080a10;
    }
    .fav-trigger {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: rgba(8, 10, 16, 0.6);
      backdrop-filter: blur(12px);
      border: 1px solid var(--border-subtle);
      color: var(--text-muted);
      display: grid;
      place-items: center;
      transition: all 0.2s;
    }
    .fav-trigger.active { color: #f43f5e; }
    .card-meta {
      padding: 24px;
      display: flex;
      flex-direction: column;
      flex: 1;
    }
    .category-tag {
      font-size: 11px;
      text-transform: uppercase;
      font-weight: 800;
      letter-spacing: 1.5px;
      color: var(--accent);
      margin-bottom: 6px;
    }
    .product-title {
      font-size: 17px;
      font-weight: 700;
      margin-bottom: 10px;
      cursor: pointer;
    }
    .product-title:hover { color: var(--accent); }
    .specs-line {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 12px;
      color: var(--gold);
      margin-bottom: 18px;
    }
    .specs-line span { color: var(--text-dim); }
    .card-action-hub {
      margin-top: auto;
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-top: 1px solid var(--border-subtle);
      padding-top: 18px;
    }
    .price-wrap { display: flex; flex-direction: column; }
    .price-now { font-size: 20px; font-weight: 800; }
    .price-strike { font-size: 12px; color: var(--text-dim); text-decoration: line-through; }
    .btn-procure {
      background: var(--surface-2);
      border: 1px solid var(--border-subtle);
      padding: 10px 18px;
      border-radius: 50px;
      font-weight: 700;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 8px;
      transition: all 0.25s;
    }
    .btn-procure:hover {
      background: #ffffff;
      color: #080a10;
      box-shadow: 0 0 25px rgba(255,255,255,0.25);
    }

    /* GRAND CART DRAWER */
    .curtain {
      position: fixed;
      inset: 0;
      background: rgba(0, 0, 0, 0.7);
      backdrop-filter: blur(10px);
      z-index: 200;
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.4s cubic-bezier(0.16, 1, 0.3, 1);
    }
    .curtain.active { opacity: 1; pointer-events: auto; }
    .vault-drawer {
      position: fixed;
      right: 0;
      top: 0;
      bottom: 0;
      width: min(480px, 100%);
      background: var(--bg-subtle);
      border-left: 1px solid var(--border-subtle);
      z-index: 210;
      transform: translateX(100%);
      transition: transform 0.45s cubic-bezier(0.16, 1, 0.3, 1);
      display: flex;
      flex-direction: column;
    }
    .vault-drawer.active { transform: translateX(0); }
    .vault-header {
      padding: 28px;
      border-bottom: 1px solid var(--border-subtle);
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    .vault-header h3 { font-family: 'Space Grotesk', sans-serif; font-size: 20px; }
    .free-shipping-tracker {
      padding: 18px 28px;
      background: var(--surface-1);
      border-bottom: 1px solid var(--border-subtle);
      font-size: 13px;
    }
    .progress-track {
      height: 6px;
      border-radius: 10px;
      background: var(--surface-2);
      margin-top: 10px;
      overflow: hidden;
      position: relative;
    }
    .progress-fill {
      height: 100%;
      background: var(--accent-gradient);
      width: 0%;
      transition: width 0.4s ease;
    }
    .vault-body {
      flex: 1;
      overflow-y: auto;
      padding: 28px;
      display: flex;
      flex-direction: column;
      gap: 20px;
    }
    .vault-line {
      display: flex;
      gap: 16px;
      padding: 16px;
      background: var(--surface-1);
      border: 1px solid var(--border-subtle);
      border-radius: var(--radius-sm);
      align-items: center;
    }
    .vault-line img { width: 72px; height: 72px; border-radius: 10px; object-fit: cover; }
    .vault-line-info { flex: 1; }
    .vault-line-info h5 { font-size: 14px; margin-bottom: 4px; }
    .vault-line-price { font-weight: 700; font-size: 14px; }
    .stepper {
      display: flex;
      align-items: center;
      gap: 12px;
      background: var(--surface-2);
      padding: 4px 10px;
      border-radius: 50px;
      width: fit-content;
      margin-top: 8px;
    }
    .stepper button { font-size: 14px; width: 20px; color: var(--text-muted); }
    .vault-footer {
      padding: 28px;
      border-top: 1px solid var(--border-subtle);
      background: var(--surface-1);
    }
    .tally-row {
      display: flex;
      justify-content: space-between;
      margin-bottom: 12px;
      font-size: 14px;
      color: var(--text-muted);
    }
    .tally-row.grand {
      font-size: 20px;
      font-weight: 800;
      color: #fff;
      margin: 18px 0;
    }
    .checkout-prime {
      width: 100%;
      background: var(--accent-gradient);
      color: #fff;
      padding: 18px;
      border-radius: 50px;
      font-weight: 800;
      letter-spacing: 0.5px;
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 10px;
      box-shadow: var(--shadow-glow);
    }

    /* QUICK LOOK MODAL */
    .modal-veil {
      position: fixed;
      inset: 0;
      background: rgba(0, 0, 0, 0.85);
      backdrop-filter: blur(16px);
      z-index: 250;
      opacity: 0;
      pointer-events: none;
      transition: all 0.3s ease;
      display: grid;
      place-items: center;
      padding: 24px;
    }
    .modal-veil.active { opacity: 1; pointer-events: auto; }
    .modal-chamber {
      background: var(--bg-subtle);
      border: 1px solid var(--border-subtle);
      border-radius: var(--radius-lg);
      max-width: 840px;
      width: 100%;
      overflow: hidden;
      display: grid;
      grid-template-columns: 1fr 1fr;
      box-shadow: var(--shadow-ambient);
      position: relative;
    }
    .modal-visual {
      background: radial-gradient(circle, #1e2638 0%, #0c101a 100%);
      display: grid;
      place-items: center;
      padding: 40px;
    }
    .modal-visual img { width: 100%; max-height: 380px; object-fit: contain; }
    .modal-specifications { padding: 48px 36px; display: flex; flex-direction: column; justify-content: center; }
    .close-modal {
      position: absolute;
      top: 20px;
      right: 20px;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--surface-2);
      display: grid;
      place-items: center;
    }

    /* FLOATING PILL BAR */
    .floating-summary {
      position: fixed;
      bottom: 28px;
      left: 50%;
      transform: translateX(-50%) translateY(120px);
      background: rgba(18, 24, 38, 0.85);
      backdrop-filter: blur(20px);
      border: 1px solid rgba(255, 255, 255, 0.15);
      padding: 12px 28px;
      border-radius: 50px;
      display: flex;
      align-items: center;
      gap: 20px;
      box-shadow: 0 20px 60px rgba(0,0,0,0.6);
      transition: transform 0.4s cubic-bezier(0.16, 1, 0.3, 1);
      z-index: 99;
    }
    .floating-summary.visible { transform: translateX(-50%) translateY(0); }

    /* TOAST */
    .toast-tower {
      position: fixed;
      bottom: 30px;
      right: 30px;
      z-index: 300;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    .toast-pill {
      background: #ffffff;
      color: #080a10;
      padding: 14px 22px;
      border-radius: 50px;
      font-size: 13px;
      font-weight: 700;
      display: flex;
      align-items: center;
      gap: 12px;
      box-shadow: 0 10px 40px rgba(0,0,0,0.5);
      animation: enter 0.3s cubic-bezier(0.16, 1, 0.3, 1);
    }
    @keyframes enter {
      from { transform: translateY(20px) scale(0.9); opacity: 0; }
      to { transform: translateY(0) scale(1); opacity: 1; }
    }

    @media (max-width: 900px) {
      .hero-stage { padding: 40px; }
      .stats-bar { grid-template-columns: repeat(2, 1fr); }
      .modal-chamber { grid-template-columns: 1fr; max-height: 90vh; overflow-y: auto; }
      .modal-visual { padding: 20px; }
    }
    @media (max-width: 600px) {
      .hero-stage { min-height: auto; }
      .stats-bar { grid-template-columns: 1fr; }
      .product-grid { grid-template-columns: 1fr; }
      .header-layout { height: 70px; }
      .search-cockpit { display: none; }
    }
  </style>
</head>

<body>
  <!-- AMBIENT LIGHTING -->
  <div class="ambient-glow glow-1"></div>
  <div class="ambient-glow glow-2"></div>
  <div class="ambient-glow glow-3"></div>

  <!-- VIP HEADER NOTIFICATION -->
  <div class="vip-strip">
    <span><i class="fa-solid fa-crown"></i> Nexus Concierge Tier: Active</span>
    <span>Complimentary Carbon-Neutral White Glove Delivery</span>
  </div>

  <!-- MAIN NAVIGATION -->
  <header>
    <div class="container header-layout">
      <a href="#" class="brand">
        <div class="brand-crest"><i class="fa-solid fa-gem"></i></div>
        <span>NEXUS<b>PRIME</b></span>
      </a>

      <div class="search-cockpit">
        <i class="fa-solid fa-compass"></i>
        <input type="text" id="searchInput" placeholder="Search the collection (e.g. MacBook, Camera)..." autocomplete="off" />
      </div>

      <div class="nav-actions">
        <button class="glass-btn" id="wishlistTrigger" title="Saved Collection">
          <i class="fa-regular fa-heart"></i>
          <span class="counter-pill" id="wishlistBadge">0</span>
        </button>
        <button class="glass-btn" id="cartTrigger" title="Vault Bag">
          <i class="fa-solid fa-cube"></i>
          <span class="counter-pill" id="cartBadge">0</span>
        </button>
      </div>
    </div>
  </header>

  <main class="container">
    <!-- HERO -->
    <section class="hero">
      <div class="hero-stage">
        <div class="hero-content">
          <div class="prestige-pill"><i class="fa-solid fa-wand-magic-sparkles"></i> The Collection 2026</div>
          <h1>Crafted for the Discerning.</h1>
          <p>An uncompromising curation of next-generation technological artifacts and luxury personal hardware.</p>
          <a href="#gallery" class="prime-btn">Explore Inventory <i class="fa-solid fa-arrow-right"></i></a>
        </div>
      </div>
    </section>

    <!-- STATS -->
    <div class="stats-bar">
      <div class="stat-tile">
        <div class="stat-icon"><i class="fa-solid fa-shield-halved"></i></div>
        <div class="stat-info"><h4>Two-Year Coverage</h4><p>Worldwide bespoke warranty</p></div>
      </div>
      <div class="stat-tile">
        <div class="stat-icon"><i class="fa-solid fa-truck-ramp-box"></i></div>
        <div class="stat-info"><h4>Express Courier</h4><p>Priority dispatch in 24h</p></div>
      </div>
      <div class="stat-tile">
        <div class="stat-icon"><i class="fa-solid fa-rotate"></i></div>
        <div class="stat-info"><h4>30-Day Evaluation</h4><p>Effortless returns policy</p></div>
      </div>
      <div class="stat-tile">
        <div class="stat-icon"><i class="fa-solid fa-fingerprint"></i></div>
        <div class="stat-info"><h4>Cryptographic Auth</h4><p>Every piece serialized</p></div>
      </div>
    </div>

    <!-- CATALOG HEADER & DOCKS -->
    <div class="section-head" id="gallery">
      <div>
        <h2>Masterpiece Catalog</h2>
        <p>Select a category or filter to inspect available pieces</p>
      </div>
    </div>

    <div class="filter-island">
      <div class="category-dock" id="categoryDock">
        <button class="dock-pill active" data-filter="all">All Editions</button>
        <button class="dock-pill" data-filter="phones">Smartphones</button>
        <button class="dock-pill" data-filter="laptops">Computing</button>
        <button class="dock-pill" data-filter="audio">Acoustics</button>
        <button class="dock-pill" data-filter="accessories">Horology & Vision</button>
      </div>

      <select class="sort-capsule" id="sortSelect">
        <option value="curated">Curated First</option>
        <option value="asc">Price: Low to High</option>
        <option value="desc">Price: High to Low</option>
      </select>
    </div>

    <!-- MAIN PRODUCT GALLERY -->
    <div class="product-grid" id="productGrid"></div>
  </main>

  <!-- CART DRAWER -->
  <div class="curtain" id="curtain"></div>
  <aside class="vault-drawer" id="vaultDrawer">
    <div class="vault-header">
      <div>
        <h3>Your Selection Vault</h3>
        <small style="color:var(--text-muted);" id="vaultCountNote">0 pieces reserved</small>
      </div>
      <button class="glass-btn" id="closeVault"><i class="fa-solid fa-xmark"></i></button>
    </div>

    <div class="free-shipping-tracker">
      <div style="display:flex; justify-content:space-between; font-weight:600;">
        <span id="trackerMsg">Add items to unlock Complimentary Courier</span>
        <span id="trackerPercent">0%</span>
      </div>
      <div class="progress-track"><div class="progress-fill" id="progressFill"></div></div>
    </div>

    <div class="vault-body" id="vaultItemList"></div>

    <div class="vault-footer">
      <div class="tally-row"><span>Estimated Valuation</span><span id="vaultSubtotal">$0.00</span></div>
      <div class="tally-row"><span>Logistics</span><span style="color:var(--gold);">Complimentary</span></div>
      <div class="tally-row grand"><span>Total Commitment</span><span id="vaultTotal">$0.00</span></div>
      <button class="checkout-prime" id="checkoutBtn">
        <span>Proceed to Secure Vault</span>
        <i class="fa-solid fa-lock"></i>
      </button>
    </div>
  </aside>

  <!-- QUICK VIEW MODAL -->
  <div class="modal-veil" id="modalVeil">
    <div class="modal-chamber">
      <button class="close-modal" id="closeModal"><i class="fa-solid fa-xmark"></i></button>
      <div class="modal-visual">
        <img src="" id="modalImg" alt="Product View" />
      </div>
      <div class="modal-specifications">
        <span class="category-tag" id="modalCategory">Hardware</span>
        <h2 style="font-family:'Space Grotesk',sans-serif; margin-bottom:8px;" id="modalTitle">Product Title</h2>
        <div class="specs-line" id="modalRating"></div>
        <p style="color:var(--text-muted); font-size:14px; margin-bottom:24px;" id="modalDesc">Detailed artisanal specification for the device.</p>
        <div class="price-now" style="font-size:26px; margin-bottom:24px;" id="modalPrice">$0.00</div>
        <button class="prime-btn" id="modalAddBtn" style="width:100%; justify-content:center;">Add to Cart Vault</button>
      </div>
    </div>
  </div>

  <!-- FLOATING QUICK DRAWER ACCELERATOR -->
  <div class="floating-summary" id="floatingSummary">
    <div style="display:flex; align-items:center; gap:10px;">
      <i class="fa-solid fa-cube" style="color:var(--accent);"></i>
      <span style="font-size:13px; font-weight:700;"><span id="floatCount">0</span> Reserved</span>
    </div>
    <button class="prime-btn" style="padding:8px 20px; font-size:13px;" id="floatOpenCart">View Bag</button>
  </div>

  <!-- SYSTEM TOASTS -->
  <div class="toast-tower" id="toastTower"></div>

  <script>
    const inventory = [
      { id: 1, name: "iPhone 15 Pro Max Titanium", category: "phones", price: 1199, oldPrice: 1299, rating: 5, reviews: 242, badge: "Exclusive", image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=800&q=85", desc: "Forged in aerospace-grade titanium with an advanced 3nm A17 Pro silicon engine." },
      { id: 2, name: 'MacBook Pro 16" M3 Max', category: "laptops", price: 3499, oldPrice: null, rating: 5, reviews: 118, badge: "Peak Power", image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=85", desc: "Unmatched computational power for machine intelligence, visual renders, and compile cycles." },
      { id: 3, name: "Grand Horology Watch Ultra", category: "accessories", price: 799, oldPrice: 899, rating: 5, reviews: 312, badge: "-15%", image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=85", desc: "Sapphire glass, ceramic backplate, and dual-frequency precision GPS telemetry." },
      { id: 4, name: "Sony Alpha 7R V Full-Frame", category: "accessories", price: 3899, oldPrice: null, rating: 5, reviews: 94, badge: "Pro Grade", image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=85", desc: "61.0 MP high-resolution image engine with dedicated artificial intelligence autofocus processing." },
      { id: 5, name: "Acoustics Masterpiece ANC", category: "audio", price: 549, oldPrice: 599, rating: 5, reviews: 408, badge: "Pure Sound", image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85", desc: "Custom-crafted 40mm beryllium dynamic drivers delivering ultra-wide harmonic frequency." },
      { id: 6, name: "Bespoke Ballistic Daypack", category: "accessories", price: 280, oldPrice: 350, rating: 4, reviews: 87, badge: "Limited", image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85", desc: "Waterproof Cordura construct with dedicated anodized aluminum buckle attachments." }
    ];

    let cart = JSON.parse(localStorage.getItem('nexus_cart')) || [];
    let wishlist = JSON.parse(localStorage.getItem('nexus_wishlist')) || [];
    let activeFilter = 'all';

    const productGrid = document.getElementById('productGrid');
    const searchInput = document.getElementById('searchInput');
    const sortSelect = document.getElementById('sortSelect');
    const vaultDrawer = document.getElementById('vaultDrawer');
    const curtain = document.getElementById('curtain');
    const modalVeil = document.getElementById('modalVeil');

    function notify(text, icon = 'fa-check') {
      const toast = document.createElement('div');
      toast.className = 'toast-pill';
      toast.innerHTML = `<i class="fa-solid ${icon}"></i> <span>${text}</span>`;
      document.getElementById('toastTower').appendChild(toast);
      setTimeout(() => toast.remove(), 3200);
    }

    function renderProducts() {
      const search = searchInput.value.toLowerCase().trim();
      const sort = sortSelect.value;

      let list = inventory.filter(item => {
        const matchesCategory = activeFilter === 'all' || item.category === activeFilter;
        const matchesSearch = item.name.toLowerCase().includes(search) || item.category.toLowerCase().includes(search);
        return matchesCategory && matchesSearch;
      });

      if (sort === 'asc') list.sort((a,b) => a.price - b.price);
      if (sort === 'desc') list.sort((a,b) => b.price - a.price);

      if (!list.length) {
        productGrid.innerHTML = `
          <div style="grid-column: 1 / -1; text-align:center; padding:80px 20px; color:var(--text-muted);">
            <i class="fa-solid fa-magnifying-glass" style="font-size:36px; margin-bottom:12px;"></i>
            <h3>No Artefacts Found</h3>
            <p>Modify your query criteria to surface matching inventory.</p>
          </div>`;
        return;
      }

      productGrid.innerHTML = list.map(item => `
        <article class="product-card">
          <div class="visual-stage">
            ${item.badge ? `<span class="badge-insignia ${item.badge.includes('%') ? 'sale' : ''}">${item.badge}</span>` : ''}
            <button class="fav-trigger ${wishlist.includes(item.id) ? 'active' : ''}" onclick="toggleWishlist(${item.id})">
              <i class="fa-${wishlist.includes(item.id) ? 'solid' : 'regular'} fa-heart"></i>
            </button>
            <img src="${item.image}" alt="${item.name}" loading="lazy" onclick="triggerQuickView(${item.id})" style="cursor:pointer;" />
          </div>
          <div class="card-meta">
            <span class="category-tag">${item.category}</span>
            <h3 class="product-title" onclick="triggerQuickView(${item.id})">${item.name}</h3>
            <div class="specs-line">
              ${'★'.repeat(item.rating)} <span>(${item.reviews} verified)</span>
            </div>
            <div class="card-action-hub">
              <div class="price-wrap">
                <span class="price-now">$${item.price.toLocaleString()}</span>
                ${item.oldPrice ? `<span class="price-strike">$${item.oldPrice.toLocaleString()}</span>` : ''}
              </div>
              <button class="btn-procure" onclick="addToCart(${item.id})">
                <i class="fa-solid fa-plus"></i> Acquire
              </button>
            </div>
          </div>
        </article>
      `).join('');
    }

    function addToCart(id) {
      const match = cart.find(i => i.id === id);
      if (match) match.qty++;
      else cart.push({ id, qty: 1 });
      saveState();
      updateCartUI();
      openVault();
      const product = inventory.find(p => p.id === id);
      notify(`${product.name} deposited into Vault`, 'fa-cube');
    }

    function updateCartUI() {
      const totalCount = cart.reduce((sum, item) => sum + item.qty, 0);
      document.getElementById('cartBadge').textContent = totalCount;
      document.getElementById('floatCount').textContent = totalCount;
      document.getElementById('vaultCountNote').textContent = `${totalCount} item(s) currently held`;

      const floatingSummary = document.getElementById('floatingSummary');
      if (totalCount > 0) floatingSummary.classList.add('visible');
      else floatingSummary.classList.remove('visible');

      const vaultList = document.getElementById('vaultItemList');
      if (!cart.length) {
        vaultList.innerHTML = `
          <div style="text-align:center; padding:60px 0; color:var(--text-muted);">
            <i class="fa-solid fa-cube" style="font-size:40px; margin-bottom:14px; opacity:0.3;"></i>
            <p>Your reserve vault is empty.</p>
          </div>`;
        document.getElementById('vaultSubtotal').textContent = "$0.00";
        document.getElementById('vaultTotal').textContent = "$0.00";
        updateShippingProgress(0);
        return;
      }

      let subtotal = 0;
      vaultList.innerHTML = cart.map(line => {
        const item = inventory.find(p => p.id === line.id);
        subtotal += item.price * line.qty;
        return `
          <div class="vault-line">
            <img src="${item.image}" alt="${item.name}" />
            <div class="vault-line-info">
              <h5>${item.name}</h5>
              <div class="vault-line-price">$${(item.price * line.qty).toLocaleString()}</div>
              <div class="stepper">
                <button onclick="changeQty(${item.id}, -1)"><i class="fa-solid fa-minus"></i></button>
                <span style="font-weight:700; font-size:13px;">${line.qty}</span>
                <button onclick="changeQty(${item.id}, 1)"><i class="fa-solid fa-plus"></i></button>
              </div>
            </div>
            <button onclick="removeItem(${item.id})" style="color:var(--text-dim);"><i class="fa-solid fa-trash-can"></i></button>
          </div>
        `;
      }).join('');

      document.getElementById('vaultSubtotal').textContent = `$${subtotal.toLocaleString()}`;
      document.getElementById('vaultTotal').textContent = `$${subtotal.toLocaleString()}`;
      updateShippingProgress(subtotal);
    }

    function updateShippingProgress(total) {
      const threshold = 2000;
      const progress = Math.min(100, Math.round((total / threshold) * 100));
      const fill = document.getElementById('progressFill');
      const msg = document.getElementById('trackerMsg');
      const percent = document.getElementById('trackerPercent');

      fill.style.width = `${progress}%`;
      percent.textContent = `${progress}%`;

      if (progress >= 100) {
        msg.innerHTML = `<span style="color:#10b981"><i class="fa-solid fa-circle-check"></i> VIP Freight Unlocked</span>`;
      } else {
        msg.textContent = `Add $${(threshold - total).toLocaleString()} more for VIP Freight`;
      }
    }

    function changeQty(id, delta) {
      const entry = cart.find(i => i.id === id);
      if (!entry) return;
      entry.qty += delta;
      if (entry.qty <= 0) cart = cart.filter(i => i.id !== id);
      saveState();
      updateCartUI();
    }

    function removeItem(id) {
      cart = cart.filter(i => i.id !== id);
      saveState();
      updateCartUI();
      notify("Item released from vault");
    }

    function toggleWishlist(id) {
      if (wishlist.includes(id)) {
        wishlist = wishlist.filter(i => i !== id);
        notify("Removed from saved curations");
      } else {
        wishlist.push(id);
        notify("Pinned to Private Curations", "fa-heart");
      }
      saveState();
      document.getElementById('wishlistBadge').textContent = wishlist.length;
      renderProducts();
    }

    function triggerQuickView(id) {
      const item = inventory.find(p => p.id === id);
      document.getElementById('modalImg').src = item.image;
      document.getElementById('modalCategory').textContent = item.category;
      document.getElementById('modalTitle').textContent = item.name;
      document.getElementById('modalDesc').textContent = item.desc;
      document.getElementById('modalPrice').textContent = `$${item.price.toLocaleString()}`;
      document.getElementById('modalRating').innerHTML = `${'★'.repeat(item.rating)} <span style="margin-left:8px;">${item.reviews} Collector Reviews</span>`;
      
      const modalAddBtn = document.getElementById('modalAddBtn');
      modalAddBtn.onclick = () => {
        addToCart(item.id);
        closeModalWindow();
      };

      modalVeil.classList.add('active');
    }

    function closeModalWindow() { modalVeil.classList.remove('active'); }
    function openVault() { vaultDrawer.classList.add('active'); curtain.classList.add('active'); }
    function closeVault() { vaultDrawer.classList.remove('active'); curtain.classList.remove('active'); }
    function saveState() {
      localStorage.setItem('nexus_cart', JSON.stringify(cart));
      localStorage.setItem('nexus_wishlist', JSON.stringify(wishlist));
    }

    // EVENT WIRING
    document.getElementById('cartTrigger').addEventListener('click', openVault);
    document.getElementById('closeVault').addEventListener('click', closeVault);
    document.getElementById('floatOpenCart').addEventListener('click', openVault);
    curtain.addEventListener('click', closeVault);
    document.getElementById('closeModal').addEventListener('click', closeModalWindow);

    document.querySelectorAll('.category-dock .dock-pill').forEach(btn => {
      btn.addEventListener('click', (e) => {
        document.querySelectorAll('.category-dock .dock-pill').forEach(p => p.classList.remove('active'));
        e.target.classList.add('active');
        activeFilter = e.target.dataset.filter;
        renderProducts();
      });
    });

    searchInput.addEventListener('input', renderProducts);
    sortSelect.addEventListener('change', renderProducts);

    document.getElementById('checkoutBtn').addEventListener('click', () => {
      if (!cart.length) return notify("Your reserve vault is empty", "fa-circle-exclamation");
      notify("Initiating Secure Encrypted Checkout...", "fa-shield-halved");
    });

    document.getElementById('wishlistTrigger').addEventListener('click', () => {
      if (!wishlist.length) return notify("No items in Private Curations", "fa-heart");
      notify(`${wishlist.length} item(s) curated in your wishlist`, "fa-heart");
    });

    // INIT
    renderProducts();
    updateCartUI();
    document.getElementById('wishlistBadge').textContent = wishlist.length;
  </script>
</body>
</html>
