<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="LUMINA modern e‑commerce store — discover curated products.">
    <title>LUMINA · e‑commerce UI</title>
    <!-- Font Awesome (with SRI for integrity) -->
    <link rel="stylesheet" 
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" 
          integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" 
          crossorigin="anonymous" 
          referrerpolicy="no-referrer">
    <style>
        /* ---------- RESET & GLOBAL ---------- */
        *,
        *::before,
        *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: system-ui, 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
        }

        body {
            background: #f7f8fc;
            display: flex;
            justify-content: center;
            padding: 2rem 1rem;
            min-height: 100vh;
            line-height: 1.5;
            color: #1e1e2f;
        }

        /* Visually hidden (for a11y labels) */
        .visually-hidden {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
        }

        .app-container {
            max-width: 1360px;
            width: 100%;
        }

        /* ---------- BUTTON RESET ---------- */
        button {
            background: none;
            border: none;
            cursor: pointer;
            font: inherit;
            color: inherit;
        }

        /* Font Awesome icons inside <em> — ensure they don't look italic */
        em.fa,
        em.fas,
        em.far,
        em.fab,
        em.fa-solid,
        em.fa-regular,
        em.fa-brands {
            font-style: normal;
            display: inline-block;
        }

        /* ---------- NAVBAR ---------- */
        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1rem;
            background: #ffffff;
            padding: 0.9rem 2rem;
            border-radius: 50px;
            box-shadow: 0 10px 25px -8px rgba(0, 0, 0, 0.08);
            margin-bottom: 2.5rem;
            border: 1px solid #eaeaef;
        }

        .logo-area {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .logo-icon {
            background: #1e1e2f;
            color: white;
            width: 40px;
            height: 40px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.4rem;
            flex-shrink: 0;
        }

        .logo-text {
            font-weight: 700;
            font-size: 1.5rem;
            letter-spacing: -0.5px;
            color: #1e1e2f;
            white-space: nowrap;
        }

        .nav-links {
            display: flex;
            gap: 2.2rem;
            font-weight: 500;
            color: #3a3a4a;
        }

        .nav-links a {
            text-decoration: none;
            color: inherit;
            font-size: 1rem;
            transition: color 0.2s;
        }

        .nav-links a:hover,
        .nav-links a:focus-visible {
            color: #1e1e2f;
            outline: 2px solid #1e1e2f;
            outline-offset: 4px;
            border-radius: 4px;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.3rem;
            color: #3a3a4a;
            cursor: pointer;
            position: relative;
            transition: color 0.2s, transform 0.1s;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0.25rem;
            border-radius: 8px;
        }

        .icon-btn:hover,
        .icon-btn:focus-visible {
            color: #1e1e2f;
            transform: scale(1.05);
            outline: 2px solid #1e1e2f;
            outline-offset: 2px;
        }

        .cart-badge {
            position: absolute;
            top: -8px;
            right: -8px;
            background: #b32b2b;
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            pointer-events: none;
        }

        .avatar {
            width: 42px;
            height: 42px;
            background: linear-gradient(145deg, #ddd6fe, #c7d2fe);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 600;
            color: #1e1e2f;
            font-size: 1rem;
            border: 2px solid white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.06);
            cursor: pointer;
            flex-shrink: 0;
        }

        /* ---------- HERO ---------- */
        .hero-section {
            background: linear-gradient(135deg, #1e1e2f 0%, #2d2d44 100%);
            border-radius: 2.5rem;
            padding: 2.5rem 3rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 3rem;
            box-shadow: 0 25px 30px -12px rgba(0, 0, 0, 0.2);
            color: white;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .hero-content {
            max-width: 550px;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(255, 255, 255, 0.12);
            padding: 0.4rem 1rem;
            border-radius: 40px;
            font-size: 0.85rem;
            letter-spacing: 0.5px;
            font-weight: 500;
            margin-bottom: 1.2rem;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .hero-content h1 {
            font-size: 2.8rem;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: -1px;
            margin-bottom: 1rem;
        }

        .hero-content h1 span {
            color: #cbbdff;
        }

        .hero-content p {
            color: #d4d4e6;
            font-size: 1.1rem;
            line-height: 1.5;
            margin-bottom: 2rem;
            max-width: 450px;
        }

        .hero-cta {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .btn-primary {
            background: #ffffff;
            color: #1e1e2f;
            border: none;
            padding: 0.9rem 2rem;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.95rem;
            cursor: pointer;
            transition: all 0.2s;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: 0 8px 18px -6px rgba(0, 0, 0, 0.3);
        }

        .btn-primary:hover,
        .btn-primary:focus-visible {
            background: #f0f0fa;
            transform: scale(1.02);
            outline: 3px solid #ffffff;
            outline-offset: 2px;
        }

        .btn-outline {
            background: transparent;
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.4);
            padding: 0.9rem 2rem;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.95rem;
            cursor: pointer;
            transition: all 0.2s;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .btn-outline:hover,
        .btn-outline:focus-visible {
            background: rgba(255, 255, 255, 0.12);
            border-color: #ffffff;
            outline: 3px solid #ffffff;
            outline-offset: 2px;
        }

        .hero-visual {
            background: radial-gradient(circle at 30% 30%, #4b3b8a, #1e1e2f);
            width: 200px;
            height: 200px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 20px 40px -10px rgba(0, 0, 0, 0.6), inset 0 0 30px rgba(255, 255, 255, 0.05);
            border: 2px solid rgba(255, 255, 255, 0.1);
            flex-shrink: 0;
        }

        .hero-visual em {
            font-size: 5rem;
            color: rgba(255, 255, 255, 0.9);
            filter: drop-shadow(0 8px 12px rgba(0, 0, 0, 0.3));
        }

        /* ---------- SECTION HEADERS ---------- */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin-bottom: 1.8rem;
            flex-wrap: wrap;
            gap: 0.5rem;
        }

        .section-header h2 {
            font-size: 1.8rem;
            font-weight: 700;
            letter-spacing: -0.5px;
            color: #1e1e2f;
        }

        .section-header a {
            text-decoration: none;
            color: #3a3a4a;
            font-weight: 500;
            font-size: 0.95rem;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            transition: color 0.2s;
            border-radius: 6px;
            padding: 0.2rem 0.4rem;
        }

        .section-header a:hover,
        .section-header a:focus-visible {
            color: #1e1e2f;
            outline: 2px solid #1e1e2f;
            outline-offset: 2px;
        }

        /* ---------- CATEGORIES ---------- */
        .category-row {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            margin-bottom: 2.8rem;
        }

        .category-pill {
            background: white;
            border: 1px solid #d0d0dd;
            padding: 0.75rem 1.8rem;
            border-radius: 40px;
            font-weight: 500;
            color: #1e1e2f;
            font-size: 0.95rem;
            cursor: pointer;
            transition: all 0.2s;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.02);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .category-pill em {
            color: #5a5a72;
            font-size: 0.9rem;
        }

        .category-pill:hover,
        .category-pill:focus-visible {
            background: #1e1e2f;
            border-color: #1e1e2f;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 10px 18px -8px rgba(0, 0, 0, 0.2);
            outline: 2px solid #1e1e2f;
            outline-offset: 2px;
        }

        .category-pill:hover em,
        .category-pill:focus-visible em {
            color: #d4d4e6;
        }

        .category-pill.active {
            background: #1e1e2f;
            color: white;
            border-color: #1e1e2f;
        }

        .category-pill.active em {
            color: white;
        }

        /* ---------- PRODUCT GRID ---------- */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
            gap: 1.8rem;
            margin-bottom: 2rem;
        }

        .product-card {
            background: white;
            border-radius: 1.8rem;
            padding: 1.5rem 1.2rem 1.5rem;
            display: flex;
            flex-direction: column;
            box-shadow: 0 10px 22px -10px rgba(0, 0, 0, 0.04);
            transition: transform 0.25s ease, box-shadow 0.25s ease, border-color 0.25s;
            border: 1px solid #e4e4ec;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 25px 35px -12px rgba(0, 0, 0, 0.12);
            border-color: #c8c8d8;
        }

        .wishlist-btn {
            position: absolute;
            top: 15px;
            right: 15px;
            background: white;
            border: 1px solid #e4e4ec;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1rem;
            color: #5a5a72;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.03);
            transition: all 0.2s;
            z-index: 2;
        }

        .wishlist-btn:hover,
        .wishlist-btn:focus-visible {
            color: #b32b2b;
            background: #fff0f0;
            transform: scale(1.1);
            outline: 2px solid #b32b2b;
            outline-offset: 2px;
        }

        .product-image {
            background: #fafaff;
            border-radius: 1.5rem;
            height: 160px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.3rem;
            font-size: 4rem;
            color: #1e1e2f;
            transition: background 0.2s;
            border: 1px solid #f0f0f5;
            overflow: hidden;
            position: relative;
        }

        .product-card:hover .product-image {
            background: #f5f5fe;
        }

        .product-title {
            font-weight: 600;
            font-size: 1.1rem;
            color: #1e1e2f;
            margin-bottom: 0.3rem;
            letter-spacing: -0.2px;
        }

        .product-sub {
            font-size: 0.85rem;
            color: #5e5e74;
            margin-bottom: 0.7rem;
            font-weight: 400;
        }

        .product-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: auto;
        }

        .product-price {
            font-weight: 700;
            font-size: 1.3rem;
            color: #1e1e2f;
            letter-spacing: -0.5px;
            display: flex;
            align-items: baseline;
            gap: 6px;
            flex-wrap: wrap;
        }

        .product-price span {
            font-size: 0.8rem;
            font-weight: 400;
            color: #7e7e93;
            text-decoration: line-through;
        }

        .add-to-cart {
            background: #1e1e2f;
            color: white;
            border: none;
            width: 40px;
            height: 40px;
            border-radius: 14px;
            font-size: 1.1rem;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s;
            flex-shrink: 0;
        }

        .add-to-cart:hover,
        .add-to-cart:focus-visible {
            background: #2d2d44;
            transform: scale(1.05);
            outline: 2px solid #1e1e2f;
            outline-offset: 2px;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 0.8rem;
            color: #b8860b;
            margin-bottom: 0.4rem;
            flex-wrap: wrap;
        }

        .rating span {
            color: #5e5e74;
            font-size: 0.75rem;
            margin-left: 4px;
        }

        .free-shipping-tag {
            font-size: 0.7rem;
            background: #e6f7e6;
            color: #1f5a1f;
            padding: 0.2rem 0.8rem;
            border-radius: 50px;
            font-weight: 500;
            display: inline-flex;
            align-items: center;
            gap: 4px;
            margin-top: 8px;
            align-self: flex-start;
        }

        /* ---------- TRUST BAR ---------- */
        .trust-bar {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1.5rem;
            background: white;
            border-radius: 2rem;
            padding: 1.8rem 2.5rem;
            margin-top: 3rem;
            border: 1px solid #e4e4ec;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.02);
        }

        .trust-item {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .trust-item em {
            font-size: 1.8rem;
            color: #1e1e2f;
            background: #f2f2fa;
            padding: 0.7rem;
            border-radius: 16px;
            width: 3.5rem;
            text-align: center;
            flex-shrink: 0;
        }

        .trust-text h4 {
            font-size: 1rem;
            font-weight: 600;
            color: #1e1e2f;
            margin-bottom: 0.15rem;
        }

        .trust-text p {
            font-size: 0.85rem;
            color: #5e5e74;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 900px) {
            .navbar {
                padding: 0.9rem 1.5rem;
            }
            .hero-section {
                padding: 2rem;
                justify-content: center;
                text-align: center;
            }
            .hero-content h1 {
                font-size: 2.2rem;
            }
            .hero-content p {
                margin-left: auto;
                margin-right: auto;
            }
            .hero-cta {
                justify-content: center;
            }
            .hero-visual {
                width: 150px;
                height: 150px;
            }
            .hero-visual em {
                font-size: 4rem;
            }
            .nav-links {
                display: none;
            }
        }

        @media (max-width: 600px) {
            body {
                padding: 1rem 0.8rem;
            }
            .navbar {
                border-radius: 30px;
                padding: 0.8rem 1.2rem;
            }
            .section-header h2 {
                font-size: 1.5rem;
            }
            .product-grid {
                grid-template-columns: 1fr 1fr;
                gap: 1rem;
            }
            .product-card {
                padding: 1rem;
            }
            .product-image {
                height: 120px;
                font-size: 2.8rem;
            }
            .trust-bar {
                flex-direction: column;
                padding: 1.5rem;
            }
            .category-pill {
                padding: 0.6rem 1.2rem;
                font-size: 0.85rem;
            }
            .hero-content h1 {
                font-size: 1.8rem;
            }
        }

        @media (max-width: 400px) {
            .product-grid {
                grid-template-columns: 1fr;
            }
            .hero-section {
                padding: 1.5rem;
            }
        }

        /* Reduced motion preference */
        @media (prefers-reduced-motion: reduce) {
            * {
                animation-duration: 0.01ms !important;
                animation-iteration-count: 1 !important;
                transition-duration: 0.01ms !important;
                scroll-behavior: auto !important;
            }
        }
    </style>
</head>
<body>
    <div class="app-container">
        <!-- Navigation -->
        <nav class="navbar" aria-label="Main navigation">
            <div class="logo-area">
                <div class="logo-icon" aria-hidden="true">
                    <em class="fas fa-bolt"></em>
                </div>
                <div class="logo-text">LUMINA</div>
            </div>
            <div class="nav-links">
                <a href="#home">Home</a>
                <a href="#shop">Shop</a>
                <a href="#collections">Collections</a>
                <a href="#deals">Deals</a>
            </div>
            <div class="nav-actions">
                <button class="icon-btn" type="button" aria-label="Search products">
                    <em class="fas fa-search" aria-hidden="true"></em>
                </button>
                <button class="icon-btn" type="button" aria-label="Shopping cart, 3 items">
                    <em class="fas fa-shopping-bag" aria-hidden="true"></em>
                    <span class="cart-badge" aria-hidden="true">3</span>
                </button>
                <div class="avatar" role="button" tabindex="0" aria-label="User account: John Doe">JD</div>
            </div>
        </nav>

        <!-- Hero section -->
        <header class="hero-section" id="home">
            <div class="hero-content">
                <div class="hero-badge">
                    <em class="fas fa-tag" aria-hidden="true"></em> Spring drop 2025
                </div>
                <h1>Elevate your <span>everyday</span> style.</h1>
                <p>Discover curated pieces that blend comfort, quality, and modern design. Free shipping over $75.</p>
                <div class="hero-cta">
                    <button class="btn-primary" type="button">
                        <em class="fas fa-bag-shopping" aria-hidden="true"></em> Shop now
                    </button>
                    <button class="btn-outline" type="button">
                        <em class="fas fa-arrow-right" aria-hidden="true"></em> Explore lookbook
                    </button>
                </div>
            </div>
            <div class="hero-visual" aria-hidden="true">
                <em class="fas fa-crown"></em>
            </div>
        </header>

        <!-- Categories -->
        <div class="section-header">
            <h2>Browse categories</h2>
            <a href="#categories">View all <em class="fas fa-arrow-right" aria-hidden="true"></em></a>
        </div>
        <div class="category-row" id="categories">
            <button class="category-pill active" type="button"><em class="fas fa-star" aria-hidden="true"></em> Featured</button>
            <button class="category-pill" type="button"><em class="fas fa-tshirt" aria-hidden="true"></em> Apparel</button>
            <button class="category-pill" type="button"><em class="fas fa-shoe-prints" aria-hidden="true"></em> Footwear</button>
            <button class="category-pill" type="button"><em class="fas fa-clock" aria-hidden="true"></em> Accessories</button>
            <button class="category-pill" type="button"><em class="fas fa-laptop" aria-hidden="true"></em> Tech</button>
            <button class="category-pill" type="button"><em class="fas fa-home" aria-hidden="true"></em> Home</button>
        </div>

        <!-- Product grid -->
        <div class="section-header">
            <h2>Trending now</h2>
            <a href="#trending">See all <em class="fas fa-arrow-right" aria-hidden="true"></em></a>
        </div>

        <div class="product-grid" id="trending">
            <!-- product 1 -->
            <article class="product-card">
                <button class="wishlist-btn" type="button" aria-label="Add Aura Headphones to wishlist">
                    <em class="far fa-heart" aria-hidden="true"></em>
                </button>
                <div class="product-image" aria-hidden="true">
                    <em class="fas fa-headphones"></em>
                </div>
                <div class="rating" aria-label="Rated 4.5 out of 5 stars, 42 reviews">
                    <em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star-half-alt" aria-hidden="true"></em>
                    <span>(42)</span>
                </div>
                <h3 class="product-title">Aura Headphones</h3>
                <div class="product-sub">Wireless · Noise cancel</div>
                <div class="product-meta">
                    <div class="product-price">$129 <span>$189</span></div>
                    <button class="add-to-cart" type="button" aria-label="Add Aura Headphones to cart">
                        <em class="fas fa-plus" aria-hidden="true"></em>
                    </button>
                </div>
                <div class="free-shipping-tag"><em class="fas fa-truck" aria-hidden="true"></em> Free shipping</div>
            </article>

            <!-- product 2 -->
            <article class="product-card">
                <button class="wishlist-btn" type="button" aria-label="Add Nova X to wishlist">
                    <em class="far fa-heart" aria-hidden="true"></em>
                </button>
                <div class="product-image" aria-hidden="true">
                    <em class="fas fa-mobile-alt"></em>
                </div>
                <div class="rating" aria-label="Rated 4 out of 5 stars, 18 reviews">
                    <em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="far fa-star" aria-hidden="true"></em>
                    <span>(18)</span>
                </div>
                <h3 class="product-title">Nova X</h3>
                <div class="product-sub">5G · 128GB</div>
                <div class="product-meta">
                    <div class="product-price">$699 <span>$799</span></div>
                    <button class="add-to-cart" type="button" aria-label="Add Nova X to cart">
                        <em class="fas fa-plus" aria-hidden="true"></em>
                    </button>
                </div>
            </article>

            <!-- product 3 -->
            <article class="product-card">
                <button class="wishlist-btn" type="button" aria-label="Add Oversized Tee to wishlist">
                    <em class="far fa-heart" aria-hidden="true"></em>
                </button>
                <div class="product-image" aria-hidden="true">
                    <em class="fas fa-tshirt"></em>
                </div>
                <div class="rating" aria-label="Rated 5 out of 5 stars, 97 reviews">
                    <em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em>
                    <span>(97)</span>
                </div>
                <h3 class="product-title">Oversized Tee</h3>
                <div class="product-sub">Organic cotton · Unisex</div>
                <div class="product-meta">
                    <div class="product-price">$34 <span>$48</span></div>
                    <button class="add-to-cart" type="button" aria-label="Add Oversized Tee to cart">
                        <em class="fas fa-plus" aria-hidden="true"></em>
                    </button>
                </div>
                <div class="free-shipping-tag"><em class="fas fa-truck" aria-hidden="true"></em> Free shipping</div>
            </article>

            <!-- product 4 -->
            <article class="product-card">
                <button class="wishlist-btn" type="button" aria-label="Add Minimal Watch to wishlist">
                    <em class="far fa-heart" aria-hidden="true"></em>
                </button>
                <div class="product-image" aria-hidden="true">
                    <em class="fas fa-watch"></em>
                </div>
                <div class="rating" aria-label="Rated 4 out of 5 stars, 23 reviews">
                    <em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="far fa-star" aria-hidden="true"></em>
                    <span>(23)</span>
                </div>
                <h3 class="product-title">Minimal Watch</h3>
                <div class="product-sub">Sapphire · Leather</div>
                <div class="product-meta">
                    <div class="product-price">$199 <span>$259</span></div>
                    <button class="add-to-cart" type="button" aria-label="Add Minimal Watch to cart">
                        <em class="fas fa-plus" aria-hidden="true"></em>
                    </button>
                </div>
            </article>

            <!-- product 5 -->
            <article class="product-card">
                <button class="wishlist-btn" type="button" aria-label="Add SnapPro 2 to wishlist">
                    <em class="far fa-heart" aria-hidden="true"></em>
                </button>
                <div class="product-image" aria-hidden="true">
                    <em class="fas fa-camera"></em>
                </div>
                <div class="rating" aria-label="Rated 5 out of 5 stars, 56 reviews">
                    <em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em>
                    <span>(56)</span>
                </div>
                <h3 class="product-title">SnapPro 2</h3>
                <div class="product-sub">4K · Mirrorless</div>
                <div class="product-meta">
                    <div class="product-price">$849 <span>$999</span></div>
                    <button class="add-to-cart" type="button" aria-label="Add SnapPro 2 to cart">
                        <em class="fas fa-plus" aria-hidden="true"></em>
                    </button>
                </div>
            </article>

            <!-- product 6 -->
            <article class="product-card">
                <button class="wishlist-btn" type="button" aria-label="Add Lounge Chair to wishlist">
                    <em class="far fa-heart" aria-hidden="true"></em>
                </button>
                <div class="product-image" aria-hidden="true">
                    <em class="fas fa-chair"></em>
                </div>
                <div class="rating" aria-label="Rated 4.5 out of 5 stars, 31 reviews">
                    <em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star" aria-hidden="true"></em><em class="fas fa-star-half-alt" aria-hidden="true"></em>
                    <span>(31)</span>
                </div>
                <h3 class="product-title">Lounge Chair</h3>
                <div class="product-sub">Scandi design · Oak</div>
                <div class="product-meta">
                    <div class="product-price">$289 <span>$399</span></div>
                    <button class="add-to-cart" type="button" aria-label="Add Lounge Chair to cart">
                        <em class="fas fa-plus" aria-hidden="true"></em>
                    </button>
                </div>
                <div class="free-shipping-tag"><em class="fas fa-truck" aria-hidden="true"></em> Free shipping</div>
            </article>
        </div>

        <!-- trust / footer bar -->
        <div class="trust-bar">
            <div class="trust-item">
                <em class="fas fa-truck-fast" aria-hidden="true"></em>
                <div class="trust-text">
                    <h4>Free delivery</h4>
                    <p>On orders over $75</p>
                </div>
            </div>
            <div class="trust-item">
                <em class="fas fa
