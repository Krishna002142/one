```html
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS PRIME — Premium Tech Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">


<style>

/* =========================================================
   GLOBAL
========================================================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{

    --bg:#05060a;
    --bg2:#090b12;

    --card:rgba(255,255,255,.045);
    --card-hover:rgba(255,255,255,.075);

    --text:#ffffff;
    --muted:#8d94a6;

    --purple:#8b5cf6;
    --purple2:#a78bfa;

    --cyan:#22d3ee;

    --green:#22c55e;

    --yellow:#facc15;

    --border:rgba(255,255,255,.09);

    --radius:24px;

    --shadow:
        0 30px 100px rgba(0,0,0,.45);
}

html{
    scroll-behavior:smooth;
}

body{

    font-family:"Inter",sans-serif;

    background:
        radial-gradient(
            circle at 10% 10%,
            rgba(139,92,246,.13),
            transparent 25%
        ),

        radial-gradient(
            circle at 90% 20%,
            rgba(34,211,238,.10),
            transparent 25%
        ),

        radial-gradient(
            circle at 50% 100%,
            rgba(139,92,246,.08),
            transparent 30%
        ),

        var(--bg);

    color:var(--text);

    min-height:100vh;

    overflow-x:hidden;
}

button,
input,
select{
    font:inherit;
}

button{
    cursor:pointer;
}

img{
    max-width:100%;
    display:block;
}


/* =========================================================
   AMBIENT BACKGROUND
========================================================= */

.ambient{

    position:fixed;

    width:500px;
    height:500px;

    border-radius:50%;

    filter:blur(130px);

    opacity:.12;

    pointer-events:none;

    z-index:-1;

    animation:ambientMove 12s ease-in-out infinite;
}

.ambient.one{

    background:var(--purple);

    left:-250px;
    top:200px;
}

.ambient.two{

    background:var(--cyan);

    right:-250px;
    top:500px;

    animation-delay:3s;
}

@keyframes ambientMove{

    0%,100%{
        transform:translate(0,0);
    }

    50%{
        transform:translate(60px,-40px);
    }
}


/* =========================================================
   HEADER
========================================================= */

header{

    position:sticky;

    top:0;

    z-index:100;

    background:rgba(5,6,10,.72);

    backdrop-filter:blur(25px);

    border-bottom:1px solid var(--border);
}

.nav{

    max-width:1300px;

    margin:auto;

    padding:15px 25px;

    display:flex;

    align-items:center;

    gap:25px;
}


/* LOGO */

.logo{

    display:flex;

    align-items:center;

    gap:9px;

    font-size:19px;

    font-weight:800;

    letter-spacing:2px;

    white-space:nowrap;
}

.logo-mark{

    width:30px;
    height:30px;

    border-radius:10px;

    display:grid;

    place-items:center;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            var(--cyan)
        );

    box-shadow:
        0 0 25px rgba(139,92,246,.35);

    font-size:14px;
}

.logo span{
    color:var(--cyan);
}


/* =========================================================
   SEARCH
========================================================= */

.search{

    flex:1;

    max-width:600px;

    margin:auto;

    position:relative;
}

.search input{

    width:100%;

    height:46px;

    padding:0 20px 0 45px;

    border-radius:15px;

    border:1px solid var(--border);

    background:rgba(255,255,255,.045);

    color:white;

    outline:none;

    transition:.3s;
}

.search input::placeholder{
    color:#6f7688;
}

.search input:focus{

    border-color:
        rgba(139,92,246,.6);

    background:
        rgba(255,255,255,.07);

    box-shadow:
        0 0 0 4px
        rgba(139,92,246,.08);
}

.search-icon{

    position:absolute;

    left:16px;

    top:50%;

    transform:translateY(-50%);

    color:#858b9c;

    font-size:17px;
}


/* =========================================================
   NAV BUTTONS
========================================================= */

.nav-actions{

    display:flex;

    gap:9px;
}

.icon-btn{

    width:44px;
    height:44px;

    border:1px solid var(--border);

    border-radius:14px;

    background:rgba(255,255,255,.045);

    color:white;

    position:relative;

    transition:.3s;
}

.icon-btn:hover{

    transform:translateY(-3px);

    background:
        rgba(255,255,255,.09);

    border-color:
        rgba(255,255,255,.15);
}

.badge{

    position:absolute;

    top:-5px;
    right:-5px;

    min-width:19px;
    height:19px;

    padding:0 5px;

    display:grid;
    place-items:center;

    border-radius:20px;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            #6d28d9
        );

    font-size:10px;

    font-weight:700;

    box-shadow:
        0 5px 15px
        rgba(139,92,246,.4);
}


/* =========================================================
   HERO
========================================================= */

.hero{

    max-width:1300px;

    margin:35px auto 30px;

    padding:0 25px;
}

.hero-box{

    min-height:590px;

    position:relative;

    overflow:hidden;

    border:1px solid var(--border);

    border-radius:34px;

    display:flex;

    align-items:center;

    padding:70px;

    background:

        linear-gradient(
            120deg,
            rgba(18,20,30,.95),
            rgba(20,16,38,.9),
            rgba(8,27,34,.92)
        );

    box-shadow:var(--shadow);
}


/* HERO GRID */

.hero-grid{

    position:absolute;

    inset:0;

    opacity:.18;

    background-image:

        linear-gradient(
            rgba(255,255,255,.06) 1px,
            transparent 1px
        ),

        linear-gradient(
            90deg,
            rgba(255,255,255,.06) 1px,
            transparent 1px
        );

    background-size:45px 45px;

    mask-image:
        linear-gradient(
            to bottom,
            black,
            transparent
        );
}


/* HERO GLOW */

.hero-glow{

    position:absolute;

    width:600px;
    height:600px;

    right:-150px;
    top:-150px;

    border-radius:50%;

    background:
        radial-gradient(
            circle,
            rgba(139,92,246,.35),
            transparent 65%
        );

    filter:blur(20px);
}


/* HERO CONTENT */

.hero-content{

    position:relative;

    z-index:5;

    max-width:650px;
}

.eyebrow{

    display:inline-flex;

    align-items:center;

    gap:9px;

    padding:9px 14px;

    border-radius:50px;

    border:1px solid
        rgba(255,255,255,.1);

    background:
        rgba(255,255,255,.05);

    color:#c8cdd8;

    font-size:11px;

    font-weight:600;

    letter-spacing:.5px;

    margin-bottom:25px;
}

.live-dot{

    width:7px;
    height:7px;

    border-radius:50%;

    background:var(--green);

    box-shadow:
        0 0 15px var(--green);
}

.hero h1{

    font-size:
        clamp(48px,7vw,86px);

    line-height:.96;

    letter-spacing:-5px;

    margin-bottom:25px;
}

.gradient{

    background:
        linear-gradient(
            90deg,
            white,
            #67e8f9,
            #a78bfa
        );

    -webkit-background-clip:text;

    background-clip:text;

    color:transparent;
}

.hero p{

    max-width:570px;

    color:var(--muted);

    font-size:15px;

    line-height:1.8;

    margin-bottom:32px;
}


/* HERO BUTTONS */

.hero-buttons{

    display:flex;

    gap:12px;

    align-items:center;
}

.btn{

    padding:14px 21px;

    border-radius:14px;

    border:1px solid var(--border);

    background:
        rgba(255,255,255,.055);

    color:white;

    transition:.3s;
}

.btn:hover{

    transform:translateY(-3px);

    background:
        rgba(255,255,255,.1);
}

.btn-primary{

    border:none;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            #6d28d9
        );

    box-shadow:
        0 15px 35px
        rgba(139,92,246,.28);
}

.btn-primary:hover{

    box-shadow:
        0 20px 45px
        rgba(139,92,246,.4);
}


/* =========================================================
   FLOATING DEVICE
========================================================= */

.device{

    position:absolute;

    right:8%;

    bottom:55px;

    width:310px;
    height:410px;

    z-index:4;

    padding:9px;

    border-radius:32px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.2),
            rgba(255,255,255,.03)
        );

    border:1px solid
        rgba(255,255,255,.15);

    backdrop-filter:blur(20px);

    transform:
        rotate(7deg);

    box-shadow:
        0 50px 100px
        rgba(0,0,0,.55);

    animation:
        deviceFloat 5s ease-in-out infinite;
}

.device img{

    width:100%;
    height:100%;

    object-fit:cover;

    border-radius:25px;
}

.device::after{

    content:"";

    position:absolute;

    inset:10%;

    border-radius:50%;

    background:
        rgba(139,92,246,.35);

    filter:blur(80px);

    z-index:-1;
}

@keyframes deviceFloat{

    0%,100%{
        transform:
            rotate(7deg)
            translateY(0);
    }

    50%{
        transform:
            rotate(4deg)
            translateY(-18px);
    }
}


/* =========================================================
   TRUST STRIP
========================================================= */

.trust{

    max-width:1300px;

    margin:0 auto 55px;

    padding:0 25px;
}

.trust-grid{

    display:grid;

    grid-template-columns:
        repeat(4,1fr);

    gap:14px;
}

.trust-card{

    padding:20px;

    border:1px solid var(--border);

    border-radius:20px;

    background:
        rgba(255,255,255,.025);

    transition:.3s;
}

.trust-card:hover{

    transform:translateY(-4px);

    background:
        rgba(255,255,255,.05);
}

.trust-icon{

    font-size:21px;

    margin-bottom:12px;
}

.trust-card strong{

    display:block;

    font-size:13px;

    margin-bottom:5px;
}

.trust-card span{

    color:var(--muted);

    font-size:11px;
}


/* =========================================================
   STORE
========================================================= */

.store{

    max-width:1300px;

    margin:auto;

    padding:0 25px 90px;
}

.store-header{

    display:flex;

    justify-content:space-between;

    align-items:flex-end;

    gap:20px;

    margin-bottom:25px;
}

.store-title h2{

    font-size:34px;

    letter-spacing:-1.5px;
}

.store-title p{

    color:var(--muted);

    margin-top:6px;

    font-size:13px;
}

.product-count{

    color:#6f7688;

    font-size:11px;

    margin-top:9px;
}


/* =========================================================
   CATEGORY BAR
========================================================= */

.category-bar{

    display:flex;

    gap:9px;

    overflow-x:auto;

    padding-bottom:15px;

    scrollbar-width:none;
}

.category-bar::-webkit-scrollbar{
    display:none;
}

.category{

    white-space:nowrap;

    padding:10px 16px;

    border-radius:50px;

    border:1px solid var(--border);

    background:
        rgba(255,255,255,.035);

    color:#969dad;

    font-size:11px;

    transition:.25s;
}

.category:hover{

    color:white;

    background:
        rgba(255,255,255,.07);
}

.category.active{

    color:white;

    border-color:
        rgba(139,92,246,.6);

    background:
        rgba(139,92,246,.15);

    box-shadow:
        0 5px 20px
        rgba(139,92,246,.12);
}


/* =========================================================
   SORT
========================================================= */

.sort{

    padding:11px 15px;

    border:1px solid var(--border);

    border-radius:13px;

    background:
        rgba(255,255,255,.04);

    color:white;

    outline:none;
}


/* =========================================================
   PRODUCTS
========================================================= */

.products{

    display:grid;

    grid-template-columns:
        repeat(3,1fr);

    gap:20px;
}


/* PRODUCT CARD */

.product{

    position:relative;

    overflow:hidden;

    padding:11px;

    border:1px solid var(--border);

    border-radius:25px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.055),
            rgba(255,255,255,.02)
        );

    transition:
        transform .4s,
        border .4s,
        box-shadow .4s;
}

.product:hover{

    transform:
        translateY(-8px);

    border-color:
        rgba(139,92,246,.4);

    box-shadow:
        0 25px 70px
        rgba(0,0,0,.35);
}


/* PRODUCT IMAGE */

.product-image{

    height:290px;

    position:relative;

    overflow:hidden;

    border-radius:19px;

    background:#11131a;
}

.product-image img{

    width:100%;
    height:100%;

    object-fit:cover;

    transition:
        transform .7s,
        filter .5s;
}

.product:hover
.product-image img{

    transform:scale(1.08);

    filter:saturate(1.1);
}


/* IMAGE OVERLAY */

.product-image::after{

    content:"";

    position:absolute;

    inset:0;

    background:
        linear-gradient(
            to top,
            rgba(0,0,0,.35),
            transparent 45%
        );

    pointer-events:none;
}


/* TAG */

.tag{

    position:absolute;

    top:12px;
    left:12px;

    z-index:3;

    padding:7px 10px;

    border-radius:9px;

    background:
        rgba(0,0,0,.65);

    backdrop-filter:blur(12px);

    font-size:9px;

    font-weight:700;

    letter-spacing:.5px;
}


/* HEART */

.heart{

    position:absolute;

    top:12px;
    right:12px;

    z-index:4;

    width:38px;
    height:38px;

    border-radius:12px;

    border:1px solid
        rgba(255,255,255,.12);

    background:
        rgba(0,0,0,.5);

    color:white;

    font-size:18px;

    transition:.25s;
}

.heart:hover{

    transform:scale(1.1);

    background:
        rgba(255,255,255,.12);
}

.heart.liked{

    color:#fb7185;

    border-color:
        rgba(251,113,133,.3);
}


/* PRODUCT INFO */

.product-info{

    padding:18px 6px 7px;
}

.category-label{

    color:var(--cyan);

    font-size:9px;

    text-transform:uppercase;

    letter-spacing:1.3px;

    font-weight:700;
}

.product h3{

    font-size:17px;

    margin:8px 0;

    letter-spacing:-.3px;
}

.rating{

    color:var(--yellow);

    font-size:11px;

    margin-bottom:15px;
}

.product-bottom{

    display:flex;

    align-items:center;

    justify-content:space-between;
}

.price{

    font-size:21px;

    font-weight:800;
}

.add{

    width:44px;
    height:44px;

    border:none;

    border-radius:13px;

    background:white;

    color:#05060a;

    font-size:22px;

    transition:.3s;
}

.add:hover{

    transform:
        rotate(5deg)
        scale(1.08);

    background:var(--cyan);

    box-shadow:
        0 10px 25px
        rgba(34,211,238,.25);
}


/* =========================================================
   EMPTY RESULTS
========================================================= */

.empty-results{

    grid-column:1/-1;

    padding:80px 20px;

    text-align:center;

    border:1px dashed var(--border);

    border-radius:25px;

    color:var(--muted);
}

.empty-results-icon{

    font-size:42px;

    margin-bottom:15px;
}

.empty-results h3{

    color:white;

    margin-bottom:8px;
}


/* =========================================================
   CART OVERLAY
========================================================= */

.cart-overlay{

    position:fixed;

    inset:0;

    z-index:500;

    background:
        rgba(0,0,0,.7);

    backdrop-filter:blur(8px);

    opacity:0;

    visibility:hidden;

    transition:.3s;
}

.cart-overlay.active{

    opacity:1;

    visibility:visible;
}


/* CART */

.cart{

    position:absolute;

    right:0;
    top:0;

    width:min(460px,100%);

    height:100%;

    display:flex;

    flex-direction:column;

    padding:25px;

    background:
        linear-gradient(
            180deg,
            #0c0e15,
            #07080d
        );

    border-left:
        1px solid var(--border);

    transform:translateX(100%);

    transition:.45s;
}

.cart-overlay.active .cart{

    transform:translateX(0);
}


/* CART HEADER */

.cart-header{

    display:flex;

    align-items:center;

    justify-content:space-between;

    padding-bottom:20px;

    border-bottom:
        1px solid var(--border);
}

.cart-header h2{

    font-size:22px;
}

.cart-header p{

    color:var(--muted);

    font-size:11px;

    margin-top:4px;
}

.close{

    width:38px;
    height:38px;

    border:1px solid var(--border);

    border-radius:11px;

    background:
        rgba(255,255,255,.04);

    color:white;

    transition:.2s;
}

.close:hover{

    background:
        rgba(255,255,255,.1);
}


/* CART ITEMS */

.cart-items{

    flex:1;

    overflow-y:auto;

    padding:15px 0;
}

.cart-item{

    display:flex;

    gap:12px;

    padding:15px 0;

    border-bottom:
        1px solid var(--border);
}

.cart-item img{

    width:72px;
    height:72px;

    border-radius:13px;

    object-fit:cover;
}

.cart-info{

    flex:1;
}

.cart-info h4{

    font-size:13px;

    margin-bottom:6px;
}

.cart-price{

    color:var(--cyan);

    font-size:12px;

    margin-bottom:10px;
}


/* QUANTITY */

.quantity{

    display:inline-flex;

    align-items:center;

    border:1px solid var(--border);

    border-radius:9px;

    overflow:hidden;
}

.quantity button{

    width:28px;
    height:27px;

    border:none;

    background:
        rgba(255,255,255,.04);

    color:white;
}

.quantity button:hover{

    background:
        rgba(255,255,255,.1);
}

.quantity span{

    min-width:28px;

    text-align:center;

    font-size:11px;
}


/* CART FOOTER */

.cart-footer{

    padding-top:20px;

    border-top:
        1px solid var(--border);
}

.summary-row{

    display:flex;

    justify-content:space-between;

    margin-bottom:9px;

    font-size:13px;
}

.summary-row.muted{

    color:var(--muted);
}

.total{

    display:flex;

    justify-content:space-between;

    padding-top:15px;

    margin-top:13px;

    border-top:
        1px solid var(--border);

    font-size:20px;

    font-weight:800;

    margin-bottom:17px;
}

.checkout{

    width:100%;

    padding:15px;

    border:none;

    border-radius:14px;

    background:
        linear-gradient(
            135deg,
            var(--purple),
            #6d28d9
        );

    color:white;

    font-weight:700;

    transition:.3s;
}

.checkout:hover{

    transform:translateY(-2px);

    box-shadow:
        0 15px 35px
        rgba(139,92,246,.3);
}


/* EMPTY CART */

.empty-cart{

    padding:80px 20px;

    text-align:center;

    color:var(--muted);
}

.empty-cart-icon{

    font-size:45px;

    margin-bottom:15px;
}

.empty-cart h3{

    color:white;

    margin-bottom:7px;
}


/* =========================================================
   TOAST
========================================================= */

.toast{

    position:fixed;

    left:50%;
    bottom:25px;

    transform:
        translate(-50%,30px);

    z-index:1000;

    padding:13px 18px;

    border:1px solid var(--border);

    border-radius:13px;

    background:
        rgba(20,22,32,.95);

    backdrop-filter:blur(15px);

    color:white;

    font-size:12px;

    box-shadow:
        0 15px 50px
        rgba(0,0,0,.4);

    opacity:0;

    pointer-events:none;

    transition:.3s;
}

.toast.show{

    opacity:1;

    transform:
        translate(-50%,0);
}


/* =========================================================
   FOOTER
========================================================= */

footer{

    border-top:
        1px solid var(--border);

    padding:40px 25px;

    text-align:center;

    color:var(--muted);

    font-size:11px;
}

.footer-logo{

    color:white;

    font-size:15px;

    font-weight:800;

    letter-spacing:2px;

    margin-bottom:8px;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1050px){

    .hero-box{

        padding:55px;

    }

    .device{

        right:-50px;

        opacity:.35;
    }

    .products{

        grid-template-columns:
            repeat(2,1fr);
    }

    .trust-grid{

        grid-template-columns:
            repeat(2,1fr);
    }
}


@media(max-width:700px){

    .nav{

        flex-wrap:wrap;

        gap:10px;

        padding:
            13px 16px;
    }

    .logo{

        flex:1;
    }

    .search{

        order:3;

        flex-basis:100%;
    }

    .hero{

        margin-top:18px;

        padding:
            0 16px;
    }

    .hero-box{

        min-height:570px;

        padding:
            38px 25px;

        border-radius:25px;

        align-items:flex-start;
    }

    .hero h1{

        font-size:47px;

        letter-spacing:-3px;
    }

    .hero p{

        font-size:13px;
    }

    .hero-buttons{

        flex-direction:column;

        align-items:flex-start;
    }

    .device{

        width:190px;
        height:250px;

        right:-35px;

        bottom:25px;

        opacity:.28;
    }

    .trust{

        padding:
            0 16px;
    }

    .trust-grid{

        grid-template-columns:
            1fr 1fr;
    }

    .store{

        padding:
            0 16px 60px;
    }

    .store-header{

        flex-direction:column;

        align-items:flex-start;
    }

    .products{

        grid-template-columns:1fr;
    }

    .product-image{

        height:320px;
    }
}


@media(max-width:430px){

    .trust-grid{

        grid-template-columns:1fr;
    }

    .hero h1{

        font-size:42px;
    }

    .hero-box{

        min-height:570px;
    }

    .cart{

        padding:20px;
    }
}

</style>

</head>


<body>


<!-- AMBIENT LIGHT -->

<div class="ambient one"></div>
<div class="ambient two"></div>


<!-- =======================================================
     HEADER
======================================================== -->

<header>

<nav class="nav">


    <div class="logo">

        <div class="logo-mark">
            N
        </div>

        NEXUS<span>PRIME</span>

    </div>


    <div class="search">

        <span class="search-icon">
            ⌕
        </span>

        <input
            id="search"
            type="search"
            placeholder="Search products..."
            oninput="searchProducts()"
        >

    </div>


    <div class="nav-actions">

        <button
            class="icon-btn"
            onclick="showWishlist()"
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


    <div class="hero-grid"></div>

    <div class="hero-glow"></div>


    <div class="hero-content">


        <div class="eyebrow">

            <span class="live-dot"></span>

            NEXT-GEN COLLECTION · 2026

        </div>


        <h1>

            The future

            <br>

            <span class="gradient">
                is in your hands.
            </span>

        </h1>


        <p>

            Explore premium technology designed
            to make everyday life smarter, faster
            and more connected.

        </p>


        <div class="hero-buttons">

            <button
                class="btn btn-primary"
                onclick="scrollToProducts()">

                Explore Collection →

            </button>


            <button
                class="btn"
                onclick="showToast('Free shipping on orders over $100 🚚')">

                Free Shipping

            </button>

        </div>

    </div>


    <div class="device">

        <img
            src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=900&q=90"
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


    <div class="trust-card">

        <div class="trust-icon">
            ⚡
        </div>

        <strong>
            Lightning Fast
        </strong>

        <span>
            Express worldwide delivery
        </span>

    </div>


    <div class="trust-card">

        <div class="trust-icon">
            🔐
        </div>

        <strong>
            Secure Checkout
        </strong>

        <span>
            Your payment is protected
        </span>

    </div>


    <div class="trust-card">

        <div class="trust-icon">
            ↩️
        </div>

        <strong>
            Easy Returns
        </strong>

        <span>
            30-day hassle-free returns
        </span>

    </div>


    <div class="trust-card">

        <div class="trust-icon">
            ✦
        </div>

        <strong>
            Premium Support
        </strong>

        <span>
            Expert help whenever you need
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


    <div class="store-header">


        <div class="store-title">

            <h2>
                Trending Now
            </h2>

            <p>
                Technology worth experiencing.
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
            onchange="sortProducts(this.value)">

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


    <!-- CATEGORY FILTER -->

    <div class="category-bar">


        <button
            class="category active"
            onclick="filterCategory('All',this)">

            All Products

        </button>


        <button
            class="category"
            onclick="filterCategory('Smartphones',this)">

            Smartphones

        </button>


        <button
            class="category"
            onclick="filterCategory('Audio',this)">

            Audio

        </button>


        <button
            class="category"
            onclick="filterCategory('Wearables',this)">

            Wearables

        </button>


        <button
            class="category"
            onclick="filterCategory('Laptops',this)">

            Laptops

        </button>


        <button
            class="category"
            onclick="filterCategory('Gaming',this)">

            Gaming

        </button>


        <button
            class="category"
            onclick="filterCategory('Cameras',this)">

            Cameras

        </button>

    </div>


    <!-- PRODUCTS -->

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


        <div class="cart-header">

            <div>

                <h2>
                    Your Cart
                </h2>

                <p>
                    Your selected products
                </p>

            </div>


            <button
                class="close"
                onclick="closeCart()">

                ×

            </button>

        </div>


        <div
            class="cart-items"
            id="cartItems">

        </div>


        <div class="cart-footer">


            <div class="summary-row">

                <span>
                    Subtotal
                </span>

                <span id="subtotal">
                    $0
                </span>

            </div>


            <div class="summary-row muted">

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


<!-- TOAST -->

<div
    class="toast"
    id="toast">
</div>


<!-- FOOTER -->

<footer>

    <div class="footer-logo">
        NEXUS PRIME
    </div>

    © 2026 NEXUS PRIME · Technology without limits.

</footer>


<script>

/* =========================================================
   PRODUCTS
========================================================= */

const products = [

    {
        id:1,
        name:"Nova X Smartphone",
        category:"Smartphones",
        price:899,
        rating:"★★★★★",
        tag:"BESTSELLER",
        image:
        "https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:2,
        name:"Aero Max Headphones",
        category:"Audio",
        price:249,
        rating:"★★★★★",
        tag:"NEW",
        image:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:3,
        name:"Vision Pro Watch",
        category:"Wearables",
        price:399,
        rating:"★★★★☆",
        tag:"TRENDING",
        image:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:4,
        name:"UltraBook Air",
        category:"Laptops",
        price:1299,
        rating:"★★★★★",
        tag:"PREMIUM",
        image:
        "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:5,
        name:"Pulse Gaming Console",
        category:"Gaming",
        price:499,
        rating:"★★★★★",
        tag:"HOT",
        image:
        "https://images.unsplash.com/photo-1605901309584-818e25960a8f?auto=format&fit=crop&w=900&q=90"
    },

    {
        id:6,
        name:"Studio Camera X",
        category:"Cameras",
        price:749,
        rating:"★★★★☆",
        tag:"LIMITED",
        image:
        "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=900&q=90"
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
   RENDER
========================================================= */

function renderProducts(list){

    const grid =
        document.getElementById("productGrid");

    grid.innerHTML = "";


    document.getElementById(
        "productCount"
    ).textContent =
        `${list.length} ${
            list.length === 1
            ? "product"
            : "products"
        }`;


    if(!list.length){

        grid.innerHTML = `

            <div class="empty-results">

                <div class="empty-results-icon">
                    🔎
                </div>

                <h3>
                    Nothing found
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
                        aria-label="Wishlist">

                        ${liked ? "♥" : "♡"}

                    </button>

                </div>


                <div class="product-info">

                    <div class="category-label">
                        ${product.category}
                    </div>


                    <h3>
                        ${product.name}
                    </h3>


                    <div class="rating">
                        ${product.rating}
                    </div>


                    <div class="product-bottom">

                        <div class="price">
                            $${product.price.toLocaleString()}
                        </div>


                        <button
                            class="add"
                            onclick="addToCart(${product.id})"
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
   FILTER + SEARCH
========================================================= */

function searchProducts(){

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
                    .includes(query)

                ||

                product.category
                    .toLowerCase()
                    .includes(query);


            const categoryMatch =

                currentCategory === "All"

                ||

                product.category ===
                currentCategory;


            return (
                searchMatch &&
                categoryMatch
            );

        });


    applySort(result);

}


/* =========================================================
   CATEGORY
========================================================= */

function filterCategory(category,button){

    currentCategory =
        category;


    document
        .querySelectorAll(".category")
        .forEach(item =>
            item.classList.remove("active")
        );


    button.classList.add("active");


    searchProducts();

}


/* =========================================================
   SORT
========================================================= */

function sortProducts(){

    searchProducts();

}


function applySort(list){

    const type =
        document.getElementById("sort").value;


    if(type === "low"){

        list.sort(
            (a,b) =>
                a.price - b.price
        );

    }


    if(type === "high"){

        list.sort(
            (a,b) =>
                b.price - a.price
        );

    }


    renderProducts(list);

}


/* =========================================================
   CART
========================================================= */

function addToCart(id){

    const product =
        products.find(
            p => p.id === id
        );


    const existing =
        cart.find(
            item => item.id === id
        );


    if(existing){

        existing.qty++;

    }else{

        cart.push({
            ...product,
            qty:1
        });

    }


    saveCart();

    updateCart();


    showToast(
        `${product.name} added to cart`
    );

}


function changeQuantity(id,amount){

    const item =
        cart.find(
            item => item.id === id
        );


    if(!item) return;


    item.qty += amount;


    if(item.qty <= 0){

        cart =
            cart.filter(
                item => item.id !== id
            );

    }


    saveCart();

    updateCart();

}


function removeFromCart(id){

    cart =
        cart.filter(
            item => item.id !== id
        );


    saveCart();

    updateCart();

    showToast(
        "Item removed from cart"
    );

}


/* =========================================================
   UPDATE CART
========================================================= */

function updateCart(){

    const container =
        document.getElementById(
            "cartItems"
        );


    let total = 0;

    let count = 0;


    container.innerHTML = "";


    if(!cart.length){

        container.innerHTML = `

            <div class="empty-cart">

                <div class="empty-cart-icon">
                    🛒
                </div>

                <h3>
                    Your cart is empty
                </h3>

                <p>
                    Add something amazing.
                </p>

            </div>

        `;

    }


    cart.forEach(item => {

        total +=
            item.price * item.qty;

        count += item.qty;


        container.innerHTML += `

            <div class="cart-item">

                <img
                    src="${item.image}"
                    alt="${item.name}"
                >


                <div class="cart-info">

                    <h4>
                        ${item.name}
                    </h4>


                    <div class="cart-price">
                        $${item.price.toLocaleString()}
                    </div>


                    <div class="quantity">

                        <button
                            onclick="changeQuantity(${item.id},-1)">

                            −

                        </button>


                        <span>
                            ${item.qty}
                        </span>


                        <button
                            onclick="changeQuantity(${item.id},1)">

                            +

                        </button>

                    </div>

                </div>


                <button
                    class="close"
                    onclick="removeFromCart(${item.id})">

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
   STORAGE
========================================================= */

function saveCart(){

    localStorage.setItem(
        "nexusCart",
        JSON.stringify(cart)
    );

}


/* =========================================================
   CART DRAWER
========================================================= */

function openCart(){

    updateCart();


    document
        .getElementById("cartOverlay")
        .classList.add("active");


    document.body.style.overflow =
        "hidden";

}


function closeCart(){

    document
        .getElementById("cartOverlay")
        .classList.remove("active");


    document.body.style.overflow =
        "";

}


document
    .getElementById("cartOverlay")
    .addEventListener(
        "click",
        function(e){

            if(
                e.target === this
            ){

                closeCart();

            }

        }
    );


document.addEventListener(
    "keydown",
    function(e){

        if(
            e.key === "Escape"
        ){

            closeCart();

        }

    }
);


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id){

    if(
        wishlist.includes(id)
    ){

        wishlist =
            wishlist.filter(
                item => item !== id
            );

        showToast(
            "Removed from wishlist"
        );

    }else{

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


function showWishlist(){

    if(!wishlist.length){

        showToast(
            "Your wishlist is empty"
        );

        return;

    }


    const items =
        products.filter(
            product =>
                wishlist.includes(
                    product.id
                )
        );


    renderProducts(items);


    document
        .getElementById("products")
        .scrollIntoView({
            behavior:"smooth"
        });


    showToast(
        `${wishlist.length} wishlist item(s)`
    );

}


/* =========================================================
   CHECKOUT
========================================================= */

function checkout(){

    if(!cart.length){

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


function showToast(message){

    const toast =
        document.getElementById(
            "toast"
        );


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
   SCROLL
========================================================= */

function scrollToProducts(){

    document
        .getElementById("products")
        .scrollIntoView({
            behavior:"smooth"
        });

}


/* =========================================================
   INITIALIZE
========================================================= */

renderProducts(products);

updateCart();

</script>

</body>
</html>
```
