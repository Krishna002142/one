<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LUMINA · e‑commerce UI</title>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
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
        }

        .app-container {
            max-width: 1360px;
            width: 100%;
        }

        /* ---------- HEADER / NAVBAR ---------- */
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
            border: 1px solid rgba(0, 0, 0, 0.02);
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
        }

        .logo-text {
            font-weight: 700;
            font-size: 1.5rem;
            letter-spacing: -0.5px;
            color: #1e1e2f;
        }

        .nav-links {
            display: flex;
            gap: 2.2rem;
            font-weight: 500;
            color: #4a4a5e;
        }

        .nav-links a {
            text-decoration: none;
            color: inherit;
            font-size: 1rem;
            transition: color 0.2s;
        }

        .nav-links a:hover {
            color: #1e1e2f;
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
        }

        .icon-btn:hover {
            color: #1e1e2f;
            transform: scale(1.05);
        }

        .cart-badge {
            position: absolute;
            top: -8px;
            right: -8px;
            background: #e94e4e;
            color: white;
            font-size: 0.7rem;
            font-weight: 600;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
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
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.02);
            cursor: pointer;
        }

        /* ---------- HERO / BANNER ---------- */
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
            display: inline-block;
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
            color: #b9a9ff;
        }

        .hero-content p {
            color: #cbcbdd;
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

        .btn-primary:hover {
            background: #f0f0fa;
            transform: scale(1.02);
        }

        .btn-outline {
            background: transparent;
            color: white;
            border: 1.5px solid rgba(255, 255, 255, 0.3);
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

        .btn-outline:hover {
            background: rgba(255, 255, 255, 0.08);
            border-color: rgba(255, 255, 255, 0.6);
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
        }

        .hero-visual i {
            font-size: 5rem;
            color: rgba(255, 255, 255, 0.8);
            filter: drop-shadow(0 8px 12px rgba(0, 0, 0, 0.3));
        }

        /* ---------- SECTION HEADERS ---------- */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin-bottom: 1.8rem;
        }

        .section-header h2 {
            font-size: 1.8rem;
            font-weight: 700;
            letter-spacing: -0.5px;
            color: #1e1e2f;
        }

        .section-header a {
            text-decoration: none;
            color: #4a4a5e;
            font-weight: 500;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: color 0.2s;
        }

        .section-header a:hover {
            color: #1e1e2f;
        }

        /* ---------- CATEGORY PILLS ---------- */
        .category-row {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            margin-bottom: 2.8rem;
        }

        .category-pill {
            background: white;
            border: 1px solid #eaeaef;
            padding: 0.75rem 1.8rem;
            border-radius: 40px;
            font-weight: 500;
            color: #2d2d44;
            font-size: 0.95rem;
            cursor: pointer;
            transition: all 0.2s;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.02);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .category-pill i {
            color: #6b6b7e;
            font-size: 0.9rem;
        }

        .category-pill:hover {
            background: #1e1e2f;
            border-color: #1e1e2f;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 10px 18px -8px rgba(0, 0, 0, 0.2);
        }

        .category-pill:hover i {
            color: #cbcbdd;
        }

        .category-pill.active {
            background: #1e1e2f;
            color: white;
            border-color: #1e1e2f;
        }

        .category-pill.active i {
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
            transition: all 0.25s ease;
            border: 1px solid #f0f0f5;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 25px 35px -12px rgba(0, 0, 0, 0.12);
            border-color: #e0e0ea;
        }

        .wishlist-btn {
            position: absolute;
            top: 15px;
            right: 15px;
            background: white;
            border: none;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1rem;
            color: #8e8ea0;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.03);
            transition: all 0.2s;
            border: 1px solid #f0f0f5;
        }

        .wishlist-btn:hover {
            color: #e94e4e;
            background: #fff0f0;
            transform: scale(1.1);
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
            transition: 0.2s;
            border: 1px solid #f0f0f5;
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
            color: #7e7e93;
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
        }

        .product-price span {
            font-size: 0.8rem;
            font-weight: 400;
            color: #9a9aae;
            text-decoration: line-through;
            margin-left: 6px;
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
        }

        .add-to-cart:hover {
            background: #2d2d44;
            transform: scale(1.05);
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 0.8rem;
            color: #f5b342;
            margin-bottom: 0.4rem;
        }

        .rating span {
            color: #7e7e93;
            font-size: 0.75rem;
            margin-left: 4px;
        }

        /* ---------- FOOTER / TRUST BADGES ---------- */
        .trust-bar {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1.5rem;
            background: white;
            border-radius: 2rem;
            padding: 1.8rem 2.5rem;
            margin-top: 3rem;
            border: 1px solid #f0f0f5;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.02);
        }

        .trust-item {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .trust-item i {
            font-size: 1.8rem;
            color: #1e1e2f;
            background: #f2f2fa;
            padding: 0.7rem;
            border-radius: 16px;
        }

        .trust-text h4 {
            font-size: 1rem;
            font-weight: 600;
            color: #1e1e2f;
        }

        .trust-text p {
            font-size: 0.85rem;
            color: #7e7e93;
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
            .hero-visual i {
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
        }

        @media (max-width: 400px) {
            .product-grid {
                grid-template-columns: 1fr;
            }
        }

        /* small decorative */
        .free-shipping-tag {
            font-size: 0.7rem;
            background: #e6f7e6;
            color: #1f7a1f;
            padding: 0.2rem 0.8rem;
            border-radius: 50px;
            font-weight: 500;
            display: inline-block;
            margin-top: 6px;
        }
    </style>
</head>
<body>
    <div class="app-container">
        <!-- Navigation -->
        <nav class="navbar">
            <div class="logo-area">
                <div class="logo-icon">
                    <i class="fas fa-bolt"></i>
                </div>
                <div class="logo-text">LUMINA</div>
            </div>
            <div class="nav-links">
                <a href="#">Home</a>
                <a href="#">Shop</a>
                <a href="#">Collections</a>
                <a href="#">Deals</a>
            </div>
            <div class="nav-actions">
                <button class="icon-btn"><i class="fas fa-search"></i></button>
                <button class="icon-btn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-badge">3</span>
                </button>
                <div class="avatar">JD</div>
            </div>
        </nav>

        <!-- Hero section -->
        <header class="hero-section">
            <div class="hero-content">
                <div class="hero-badge">
                    <i class="fas fa-tag" style="margin-right: 6px;"></i> Spring drop 2025
                </div>
                <h1>Elevate your <span>everyday</span> style.</h1>
                <p>Discover curated pieces that blend comfort, quality, and modern design. Free shipping over $75.</p>
                <div class="hero-cta">
                    <button class="btn-primary">
                        <i class="fas fa-bag-shopping"></i> Shop now
                    </button>
                    <button class="btn-outline">
                        <i class="fas fa-arrow-right"></i> Explore lookbook
                    </button>
                </div>
            </div>
            <div class="hero-visual">
                <i class="fas fa-crown"></i>
            </div>
        </header>

        <!-- Categories -->
        <div class="section-header">
            <h2>Browse categories</h2>
            <a href="#">View all <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="category-row">
            <div class="category-pill active"><i class="fas fa-star"></i> Featured</div>
            <div class="category-pill"><i class="fas fa-tshirt"></i> Apparel</div>
            <div class="category-pill"><i class="fas fa-shoe-prints"></i> Footwear</div>
            <div class="category-pill"><i class="fas fa-clock"></i> Accessories</div>
            <div class="category-pill"><i class="fas fa-laptop"></i> Tech</div>
            <div class="category-pill"><i class="fas fa-home"></i> Home</div>
        </div>

        <!-- Product grid -->
        <div class="section-header">
            <h2>Trending now</h2>
            <a href="#">See all <i class="fas fa-arrow-right"></i></a>
        </div>

        <div class="product-grid">
            <!-- product 1 -->
            <div class="product-card">
                <button class="wishlist-btn"><i class="far fa-heart"></i></button>
                <div class="product-image">
                    <i class="fas fa-headphones"></i>
                </div>
                <div class="rating">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                    <span>(42)</span>
                </div>
                <div class="product-title">Aura Headphones</div>
                <div class="product-sub">Wireless · Noise cancel</div>
                <div class="product-meta">
                    <div class="product-price">$129 <span>$189</span></div>
                    <button class="add-to-cart"><i class="fas fa-plus"></i></button>
                </div>
                <div class="free-shipping-tag"><i class="fas fa-truck"></i> Free shipping</div>
            </div>

            <!-- product 2 -->
            <div class="product-card">
                <button class="wishlist-btn"><i class="far fa-heart"></i></button>
                <div class="product-image">
                    <i class="fas fa-mobile-alt"></i>
                </div>
                <div class="rating">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                    <span>(18)</span>
                </div>
                <div class="product-title">Nova X</div>
                <div class="product-sub">5G · 128GB</div>
                <div class="product-meta">
                    <div class="product-price">$699 <span>$799</span></div>
                    <button class="add-to-cart"><i class="fas fa-plus"></i></button>
                </div>
            </div>

            <!-- product 3 -->
            <div class="product-card">
                <button class="wishlist-btn"><i class="far fa-heart"></i></button>
                <div class="product-image">
                    <i class="fas fa-tshirt"></i>
                </div>
                <div class="rating">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                    <span>(97)</span>
                </div>
                <div class="product-title">Oversized Tee</div>
                <div class="product-sub">Organic cotton · Unisex</div>
                <div class="product-meta">
                    <div class="product-price">$34 <span>$48</span></div>
                    <button class="add-to-cart"><i class="fas fa-plus"></i></button>
                </div>
                <div class="free-shipping-tag"><i class="fas fa-truck"></i> Free shipping</div>
            </div>

            <!-- product 4 -->
            <div class="product-card">
                <button class="wishlist-btn"><i class="far fa-heart"></i></button>
                <div class="product-image">
                    <i class="fas fa-watch"></i>
                </div>
                <div class="rating">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                    <span>(23)</span>
                </div>
                <div class="product-title">Minimal Watch</div>
                <div class="product-sub">Sapphire · Leather</div>
                <div class="product-meta">
                    <div class="product-price">$199 <span>$259</span></div>
                    <button class="add-to-cart"><i class="fas fa-plus"></i></button>
                </div>
            </div>

            <!-- product 5 -->
            <div class="product-card">
                <button class="wishlist-btn"><i class="far fa-heart"></i></button>
                <div class="product-image">
                    <i class="fas fa-camera"></i>
                </div>
                <div class="rating">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                    <span>(56)</span>
                </div>
                <div class="product-title">SnapPro 2</div>
                <div class="product-sub">4K · Mirrorless</div>
                <div class="product-meta">
                    <div class="product-price">$849 <span>$999</span></div>
                    <button class="add-to-cart"><i class="fas fa-plus"></i></button>
                </div>
            </div>

            <!-- product 6 -->
            <div class="product-card">
                <button class="wishlist-btn"><i class="far fa-heart"></i></button>
                <div class="product-image">
                    <i class="fas fa-chair"></i>
                </div>
                <div class="rating">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                    <span>(31)</span>
                </div>
                <div class="product-title">Lounge Chair</div>
                <div class="product-sub">Scandi design · Oak</div>
                <div class="product-meta">
                    <div class="product-price">$289 <span>$399</span></div>
                    <button class="add-to-cart"><i class="fas fa-plus"></i></button>
                </div>
                <div class="free-shipping-tag"><i class="fas fa-truck"></i> Free shipping</div>
            </div>
        </div>

        <!-- trust / footer bar -->
        <div class="trust-bar">
            <div class="trust-item">
                <i class="fas fa-truck-fast"></i>
                <div class="trust-text">
                    <h4>Free delivery</h4>
                    <p>On orders over $75</p>
                </div>
            </div>
            <div class="trust-item">
                <i class="fas fa-rotate-left"></i>
                <div class="trust-text">
                    <h4>30-day returns</h4>
                    <p>No questions asked</p>
                </div>
            </div>
            <div class="trust-item">
                <i class="fas fa-shield"></i>
                <div class="trust-text">
                    <h4>Secure checkout</h4>
                    <p>SSL encrypted</p>
                </div>
            </div>
            <div class="trust-item">
                <i class="fas fa-headset"></i>
                <div class="trust-text">
                    <h4>24/7 support</h4>
                    <p>Always here to help</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
