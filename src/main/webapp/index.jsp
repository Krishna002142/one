<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Feastly · food for everyone</title>
  <!-- Google Font & Font Awesome for friendly icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background-color: #fffcf9;
      color: #1e1e2a;
      line-height: 1.5;
      scroll-behavior: smooth;
    }

    /* friendly & warm container */
    .wrapper {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* --- HEADER --- */
    .header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 20px 0;
      flex-wrap: wrap;
      gap: 16px;
      border-bottom: 1px solid #f0e7e0;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      color: #d45a2e;
    }

    .logo i {
      font-size: 2.2rem;
      color: #e86f3a;
    }

    .nav-links {
      display: flex;
      gap: 32px;
      font-weight: 500;
      color: #3d3d4e;
    }

    .nav-links a {
      text-decoration: none;
      color: inherit;
      font-size: 1rem;
      transition: color 0.2s;
      padding: 6px 0;
      border-bottom: 2px solid transparent;
    }

    .nav-links a:hover,
    .nav-links a.active {
      color: #d45a2e;
      border-bottom-color: #d45a2e;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 18px;
    }

    .search-icon, .cart-icon {
      font-size: 1.3rem;
      color: #3d3d4e;
      cursor: default;
      transition: color 0.2s;
    }

    .cart-icon {
      position: relative;
    }

    .cart-badge {
      position: absolute;
      top: -8px;
      right: -10px;
      background-color: #e86f3a;
      color: white;
      font-size: 0.7rem;
      font-weight: 600;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* --- HERO SECTION --- */
    .hero {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      padding: 48px 0 60px;
      flex-wrap: wrap;
    }

    .hero-content {
      flex: 1 1 380px;
    }

    .hero-badge {
      display: inline-block;
      background-color: #fef1e9;
      color: #d45a2e;
      font-weight: 600;
      font-size: 0.9rem;
      padding: 6px 16px;
      border-radius: 40px;
      margin-bottom: 22px;
      letter-spacing: 0.3px;
    }

    .hero-content h1 {
      font-size: 3.3rem;
      font-weight: 700;
      line-height: 1.2;
      letter-spacing: -1px;
      margin-bottom: 20px;
      color: #1e1e2a;
    }

    .hero-highlight {
      color: #d45a2e;
      background: linear-gradient(145deg, #fde7dc, #ffffff);
      padding: 0 10px;
      display: inline-block;
      border-radius: 12px;
    }

    .hero-content p {
      font-size: 1.15rem;
      color: #5b5b6b;
      margin-bottom: 32px;
      max-width: 500px;
    }

    .hero-cta {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 1rem;
      border: none;
      cursor: default;
      transition: all 0.2s ease;
      text-decoration: none;
    }

    .btn-primary {
      background-color: #d45a2e;
      color: white;
      box-shadow: 0 8px 18px -6px rgba(212, 90, 46, 0.35);
    }

    .btn-primary:hover {
      background-color: #b94a22;
      transform: scale(1.02);
    }

    .btn-outline {
      background: transparent;
      border: 1.5px solid #e0d6cf;
      color: #3d3d4e;
    }

    .btn-outline:hover {
      border-color: #d45a2e;
      color: #d45a2e;
      background-color: #fff9f5;
    }

    .hero-image {
      flex: 1 1 380px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .hero-image img {
      max-width: 100%;
      height: auto;
      border-radius: 42% 58% 38% 62% / 56% 48% 52% 44%;
      box-shadow: 0 30px 40px -20px rgba(0, 0, 0, 0.15);
      transition: border-radius 0.3s;
      object-fit: cover;
      width: 100%;
      aspect-ratio: 1/1;
      background: #fef1e9;
    }

    /* --- CATEGORIES (UI friendly quick picks) --- */
    .section-title {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin: 40px 0 24px;
    }

    .section-title h2 {
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -0.3px;
    }

    .section-title a {
      text-decoration: none;
      color: #d45a2e;
      font-weight: 500;
      font-size: 1rem;
      transition: opacity 0.2s;
    }

    .section-title a:hover {
      opacity: 0.7;
    }

    .category-grid {
      display: flex;
      gap: 18px;
      flex-wrap: wrap;
      margin-bottom: 48px;
    }

    .category-item {
      background: #ffffff;
      border: 1px solid #f0e7e0;
      padding: 14px 26px;
      border-radius: 60px;
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 500;
      color: #2c2c3a;
      transition: all 0.15s;
      cursor: default;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.01);
    }

    .category-item i {
      color: #d45a2e;
      font-size: 1.2rem;
    }

    .category-item:hover {
      border-color: #d45a2e;
      background-color: #fefaf7;
      box-shadow: 0 10px 18px -10px rgba(212, 90, 46, 0.2);
    }

    /* --- FOOD CARDS (UI friendly cards) --- */
    .card-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 28px;
      margin-bottom: 60px;
    }

    .food-card {
      background: white;
      border-radius: 28px;
      padding: 0 0 22px;
      box-shadow: 0 12px 28px -10px rgba(0, 0, 0, 0.06);
      border: 1px solid #f5ede7;
      transition: transform 0.25s, box-shadow 0.25s;
      display: flex;
      flex-direction: column;
      overflow: hidden;
    }

    .food-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 28px 36px -16px rgba(212, 90, 46, 0.18);
      border-color: #f5d9cc;
    }

    .card-img {
      width: 100%;
      aspect-ratio: 1/1;
      background: #fef6f1;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 4rem;
      color: #d45a2e;
      transition: background 0.2s;
    }

    .food-card:hover .card-img {
      background: #fef1e9;
    }

    .card-content {
      padding: 16px 18px 0;
    }

    .card-content h3 {
      font-size: 1.25rem;
      font-weight: 600;
      margin-bottom: 6px;
      color: #1e1e2a;
    }

    .card-desc {
      font-size: 0.9rem;
      color: #6b6b7c;
      display: flex;
      align-items: center;
      gap: 6px;
      margin-bottom: 14px;
    }

    .card-footer {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 18px;
      margin-top: 8px;
    }

    .price {
      font-size: 1.25rem;
      font-weight: 700;
      color: #d45a2e;
    }

    .price small {
      font-size: 0.8rem;
      font-weight: 400;
      color: #9b9baf;
      margin-left: 3px;
    }

    .add-btn {
      background: #fef1e9;
      border: none;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #d45a2e;
      font-size: 1.2rem;
      cursor: default;
      transition: all 0.2s;
    }

    .food-card:hover .add-btn {
      background: #d45a2e;
      color: white;
      box-shadow: 0 6px 12px -4px rgba(212, 90, 46, 0.4);
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.85rem;
      font-weight: 500;
      color: #ffb800;
    }

    .rating span {
      color: #6b6b7c;
      font-weight: 400;
      margin-left: 3px;
    }

    /* --- PROMO / DELIVERY BANNER (UI friendly touch) --- */
    .promo-banner {
      background: linear-gradient(135deg, #fff4ed 0%, #ffe9dd 100%);
      border-radius: 48px;
      padding: 40px 48px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
      margin: 48px 0 60px;
      border: 1px solid #ffe1d3;
    }

    .promo-text h2 {
      font-size: 2rem;
      font-weight: 700;
      color: #2c1e16;
      margin-bottom: 8px;
    }

    .promo-text p {
      color: #6e4e3a;
      font-size: 1.1rem;
    }

    .promo-code {
      background: white;
      border-radius: 60px;
      padding: 12px 28px;
      font-weight: 600;
      font-size: 1.3rem;
      letter-spacing: 1px;
      color: #d45a2e;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.02);
      border: 1px dashed #d45a2e;
    }

    /* --- FOOTER --- */
    .footer {
      border-top: 1px solid #f0e7e0;
      padding: 40px 0 24px;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 36px;
      font-size: 0.95rem;
      color: #5e5e6f;
    }

    .footer-logo {
      font-weight: 700;
      font-size: 1.7rem;
      color: #d45a2e;
      display: flex;
      align-items: center;
      gap: 6px;
      margin-bottom: 16px;
    }

    .footer-links {
      display: flex;
      gap: 60px;
      flex-wrap: wrap;
    }

    .footer-col h4 {
      font-size: 1rem;
      font-weight: 600;
      color: #1e1e2a;
      margin-bottom: 16px;
    }

    .footer-col a {
      display: block;
      text-decoration: none;
      color: #6b6b7c;
      margin-bottom: 10px;
      transition: color 0.2s;
    }

    .footer-col a:hover {
      color: #d45a2e;
    }

    .social-icons {
      display: flex;
      gap: 18px;
      font-size: 1.5rem;
      color: #b0a8a2;
      margin-top: 8px;
    }

    .social-icons i {
      transition: color 0.2s, transform 0.15s;
      cursor: default;
    }

    .social-icons i:hover {
      color: #d45a2e;
      transform: scale(1.1);
    }

    .copyright {
      text-align: center;
      padding: 28px 0 16px;
      font-size: 0.85rem;
      color: #9f9faf;
      border-top: 1px solid #f5ede7;
      margin-top: 20px;
    }

    /* responsive fine-tuning */
    @media (max-width: 700px) {
      .hero-content h1 {
        font-size: 2.5rem;
      }
      .header {
        justify-content: center;
        text-align: center;
      }
      .nav-links {
        gap: 20px;
        flex-wrap: wrap;
        justify-content: center;
      }
      .promo-banner {
        padding: 30px 24px;
        text-align: center;
        justify-content: center;
      }
      .footer {
        flex-direction: column;
        gap: 24px;
      }
      .footer-links {
        gap: 32px;
      }
    }

    @media (max-width: 480px) {
      .hero-cta {
        flex-direction: column;
        align-items: stretch;
      }
      .btn {
        justify-content: center;
      }
      .section-title h2 {
        font-size: 1.6rem;
      }
    }
  </style>
</head>
<body>

  <div class="wrapper">
    <!-- HEADER -->
    <header class="header">
      <div class="logo">
        <i class="fas fa-utensils"></i> Feastly
      </div>
      <nav class="nav-links">
        <a href="#" class="active">Home</a>
        <a href="#">Menu</a>
        <a href="#">Offers</a>
        <a href="#">Contact</a>
      </nav>
      <div class="header-actions">
        <i class="fas fa-search search-icon" aria-label="Search"></i>
        <div class="cart-icon">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-badge">2</span>
        </div>
      </div>
    </header>

    <!-- HERO SECTION -->
    <section class="hero">
      <div class="hero-content">
        <div class="hero-badge">
          <i class="fas fa-leaf" style="margin-right: 6px;"></i> fresh & local
        </div>
        <h1>
          Taste the <span class="hero-highlight">goodness</span> in every bite
        </h1>
        <p>
          Discover delicious meals crafted with love. Free delivery on your first order — because good food should be shared.
        </p>
        <div class="hero-cta">
          <button class="btn btn-primary">
            <i class="fas fa-bag-shopping"></i> Order now
          </button>
          <button class="btn btn-outline">
            <i class="fas fa-book-open"></i> See menu
          </button>
        </div>
      </div>
      <div class="hero-image">
        <img 
          src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 400 400'%3E%3Ccircle cx='200' cy='200' r='180' fill='%23fef1e9'/%3E%3Cpath d='M150 150 Q200 80 250 150 Q280 200 250 250 Q200 320 150 250 Q120 200 150 150' fill='%23e86f3a' opacity='0.9'/%3E%3Ccircle cx='180' cy='170' r='12' fill='%23fff3e6'/%3E%3Ccircle cx='230' cy='170' r='12' fill='%23fff3e6'/%3E%3Cpath d='M180 210 Q200 235 220 210' stroke='%23fff3e6' stroke-width='8' fill='none' stroke-linecap='round'/%3E%3C/svg%3E"
          alt="Delicious bowl of food illustration"
        >
      </div>
    </section>

    <!-- CATEGORIES quick picks -->
    <div class="section-title">
      <h2>Browse by craving</h2>
      <a href="#">View all <i class="fas fa-arrow-right" style="font-size: 0.8rem;"></i></a>
    </div>
    <div class="category-grid">
      <div class="category-item"><i class="fas fa-pizza-slice"></i> Pizza</div>
      <div class="category-item"><i class="fas fa-hamburger"></i> Burgers</div>
      <div class="category-item"><i class="fas fa-fish"></i> Sushi</div>
      <div class="category-item"><i class="fas fa-carrot"></i> Vegan</div>
      <div class="category-item"><i class="fas fa-cocktail"></i> Drinks</div>
      <div class="category-item"><i class="fas fa-ice-cream"></i> Desserts</div>
    </div>

    <!-- POPULAR DISHES -->
    <div class="section-title">
      <h2>Popular this week</h2>
      <a href="#">See all <i class="fas fa-arrow-right" style="font-size: 0.8rem;"></i></a>
    </div>
    <div class="card-grid">
      <!-- card 1 -->
      <div class="food-card">
        <div class="card-img">
          <i class="fas fa-pizza-slice"></i>
        </div>
        <div class="card-content">
          <h3>Margherita Pizza</h3>
          <div class="card-desc">
            <i class="fas fa-star rating" style="color: #ffb800;"></i>
            <span class="rating">4.8 <span>(120+)</span></span>
          </div>
        </div>
        <div class="card-footer">
          <div class="price">$12.90 <small></small></div>
          <div class="add-btn"><i class="fas fa-plus"></i></div>
        </div>
      </div>

      <!-- card 2 -->
      <div class="food-card">
        <div class="card-img">
          <i class="fas fa-hamburger"></i>
        </div>
        <div class="card-content">
          <h3>Double Cheeseburger</h3>
          <div class="card-desc">
            <i class="fas fa-star rating" style="color: #ffb800;"></i>
            <span class="rating">4.9 <span>(98+)</span></span>
          </div>
        </div>
        <div class="card-footer">
          <div class="price">$15.50</div>
          <div class="add-btn"><i class="fas fa-plus"></i></div>
        </div>
      </div>

      <!-- card 3 -->
      <div class="food-card">
        <div class="card-img">
          <i class="fas fa-fish"></i>
        </div>
        <div class="card-content">
          <h3>Salmon Sushi Set</h3>
          <div class="card-desc">
            <i class="fas fa-star rating" style="color: #ffb800;"></i>
            <span class="rating">4.7 <span>(76+)</span></span>
          </div>
        </div>
        <div class="card-footer">
          <div class="price">$18.20</div>
          <div class="add-btn"><i class="fas fa-plus"></i></div>
        </div>
      </div>

      <!-- card 4 -->
      <div class="food-card">
        <div class="card-img">
          <i class="fas fa-ice-cream"></i>
        </div>
        <div class="card-content">
          <h3>Berry Sundae</h3>
          <div class="card-desc">
            <i class="fas fa-star rating" style="color: #ffb800;"></i>
            <span class="rating">4.9 <span>(210+)</span></span>
          </div>
        </div>
        <div class="card-footer">
          <div class="price">$8.40</div>
          <div class="add-btn"><i class="fas fa-plus"></i></div>
        </div>
      </div>
    </div>

    <!-- PROMO BANNER (UI friendly callout) -->
    <div class="promo-banner">
      <div class="promo-text">
        <h2>Free delivery on your first order 🎉</h2>
        <p>Use code <strong>FEASTLY10</strong> at checkout — fresh food, zero fees.</p>
      </div>
      <div class="promo-code">
        FEASTLY10
      </div>
    </div>

    <!-- FOOTER -->
    <footer class="footer">
      <div style="flex: 1 1 240px;">
        <div class="footer-logo">
          <i class="fas fa-utensils"></i> Feastly
        </div>
        <p style="max-width: 260px; color: #6b6b7c; margin-bottom: 18px;">
          Made with <i class="fas fa-heart" style="color: #d45a2e;"></i> for food lovers. Fresh ingredients, friendly service.
        </p>
        <div class="social-icons">
          <i class="fab fa-instagram"></i>
          <i class="fab fa-facebook"></i>
          <i class="fab fa-x-twitter"></i>
          <i class="fab fa-tiktok"></i>
        </div>
      </div>
      <div class="footer-links">
        <div class="footer-col">
          <h4>Explore</h4>
          <a href="#">Menu</a>
          <a href="#">Offers</a>
          <a href="#">Gift cards</a>
        </div>
        <div class="footer-col">
          <h4>Support</h4>
          <a href="#">Contact</a>
          <a href="#">FAQs</a>
          <a href="#">Delivery</a>
        </div>
        <div class="footer-col">
          <h4>Legal</h4>
          <a href="#">Terms</a>
          <a href="#">Privacy</a>
          <a href="#">Cookies</a>
        </div>
      </div>
    </footer>
    <div class="copyright">
      © 2025 Feastly — good food, good mood.
    </div>
  </div>
  <!-- wrapper end -->

</body>
</html>
