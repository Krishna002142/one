<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Modern Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root {
    --primary:#111827;
    --primary-2:#2563eb;
    --accent:#4f46e5;
    --accent-light:#eef2ff;
    --success:#16a34a;
    --danger:#ef4444;
    --warning:#f59e0b;

    --bg:#f7f8fc;
    --surface:#ffffff;
    --surface-2:#f1f5f9;
    --text:#111827;
    --muted:#64748b;
    --border:#e5e7eb;

    --shadow-sm:0 2px 10px rgba(15,23,42,.05);
    --shadow:0 10px 30px rgba(15,23,42,.08);
    --shadow-lg:0 20px 50px rgba(15,23,42,.14);

    --radius-sm:10px;
    --radius:18px;
    --radius-lg:28px;

    --container:1280px;
}

* {
    box-sizing:border-box;
}

html {
    scroll-behavior:smooth;
}

body {
    margin:0;
    font-family:Inter, sans-serif;
    color:var(--text);
    background:var(--bg);
    line-height:1.5;
}

body.dark {
    --bg:#0b1120;
    --surface:#111827;
    --surface-2:#1e293b;
    --text:#f8fafc;
    --muted:#94a3b8;
    --border:#263244;
    --accent-light:#1e1b4b;
}

button,
input {
    font:inherit;
}

button {
    cursor:pointer;
}

a {
    color:inherit;
    text-decoration:none;
}

img {
    display:block;
    max-width:100%;
}

.container {
    width:min(var(--container), calc(100% - 40px));
    margin:auto;
}

/* ================= HEADER ================= */

header {
    position:sticky;
    top:0;
    z-index:100;
    background:rgba(255,255,255,.88);
    backdrop-filter:blur(18px);
    border-bottom:1px solid var(--border);
}

.dark header {
    background:rgba(11,17,32,.88);
}

.header {
    height:76px;
    display:flex;
    align-items:center;
    gap:28px;
}

.logo {
    display:flex;
    align-items:center;
    gap:10px;
    font-family:Poppins;
    font-size:22px;
    font-weight:800;
    white-space:nowrap;
}

.logo-icon {
    width:38px;
    height:38px;
    display:grid;
    place-items:center;
    color:white;
    background:linear-gradient(135deg,#4f46e5,#2563eb);
    border-radius:12px;
}

.logo span {
    color:#4f46e5;
}

.desktop-nav {
    display:flex;
    gap:5px;
}

.desktop-nav a {
    padding:10px 13px;
    border-radius:10px;
    font-size:14px;
    font-weight:600;
    color:var(--muted);
}

.desktop-nav a:hover,
.desktop-nav a.active {
    color:var(--accent);
    background:var(--accent-light);
}

.search-box {
    flex:1;
    max-width:430px;
    position:relative;
    margin-left:auto;
}

.search-box i {
    position:absolute;
    left:15px;
    top:50%;
    transform:translateY(-50%);
    color:var(--muted);
}

.search-box input {
    width:100%;
    height:44px;
    border:1px solid var(--border);
    border-radius:13px;
    background:var(--surface-2);
    color:var(--text);
    outline:none;
    padding:0 45px;
    transition:.2s;
}

.search-box input:focus {
    border-color:var(--accent);
    box-shadow:0 0 0 4px rgba(79,70,229,.1);
}

.header-actions {
    display:flex;
    align-items:center;
    gap:7px;
}

.icon-button {
    width:42px;
    height:42px;
    border:0;
    border-radius:12px;
    background:transparent;
    color:var(--text);
    display:grid;
    place-items:center;
    position:relative;
}

.icon-button:hover {
    background:var(--surface-2);
}

.badge {
    position:absolute;
    top:2px;
    right:1px;
    min-width:18px;
    height:18px;
    padding:0 5px;
    display:grid;
    place-items:center;
    background:var(--danger);
    color:white;
    font-size:10px;
    font-weight:800;
    border-radius:50px;
}

.mobile-menu-button {
    display:none;
}

/* ================= MAIN ================= */

main {
    padding-bottom:70px;
}

/* ================= HERO ================= */

.hero {
    margin-top:24px;
}

.hero-box {
    min-height:430px;
    border-radius:var(--radius-lg);
    overflow:hidden;
    position:relative;
    background:
        linear-gradient(90deg,rgba(10,15,30,.9),rgba(10,15,30,.35)),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85")
        center/cover;
    display:flex;
    align-items:center;
    padding:60px;
}

.hero-content {
    max-width:620px;
    color:white;
}

.eyebrow {
    display:inline-flex;
    align-items:center;
    gap:7px;
    background:rgba(255,255,255,.14);
    border:1px solid rgba(255,255,255,.2);
    backdrop-filter:blur(10px);
    padding:8px 13px;
    border-radius:50px;
    font-size:12px;
    font-weight:700;
    margin-bottom:18px;
}

.hero h1 {
    font-family:Poppins;
    font-size:clamp(38px,5vw,64px);
    line-height:1.05;
    margin:0 0 18px;
    letter-spacing:-2px;
}

.hero p {
    color:#dbeafe;
    max-width:540px;
    font-size:16px;
    margin-bottom:28px;
}

.hero-buttons {
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

/* ================= BUTTONS ================= */

.btn {
    border:0;
    border-radius:12px;
    padding:12px 18px;
    font-weight:700;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;
    transition:.2s;
}

.btn:hover {
    transform:translateY(-2px);
}

.btn-primary {
    background:var(--accent);
    color:white;
    box-shadow:0 8px 20px rgba(79,70,229,.25);
}

.btn-light {
    background:white;
    color:#111827;
}

.btn-outline {
    background:transparent;
    color:var(--text);
    border:1px solid var(--border);
}

.btn-danger {
    background:#fee2e2;
    color:#dc2626;
}

/* ================= BENEFITS ================= */

.benefits {
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
    margin-top:20px;
}

.benefit {
    background:var(--surface);
    border:1px solid var(--border);
    border-radius:15px;
    padding:18px;
    display:flex;
    align-items:center;
    gap:13px;
    box-shadow:var(--shadow-sm);
}

.benefit-icon {
    width:43px;
    height:43px;
    border-radius:12px;
    background:var(--accent-light);
    color:var(--accent);
    display:grid;
    place-items:center;
    flex-shrink:0;
}

.benefit strong {
    display:block;
    font-size:13px;
}

.benefit span {
    color:var(--muted);
    font-size:12px;
}

/* ================= SECTION ================= */

.section {
    margin-top:55px;
}

.section-head {
    display:flex;
    align-items:end;
    justify-content:space-between;
    margin-bottom:22px;
    gap:15px;
}

.section-title h2 {
    font-family:Poppins;
    margin:0;
    font-size:27px;
}

.section-title p {
    margin:5px 0 0;
    color:var(--muted);
    font-size:14px;
}

.view-all {
    color:var(--accent);
    font-size:14px;
    font-weight:700;
}

/* ================= CATEGORIES ================= */

.categories {
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.category {
    background:var(--surface);
    border:1px solid var(--border);
    border-radius:18px;
    padding:22px 14px;
    text-align:center;
    transition:.2s;
    cursor:pointer;
}

.category:hover {
    transform:translateY(-5px);
    border-color:#c7d2fe;
    box-shadow:var(--shadow);
}

.category-icon {
    width:58px;
    height:58px;
    border-radius:17px;
    display:grid;
    place-items:center;
    margin:0 auto 12px;
    font-size:21px;
    color:var(--accent);
    background:var(--accent-light);
}

.category strong {
    font-size:13px;
}

.category small {
    display:block;
    color:var(--muted);
    margin-top:3px;
}

/* ================= PRODUCT TOOLBAR ================= */

.toolbar {
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:12px;
    margin-bottom:20px;
}

.filters {
    display:flex;
    gap:8px;
    overflow:auto;
}

.filter {
    white-space:nowrap;
    border:1px solid var(--border);
    background:var(--surface);
    color:var(--muted);
    border-radius:50px;
    padding:9px 14px;
    font-size:13px;
    font-weight:600;
}

.filter.active,
.filter:hover {
    color:var(--accent);
    border-color:#c7d2fe;
    background:var(--accent-light);
}

.sort {
    border:1px solid var(--border);
    background:var(--surface);
    color:var(--text);
    padding:9px 13px;
    border-radius:10px;
    outline:none;
}

/* ================= PRODUCTS ================= */

.products {
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product {
    background:var(--surface);
    border:1px solid var(--border);
    border-radius:18px;
    overflow:hidden;
    position:relative;
    transition:.25s;
}

.product:hover {
    transform:translateY(-5px);
    box-shadow:var(--shadow);
}

.product-image {
    height:235px;
    position:relative;
    background:var(--surface-2);
    overflow:hidden;
}

.product-image img {
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.4s;
}

.product:hover .product-image img {
    transform:scale(1.05);
}

.product-badge {
    position:absolute;
    top:12px;
    left:12px;
    padding:6px 9px;
    border-radius:7px;
    background:#111827;
    color:white;
    font-size:10px;
    font-weight:800;
}

.product-badge.sale {
    background:var(--danger);
}

.wishlist {
    position:absolute;
    right:12px;
    top:12px;
    width:36px;
    height:36px;
    border:0;
    border-radius:50%;
    background:rgba(255,255,255,.92);
    color:#475569;
    display:grid;
    place-items:center;
}

.wishlist.active {
    color:#ef4444;
}

.product-info {
    padding:15px;
}

.product-category {
    color:var(--muted);
    font-size:11px;
    text-transform:uppercase;
    letter-spacing:.5px;
    font-weight:700;
}

.product-name {
    font-size:15px;
    margin:5px 0;
    font-weight:700;
}

.rating {
    display:flex;
    align-items:center;
    gap:6px;
    margin:8px 0;
}

.stars {
    color:#f59e0b;
    font-size:12px;
}

.reviews {
    color:var(--muted);
    font-size:11px;
}

.product-bottom {
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-top:12px;
}

.price {
    font-size:18px;
    font-weight:800;
}

.old-price {
    font-size:11px;
    color:var(--muted);
    text-decoration:line-through;
    margin-left:5px;
}

.add-cart {
    width:40px;
    height:40px;
    border:0;
    border-radius:11px;
    color:white;
    background:var(--primary);
    display:grid;
    place-items:center;
    transition:.2s;
}

.add-cart:hover {
    background:var(--accent);
}

/* ================= FLASH SALE ================= */

.flash {
    border-radius:24px;
    background:linear-gradient(135deg,#111827,#312e81);
    color:white;
    overflow:hidden;
    display:grid;
    grid-template-columns:1fr 1fr;
}

.flash-image {
    min-height:340px;
    background:
        linear-gradient(90deg,rgba(17,24,39,.1),rgba(17,24,39,.25)),
        url("https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1000&q=85")
        center/cover;
}

.flash-content {
    padding:45px;
    display:flex;
    justify-content:center;
    flex-direction:column;
}

.flash-label {
    color:#c7d2fe;
    font-weight:800;
    font-size:12px;
    text-transform:uppercase;
}

.flash h2 {
    font-family:Poppins;
    font-size:34px;
    margin:8px 0;
}

.flash p {
    color:#cbd5e1;
}

.timer {
    display:flex;
    gap:8px;
    margin:18px 0 24px;
}

.timer-box {
    min-width:62px;
    text-align:center;
    padding:10px;
    border-radius:11px;
    background:rgba(255,255,255,.1);
}

.timer-box strong {
    display:block;
    font-size:20px;
}

.timer-box span {
    font-size:10px;
    color:#cbd5e1;
}

/* ================= TESTIMONIALS ================= */

.testimonials {
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:16px;
}

.testimonial {
    background:var(--surface);
    border:1px solid var(--border);
    padding:22px;
    border-radius:18px;
}

.testimonial-stars {
    color:#f59e0b;
    font-size:12px;
}

.testimonial p {
    color:var(--muted);
    font-size:14px;
    line-height:1.7;
}

.user {
    display:flex;
    align-items:center;
    gap:10px;
}

.avatar {
    width:40px;
    height:40px;
    border-radius:50%;
    object-fit:cover;
}

.user strong {
    font-size:13px;
}

.user small {
    display:block;
    color:var(--muted);
}

/* ================= NEWSLETTER ================= */

.newsletter {
    padding:50px;
    border-radius:25px;
    text-align:center;
    background:var(--accent-light);
    border:1px solid #c7d2fe;
}

.newsletter h2 {
    font-family:Poppins;
    margin:0 0 7px;
}

.newsletter p {
    color:var(--muted);
}

.newsletter-form {
    max-width:500px;
    margin:22px auto 0;
    display:flex;
    background:var(--surface);
    padding:5px;
    border-radius:13px;
    border:1px solid var(--border);
}

.newsletter-form input {
    flex:1;
    border:0;
    outline:0;
    background:transparent;
    padding:12px;
    color:var(--text);
}

/* ================= FOOTER ================= */

footer {
    border-top:1px solid var(--border);
    padding:50px 0 30px;
    background:var(--surface);
}

.footer-grid {
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:35px;
}

.footer-brand p {
    color:var(--muted);
    max-width:350px;
    font-size:13px;
}

footer h4 {
    margin:0 0 14px;
}

footer a {
    display:block;
    color:var(--muted);
    font-size:13px;
    margin:9px 0;
}

footer a:hover {
    color:var(--accent);
}

.copyright {
    border-top:1px solid var(--border);
    margin-top:35px;
    padding-top:20px;
    text-align:center;
    color:var(--muted);
    font-size:12px;
}

/* ================= CART DRAWER ================= */

.overlay {
    position:fixed;
    inset:0;
    background:rgba(15,23,42,.45);
    z-index:150;
    opacity:0;
    visibility:hidden;
    transition:.25s;
}

.overlay.show {
    opacity:1;
    visibility:visible;
}

.cart-drawer {
    position:fixed;
    right:0;
    top:0;
    height:100%;
    width:min(420px,100%);
    background:var(--surface);
    z-index:160;
    transform:translateX(100%);
    transition:.3s;
    display:flex;
    flex-direction:column;
    box-shadow:var(--shadow-lg);
}

.cart-drawer.open {
    transform:translateX(0);
}

.cart-header {
    padding:20px;
    border-bottom:1px solid var(--border);
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.cart-header h3 {
    margin:0;
}

.close-cart {
    border:0;
    background:var(--surface-2);
    color:var(--text);
    width:36px;
    height:36px;
    border-radius:10px;
}

.cart-items {
    flex:1;
    overflow:auto;
    padding:18px;
}

.cart-item {
    display:flex;
    gap:12px;
    padding:12px 0;
    border-bottom:1px solid var(--border);
}

.cart-item img {
    width:70px;
    height:70px;
    border-radius:12px;
    object-fit:cover;
}

.cart-item-info {
    flex:1;
}

.cart-item-info strong {
    font-size:13px;
}

.cart-item-info small {
    display:block;
    color:var(--muted);
    margin-top:3px;
}

.cart-item-actions {
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-top:7px;
}

.quantity {
    display:flex;
    align-items:center;
    gap:8px;
}

.quantity button {
    width:25px;
    height:25px;
    border:1px solid var(--border);
    border-radius:7px;
    background:var(--surface);
    color:var(--text);
}

.remove {
    border:0;
    background:transparent;
    color:var(--danger);
}

.cart-footer {
    padding:20px;
    border-top:1px solid var(--border);
}

.cart-total {
    display:flex;
    justify-content:space-between;
    margin-bottom:15px;
    font-size:18px;
    font-weight:800;
}

/* ================= TOAST ================= */

.toast-container {
    position:fixed;
    right:20px;
    bottom:20px;
    z-index:300;
    display:flex;
    flex-direction:column;
    gap:10px;
}

.toast {
    min-width:280px;
    max-width:350px;
    background:#111827;
    color:white;
    padding:13px 15px;
    border-radius:12px;
    display:flex;
    align-items:center;
    gap:10px;
    box-shadow:var(--shadow-lg);
    animation:toastIn .3s ease;
    font-size:13px;
}

.toast i {
    color:#4ade80;
}

@keyframes toastIn {
    from {
        transform:translateY(15px);
        opacity:0;
    }
    to {
        transform:translateY(0);
        opacity:1;
    }
}

/* ================= EMPTY ================= */

.empty {
    grid-column:1/-1;
    text-align:center;
    padding:60px 20px;
    background:var(--surface);
    border:1px dashed var(--border);
    border-radius:18px;
}

.empty i {
    font-size:35px;
    color:var(--muted);
    margin-bottom:12px;
}

.empty h3 {
    margin:0;
}

.empty p {
    color:var(--muted);
}

/* ================= MOBILE NAV ================= */

.mobile-bottom-nav {
    display:none;
}

/* ================= RESPONSIVE ================= */

@media(max-width:1100px) {

    .desktop-nav {
        display:none;
    }

    .mobile-menu-button {
        display:grid;
    }

    .categories {
        grid-template-columns:repeat(3,1fr);
    }

    .products {
        grid-template-columns:repeat(3,1fr);
    }

    .benefits {
        grid-template-columns:repeat(2,1fr);
    }

    .footer-grid {
        grid-template-columns:2fr 1fr 1fr;
    }
}

@media(max-width:800px) {

    .header {
        gap:10px;
    }

    .logo-text {
        display:none;
    }

    .search-box {
        max-width:none;
    }

    .hero-box {
        min-height:500px;
        padding:35px;
    }

    .hero h1 {
        font-size:42px;
    }

    .products {
        grid-template-columns:repeat(2,1fr);
    }

    .flash {
        grid-template-columns:1fr;
    }

    .flash-image {
        min-height:250px;
    }

    .testimonials {
        grid-template-columns:1fr;
    }

    .footer-grid {
        grid-template-columns:1fr 1fr;
    }

    .mobile-bottom-nav {
        position:fixed;
        bottom:0;
        left:0;
        right:0;
        height:65px;
        background:var(--surface);
        border-top:1px solid var(--border);
        z-index:120;
        display:flex;
        justify-content:space-around;
        align-items:center;
    }

    .mobile-bottom-nav button {
        border:0;
        background:transparent;
        color:var(--muted);
        display:flex;
        flex-direction:column;
        align-items:center;
        gap:3px;
        font-size:10px;
    }

    .mobile-bottom-nav button i {
        font-size:18px;
    }

    .mobile-bottom-nav button.active {
        color:var(--accent);
    }
}

@media(max-width:560px) {

    .container {
        width:min(100% - 24px,var(--container));
    }

    header .container {
        width:calc(100% - 24px);
    }

    .header {
        height:65px;
    }

    .search-box input {
        height:40px;
        padding-left:38px;
    }

    .header-actions .account {
        display:none;
    }

    .hero {
        margin-top:12px;
    }

    .hero-box {
        min-height:520px;
        padding:27px;
        border-radius:22px;
    }

    .hero h1 {
        font-size:36px;
        letter-spacing:-1px;
    }

    .hero p {
        font-size:14px;
    }

    .benefits {
        grid-template-columns:1fr 1fr;
        gap:9px;
    }

    .benefit {
        padding:12px;
    }

    .benefit-icon {
        width:36px;
        height:36px;
    }

    .benefit span {
        display:none;
    }

    .categories {
        display:flex;
        overflow:auto;
        padding-bottom:5px;
    }

    .category {
        min-width:115px;
    }

    .section {
        margin-top:38px;
    }

    .section-title h2 {
        font-size:22px;
    }

    .toolbar {
        align-items:flex-start;
        flex-direction:column;
    }

    .products {
        grid-template-columns:repeat(2,1fr);
        gap:10px;
    }

    .product-image {
        height:170px;
    }

    .product-info {
        padding:11px;
    }

    .product-name {
        font-size:13px;
    }

    .price {
        font-size:15px;
    }

    .add-cart {
        width:34px;
        height:34px;
    }

    .flash-content {
        padding:28px 22px;
    }

    .flash h2 {
        font-size:27px;
    }

    .timer-box {
        min-width:53px;
    }

    .newsletter {
        padding:30px 18px;
    }

    .newsletter-form {
        flex-direction:column;
        background:transparent;
        border:0;
        gap:8px;
    }

    .newsletter-form input {
        background:var(--surface);
        border:1px solid var(--border);
        border-radius:11px;
    }

    .footer-grid {
        grid-template-columns:1fr 1fr;
        gap:20px;
    }

    .footer-brand {
        grid-column:1/-1;
    }

    .toast-container {
        left:12px;
        right:12px;
        bottom:75px;
    }

    .toast {
        width:100%;
        min-width:0;
    }
}
</style>
</head>

<body>

<!-- HEADER -->
<header>
    <div class="container header">

        <button class="icon-button mobile-menu-button" id="mobileMenuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <div class="logo-icon">
                <i class="fa-solid fa-bag-shopping"></i>
            </div>
            <div class="logo-text">
                Nexus<span>Shop</span>
            </div>
        </a>

        <nav class="desktop-nav">
            <a href="#" class="active">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Shop</a>
            <a href="#deals">Deals</a>
        </nav>

        <div class="search-box">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input
                id="searchInput"
                type="search"
                placeholder="Search products..."
            >
        </div>

        <div class="header-actions">

            <button class="icon-button" id="themeBtn" title="Toggle theme">
                <i class="fa-regular fa-moon"></i>
            </button>

            <button class="icon-button account">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="icon-button" id="wishlistBtn">
                <i class="fa-regular fa-heart"></i>
                <span class="badge" id="wishlistCount">0</span>
            </button>

            <button class="icon-button" id="cartBtn">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="badge" id="cartCount">0</span>
            </button>

        </div>
    </div>
</header>


<main>

<!-- HERO -->
<section class="hero">
    <div class="container">
        <div class="hero-box">

            <div class="hero-content">

                <div class="eyebrow">
                    <i class="fa-solid fa-sparkles"></i>
                    New season collection
                </div>

                <h1>
                    Discover products
                    you'll love.
                </h1>

                <p>
                    Shop trending fashion, technology and lifestyle products
                    selected specially for modern shoppers.
                </p>

                <div class="hero-buttons">
                    <button class="btn btn-primary" id="shopBtn">
                        Shop Collection
                        <i class="fa-solid fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-light" id="dealBtn">
                        <i class="fa-solid fa-bolt"></i>
                        Today's Deals
                    </button>
                </div>

            </div>

        </div>
    </div>
</section>


<!-- BENEFITS -->
<section class="container">

    <div class="benefits">

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fa-solid fa-truck-fast"></i>
            </div>
            <div>
                <strong>Free Shipping</strong>
                <span>On orders over $50</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fa-solid fa-shield-halved"></i>
            </div>
            <div>
                <strong>Secure Payment</strong>
                <span>100% secure checkout</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fa-solid fa-rotate-left"></i>
            </div>
            <div>
                <strong>Easy Returns</strong>
                <span>30-day return policy</span>
            </div>
        </div>

        <div class="benefit">
            <div class="benefit-icon">
                <i class="fa-solid fa-headset"></i>
            </div>
            <div>
                <strong>24/7 Support</strong>
                <span>We're here to help</span>
            </div>
        </div>

    </div>

</section>


<!-- CATEGORIES -->
<section class="section container" id="categories">

    <div class="section-head">
        <div class="section-title">
            <h2>Browse categories</h2>
            <p>Find exactly what you're looking for.</p>
        </div>

        <a href="#products" class="view-all">
            View all →
        </a>
    </div>

    <div class="categories" id="categoriesGrid"></div>

</section>


<!-- PRODUCTS -->
<section class="section container" id="products">

    <div class="section-head">
        <div class="section-title">
            <h2>Trending products</h2>
            <p>Popular products shoppers are loving right now.</p>
        </div>
    </div>

    <div class="toolbar">

        <div class="filters">
            <button class="filter active" data-filter="all">
                All
            </button>

            <button class="filter" data-filter="phones">
                Smartphones
            </button>

            <button class="filter" data-filter="laptops">
                Laptops
            </button>

            <button class="filter" data-filter="fashion">
                Fashion
            </button>

            <button class="filter" data-filter="audio">
                Audio
            </button>

            <button class="filter" data-filter="accessories">
                Accessories
            </button>
        </div>

        <select class="sort" id="sortSelect">
            <option value="default">Sort by</option>
            <option value="low">Price: Low to High</option>
            <option value="high">Price: High to Low</option>
            <option value="rating">Top Rated</option>
        </select>

    </div>

    <div class="products" id="productsGrid"></div>

</section>


<!-- FLASH SALE -->
<section class="section container" id="deals">

    <div class="flash">

        <div class="flash-image"></div>

        <div class="flash-content">

            <div class="flash-label">
                <i class="fa-solid fa-bolt"></i>
                Limited time offer
            </div>

            <h2>Flash Sale</h2>

            <p>
                Upgrade your workspace with our premium laptop collection.
                Save big before this offer disappears.
            </p>

            <div class="timer">

                <div class="timer-box">
                    <strong id="days">01</strong>
                    <span>DAYS</span>
                </div>

                <div class="timer-box">
                    <strong id="hours">12</strong>
                    <span>HOURS</span>
                </div>

                <div class="timer-box">
                    <strong id="minutes">30</strong>
                    <span>MIN</span>
                </div>

                <div class="timer-box">
                    <strong id="seconds">45</strong>
                    <span>SEC</span>
                </div>

            </div>

            <button class="btn btn-light" id="flashBuy">
                Shop Flash Sale
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </div>

    </div>

</section>


<!-- TESTIMONIALS -->
<section class="section container">

    <div class="section-head">
        <div class="section-title">
            <h2>Loved by shoppers</h2>
            <p>See what our customers have to say.</p>
        </div>
    </div>

    <div class="testimonials">

        <div class="testimonial">

            <div class="testimonial-stars">
                ★★★★★
            </div>

            <p>
                "The shopping experience was incredibly smooth.
                The product arrived earlier than expected."
            </p>

            <div class="user">
                <img class="avatar"
                src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80">

                <div>
                    <strong>Sarah Johnson</strong>
                    <small>Verified buyer</small>
                </div>
            </div>

        </div>


        <div class="testimonial">

            <div class="testimonial-stars">
                ★★★★★
            </div>

            <p>
                "Excellent product quality and the checkout process
                was extremely easy."
            </p>

            <div class="user">
                <img class="avatar"
                src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80">

                <div>
                    <strong>Daniel Wilson</strong>
                    <small>Verified buyer</small>
                </div>
            </div>

        </div>


        <div class="testimonial">

            <div class="testimonial-stars">
                ★★★★☆
            </div>

            <p>
                "Great selection of products and very fast delivery.
                I'll definitely order again."
            </p>

            <div class="user">
                <img class="avatar"
                src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=100&q=80">

                <div>
                    <strong>Emily Brown</strong>
                    <small>Verified buyer</small>
                </div>
            </div>

        </div>

    </div>

</section>


<!-- NEWSLETTER -->
<section class="section container">

    <div class="newsletter">

        <h2>Get 15% off your first order</h2>

        <p>
            Subscribe to receive new arrivals, exclusive deals and special offers.
        </p>

        <form class="newsletter-form" id="newsletterForm">

            <input
                type="email"
                id="email"
                placeholder="Your email address"
                required
            >

            <button class="btn btn-primary">
                Subscribe
            </button>

        </form>

    </div>

</section>

</main>


<!-- FOOTER -->
<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <div class="logo">
                    <div class="logo-icon">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>
                    Nexus<span>Shop</span>
                </div>

                <p>
                    A modern shopping experience designed to make
                    discovering and buying products simple.
                </p>

            </div>

            <div>
                <h4>Shop</h4>
                <a href="#products">All Products</a>
                <a href="#categories">Categories</a>
                <a href="#deals">Deals</a>
                <a href="#">New Arrivals</a>
            </div>

            <div>
                <h4>Company</h4>
                <a href="#">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Contact</a>
                <a href="#">Blog</a>
            </div>

            <div>
                <h4>Support</h4>
                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Privacy</a>
            </div>

        </div>

        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>


<!-- CART OVERLAY -->
<div class="overlay" id="overlay"></div>


<!-- CART DRAWER -->
<aside class="cart-drawer" id="cartDrawer">

    <div class="cart-header">

        <div>
            <h3>Your Cart</h3>
            <small id="cartSubtitle">0 items</small>
        </div>

        <button class="close-cart" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>

    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">$0.00</span>
        </div>

        <button class="btn btn-primary" style="width:100%" id="checkoutBtn">
            Proceed to Checkout
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- MOBILE NAV -->
<nav class="mobile-bottom-nav">

    <button class="active" onclick="window.scrollTo({top:0,behavior:'smooth'})">
        <i class="fa-solid fa-house"></i>
        Home
    </button>

    <button onclick="document.getElementById('categories').scrollIntoView({behavior:'smooth'})">
        <i class="fa-solid fa-grid-2"></i>
        Categories
    </button>

    <button id="mobileWishlist">
        <i class="fa-regular fa-heart"></i>
        Wishlist
    </button>

    <button id="mobileCart">
        <i class="fa-solid fa-bag-shopping"></i>
        Cart
    </button>

</nav>


<!-- TOAST -->
<div class="toast-container" id="toastContainer"></div>


<script>

/* ================= DATA ================= */

const categories = [
    {
        id:"phones",
        name:"Smartphones",
        icon:"fa-mobile-screen-button",
        count:"24 products"
    },
    {
        id:"laptops",
        name:"Laptops",
        icon:"fa-laptop",
        count:"18 products"
    },
    {
        id:"fashion",
        name:"Fashion",
        icon:"fa-shirt",
        count:"56 products"
    },
    {
        id:"audio",
        name:"Audio",
        icon:"fa-headphones",
        count:"31 products"
    },
    {
        id:"accessories",
        name:"Accessories",
        icon:"fa-watch",
        count:"42 products"
    },
    {
        id:"home",
        name:"Home",
        icon:"fa-house",
        count:"37 products"
    }
];


const products = [

    {
        id:1,
        name:"iPhone 14 Pro Max",
        category:"phones",
        price:1099,
        oldPrice:1199,
        rating:5,
        reviews:128,
        badge:"NEW",
        image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:2,
        name:'MacBook Pro 14"',
        category:"laptops",
        price:1999,
        rating:5,
        reviews:86,
        badge:"POPULAR",
        image:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:3,
        name:"Apple Watch Series 8",
        category:"accessories",
        price:349,
        oldPrice:399,
        rating:5,
        reviews:214,
        badge:"-13%",
        sale:true,
        image:"https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:4,
        name:"Nike Air Max",
        category:"fashion",
        price:150,
        rating:4,
        reviews:53,
        image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:5,
        name:"Sony A7 IV Camera",
        category:"accessories",
        price:2499,
        rating:5,
        reviews:42,
        badge:"PRO",
        image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:6,
        name:"Premium Headphones",
        category:"audio",
        price:399,
        rating:5,
        reviews:156,
        badge:"BEST SELLER",
        image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:7,
        name:"Travel Backpack",
        category:"accessories",
        price:79,
        oldPrice:99,
        rating:4,
        reviews:67,
        sale:true,
        badge:"-20%",
        image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
    },

    {
        id:8,
        name:"Minimal Sneakers",
        category:"fashion",
        price:120,
        rating:5,
        reviews:89,
        image:"https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=800&q=85"
    }

];


/* ================= STATE ================= */

let cart = [];
let wishlist = [];
let currentFilter = "all";


/* ================= DOM ================= */

const productsGrid =
    document.getElementById("productsGrid");

const categoriesGrid =
    document.getElementById("categoriesGrid");

const searchInput =
    document.getElementById("searchInput");

const cartDrawer =
    document.getElementById("cartDrawer");

const overlay =
    document.getElementById("overlay");

const cartItems =
    document.getElementById("cartItems");


/* ================= TOAST ================= */

function toast(message, icon="fa-check") {

    const container =
        document.getElementById("toastContainer");

    const item =
        document.createElement("div");

    item.className = "toast";

    item.innerHTML = `
        <i class="fa-solid ${icon}"></i>
        <span>${message}</span>
    `;

    container.appendChild(item);

    setTimeout(() => {
        item.remove();
    },3000);
}


/* ================= CATEGORIES ================= */

function renderCategories() {

    categoriesGrid.innerHTML =
        categories.map(category => `

            <div class="category"
                 onclick="selectCategory('${category.id}')">

                <div class="category-icon">
                    <i class="fa-solid ${category.icon}"></i>
                </div>

                <strong>${category.name}</strong>

                <small>${category.count}</small>

            </div>

        `).join("");
}


/* ================= PRODUCTS ================= */

function renderProducts(list) {

    if(!list.length) {

        productsGrid.innerHTML = `
            <div class="empty">

                <i class="fa-solid fa-box-open"></i>

                <h3>No products found</h3>

                <p>
                    Try another search or category.
                </p>

                <button
                    class="btn btn-primary"
                    onclick="resetProducts()">
                    Show all products
                </button>

            </div>
        `;

        return;
    }

    productsGrid.innerHTML =
        list.map(product => `

        <article class="product">

            <div class="product-image">

                ${product.badge
                    ? `
                    <span class="product-badge ${product.sale ? "sale":""}">
                        ${product.badge}
                    </span>
                    `
                    : ""
                }

                <button
                    class="wishlist ${wishlist.includes(product.id) ? "active":""}"
                    onclick="toggleWishlist(${product.id})">

                    <i class="${wishlist.includes(product.id)
                        ? "fa-solid"
                        : "fa-regular"
                    } fa-heart"></i>

                </button>

                <img
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy"
                >

            </div>


            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <div class="product-name">
                    ${product.name}
                </div>

                <div class="rating">

                    <span class="stars">
                        ${"★".repeat(product.rating)}
                    </span>

                    <span class="reviews">
                        (${product.reviews})
                    </span>

                </div>


                <div class="product-bottom">

                    <div>

                        <span class="price">
                            $${product.price.toLocaleString()}
                        </span>

                        ${
                            product.oldPrice
                            ?
                            `<span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>`
                            :
                            ""
                        }

                    </div>


                    <button
                        class="add-cart"
                        onclick="addToCart(${product.id})"
                        title="Add to cart">

                        <i class="fa-solid fa-plus"></i>

                    </button>

                </div>

            </div>

        </article>

    `).join("");
}


/* ================= FILTER ================= */

function filterProducts() {

    const search =
        searchInput.value.trim().toLowerCase();

    let result =
        products.filter(product => {

            const matchesCategory =
                currentFilter === "all" ||
                product.category === currentFilter;

            const matchesSearch =
                product.name.toLowerCase().includes(search) ||
                product.category.toLowerCase().includes(search);

            return matchesCategory && matchesSearch;

        });


    const sort =
        document.getElementById("sortSelect").value;


    if(sort === "low") {

        result.sort((a,b) =>
            a.price - b.price
        );

    }

    if(sort === "high") {

        result.sort((a,b) =>
            b.price - a.price
        );

    }

    if(sort === "rating") {

        result.sort((a,b) =>
            b.rating - a.rating
        );

    }


    renderProducts(result);
}


function selectCategory(category) {

    currentFilter = category;

    document
        .querySelectorAll(".filter")
        .forEach(button => {

            button.classList.toggle(
                "active",
                button.dataset.filter === category
            );

        });

    filterProducts();

    document
        .getElementById("products")
        .scrollIntoView({
            behavior:"smooth"
        });
}


function resetProducts() {

    currentFilter = "all";

    searchInput.value = "";

    document
        .querySelectorAll(".filter")
        .forEach(button => {

            button.classList.toggle(
                "active",
                button.dataset.filter === "all"
            );

        });

    filterProducts();
}


/* ================= FILTER BUTTONS ================= */

document
    .querySelectorAll(".filter")
    .forEach(button => {

        button.addEventListener("click", () => {

            currentFilter =
                button.dataset.filter;

            document
                .querySelectorAll(".filter")
                .forEach(b =>
                    b.classList.remove("active")
                );

            button.classList.add("active");

            filterProducts();

        });

    });


searchInput.addEventListener(
    "input",
    filterProducts
);


document
    .getElementById("sortSelect")
    .addEventListener(
        "change",
        filterProducts
    );


/* ================= WISHLIST ================= */

function toggleWishlist(id) {

    if(wishlist.includes(id)) {

        wishlist =
            wishlist.filter(item => item !== id);

        toast(
            "Removed from wishlist",
            "fa-heart"
        );

    } else {

        wishlist.push(id);

        toast(
            "Added to wishlist",
            "fa-heart"
        );

    }

    updateWishlist();
    renderProducts(getCurrentProducts());
}


function updateWishlist() {

    document
        .getElementById("wishlistCount")
        .textContent = wishlist.length;

}


document
    .getElementById("wishlistBtn")
    .addEventListener("click", () => {

        if(!wishlist.length) {

            toast(
                "Your wishlist is empty",
                "fa-heart"
            );

            return;
        }

        const list =
            products.filter(p =>
                wishlist.includes(p.id)
            );

        renderProducts(list);

        document
            .getElementById("products")
            .scrollIntoView({
                behavior:"smooth"
            });

        toast(
            `${wishlist.length} wishlist item(s)`,
            "fa-heart"
        );

    });


/* ================= CART ================= */

function addToCart(id) {

    const existing =
        cart.find(item => item.id === id);

    if(existing) {

        existing.quantity++;

    } else {

        cart.push({
            id,
            quantity:1
        });

    }

    updateCart();

    const product =
        products.find(p => p.id === id);

    toast(
        `${product.name} added to cart`,
        "fa-cart-plus"
    );

}


function updateCart() {

    const count =
        cart.reduce(
            (sum,item) =>
                sum + item.quantity,
            0
        );

    document
        .getElementById("cartCount")
        .textContent = count;

    document
        .getElementById("cartSubtitle")
        .textContent =
        `${count} ${count === 1 ? "item":"items"}`;


    if(!cart.length) {

        cartItems.innerHTML = `

            <div class="empty">

                <i class="fa-solid fa-bag-shopping"></i>

                <h3>Your cart is empty</h3>

                <p>
                    Add products to see them here.
                </p>

            </div>

        `;

    } else {

        cartItems.innerHTML =
            cart.map(item => {

                const product =
                    products.find(
                        p => p.id === item.id
                    );

                return `

                    <div class="cart-item">

                        <img
                            src="${product.image}"
                            alt="${product.name}"
                        >

                        <div class="cart-item-info">

                            <strong>
                                ${product.name}
                            </strong>

                            <small>
                                $${product.price.toLocaleString()}
                            </small>

                            <div class="cart-item-actions">

                                <div class="quantity">

                                    <button
                                        onclick="changeQuantity(${product.id},-1)">
                                        −
                                    </button>

                                    <span>
                                        ${item.quantity}
                                    </span>

                                    <button
                                        onclick="changeQuantity(${product.id},1)">
                                        +
                                    </button>

                                </div>

                                <button
                                    class="remove"
                                    onclick="removeFromCart(${product.id})">
                                    <i class="fa-regular fa-trash-can"></i>
                                </button>

                            </div>

                        </div>

                    </div>

                `;

            }).join("");

    }


    const total =
        cart.reduce((sum,item) => {

            const product =
                products.find(
                    p => p.id === item.id
                );

            return sum +
                product.price * item.quantity;

        },0);


    document
        .getElementById("cartTotal")
        .textContent =
        "$" + total.toLocaleString(
            undefined,
            {
                minimumFractionDigits:2
            }
        );

}


function changeQuantity(id, amount) {

    const item =
        cart.find(item => item.id === id);

    if(!item) return;

    item.quantity += amount;

    if(item.quantity <= 0) {

        cart =
            cart.filter(
                item => item.id !== id
            );

    }

    updateCart();

}


function removeFromCart(id) {

    cart =
        cart.filter(
            item => item.id !== id
        );

    updateCart();

    toast(
        "Product removed",
        "fa-trash"
    );

}


/* ================= CART DRAWER ================= */

function openCart() {

    cartDrawer.classList.add("open");
    overlay.classList.add("show");

}


function closeCart() {

    cartDrawer.classList.remove("open");
    overlay.classList.remove("show");

}


document
    .getElementById("cartBtn")
    .addEventListener(
        "click",
        openCart
    );


document
    .getElementById("mobileCart")
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


/* ================= CHECKOUT ================= */

document
    .getElementById("checkoutBtn")
    .addEventListener(
        "click",
        () => {

            if(!cart.length) {

                toast(
                    "Your cart is empty",
                    "fa-circle-info"
                );

                return;
            }

            toast(
                "Checkout demo opened",
                "fa-credit-card"
            );

        }
    );


/* ================= HERO BUTTONS ================= */

document
    .getElementById("shopBtn")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
    );


document
    .getElementById("dealBtn")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
    );


document
    .getElementById("flashBuy")
    .addEventListener(
        "click",
        () => {

            selectCategory("laptops");

        }
    );


/* ================= NEWSLETTER ================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();

            const email =
                document
                .getElementById("email")
                .value;

            if(!email) return;

            toast(
                "You're successfully subscribed!",
                "fa-envelope"
            );

            event.target.reset();

        }
    );


/* ================= DARK MODE ================= */

document
    .getElementById("themeBtn")
    .addEventListener(
        "click",
        () => {

            document
                .body
                .classList.toggle("dark");

            const icon =
                document
                .querySelector("#themeBtn i");

            if(document.body.classList.contains("dark")) {

                icon.className =
                    "fa-regular fa-sun";

            } else {

                icon.className =
                    "fa-regular fa-moon";

            }

        }
    );


/* ================= MOBILE WISHLIST ================= */

document
    .getElementById("mobileWishlist")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById("wishlistBtn")
                .click();

        }
    );


/* ================= MOBILE MENU ================= */

document
    .getElementById("mobileMenuBtn")
    .addEventListener(
        "click",
        () => {

            toast(
                "Use the search and bottom navigation to browse",
                "fa-bars"
            );

        }
    );


/* ================= HELPERS ================= */

function getCurrentProducts() {

    const search =
        searchInput.value.trim().toLowerCase();

    return products.filter(product => {

        const categoryMatch =
            currentFilter === "all" ||
            product.category === currentFilter;

        const searchMatch =
            !search ||
            product.name.toLowerCase().includes(search) ||
            product.category.toLowerCase().includes(search);

        return categoryMatch && searchMatch;

    });

}


/* ================= COUNTDOWN ================= */

const saleEnd =
    Date.now() +
    (
        1 * 24 * 60 * 60 * 1000 +
        12 * 60 * 60 * 1000 +
        30 * 60 * 1000
    );


function countdown() {

    const difference =
        saleEnd - Date.now();

    if(difference <= 0) return;

    const days =
        Math.floor(
            difference /
            (1000 * 60 * 60 * 24)
        );

    const hours =
        Math.floor(
            difference /
            (1000 * 60 * 60)
        ) % 24;

    const minutes =
        Math.floor(
            difference /
            (1000 * 60)
        ) % 60;

    const seconds =
        Math.floor(
            difference / 1000
        ) % 60;


    document.getElementById("days")
        .textContent =
        String(days).padStart(2,"0");

    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2,"0");

    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2,"0");

    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2,"0");

}


setInterval(countdown,1000);
countdown();


/* ================= INIT ================= */

renderCategories();
renderProducts(products);
updateCart();
updateWishlist();

document.getElementById("year")
    .textContent =
    new Date().getFullYear();

</script>

</body>
</html>
