```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS PRIME — Future Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<style>

/* =========================================================
   RESET
========================================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --bg: #08090d;
    --surface: #10121a;
    --surface-2: #161923;
    --surface-3: #1c202c;

    --text: #f8fafc;
    --muted: #9298a8;

    --primary: #8b5cf6;
    --primary-dark: #6d28d9;

    --cyan: #22d3ee;
    --green: #22c55e;
    --yellow: #fbbf24;
    --red: #ef4444;

    --border: rgba(255,255,255,.09);

    --radius: 20px;
    --shadow: 0 25px 70px rgba(0,0,0,.35);
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "Inter", sans-serif;
    background:
        radial-gradient(
            circle at 10% 0%,
            rgba(139,92,246,.14),
            transparent 28%
        ),
        radial-gradient(
            circle at 90% 15%,
            rgba(34,211,238,.10),
            transparent 28%
        ),
        var(--bg);

    color: var(--text);
    min-height: 100vh;
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
    display: block;
    max-width: 100%;
}

button:focus-visible,
input:focus-visible,
select:focus-visible {
    outline: 2px solid var(--cyan);
    outline-offset: 3px;
}


/* =========================================================
   HEADER
========================================================= */

header {
    position: sticky;
    top: 0;
    z-index: 100;

    background: rgba(8,9,13,.82);
    backdrop-filter: blur(22px);

    border-bottom: 1px solid var(--border);
}

.nav {
    max-width: 1250px;
    margin: auto;

    padding: 16px 24px;

    display: flex;
    align-items: center;
    gap: 25px;
}

.logo {
    font-size: 21px;
    font-weight: 800;
    letter-spacing: 2px;
    white-space: nowrap;
}

.logo span {
    color: var(--cyan);
}


/* =========================================================
   SEARCH
========================================================= */

.search {
    flex: 1;
    position: relative;
}

.search input {
    width: 100%;

    padding: 13px 18px 13px 44px;

    border: 1px solid var(--border);
    border-radius: 14px;

    background: rgba(255,255,255,.045);

    color: white;
    outline: none;

    transition: .3s;
}

.search input::placeholder {
    color: #777d8d;
}

.search input:focus {
    border-color: var(--primary);

    box-shadow:
        0 0 0 3px rgba(139,92,246,.12),
        0 0 30px rgba(139,92,246,.12);
}

.search-icon {
    position: absolute;

    left: 15px;
    top: 50%;

    transform: translateY(-50%);

    color: var(--muted);
    font-size: 18px;
}


/* =========================================================
   NAV ACTIONS
========================================================= */

.nav-actions {
    display: flex;
    gap: 9px;
}

.icon-btn {
    width: 44px;
    height: 44px;

    position: relative;

    border: 1px solid var(--border);
    border-radius: 13px;

    background: rgba(255,255,255,.045);

    color: white;

    transition: .3s;
}

.icon-btn:hover {
    background: rgba(255,255,255,.1);
    transform: translateY(-2px);
}

.badge {
    position: absolute;

    right: -5px;
    top: -5px;

    min-width: 19px;
    height: 19px;

    padding: 0 5px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 20px;

    background: var(--primary);

    font-size: 10px;
    font-weight: 700;
}


/* =========================================================
   HERO
========================================================= */

.hero {
    max-width: 1250px;
    margin: 38px auto;
    padding: 0 24px;
}

.hero-box {
    min-height: 470px;

    position: relative;

    display: flex;
    align-items: center;

    padding: 65px;

    overflow: hidden;

    border: 1px solid var(--border);
    border-radius: 30px;

    background:
        linear-gradient(
            120deg,
            #10121a,
            #18142b 52%,
            #0d2028
        );

    box-shadow: var(--shadow);
}

.hero-box::before {
    content: "";

    position: absolute;

    width: 430px;
    height: 430px;

    right: -100px;
    top: -130px;

    border-radius: 50%;

    background: var(--primary);

    filter: blur(120px);
    opacity: .2;
}

.hero-box::after {
    content: "";

    position: absolute;

    width: 330px;
    height: 330px;

    left: 20%;
    bottom: -190px;

    border-radius: 50%;

    background: var(--cyan);

    filter: blur(120px);
    opacity: .12;
}

.hero-content {
    position: relative;
    z-index: 2;

    max-width: 650px;
}

.eyebrow {
    display: inline-flex;
    align-items: center;
    gap: 9px;

    padding: 8px 13px;

    margin-bottom: 22px;

    border: 1px solid var(--border);
    border-radius: 50px;

    background: rgba(255,255,255,.05);

    color: #c9cdd7;

    font-size: 12px;
    font-weight: 600;
}

.dot {
    width: 7px;
    height: 7px;

    border-radius: 50%;

    background: var(--green);

    box-shadow: 0 0 12px var(--green);
}

.hero h1 {
    font-size: clamp(43px, 6vw, 76px);

    line-height: .98;

    letter-spacing: -4px;

    margin-bottom: 23px;
}

.gradient-text {
    background:
        linear-gradient(
            90deg,
            #fff,
            var(--cyan),
            var(--primary)
        );

    -webkit-background-clip: text;
    background-clip: text;

    color: transparent;
}

.hero p {
    max-width: 560px;

    color: var(--muted);

    line-height: 1.75;

    margin-bottom: 30px;
}


/* =========================================================
   BUTTONS
========================================================= */

.hero-buttons {
    display: flex;
    gap: 12px;
}

.btn {
    padding: 14px 21px;

    border: 1px solid var(--border);
    border-radius: 13px;

    background: rgba(255,255,255,.055);

    color: white;

    transition: .3s;
}

.btn:hover {
    transform: translateY(-3px);
    background: rgba(255,255,255,.1);
}

.btn-primary {
    border: none;

    background:
        linear-gradient(
            135deg,
            var(--primary),
            var(--primary-dark)
        );

    box-shadow:
        0 12px 30px rgba(139,92,246,.25);
}

.btn-primary:hover {
    box-shadow:
        0 17px 38px rgba(139,92,246,.35);
}


/* =========================================================
   HERO PRODUCT
========================================================= */

.hero-product {
    position: absolute;

    right: 8%;
    bottom: 45px;

    width: 270px;
    height: 340px;

    padding: 10px;

    border: 1px solid rgba(255,255,255,.13);
    border-radius: 30px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.14),
            rgba(255,255,255,.03)
        );

    backdrop-filter: blur(20px);

    transform: rotate(6deg);

    box-shadow:
        0 40px 90px rgba(0,0,0,.45);

    animation: float 5s ease-in-out infinite;
}

.hero-product img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    border-radius: 22px;
}

@keyframes float {

    0%,
    100% {
        transform: rotate(6deg) translateY(0);
    }

    50% {
        transform: rotate(4deg) translateY(-15px);
    }
}


/* =========================================================
   TRUST
========================================================= */

.trust {
    max-width: 1250px;

    margin: 0 auto 45px;

    padding: 0 24px;
}

.trust-grid {
    display: grid;

    grid-template-columns: repeat(4, 1fr);

    gap: 14px;
}

.trust-item {
    padding: 20px;

    border: 1px solid var(--border);
    border-radius: 18px;

    background: rgba(255,255,255,.025);

    transition: .3s;
}

.trust-item:hover {
    transform: translateY(-3px);

    background: rgba(255,255,255,.045);
}

.trust-icon {
    font-size: 22px;
    margin-bottom: 12px;
}

.trust-item strong {
    display: block;

    margin-bottom: 5px;

    font-size: 14px;
}

.trust-item span {
    color: var(--muted);

    font-size: 12px;

    line-height: 1.5;
}


/* =========================================================
   STORE
========================================================= */

.store {
    max-width: 1250px;

    margin: auto;

    padding: 0 24px 70px;
}

.section-head {
    display: flex;

    align-items: flex-end;
    justify-content: space-between;

    gap: 20px;

    margin-bottom: 24px;
}

.section-head h2 {
    font-size: 30px;
}

.section-head p {
    color: var(--muted);

    font-size: 14px;

    margin-top: 6px;
}

.product-count {
    color: var(--muted);

    font-size: 12px;

    margin-top: 10px;
}


/* =========================================================
   FILTERS
========================================================= */

.store-controls {
    display: flex;
    align-items: center;

    gap: 10px;

    margin-bottom: 25px;

    overflow-x: auto;

    padding-bottom: 3px;
}

.filter-btn {
    white-space: nowrap;

    padding: 9px 14px;

    border: 1px solid var(--border);
    border-radius: 50px;

    background: rgba(255,255,255,.035);

    color: #aeb4c2;

    font-size: 12px;

    transition: .25s;
}

.filter-btn:hover,
.filter-btn.active {
    color: white;

    border-color: var(--primary);

    background:
        rgba(139,92,246,.15);
}

.sort {
    padding: 11px 14px;

    border: 1px solid var(--border);
    border-radius: 12px;

    background: var(--surface);

    color: white;

    outline: none;
}


/* =========================================================
   PRODUCTS
========================================================= */

.products {
    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 20px;
}

.product {
    position: relative;

    overflow: hidden;

    padding: 12px;

    border: 1px solid var(--border);
    border-radius: 24px;

    background:
        linear-gradient(
            145deg,
            #11131a,
            #0d0f15
        );

    transition: .35s;
}

.product:hover {
    transform: translateY(-7px);

    border-color:
        rgba(139,92,246,.4);

    box-shadow:
        0 25px 60px rgba(0,0,0,.3);
}

.product-image {
    height: 280px;

    position: relative;

    overflow: hidden;

    border-radius: 18px;

    background: #191c25;
}

.product-image img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: .5s;
}

.product:hover .product-image img {
    transform: scale(1.06);
}

.tag {
    position: absolute;

    left: 12px;
    top: 12px;

    padding: 7px 10px;

    border-radius: 9px;

    background: rgba(0,0,0,.65);

    backdrop-filter: blur(10px);

    font-size: 10px;
    font-weight: 700;
}

.heart {
    position: absolute;

    right: 12px;
    top: 12px;

    width: 38px;
    height: 38px;

    border: 1px solid rgba(255,255,255,.13);
    border-radius: 12px;

    background: rgba(0,0,0,.5);

    color: white;

    font-size: 18px;

    transition: .25s;
}

.heart:hover {
    background: rgba(239,68,68,.18);

    transform: scale(1.08);
}

.heart.liked {
    color: #fb7185;
}

.product-info {
    padding: 18px 6px 7px;
}

.category {
    color: var(--cyan);

    font-size: 10px;

    text-transform: uppercase;

    letter-spacing: 1.2px;

    font-weight: 700;
}

.product h3 {
    margin: 8px 0;

    font-size: 17px;
}

.rating {
    color: var(--yellow);

    font-size: 12px;

    margin-bottom: 13px;
}

.price-row {
    display: flex;

    align-items: center;
    justify-content: space-between;
}

.price {
    font-size: 20px;

    font-weight: 800;
}

.add {
    width: 42px;
    height: 42px;

    border: none;
    border-radius: 12px;

    background: white;

    color: #08090d;

    font-size: 22px;

    transition: .3s;
}

.add:hover {
    background: var(--cyan);

    transform: rotate(5deg) scale(1.05);
}


/* =========================================================
   EMPTY SEARCH
========================================================= */

.empty-results {
    grid-column: 1 / -1;

    padding: 70px 20px;

    text-align: center;

    border: 1px dashed var(--border);

    border-radius: 20px;

    color: var(--muted);
}

.empty-results-icon {
    font-size: 42px;

    margin-bottom: 15px;
}

.empty-results h3 {
    color: white;

    margin-bottom: 7px;
}


/* =========================================================
   CART OVERLAY
========================================================= */

.cart-overlay {
    position: fixed;

    inset: 0;

    z-index: 200;

    background: rgba(0,0,0,.65);

    backdrop-filter: blur(6px);

    opacity: 0;
    visibility: hidden;

    transition: .3s;
}

.cart-overlay.active {
    opacity: 1;
    visibility: visible;
}

.cart {
    position: absolute;

    right: 0;
    top: 0;

    width: min(450px, 100%);

    height: 100%;

    display: flex;
    flex-direction: column;

    padding: 25px;

    background: #0e1016;

    border-left: 1px solid var(--border);

    transform: translateX(100%);

    transition: .4s;
}

.cart-overlay.active .cart {
    transform: translateX(0);
}

.cart-head {
    display: flex;

    align-items: center;
    justify-content: space-between;

    padding-bottom: 20px;

    border-bottom: 1px solid var(--border);
}

.cart-head h2 {
    font-size: 22px;
}

.cart-subtitle {
    color: var(--muted);

    font-size: 12px;

    margin-top: 4px;
}

.close {
    width: 38px;
    height: 38px;

    border: 1px solid var(--border);
    border-radius: 10px;

    background: rgba(255,255,255,.04);

    color: white;

    transition: .2s;
}

.close:hover {
    background: rgba(255,255,255,.1);
}


/* =========================================================
   CART ITEMS
========================================================= */

.cart-items {
    flex: 1;

    overflow-y: auto;

    padding: 20px 0;
}

.cart-item {
    display: flex;

    gap: 12px;

    padding: 14px 0;

    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 72px;
    height: 72px;

    flex-shrink: 0;

    border-radius: 13px;

    object-fit: cover;
}

.cart-item-info {
    flex: 1;
}

.cart-item h4 {
    font-size: 14px;

    margin-bottom: 6px;
}

.cart-item-price {
    color: var(--cyan);

    font-size: 13px;

    margin-bottom: 10px;
}


/* =========================================================
   QUANTITY
========================================================= */

.quantity {
    display: inline-flex;

    align-items: center;

    border: 1px solid var(--border);

    border-radius: 9px;

    overflow: hidden;
}

.quantity button {
    width: 28px;
    height: 28px;

    border: none;

    background: rgba(255,255,255,.04);

    color: white;
}

.quantity button:hover {
    background: rgba(255,255,255,.1);
}

.quantity span {
    min-width: 28px;

    text-align: center;

    font-size: 12px;
}


/* =========================================================
   CART FOOTER
========================================================= */

.cart-footer {
    padding-top: 20px;

    border-top: 1px solid var(--border);
}

.subtotal-row,
.shipping-row,
.total {
    display: flex;

    justify-content: space-between;

    margin-bottom: 10px;

    font-size: 14px;
}

.shipping-row {
    color: var(--muted);
}

.total {
    margin-top: 15px;

    padding-top: 15px;

    border-top: 1px solid var(--border);

    font-size: 20px;

    font-weight: 800;
}

.checkout {
    width: 100%;

    padding: 15px;

    border: none;

    border-radius: 14px;

    background:
        linear-gradient(
            135deg,
            var(--primary),
            var(--primary-dark)
        );

    color: white;

    font-weight: 700;

    transition: .3s;
}

.checkout:hover {
    transform: translateY(-2px);

    box-shadow:
        0 12px 30px rgba(139,92,246,.25);
}


/* =========================================================
   EMPTY CART
========================================================= */

.empty-cart {
    padding: 60px 20px;

    text-align: center;

    color: var(--muted);
}

.empty-cart-icon {
    font-size: 45px;

    margin-bottom: 15px;
}

.empty-cart h3 {
    color: white;

    margin-bottom: 8px;
}


/* =========================================================
   TOAST
========================================================= */

.toast {
    position: fixed;

    left: 50%;
    bottom: 25px;

    z-index: 500;

    max-width: calc(100% - 30px);

    padding: 13px 18px;

    border: 1px solid var(--border);
    border-radius: 12px;

    background: #171923;

    color: white;

    box-shadow: var(--shadow);

    opacity: 0;

    pointer-events: none;

    transform: translate(-50%, 30px);

    transition: .3s;
}

.toast.show {
    opacity: 1;

    transform: translate(-50%, 0);
}


/* =========================================================
   FOOTER
========================================================= */

footer {
    border-top: 1px solid var(--border);

    padding: 35px 24px;

    text-align: center;

    color: var(--muted);

    font-size: 12px;
}

.footer-logo {
    color: white;

    font-weight: 800;

    letter-spacing: 1px;

    margin-bottom: 8px;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media (max-width: 1000px) {

    .hero-box {
        padding: 50px;
    }

    .hero-product {
        right: -40px;
        opacity: .45;
    }

    .products {
        grid-template-columns: repeat(2, 1fr);
    }

    .trust-grid {
        grid-template-columns: repeat(2, 1fr);
    }
}


@media (max-width: 700px) {

    .nav {
        flex-wrap: wrap;
        gap: 12px;
    }

    .logo {
        flex: 1;
    }

    .search {
        order: 3;

        flex-basis: 100%;
    }

    .hero {
        margin-top: 20px;
    }

    .hero-box {
        min-height: 540px;

        padding: 38px 25px;

        align-items: flex-start;
    }

    .hero h1 {
        letter-spacing: -2px;
    }

    .hero-product {
        width: 190px;
        height: 240px;

        right: -45px;
        bottom: 20px;

        opacity: .28;
    }

    .hero-buttons {
        flex-direction: column;

        align-items: flex-start;
    }

    .section-head {
        align-items: flex-start;

        flex-direction: column;
    }

    .products {
        grid-template-columns: 1fr;
    }

    .product-image {
        height: 330px;
    }

    .trust-grid {
        grid-template-columns: 1fr 1fr;
    }
}


@media (max-width: 450px) {

    .nav {
        padding: 14px 16px;
    }

    .hero,
    .trust,
    .store {
        padding-left: 16px;
        padding-right: 16px;
    }

    .hero-box {
        min-height: 550px;

        border-radius: 24px;
    }

    .hero h1 {
        font-size: 42px;
    }

    .trust-grid {
        grid-template-columns: 1fr;
    }

    .product-image {
        height: 300px;
    }

    .cart {
        padding: 20px;
    }
}

</style>
</head>


<body>


<!-- =======================================================
     HEADER
======================================================== -->

<header>

<nav class="nav">

    <div class="logo">
        NEXUS<span>PRIME</span>
    </div>


    <div class="search">

        <span class="search-icon">⌕</span>

        <input
            type="search"
            id="search"
            placeholder="Search smartphones, audio, laptops..."
            aria-label="Search products"
            oninput="searchProducts()"
        >

    </div>


    <div class="nav-actions">

        <button
            class="icon-btn"
            onclick="showWishlist()"
            aria-label="Open wishlist"
            title="Wishlist">

            ♡

            <span
                class="badge"
                id="wishCount">
                0
            </span>

        </button>


        <button
            class="icon-btn"
            onclick="openCart()"
            aria-label="Open shopping cart"
            title="Shopping cart">

            🛒

            <span
                class="badge"
                id="cartCount">
                0
            </span>

        </button>

    </div>

</nav>

</header>


<!-- =======================================================
     HERO
======================================================== -->

<section class="hero">

<div class="hero-box">

    <div class="hero-content">

        <div class="eyebrow">

            <span class="dot"></span>

            NEW COLLECTION 2026

        </div>


        <h1>

            Technology

            <br>

            <span class="gradient-text">
                Without Limits.
            </span>

        </h1>


        <p>

            Discover premium gadgets, intelligent devices
            and next-generation technology designed for
            the way you live today.

        </p>


        <div class="hero-buttons">

            <button
                class="btn btn-primary"
                onclick="scrollToProducts()">

                Explore Collection →

            </button>


            <button
                class="btn"
                onclick="showToast('Free shipping on orders over $100')">

                🚚 Free Shipping

            </button>

        </div>

    </div>


    <div class="hero-product">

        <img
            src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=85"
            alt="Premium smartphone"
        >

    </div>

</div>

</section>


<!-- =======================================================
     TRUST
======================================================== -->

<section class="trust">

<div class="trust-grid">


    <div class="trust-item">

        <div class="trust-icon">⚡</div>

        <strong>
            Fast Delivery
        </strong>

        <span>
            Express shipping worldwide
        </span>

    </div>


    <div class="trust-item">

        <div class="trust-icon">🔐</div>

        <strong>
            Secure Payment
        </strong>

        <span>
            Protected checkout experience
        </span>

    </div>


    <div class="trust-item">

        <div class="trust-icon">↩️</div>

        <strong>
            Easy Returns
        </strong>

        <span>
            30-day hassle-free returns
        </span>

    </div>


    <div class="trust-item">

        <div class="trust-icon">★</div>

        <strong>
            Premium Support
        </strong>

        <span>
            We're here whenever you need us
        </span>

    </div>


</div>

</section>


<!-- =======================================================
     STORE
======================================================== -->

<section
    class="store"
    id="products">


    <div class="section-head">

        <div>

            <h2>
                Trending Products
            </h2>

            <p>
                Hand-picked technology for modern life.
            </p>

            <div
                class="product-count"
                id="productCount">
                6 products
            </div>

        </div>


        <select
            class="sort"
            id="sort"
            onchange="sortProducts(this.value)"
            aria-label="Sort products">

            <option value="default">
                Featured
            </option>

            <option value="low">
                Price: Low → High
            </option>

            <option value="high">
                Price: High → Low
            </option>

        </select>

    </div>


    <!-- CATEGORY FILTERS -->

    <div class="store-controls">

        <button
            class="filter-btn active"
            onclick="filterCategory('All', this)">

            All Products

        </button>


        <button
            class="filter-btn"
            onclick="filterCategory('Smartphones', this)">

            Smartphones

        </button>


        <button
            class="filter-btn"
            onclick="filterCategory('Audio', this)">

            Audio

        </button>


        <button
            class="filter-btn"
            onclick="filterCategory('Wearables', this)">

            Wearables

        </button>


        <button
            class="filter-btn"
            onclick="filterCategory('Laptops', this)">

            Laptops

        </button>


        <button
            class="filter-btn"
            onclick="filterCategory('Gaming', this)">

            Gaming

        </button>


        <button
            class="filter-btn"
            onclick="filterCategory('Cameras', this)">

            Cameras

        </button>

    </div>


    <!-- PRODUCT GRID -->

    <div
        class="products"
        id="productGrid">

    </div>

</section>


<!-- =======================================================
     CART
======================================================== -->

<div
    class="cart-overlay"
    id="cartOverlay">


    <div class="cart">


        <div class="cart-head">

            <div>

                <h2>
                    Your Cart
                </h2>

                <div class="cart-subtitle">
                    Review your selected products
                </div>

            </div>


            <button
                class="close"
                onclick="closeCart()"
                aria-label="Close cart">

                ×

            </button>

        </div>


        <div
            class="cart-items"
            id="cartItems">

        </div>


        <div class="cart-footer">


            <div class="subtotal-row">

                <span>
                    Subtotal
                </span>

                <span id="subtotal">
                    $0
                </span>

            </div>


            <div class="shipping-row">

                <span>
                    Shipping
                </span>

                <span>
                    FREE
                </span>

            </div>


            <div class="total">

                <span>
                    Total
                </span>

                <span id="cartTotal">
                    $0
                </span>

            </div>


            <button
                class="checkout"
                onclick="checkout()">

                Proceed to Checkout →

            </button>

        </div>

    </div>

</div>


<!-- =======================================================
     TOAST
======================================================== -->

<div
    class="toast"
    id="toast"
    role="status">

</div>


<!-- =======================================================
     FOOTER
======================================================== -->

<footer>

    <div class="footer-logo">
        NEXUS PRIME
    </div>

    © 2026 NEXUS PRIME — Designed for the future.

</footer>


<script>

/* =========================================================
   PRODUCT DATA
========================================================= */

const products = [

    {
        id: 1,
        name: "Nova X Smartphone",
        category: "Smartphones",
        price: 899,
        rating: "★★★★★",
        tag: "BESTSELLER",
        image:
        "https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 2,
        name: "Aero Max Headphones",
        category: "Audio",
        price: 249,
        rating: "★★★★★",
        tag: "NEW",
        image:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 3,
        name: "Vision Pro Watch",
        category: "Wearables",
        price: 399,
        rating: "★★★★☆",
        tag: "TRENDING",
        image:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 4,
        name: "UltraBook Air",
        category: "Laptops",
        price: 1299,
        rating: "★★★★★",
        tag: "PREMIUM",
        image:
        "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 5,
        name: "Pulse Gaming Console",
        category: "Gaming",
        price: 499,
        rating: "★★★★★",
        tag: "HOT",
        image:
        "https://images.unsplash.com/photo-1605901309584-818e25960a8f?auto=format&fit=crop&w=800&q=85"
    },

    {
        id: 6,
        name: "Studio Camera X",
        category: "Cameras",
        price: 749,
        rating: "★★★★☆",
        tag: "LIMITED",
        image:
        "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=85"
    }

];


/* =========================================================
   STATE
========================================================= */

let cart =
    JSON.parse(
        localStorage.getItem("nexusCart")
    ) || [];

let wishlist =
    JSON.parse(
        localStorage.getItem("nexusWishlist")
    ) || [];

let currentCategory = "All";


/* =========================================================
   RENDER PRODUCTS
========================================================= */

function renderProducts(list = products) {

    const grid =
        document.getElementById("productGrid");

    grid.innerHTML = "";


    document.getElementById(
        "productCount"
    ).textContent =
        `${list.length} ${list.length === 1 ? "product" : "products"}`;


    if (!list.length) {

        grid.innerHTML = `

            <div class="empty-results">

                <div class="empty-results-icon">
                    🔎
                </div>

                <h3>
                    No products found
                </h3>

                <p>
                    Try another search or category.
                </p>

            </div>

        `;

        return;
    }


    list.forEach(product => {

        const liked =
            wishlist.includes(product.id);


        grid.innerHTML += `

            <article class="product">

                <div class="product-image">

                    <img
                        src="${product.image}"
                        alt="${product.name}"
                        loading="lazy"
                    >

                    <span class="tag">
                        ${product.tag}
                    </span>


                    <button
                        class="heart ${liked ? "liked" : ""}"
                        onclick="toggleWishlist(${product.id})"
                        aria-label="Add ${product.name} to wishlist">

                        ${liked ? "♥" : "♡"}

                    </button>

                </div>


                <div class="product-info">

                    <div class="category">
                        ${product.category}
                    </div>


                    <h3>
                        ${product.name}
                    </h3>


                    <div class="rating">
                        ${product.rating}
                    </div>


                    <div class="price-row">

                        <div class="price">
                            $${product.price.toLocaleString()}
                        </div>


                        <button
                            class="add"
                            onclick="addToCart(${product.id})"
                            aria-label="Add ${product.name} to cart"
                            title="Add to cart">

                            +

                        </button>

                    </div>

                </div>

            </article>

        `;

    });

}


/* =========================================================
   SEARCH
========================================================= */

function searchProducts() {

    const query =
        document
            .getElementById("search")
            .value
            .toLowerCase()
            .trim();


    let result =
        products.filter(product => {

            const matchesSearch =
                product.name
                    .toLowerCase()
                    .includes(query) ||

                product.category
                    .toLowerCase()
                    .includes(query);


            const matchesCategory =
                currentCategory === "All" ||
                product.category === currentCategory;


            return matchesSearch && matchesCategory;

        });


    applySorting(result);

}


/* =========================================================
   CATEGORY FILTER
========================================================= */

function filterCategory(category, button) {

    currentCategory = category;


    document
        .querySelectorAll(".filter-btn")
        .forEach(btn =>
            btn.classList.remove("active")
        );


    button.classList.add("active");


    searchProducts();

}


/* =========================================================
   SORT
========================================================= */

function sortProducts(type) {

    searchProducts();


    const query =
        document
            .getElementById("search")
            .value
            .toLowerCase()
            .trim();


    let result =
        products.filter(product => {

            const searchMatch =
                product.name
                    .toLowerCase()
                    .includes(query) ||

                product.category
                    .toLowerCase()
                    .includes(query);


            const categoryMatch =
                currentCategory === "All" ||
                product.category === currentCategory;


            return searchMatch && categoryMatch;

        });


    if (type === "low") {

        result.sort(
            (a,b) => a.price - b.price
        );

    }


    if (type === "high") {

        result.sort(
            (a,b) => b.price - a.price
        );

    }


    renderProducts(result);

}


/* =========================================================
   APPLY SORTING
========================================================= */

function applySorting(list) {

    const type =
        document.getElementById("sort").value;


    if (type === "low") {

        list.sort(
            (a,b) => a.price - b.price
        );

    }


    if (type === "high") {

        list.sort(
            (a,b) => b.price - a.price
        );

    }


    renderProducts(list);

}


/* =========================================================
   ADD TO CART
========================================================= */

function addToCart(id) {

    const product =
        products.find(
            product => product.id === id
        );


    const existing =
        cart.find(
            item => item.id === id
        );


    if (existing) {

        existing.qty++;

    } else {

        cart.push({
            ...product,
            qty: 1
        });

    }


    saveCart();

    updateCart();


    showToast(
        `${product.name} added to cart`
    );

}


/* =========================================================
   CHANGE QUANTITY
========================================================= */

function changeQuantity(id, amount) {

    const item =
        cart.find(
            item => item.id === id
        );


    if (!item) return;


    item.qty += amount;


    if (item.qty <= 0) {

        cart =
            cart.filter(
                item => item.id !== id
            );

    }


    saveCart();

    updateCart();

}


/* =========================================================
   REMOVE FROM CART
========================================================= */

function removeFromCart(id) {

    const item =
        cart.find(
            item => item.id === id
        );


    cart =
        cart.filter(
            item => item.id !== id
        );


    saveCart();

    updateCart();


    if (item) {

        showToast(
            `${item.name} removed`
        );

    }

}


/* =========================================================
   UPDATE CART
========================================================= */

function updateCart() {

    const items =
        document.getElementById("cartItems");


    let total = 0;

    let count = 0;


    items.innerHTML = "";


    if (!cart.length) {

        items.innerHTML = `

            <div class="empty-cart">

                <div class="empty-cart-icon">
                    🛒
                </div>

                <h3>
                    Your cart is empty
                </h3>

                <p>
                    Add something awesome to get started.
                </p>

            </div>

        `;

    }


    cart.forEach(item => {

        total +=
            item.price * item.qty;

        count += item.qty;


        items.innerHTML += `

            <div class="cart-item">

                <img
                    src="${item.image}"
                    alt="${item.name}"
                >


                <div class="cart-item-info">

                    <h4>
                        ${item.name}
                    </h4>


                    <div class="cart-item-price">
                        $${item.price.toLocaleString()}
                    </div>


                    <div class="quantity">

                        <button
                            onclick="changeQuantity(${item.id}, -1)"
                            aria-label="Decrease quantity">

                            −

                        </button>


                        <span>
                            ${item.qty}
                        </span>


                        <button
                            onclick="changeQuantity(${item.id}, 1)"
                            aria-label="Increase quantity">

                            +

                        </button>

                    </div>

                </div>


                <button
                    class="close"
                    onclick="removeFromCart(${item.id})"
                    aria-label="Remove ${item.name}">

                    ×

                </button>

            </div>

        `;

    });


    document.getElementById(
        "subtotal"
    ).textContent =
        "$" + total.toLocaleString();


    document.getElementById(
        "cartTotal"
    ).textContent =
        "$" + total.toLocaleString();


    document.getElementById(
        "cartCount"
    ).textContent = count;


    document.getElementById(
        "wishCount"
    ).textContent =
        wishlist.length;

}


/* =========================================================
   SAVE CART
========================================================= */

function saveCart() {

    localStorage.setItem(
        "nexusCart",
        JSON.stringify(cart)
    );

}


/* =========================================================
   OPEN CART
========================================================= */

function openCart() {

    updateCart();


    document
        .getElementById("cartOverlay")
        .classList.add("active");


    document.body.style.overflow = "hidden";

}


/* =========================================================
   CLOSE CART
========================================================= */

function closeCart() {

    document
        .getElementById("cartOverlay")
        .classList.remove("active");


    document.body.style.overflow = "";

}


/* =========================================================
   CLOSE CART WHEN CLICKING OUTSIDE
========================================================= */

document
    .getElementById("cartOverlay")
    .addEventListener(
        "click",
        function(event) {

            if (
                event.target === this
            ) {

                closeCart();

            }

        }
    );


/* =========================================================
   ESCAPE KEY
========================================================= */

document.addEventListener(
    "keydown",
    function(event) {

        if (
            event.key === "Escape"
        ) {

            closeCart();

        }

    }
);


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id) {

    if (
        wishlist.includes(id)
    ) {

        wishlist =
            wishlist.filter(
                item => item !== id
            );

        showToast(
            "Removed from wishlist"
        );

    } else {

        wishlist.push(id);

        showToast(
            "Added to wishlist ❤️"
        );

    }


    localStorage.setItem(
        "nexusWishlist",
        JSON.stringify(wishlist)
    );


    searchProducts();

    updateCart();

}


/* =========================================================
   SHOW WISHLIST
========================================================= */

function showWishlist() {

    if (!wishlist.length) {

        showToast(
            "Your wishlist is empty"
        );

        return;

    }


    const wishlistProducts =
        products.filter(
            product =>
                wishlist.includes(product.id)
        );


    renderProducts(
        wishlistProducts
    );


    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });


    showToast(
        `${wishlist.length} item(s) in your wishlist`
    );

}


/* =========================================================
   CHECKOUT
========================================================= */

function checkout() {

    if (!cart.length) {

        showToast(
            "Your cart is empty"
        );

        return;

    }


    showToast(
        "Checkout coming soon 🚀"
    );

}


/* =========================================================
   TOAST
========================================================= */

let toastTimer;


function showToast(message) {

    const toast =
        document.getElementById("toast");


    toast.textContent =
        message;


    toast.classList.add(
        "show"
    );


    clearTimeout(
        toastTimer
    );


    toastTimer =
        setTimeout(
            () => {

                toast.classList.remove(
                    "show"
                );

            },
            2500
        );

}


/* =========================================================
   SCROLL TO PRODUCTS
========================================================= */

function scrollToProducts() {

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


/* =========================================================
   INITIALIZE
========================================================= */

renderProducts();

updateCart();

</script>

</body>
</html>
```
