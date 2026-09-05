<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Nexus Prime | Premium Technology Store</title>

    <meta
        name="description"
        content="Shop premium phones, laptops, cameras, audio products and accessories."
    >

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet"
    >

    <style>
        /* =========================================================
           RESET
        ========================================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", sans-serif;
            background: #f6f7f9;
            color: #17191c;
            line-height: 1.5;
        }

        button,
        input,
        select {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        img {
            max-width: 100%;
            display: block;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        /* =========================================================
           VARIABLES
        ========================================================= */

        :root {
            --primary: #111827;
            --secondary: #4b5563;
            --muted: #6b7280;
            --border: #e5e7eb;
            --background: #f6f7f9;
            --white: #ffffff;
            --success: #15803d;
            --danger: #dc2626;
            --radius: 16px;
            --shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            --transition: 0.25s ease;
        }

        /* =========================================================
           TOP BAR
        ========================================================= */

        .top-bar {
            background: #111827;
            color: #ffffff;
            text-align: center;
            padding: 10px 20px;
            font-size: 13px;
            font-weight: 500;
        }

        .top-bar span {
            opacity: 0.85;
        }

        /* =========================================================
           HEADER
        ========================================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255, 255, 255, 0.96);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(15px);
        }

        .header-container {
            max-width: 1400px;
            margin: auto;
            padding: 18px 25px;

            display: flex;
            align-items: center;
            gap: 25px;
        }

        .logo {
            font-size: 22px;
            font-weight: 800;
            letter-spacing: -0.8px;
            white-space: nowrap;
        }

        .logo span {
            color: #6b7280;
        }

        /* Search */

        .search-wrapper {
            flex: 1;
            position: relative;
        }

        .search-wrapper input {
            width: 100%;
            padding: 13px 18px;
            border: 1px solid var(--border);
            border-radius: 12px;
            outline: none;
            background: #f9fafb;
            transition: var(--transition);
        }

        .search-wrapper input:focus {
            border-color: #9ca3af;
            background: white;
            box-shadow: 0 0 0 3px rgba(17, 24, 39, 0.05);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon-button {
            position: relative;
            border: 1px solid var(--border);
            background: white;
            width: 44px;
            height: 44px;
            border-radius: 12px;

            display: flex;
            align-items: center;
            justify-content: center;

            transition: var(--transition);
        }

        .icon-button:hover {
            background: #f3f4f6;
            transform: translateY(-1px);
        }

        .badge {
            position: absolute;
            top: -5px;
            right: -5px;

            min-width: 19px;
            height: 19px;

            padding: 0 5px;

            border-radius: 20px;
            background: #111827;
            color: white;

            font-size: 10px;
            font-weight: 700;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            max-width: 1400px;
            margin: 35px auto 0;
            padding: 70px 40px;

            border-radius: 25px;

            background:
                radial-gradient(
                    circle at top right,
                    rgba(255,255,255,0.2),
                    transparent 35%
                ),
                linear-gradient(
                    135deg,
                    #111827,
                    #374151
                );

            color: white;

            position: relative;
            overflow: hidden;
        }

        .hero-content {
            max-width: 720px;
            position: relative;
            z-index: 2;
        }

        .hero-label {
            display: inline-block;
            margin-bottom: 18px;
            padding: 7px 12px;

            border: 1px solid rgba(255,255,255,0.2);
            border-radius: 30px;

            font-size: 12px;
            font-weight: 600;

            background: rgba(255,255,255,0.08);
        }

        .hero h1 {
            font-size: clamp(38px, 6vw, 72px);
            line-height: 1;
            letter-spacing: -3px;
            margin-bottom: 22px;
        }

        .hero p {
            max-width: 650px;
            color: #d1d5db;
            font-size: 17px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .primary-button {
            border: none;
            background: white;
            color: #111827;

            padding: 14px 22px;
            border-radius: 12px;

            font-weight: 700;

            transition: var(--transition);
        }

        .primary-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        .secondary-button {
            border: 1px solid rgba(255,255,255,0.25);
            background: rgba(255,255,255,0.08);
            color: white;

            padding: 14px 22px;
            border-radius: 12px;

            font-weight: 600;
        }

        .secondary-button:hover {
            background: rgba(255,255,255,0.15);
        }

        /* =========================================================
           STATS
        ========================================================= */

        .stats {
            max-width: 1400px;
            margin: 25px auto;
            padding: 0 25px;

            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }

        .stat-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 22px;
        }

        .stat-number {
            font-size: 25px;
            font-weight: 800;
        }

        .stat-label {
            color: var(--muted);
            font-size: 13px;
            margin-top: 3px;
        }

        /* =========================================================
           SHOP SECTION
        ========================================================= */

        .shop-section {
            max-width: 1400px;
            margin: 50px auto;
            padding: 0 25px;
        }

        .section-heading {
            margin-bottom: 25px;

            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 20px;
        }

        .section-heading h2 {
            font-size: 32px;
            letter-spacing: -1px;
        }

        .section-heading p {
            color: var(--muted);
            margin-top: 5px;
        }

        /* =========================================================
           FILTER BAR
        ========================================================= */

        .filter-bar {
            position: sticky;
            top: 81px;
            z-index: 50;

            display: flex;
            justify-content: space-between;
            gap: 15px;

            padding: 15px 0;
            margin-bottom: 25px;

            background: rgba(246,247,249,0.95);
            backdrop-filter: blur(10px);
        }

        .filter-buttons {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .filter-button {
            border: 1px solid var(--border);
            background: white;

            padding: 9px 15px;
            border-radius: 30px;

            color: var(--secondary);
            font-size: 13px;
            font-weight: 600;

            transition: var(--transition);
        }

        .filter-button:hover {
            border-color: #9ca3af;
        }

        .filter-button.active {
            background: #111827;
            color: white;
            border-color: #111827;
        }

        .sort-select {
            border: 1px solid var(--border);
            background: white;

            padding: 9px 13px;
            border-radius: 10px;

            outline: none;
        }

        /* =========================================================
           PRODUCTS
        ========================================================= */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
        }

        .product-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);

            overflow: hidden;

            transition:
                transform var(--transition),
                box-shadow var(--transition);
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .product-image {
            height: 280px;
            background: #f3f4f6;

            display: flex;
            align-items: center;
            justify-content: center;

            position: relative;
            overflow: hidden;
        }

        .product-image img {
            width: 80%;
            height: 80%;
            object-fit: contain;

            transition: transform 0.4s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.05);
        }

        .product-tag {
            position: absolute;
            top: 15px;
            left: 15px;

            padding: 6px 10px;
            border-radius: 20px;

            background: #111827;
            color: white;

            font-size: 10px;
            font-weight: 700;
        }

        .wishlist-button {
            position: absolute;
            top: 14px;
            right: 14px;

            width: 38px;
            height: 38px;

            border: none;
            border-radius: 50%;

            background: white;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 18px;

            box-shadow: 0 4px 15px rgba(0,0,0,0.08);
        }

        .wishlist-button.active {
            color: #dc2626;
        }

        .product-info {
            padding: 20px;
        }

        .product-category {
            color: var(--muted);
            text-transform: uppercase;

            font-size: 10px;
            font-weight: 700;
            letter-spacing: 1px;

            margin-bottom: 7px;
        }

        .product-name {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 7px;
        }

        .product-description {
            color: var(--muted);
            font-size: 13px;
            min-height: 40px;
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 10px;

            margin-top: 20px;
        }

        .product-price {
            font-size: 19px;
            font-weight: 800;
        }

        .add-cart-button {
            border: none;
            background: #111827;
            color: white;

            padding: 11px 15px;
            border-radius: 10px;

            font-size: 12px;
            font-weight: 700;

            transition: var(--transition);
        }

        .add-cart-button:hover {
            background: #374151;
        }

        /* =========================================================
           EMPTY STATE
        ========================================================= */

        .empty-state {
            display: none;

            text-align: center;

            background: white;
            border: 1px solid var(--border);

            border-radius: var(--radius);

            padding: 70px 20px;
        }

        .empty-state.show {
            display: block;
        }

        .empty-state h3 {
            font-size: 22px;
            margin-bottom: 8px;
        }

        .empty-state p {
            color: var(--muted);
            margin-bottom: 20px;
        }

        /* =========================================================
           CART DRAWER
        ========================================================= */

        .overlay {
            position: fixed;
            inset: 0;

            background: rgba(0,0,0,0.45);

            z-index: 1999;

            opacity: 0;
            visibility: hidden;

            transition: var(--transition);
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: -450px;

            width: min(450px, 100%);
            height: 100vh;

            background: white;
            z-index: 2000;

            display: flex;
            flex-direction: column;

            transition: right 0.3s ease;

            box-shadow: -10px 0 30px rgba(0,0,0,0.12);
        }

        .cart-drawer.open {
            right: 0;
        }

        .cart-header {
            padding: 22px;

            border-bottom: 1px solid var(--border);

            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .cart-header h3 {
            font-size: 20px;
        }

        .close-button {
            width: 38px;
            height: 38px;

            border: 1px solid var(--border);
            background: white;

            border-radius: 10px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 70px 1fr auto;

            gap: 12px;

            padding: 15px 0;

            border-bottom: 1px solid var(--border);
        }

        .cart-item-image {
            width: 70px;
            height: 70px;

            background: #f3f4f6;
            border-radius: 10px;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .cart-item-image img {
            width: 85%;
            height: 85%;
            object-fit: contain;
        }

        .cart-item-name {
            font-size: 14px;
            font-weight: 700;
        }

        .cart-item-price {
            color: var(--muted);
            font-size: 13px;
            margin-top: 3px;
        }

        .quantity-controls {
            display: flex;
            align-items: center;
            gap: 7px;

            margin-top: 10px;
        }

        .quantity-controls button {
            width: 27px;
            height: 27px;

            border: 1px solid var(--border);
            background: white;
            border-radius: 7px;
        }

        .quantity {
            font-size: 12px;
            font-weight: 700;
        }

        .remove-item {
            border: none;
            background: transparent;
            color: var(--danger);
            font-size: 12px;
        }

        .cart-footer {
            border-top: 1px solid var(--border);
            padding: 20px;
        }

        .cart-row {
            display: flex;
            justify-content: space-between;

            margin-bottom: 10px;

            color: var(--secondary);
        }

        .cart-total {
            font-size: 20px;
            font-weight: 800;

            color: var(--primary);
        }

        .checkout-button {
            width: 100%;

            border: none;
            background: #111827;
            color: white;

            padding: 15px;
            border-radius: 12px;

            margin-top: 15px;

            font-weight: 700;
        }

        .checkout-button:hover {
            background: #374151;
        }

        .empty-cart {
            text-align: center;
            padding: 70px 20px;
            color: var(--muted);
        }

        /* =========================================================
           QUICK VIEW MODAL
        ========================================================= */

        .modal {
            position: fixed;
            inset: 0;

            z-index: 3000;

            display: flex;
            align-items: center;
            justify-content: center;

            padding: 20px;

            background: rgba(0,0,0,0.55);

            opacity: 0;
            visibility: hidden;

            transition: var(--transition);
        }

        .modal.show {
            opacity: 1;
            visibility: visible;
        }

        .modal-content {
            width: min(850px, 100%);

            background: white;
            border-radius: 20px;

            overflow: hidden;

            transform: translateY(20px);
            transition: var(--transition);
        }

        .modal.show .modal-content {
            transform: translateY(0);
        }

        .modal-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
        }

        .modal-image {
            min-height: 450px;
            background: #f3f4f6;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .modal-image img {
            width: 80%;
            height: 80%;
            object-fit: contain;
        }

        .modal-info {
            padding: 40px;
        }

        .modal-info h2 {
            font-size: 30px;
            margin: 10px 0;
        }

        .modal-info p {
            color: var(--muted);
            margin-bottom: 20px;
        }

        .modal-price {
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 25px;
        }

        .modal-close {
            position: absolute;
            top: 25px;
            right: 25px;

            width: 42px;
            height: 42px;

            border: none;
            border-radius: 50%;

            background: white;

            font-size: 20px;
        }

        /* =========================================================
           TOAST
        ========================================================= */

        .toast-container {
            position: fixed;
            right: 20px;
            bottom: 20px;

            z-index: 5000;

            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .toast {
            background: #111827;
            color: white;

            padding: 13px 17px;

            border-radius: 10px;

            font-size: 13px;

            box-shadow: var(--shadow);

            animation: toastIn 0.3s ease;
        }

        @keyframes toastIn {
            from {
                opacity: 0;
                transform: translateY(15px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            background: #111827;
            color: white;

            margin-top: 80px;
            padding: 50px 25px;
        }

        .footer-container {
            max-width: 1400px;
            margin: auto;

            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-brand h3 {
            font-size: 22px;
            margin-bottom: 12px;
        }

        .footer-brand p {
            max-width: 400px;
            color: #9ca3af;
            font-size: 13px;
        }

        .footer-column h4 {
            margin-bottom: 15px;
            font-size: 14px;
        }

        .footer-column a {
            display: block;

            color: #9ca3af;
            font-size: 13px;

            margin-bottom: 10px;
        }

        .footer-column a:hover {
            color: white;
        }

        .footer-bottom {
            max-width: 1400px;
            margin: 40px auto 0;
            padding-top: 20px;

            border-top: 1px solid #374151;

            color: #9ca3af;
            font-size: 12px;
        }

        /* =========================================================
           MOBILE
        ========================================================= */

        @media (max-width: 1000px) {

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .stats {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 700px) {

            .header-container {
                padding: 13px 15px;
                gap: 10px;
            }

            .logo {
                font-size: 18px;
            }

            .search-wrapper {
                display: none;
            }

            .header-actions {
                margin-left: auto;
            }

            .hero {
                margin: 15px;
                padding: 45px 25px;
                border-radius: 20px;
            }

            .hero h1 {
                letter-spacing: -2px;
            }

            .hero p {
                font-size: 14px;
            }

            .stats {
                padding: 0 15px;
                gap: 10px;
            }

            .stat-card {
                padding: 16px;
            }

            .shop-section {
                padding: 0 15px;
                margin-top: 35px;
            }

            .section-heading {
                display: block;
            }

            .section-heading h2 {
                font-size: 27px;
            }

            .filter-bar {
                top: 70px;
                display: block;
            }

            .filter-buttons {
                overflow-x: auto;
                flex-wrap: nowrap;
                padding-bottom: 8px;
            }

            .filter-button {
                white-space: nowrap;
            }

            .sort-select {
                margin-top: 8px;
                width: 100%;
            }

            .product-grid {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 300px;
            }

            .modal-grid {
                grid-template-columns: 1fr;
                max-height: 90vh;
                overflow-y: auto;
            }

            .modal-image {
                min-height: 280px;
            }

            .modal-info {
                padding: 25px;
            }

            .modal-info h2 {
                font-size: 24px;
            }

            .footer-container {
                grid-template-columns: 1fr;
            }
        }

        @media (prefers-reduced-motion: reduce) {

            *,
            *::before,
            *::after {
                scroll-behavior: auto !important;
                animation-duration: 0.01ms !important;
                transition-duration: 0.01ms !important;
            }
        }
    </style>
</head>

<body>

    <!-- =========================================================
         TOP BAR
    ========================================================== -->

    <div class="top-bar">
        <strong>Premium Member Benefits Active</strong>
        <span> • Free delivery on qualifying orders • 30-day returns</span>
    </div>


    <!-- =========================================================
         HEADER
    ========================================================== -->

    <header>

        <div class="header-container">

            <a href="#" class="logo">
                NEXUS<span>PRIME</span>
            </a>

            <div class="search-wrapper">
                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products"
                >
            </div>

            <div class="header-actions">

                <button
                    class="icon-button"
                    id="wishlistButton"
                    aria-label="Open wishlist"
                >
                    ♡
                    <span class="badge" id="wishlistCount">0</span>
                </button>

                <button
                    class="icon-button"
                    id="cartButton"
                    aria-label="Open shopping cart"
                >
                    🛒
                    <span class="badge" id="cartCount">0</span>
                </button>

            </div>

        </div>

    </header>


    <!-- =========================================================
         HERO
    ========================================================== -->

    <main>

        <section class="hero">

            <div class="hero-content">

                <span class="hero-label">
                    Featured Collection 2026
                </span>

                <h1>
                    Technology You'll Love to Use.
                </h1>

                <p>
                    Discover premium smartphones, laptops, cameras,
                    headphones and accessories selected for quality,
                    performance and everyday convenience.
                </p>

                <div class="hero-buttons">

                    <button
                        class="primary-button"
                        onclick="scrollToProducts()"
                    >
                        Shop the Collection
                    </button>

                    <button
                        class="secondary-button"
                        onclick="openWishlist()"
                    >
                        View Wishlist
                    </button>

                </div>

            </div>

        </section>


        <!-- =====================================================
             STATS
        ====================================================== -->

        <section class="stats">

            <div class="stat-card">
                <div class="stat-number">2-Year</div>
                <div class="stat-label">Warranty</div>
            </div>

            <div class="stat-card">
                <div class="stat-number">Fast</div>
                <div class="stat-label">Delivery</div>
            </div>

            <div class="stat-card">
                <div class="stat-number">30-Day</div>
                <div class="stat-label">Returns</div>
            </div>

            <div class="stat-card">
                <div class="stat-number">100%</div>
                <div class="stat-label">Verified Products</div>
            </div>

        </section>


        <!-- =====================================================
             SHOP
        ====================================================== -->

        <section
            class="shop-section"
            id="productsSection"
        >

            <div class="section-heading">

                <div>
                    <h2>Shop All Products</h2>

                    <p>
                        Find the technology that fits your lifestyle.
                    </p>
                </div>

            </div>


            <!-- FILTER BAR -->

            <div class="filter-bar">

                <div class="filter-buttons">

                    <button
                        class="filter-button active"
                        data-category="all"
                    >
                        All Products
                    </button>

                    <button
                        class="filter-button"
                        data-category="phone"
                    >
                        Phones
                    </button>

                    <button
                        class="filter-button"
                        data-category="laptop"
                    >
                        Laptops
                    </button>

                    <button
                        class="filter-button"
                        data-category="audio"
                    >
                        Audio
                    </button>

                    <button
                        class="filter-button"
                        data-category="camera"
                    >
                        Cameras
                    </button>

                    <button
                        class="filter-button"
                        data-category="accessories"
                    >
                        Accessories
                    </button>

                </div>


                <select
                    class="sort-select"
                    id="sortSelect"
                    aria-label="Sort products"
                >

                    <option value="recommended">
                        Recommended
                    </option>

                    <option value="price-low">
                        Price: Low to High
                    </option>

                    <option value="price-high">
                        Price: High to Low
                    </option>

                    <option value="name">
                        Name: A-Z
                    </option>

                </select>

            </div>


            <!-- PRODUCTS -->

            <div
                class="product-grid"
                id="productGrid"
            ></div>


            <!-- EMPTY STATE -->

            <div
                class="empty-state"
                id="emptyState"
            >

                <h3>No Products Found</h3>

                <p>
                    Try another search or clear the filters.
                </p>

                <button
                    class="primary-button"
                    onclick="clearFilters()"
                >
                    Clear Filters
                </button>

            </div>

        </section>

    </main>


    <!-- =========================================================
         CART OVERLAY
    ========================================================== -->

    <div
        class="overlay"
        id="overlay"
    ></div>


    <!-- =========================================================
         CART DRAWER
    ========================================================== -->

    <aside
        class="cart-drawer"
        id="cartDrawer"
        aria-label="Shopping cart"
    >

        <div class="cart-header">

            <h3>Your Shopping Cart</h3>

            <button
                class="close-button"
                id="closeCart"
                aria-label="Close shopping cart"
            >
                ×
            </button>

        </div>


        <div
            class="cart-items"
            id="cartItems"
        ></div>


        <div class="cart-footer">

            <div class="cart-row">

                <span>Subtotal</span>

                <strong id="cartSubtotal">
                    ₹0
                </strong>

            </div>

            <div class="cart-row">

                <span>Delivery</span>

                <strong>FREE</strong>

            </div>

            <div class="cart-row cart-total">

                <span>Total</span>

                <strong id="cartTotal">
                    ₹0
                </strong>

            </div>

            <button
                class="checkout-button"
                onclick="checkout()"
            >
                Proceed to Checkout
            </button>

        </div>

    </aside>


    <!-- =========================================================
         QUICK VIEW MODAL
    ========================================================== -->

    <div
        class="modal"
        id="quickViewModal"
    >

        <button
            class="modal-close"
            id="closeModal"
            aria-label="Close product details"
        >
            ×
        </button>

        <div class="modal-content">

            <div class="modal-grid">

                <div class="modal-image">

                    <img
                        id="modalImage"
                        src=""
                        alt=""
                    >

                </div>

                <div class="modal-info">

                    <div
                        class="product-category"
                        id="modalCategory"
                    ></div>

                    <h2 id="modalName"></h2>

                    <p id="modalDescription"></p>

                    <div
                        class="modal-price"
                        id="modalPrice"
                    ></div>

                    <button
                        class="checkout-button"
                        id="modalAddButton"
                    >
                        Add to Cart
                    </button>

                </div>

            </div>

        </div>

    </div>


    <!-- =========================================================
         TOAST
    ========================================================== -->

    <div
        class="toast-container"
        id="toastContainer"
        aria-live="polite"
    ></div>


    <!-- =========================================================
         FOOTER
    ========================================================== -->

    <footer>

        <div class="footer-container">

            <div class="footer-brand">

                <h3>NEXUS PRIME</h3>

                <p>
                    Premium technology products for work,
                    entertainment and everyday life.
                </p>

            </div>


            <div class="footer-column">

                <h4>Shop</h4>

                <a href="#productsSection">
                    Phones
                </a>

                <a href="#productsSection">
                    Laptops
                </a>

                <a href="#productsSection">
                    Cameras
                </a>

                <a href="#productsSection">
                    Audio
                </a>

            </div>


            <div class="footer-column">

                <h4>Customer Service</h4>

                <a href="#">
                    Contact Us
                </a>

                <a href="#">
                    Delivery Information
                </a>

                <a href="#">
                    Returns
                </a>

                <a href="#">
                    Warranty
                </a>

            </div>


            <div class="footer-column">

                <h4>Account</h4>

                <a href="#">
                    My Account
                </a>

                <a href="#">
                    Wishlist
                </a>

                <a href="#">
                    Orders
                </a>

                <a href="#">
                    Help Center
                </a>

            </div>

        </div>


        <div class="footer-bottom">

            © 2026 Nexus Prime. All rights reserved.

        </div>

    </footer>


    <!-- =========================================================
         JAVASCRIPT
    ========================================================== -->

    <script>

        /* =========================================================
           PRODUCTS
        ========================================================== */

        const products = [

            {
                id: 1,
                name: "iPhone 15 Pro Max",
                category: "phone",
                categoryName: "Smartphone",
                price: 129999,
                description:
                    "Powerful performance with a premium titanium design.",
                image:
                    "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?w=700",
                tag: "Popular"
            },

            {
                id: 2,
                name: "MacBook Pro 16 M3 Max",
                category: "laptop",
                categoryName: "Laptop",
                price: 249999,
                description:
                    "Professional performance for demanding creative work.",
                image:
                    "https://images.unsplash.com/photo-1517336714739-489689fd1ca8?w=700",
                tag: "Premium"
            },

            {
                id: 3,
                name: "Apple Watch Series 9",
                category: "accessories",
                categoryName: "Smart Watch",
                price: 44999,
                description:
                    "A smarter way to stay connected and track your day.",
                image:
                    "https://images.unsplash.com/photo-1546868871-7041f2a55e0d?w=700",
                tag: "New"
            },

            {
                id: 4,
                name: "Sony Alpha Camera",
                category: "camera",
                categoryName: "Camera",
                price: 149999,
                description:
                    "Capture detailed photos and smooth cinematic video.",
                image:
                    "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=700",
                tag: "Best Seller"
            },

            {
                id: 5,
                name: "Sony WH-1000XM5",
                category: "audio",
                categoryName: "Headphones",
                price: 29999,
                description:
                    "Premium wireless headphones with advanced noise cancellation.",
                image:
                    "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=700",
                tag: "Popular"
            },

            {
                id: 6,
                name: "Premium Everyday Backpack",
                category: "accessories",
                categoryName: "Accessory",
                price: 8999,
                description:
                    "Comfortable everyday backpack for work and travel.",
                image:
                    "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=700",
                tag: "New"
            }

        ];


        /* =========================================================
           STATE
        ========================================================== */

        let cart =
            JSON.parse(localStorage.getItem("nexusCart")) || [];

        let wishlist =
            JSON.parse(localStorage.getItem("nexusWishlist")) || [];

        let currentCategory = "all";

        let currentSearch = "";


        /* =========================================================
           DOM
        ========================================================== */

        const productGrid =
            document.getElementById("productGrid");

        const emptyState =
            document.getElementById("emptyState");

        const searchInput =
            document.getElementById("searchInput");

        const sortSelect =
            document.getElementById("sortSelect");

        const cartDrawer =
            document.getElementById("cartDrawer");

        const cartItems =
            document.getElementById("cartItems");

        const overlay =
            document.getElementById("overlay");

        const modal =
            document.getElementById("quickViewModal");


        /* =========================================================
           FORMAT PRICE
        ========================================================== */

        function formatPrice(price) {

            return new Intl.NumberFormat("en-IN", {

                style: "currency",

                currency: "INR",

                maximumFractionDigits: 0

            }).format(price);

        }


        /* =========================================================
           SAVE DATA
        ========================================================== */

        function saveData() {

            localStorage.setItem(
                "nexusCart",
                JSON.stringify(cart)
            );

            localStorage.setItem(
                "nexusWishlist",
                JSON.stringify(wishlist)
            );

        }


        /* =========================================================
           RENDER PRODUCTS
        ========================================================== */

        function renderProducts() {

            let filteredProducts =
                [...products];


            /* Category */

            if (currentCategory !== "all") {

                filteredProducts =
                    filteredProducts.filter(
                        product =>
                            product.category === currentCategory
                    );

            }


            /* Search */

            if (currentSearch.trim()) {

                const search =
                    currentSearch
                        .toLowerCase()
                        .trim();

                filteredProducts =
                    filteredProducts.filter(product =>

                        product.name
                            .toLowerCase()
                            .includes(search)

                        ||

                        product.description
                            .toLowerCase()
                            .includes(search)

                        ||

                        product.categoryName
                            .toLowerCase()
                            .includes(search)

                    );

            }


            /* Sort */

            const sort =
                sortSelect.value;


            if (sort === "price-low") {

                filteredProducts.sort(
                    (a, b) =>
                        a.price - b.price
                );

            }


            if (sort === "price-high") {

                filteredProducts.sort(
                    (a, b) =>
                        b.price - a.price
                );

            }


            if (sort === "name") {

                filteredProducts.sort(
                    (a, b) =>
                        a.name.localeCompare(b.name)
                );

            }


            /* Empty state */

            if (!filteredProducts.length) {

                productGrid.innerHTML = "";

                emptyState.classList.add("show");

                return;

            }

            emptyState.classList.remove("show");


            /* Render */

            productGrid.innerHTML =
                filteredProducts
                    .map(product => {

                        const isWishlisted =
                            wishlist.includes(product.id);

                        return `

                            <article class="product-card">

                                <div class="product-image">

                                    <img
                                        src="${product.image}"
                                        alt="${product.name}"
                                        loading="lazy"
                                    >

                                    <span class="product-tag">
                                        ${product.tag}
                                    </span>

                                    <button
                                        class="
                                            wishlist-button
                                            ${isWishlisted ? "active" : ""}
                                        "
                                        onclick="toggleWishlist(${product.id})"
                                        aria-label="Add to wishlist"
                                    >
                                        ${isWishlisted ? "♥" : "♡"}
                                    </button>

                                </div>


                                <div class="product-info">

                                    <div class="product-category">
                                        ${product.categoryName}
                                    </div>

                                    <h3 class="product-name">
                                        ${product.name}
                                    </h3>

                                    <p class="product-description">
                                        ${product.description}
                                    </p>


                                    <div class="product-bottom">

                                        <div class="product-price">
                                            ${formatPrice(product.price)}
                                        </div>

                                        <button
                                            class="add-cart-button"
                                            onclick="addToCart(${product.id})"
                                        >
                                            Add to Cart
                                        </button>

                                    </div>

                                </div>

                            </article>

                        `;

                    })
                    .join("");

        }


        /* =========================================================
           ADD TO CART
        ========================================================== */

        function addToCart(productId) {

            const product =
                products.find(
                    item => item.id === productId
                );

            if (!product) return;


            const existing =
                cart.find(
                    item => item.id === productId
                );


            if (existing) {

                existing.quantity++;

            } else {

                cart.push({

                    id: productId,

                    quantity: 1

                });

            }


            saveData();

            updateCart();

            showToast(
                `${product.name} added to cart`
            );

        }


        /* =========================================================
           REMOVE FROM CART
        ========================================================== */

        function removeFromCart(productId) {

            cart =
                cart.filter(
                    item => item.id !== productId
                );

            saveData();

            updateCart();

        }


        /* =========================================================
           CHANGE QUANTITY
        ========================================================== */

        function changeQuantity(
            productId,
            amount
        ) {

            const item =
                cart.find(
                    item => item.id === productId
                );

            if (!item) return;


            item.quantity += amount;


            if (item.quantity <= 0) {

                removeFromCart(productId);

                return;

            }


            saveData();

            updateCart();

        }


        /* =========================================================
           UPDATE CART
        ========================================================== */

        function updateCart() {

            const totalItems =
                cart.reduce(
                    (sum, item) =>
                        sum + item.quantity,
                    0
                );


            document.getElementById(
                "cartCount"
            ).textContent = totalItems;


            if (!cart.length) {

                cartItems.innerHTML = `

                    <div class="empty-cart">

                        <div style="font-size:40px;margin-bottom:15px;">
                            🛒
                        </div>

                        <strong>
                            Your cart is empty
                        </strong>

                        <p style="margin-top:5px;">
                            Add some products to get started.
                        </p>

                    </div>

                `;

            } else {

                cartItems.innerHTML =

                    cart.map(item => {

                        const product =
                            products.find(
                                product =>
                                    product.id === item.id
                            );

                        if (!product) return "";


                        return `

                            <div class="cart-item">

                                <div class="cart-item-image">

                                    <img
                                        src="${product.image}"
                                        alt="${product.name}"
                                    >

                                </div>


                                <div>

                                    <div class="cart-item-name">
                                        ${product.name}
                                    </div>

                                    <div class="cart-item-price">
                                        ${formatPrice(product.price)}
                                    </div>


                                    <div class="quantity-controls">

                                        <button
                                            onclick="changeQuantity(
                                                ${product.id},
                                                -1
                                            )"
                                        >
                                            −
                                        </button>

                                        <span class="quantity">
                                            ${item.quantity}
                                        </span>

                                        <button
                                            onclick="changeQuantity(
                                                ${product.id},
                                                1
                                            )"
                                        >
                                            +
                                        </button>

                                    </div>

                                </div>


                                <button
                                    class="remove-item"
                                    onclick="removeFromCart(${product.id})"
                                >
                                    Remove
                                </button>

                            </div>

                        `;

                    }).join("");

            }


            const subtotal =
                cart.reduce(

                    (sum, item) => {

                        const product =
                            products.find(
                                product =>
                                    product.id === item.id
                            );

                        return sum +
                            (
                                product
                                    ? product.price * item.quantity
                                    : 0
                            );

                    },

                    0

                );


            document.getElementById(
                "cartSubtotal"
            ).textContent =
                formatPrice(subtotal);


            document.getElementById(
                "cartTotal"
            ).textContent =
                formatPrice(subtotal);

        }


        /* =========================================================
           WISHLIST
        ========================================================== */

        function toggleWishlist(productId) {

            const index =
                wishlist.indexOf(productId);


            const product =
                products.find(
                    item => item.id === productId
                );


            if (index === -1) {

                wishlist.push(productId);

                showToast(
                    `${product.name} added to wishlist`
                );

            } else {

                wishlist.splice(index, 1);

                showToast(
                    `${product.name} removed from wishlist`
                );

            }


            saveData();

            updateWishlist();

            renderProducts();

        }


        function updateWishlist() {

            document.getElementById(
                "wishlistCount"
            ).textContent =
                wishlist.length;

        }


        function openWishlist() {

            if (!wishlist.length) {

                showToast(
                    "Your wishlist is empty"
                );

                return;

            }


            const names =
                wishlist

                    .map(id =>

                        products.find(
                            product =>
                                product.id === id
                        )

                    )

                    .filter(Boolean)

                    .map(product => product.name);


            showToast(
                `${names.length} product${names.length > 1 ? "s" : ""} saved`
            );

        }


        /* =========================================================
           CART DRAWER
        ========================================================== */

        function openCart() {

            cartDrawer.classList.add("open");

            overlay.classList.add("show");

            document.body.style.overflow =
                "hidden";

        }


        function closeCart() {

            cartDrawer.classList.remove("open");

            overlay.classList.remove("show");

            document.body.style.overflow =
                "";

        }


        /* =========================================================
           QUICK VIEW
        ========================================================== */

        function openQuickView(productId) {

            const product =
                products.find(
                    item => item.id === productId
                );

            if (!product) return;


            document.getElementById(
                "modalImage"
            ).src = product.image;


            document.getElementById(
                "modalImage"
            ).alt = product.name;


            document.getElementById(
                "modalCategory"
            ).textContent =
                product.categoryName;


            document.getElementById(
                "modalName"
            ).textContent =
                product.name;


            document.getElementById(
                "modalDescription"
            ).textContent =
                product.description;


            document.getElementById(
                "modalPrice"
            ).textContent =
                formatPrice(product.price);


            document.getElementById(
                "modalAddButton"
            ).onclick = () => {

                addToCart(product.id);

                closeModal();

            };


            modal.classList.add("show");

            document.body.style.overflow =
                "hidden";

        }


        function closeModal() {

            modal.classList.remove("show");

            document.body.style.overflow =
                "";

        }


        /* =========================================================
           SEARCH
        ========================================================== */

        searchInput.addEventListener(
            "input",
            function () {

                currentSearch =
                    this.value;

                renderProducts();

            }
        );


        /* =========================================================
           SORT
        ========================================================== */

        sortSelect.addEventListener(
            "change",
            renderProducts
        );


        /* =========================================================
           CATEGORY FILTER
        ========================================================== */

        document
            .querySelectorAll(".filter-button")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    function () {

                        document
                            .querySelectorAll(
                                ".filter-button"
                            )
                            .forEach(btn =>
                                btn.classList.remove(
                                    "active"
                                )
                            );


                        this.classList.add(
                            "active"
                        );


                        currentCategory =
                            this.dataset.category;


                        renderProducts();

                    }
                );

            });


        /* =========================================================
           CLEAR FILTERS
        ========================================================== */

        function clearFilters() {

            currentCategory = "all";

            currentSearch = "";

            searchInput.value = "";

            sortSelect.value =
                "recommended";


            document
                .querySelectorAll(".filter-button")
                .forEach(button => {

                    button.classList.remove(
                        "active"
                    );

                });


            document
                .querySelector(
                    '[data-category="all"]'
                )
                .classList.add("active");


            renderProducts();

        }


        /* =========================================================
           CHECKOUT
        ========================================================== */

        function checkout() {

            if (!cart.length) {

                showToast(
                    "Your cart is empty"
                );

                return;

            }


            showToast(
                "Checkout is ready to be connected to your payment system"
            );

        }


        /* =========================================================
           TOAST
        ========================================================== */

        function showToast(message) {

            const toast =
                document.createElement("div");

            toast.className = "toast";

            toast.textContent =
                message;


            document
                .getElementById(
                    "toastContainer"
                )
                .appendChild(toast);


            setTimeout(() => {

                toast.remove();

            }, 3000);

        }


        /* =========================================================
           SCROLL
        ========================================================== */

        function scrollToProducts() {

            document
                .getElementById(
                    "productsSection"
                )
                .scrollIntoView({
                    behavior: "smooth"
                });

        }


        /* =========================================================
           EVENTS
        ========================================================== */

        document
            .getElementById("cartButton")
            .addEventListener(
                "click",
                openCart
            );


        document
            .getElementById("closeCart")
            .addEventListener(
                "click",
                closeCart
            );


        overlay.addEventListener(
            "click",
            closeCart
        );


        document
            .getElementById("wishlistButton")
            .addEventListener(
                "click",
                openWishlist
            );


        document
            .getElementById("closeModal")
            .addEventListener(
                "click",
                closeModal
            );


        modal.addEventListener(
            "click",
            event => {

                if (
                    event.target === modal
                ) {

                    closeModal();

                }

            }
        );


        /* =========================================================
           KEYBOARD SUPPORT
        ========================================================== */

        document.addEventListener(
            "keydown",
            event => {

                if (
                    event.key === "Escape"
                ) {

                    closeCart();

                    closeModal();

                }

            }
        );


        /* =========================================================
           INITIALIZE
        ========================================================== */

        renderProducts();

        updateCart();

        updateWishlist();

    </script>

</body>
</html>
