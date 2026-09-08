<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS PRIME — Modern Tech Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{
    --bg:#f7f9fc;
    --white:#ffffff;
    --surface:#f1f5f9;
    --text:#172033;
    --muted:#6b7280;
    --primary:#6366f1;
    --primary-dark:#4f46e5;
    --secondary:#06b6d4;
    --green:#16a34a;
    --orange:#f59e0b;
    --border:#e5e7eb;
    --shadow:0 10px 35px rgba(15,23,42,.08);
    --shadow-hover:0 20px 45px rgba(15,23,42,.13);
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:"Inter",sans-serif;
    background:
        radial-gradient(circle at 0% 0%,rgba(99,102,241,.08),transparent 25%),
        radial-gradient(circle at 100% 10%,rgba(6,182,212,.08),transparent 25%),
        var(--bg);
    color:var(--text);
    min-height:100vh;
}

button,
input,
select{
    font:inherit;
}

button{
    cursor:pointer;
}

/* ================= HEADER ================= */

header{
    position:sticky;
    top:0;
    z-index:100;
    background:rgba(255,255,255,.88);
    backdrop-filter:blur(18px);
    border-bottom:1px solid rgba(229,231,235,.8);
}

.nav{
    max-width:1280px;
    margin:auto;
    padding:15px 24px;
    display:flex;
    align-items:center;
    gap:28px;
}

.logo{
    font-size:21px;
    font-weight:800;
    letter-spacing:1.5px;
    white-space:nowrap;
    color:#111827;
}

.logo span{
    color:var(--primary);
}

.search{
    flex:1;
    position:relative;
}

.search input{
    width:100%;
    padding:13px 18px 13px 45px;
    border-radius:14px;
    border:1px solid var(--border);
    background:#f8fafc;
    color:var(--text);
    outline:none;
    transition:.3s;
}

.search input::placeholder{
    color:#9ca3af;
}

.search input:focus{
    background:#fff;
    border-color:var(--primary);
    box-shadow:0 0 0 4px rgba(99,102,241,.1);
}

.search-icon{
    position:absolute;
    left:16px;
    top:50%;
    transform:translateY(-50%);
    color:#94a3b8;
    font-size:19px;
}

.nav-actions{
    display:flex;
    gap:9px;
}

.icon-btn{
    width:45px;
    height:45px;
    border-radius:13px;
    border:1px solid var(--border);
    background:#fff;
    color:#334155;
    position:relative;
    transition:.25s;
}

.icon-btn:hover{
    transform:translateY(-2px);
    border-color:#c7d2fe;
    color:var(--primary);
    box-shadow:var(--shadow);
}

.badge{
    position:absolute;
    top:-6px;
    right:-5px;
    min-width:19px;
    height:19px;
    padding:0 5px;
    border-radius:20px;
    background:var(--primary);
    color:white;
    font-size:10px;
    font-weight:700;
    display:flex;
    align-items:center;
    justify-content:center;
}

/* ================= HERO ================= */

.hero{
    max-width:1280px;
    margin:32px auto;
    padding:0 24px;
}

.hero-box{
    min-height:500px;
    position:relative;
    overflow:hidden;
    display:flex;
    align-items:center;
    padding:70px;
    border:1px solid #e7eaf0;
    border-radius:32px;

    background:
        linear-gradient(
            120deg,
            #ffffff 0%,
            #f8f9ff 50%,
            #effcff 100%
        );

    box-shadow:var(--shadow);
}

.hero-box::before{
    content:"";
    position:absolute;
    width:500px;
    height:500px;
    border-radius:50%;
    background:#c7d2fe;
    filter:blur(90px);
    opacity:.35;
    right:-150px;
    top:-150px;
}

.hero-box::after{
    content:"";
    position:absolute;
    width:300px;
    height:300px;
    border-radius:50%;
    background:#a5f3fc;
    filter:blur(90px);
    opacity:.35;
    left:20%;
    bottom:-160px;
}

.hero-content{
    position:relative;
    z-index:2;
    max-width:650px;
}

.eyebrow{
    display:inline-flex;
    align-items:center;
    gap:8px;
    padding:8px 13px;
    border:1px solid #e0e7ff;
    border-radius:50px;
    background:#fff;
    color:#64748b;
    font-size:12px;
    font-weight:600;
    margin-bottom:22px;
    box-shadow:0 5px 15px rgba(15,23,42,.04);
}

.dot{
    width:7px;
    height:7px;
    background:var(--green);
    border-radius:50%;
    box-shadow:0 0 10px rgba(22,163,74,.5);
}

.hero h1{
    font-size:clamp(43px,6vw,76px);
    line-height:1.02;
    letter-spacing:-4px;
    margin-bottom:22px;
    color:#172033;
}

.gradient-text{
    background:linear-gradient(
        90deg,
        var(--primary),
        #7c3aed,
        var(--secondary)
    );
    -webkit-background-clip:text;
    background-clip:text;
    color:transparent;
}

.hero p{
    color:#64748b;
    line-height:1.8;
    max-width:560px;
    margin-bottom:32px;
}

.hero-buttons{
    display:flex;
    gap:12px;
}

.btn{
    padding:14px 22px;
    border-radius:13px;
    border:1px solid var(--border);
    color:#334155;
    background:#fff;
    font-weight:600;
    transition:.3s;
}

.btn:hover{
    transform:translateY(-3px);
    box-shadow:var(--shadow);
}

.btn-primary{
    border:0;
    color:white;
    background:linear-gradient(
        135deg,
        var(--primary),
        var(--primary-dark)
    );
    box-shadow:0 12px 28px rgba(99,102,241,.25);
}

.btn-primary:hover{
    box-shadow:0 16px 35px rgba(99,102,241,.3);
}

/* ================= HERO PRODUCT ================= */

.hero-product{
    position:absolute;
    right:8%;
    bottom:40px;
    width:280px;
    height:350px;
    padding:10px;
    border-radius:30px;
    background:rgba(255,255,255,.7);
    border:1px solid rgba(255,255,255,.9);
    backdrop-filter:blur(15px);
    transform:rotate(6deg);
    box-shadow:
        0 30px 60px rgba(15,23,42,.16);
    animation:float 5s ease-in-out infinite;
}

.hero-product img{
    width:100%;
    height:100%;
    object-fit:cover;
    border-radius:23px;
}

@keyframes float{

    0%,100%{
        transform:rotate(6deg) translateY(0);
    }

    50%{
        transform:rotate(4deg) translateY(-15px);
    }
}

/* ================= TRUST ================= */

.trust{
    max-width:1280px;
    margin:0 auto 50px;
    padding:0 24px;
}

.trust-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:15px;
}

.trust-item{
    padding:21px;
    background:#fff;
    border:1px solid var(--border);
    border-radius:18px;
    transition:.25s;
}

.trust-item:hover{
    transform:translateY(-4px);
    box-shadow:var(--shadow);
}

.trust-icon{
    width:40px;
    height:40px;
    display:flex;
    align-items:center;
    justify-content:center;
    border-radius:12px;
    background:#eef2ff;
    margin-bottom:13px;
    font-size:19px;
}

.trust-item strong{
    display:block;
    margin-bottom:6px;
    font-size:14px;
}

.trust-item span{
    color:var(--muted);
    font-size:12px;
}

/* ================= STORE ================= */

.store{
    max-width:1280px;
    margin:auto;
    padding:0 24px 80px;
}

.section-head{
    display:flex;
    align-items:end;
    justify-content:space-between;
    margin-bottom:26px;
}

.section-head h2{
    font-size:30px;
    letter-spacing:-1px;
}

.section-head p{
    color:var(--muted);
    font-size:14px;
    margin-top:6px;
}

.sort{
    padding:11px 14px;
    border:1px solid var(--border);
    border-radius:12px;
    background:#fff;
    color:#334155;
    outline:none;
}

/* ================= PRODUCTS ================= */

.products{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:22px;
}

.product{
    position:relative;
    overflow:hidden;
    padding:11px;
    border:1px solid var(--border);
    background:#fff;
    border-radius:24px;
    transition:.35s;
}

.product:hover{
    transform:translateY(-7px);
    border-color:#c7d2fe;
    box-shadow:var(--shadow-hover);
}

.product-image{
    height:280px;
    position:relative;
    border-radius:18px;
    overflow:hidden;
    background:#f1f5f9;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s;
}

.product:hover .product-image img{
    transform:scale(1.06);
}

.tag{
    position:absolute;
    left:12px;
    top:12px;
    padding:7px 10px;
    border-radius:9px;
    font-size:10px;
    font-weight:800;
    letter-spacing:.5px;
    color:#334155;
    background:rgba(255,255,255,.9);
    backdrop-filter:blur(10px);
}

.heart{
    position:absolute;
    right:12px;
    top:12px;
    width:39px;
    height:39px;
    border-radius:12px;
    border:1px solid rgba(255,255,255,.9);
    background:rgba(255,255,255,.9);
    color:#64748b;
    font-size:18px;
    transition:.25s;
}

.heart:hover{
    color:#ef4444;
    transform:scale(1.08);
}

.product-info{
    padding:18px 7px 8px;
}

.category{
    color:var(--primary);
    font-size:10px;
    text-transform:uppercase;
    letter-spacing:1px;
    font-weight:800;
}

.product h3{
    margin:8px 0;
    font-size:17px;
    color:#1e293b;
}

.rating{
    color:#f59e0b;
    font-size:12px;
    margin-bottom:12px;
}

.price-row{
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.price{
    font-size:21px;
    font-weight:800;
    color:#111827;
}

.add{
    width:43px;
    height:43px;
    border:0;
    border-radius:12px;
    background:#eef2ff;
    color:var(--primary);
    font-size:22px;
    transition:.3s;
}

.add:hover{
    background:var(--primary);
    color:white;
    transform:rotate(5deg) scale(1.05);
}

/* ================= CART ================= */

.cart-overlay{
    position:fixed;
    inset:0;
    background:rgba(15,23,42,.35);
    backdrop-filter:blur(5px);
    z-index:200;
    opacity:0;
    visibility:hidden;
    transition:.3s;
}

.cart-overlay.active{
    opacity:1;
    visibility:visible;
}

.cart{
    position:absolute;
    right:0;
    top:0;
    width:min(430px,100%);
    height:100%;
    background:#fff;
    border-left:1px solid var(--border);
    padding:25px;
    transform:translateX(100%);
    transition:.4s;
    display:flex;
    flex-direction:column;
    box-shadow:-20px 0 60px rgba(15,23,42,.12);
}

.cart-overlay.active .cart{
    transform:translateX(0);
}

.cart-head{
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding-bottom:20px;
    border-bottom:1px solid var(--border);
}

.cart-head h2{
    font-size:22px;
}

.close{
    width:38px;
    height:38px;
    border-radius:10px;
    border:1px solid var(--border);
    background:#f8fafc;
    color:#475569;
    transition:.2s;
}

.close:hover{
    background:#fee2e2;
    color:#ef4444;
}

.cart-items{
    flex:1;
    overflow:auto;
    padding:20px 0;
}

.cart-item{
    display:flex;
    align-items:center;
    gap:12px;
    padding:13px 0;
    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:70px;
    height:70px;
    border-radius:13px;
    object-fit:cover;
}

.cart-item h4{
    font-size:14px;
    margin-bottom:7px;
}

.cart-item p{
    color:var(--primary);
    font-size:13px;
    font-weight:600;
}

.cart-footer{
    border-top:1px solid var(--border);
    padding-top:20px;
}

.total{
    display:flex;
    justify-content:space-between;
    font-size:18px;
    font-weight:800;
    margin-bottom:16px;
}

.checkout{
    width:100%;
    padding:15px;
    border:0;
    border-radius:14px;
    background:linear-gradient(
        135deg,
        var(--primary),
        var(--primary-dark)
    );
    color:white;
    font-weight:700;
    box-shadow:0 10px 25px rgba(99,102,241,.2);
    transition:.3s;
}

.checkout:hover{
    transform:translateY(-2px);
    box-shadow:0 15px 30px rgba(99,102,241,.3);
}

/* ================= TOAST ================= */

.toast{
    position:fixed;
    bottom:25px;
    left:50%;
    transform:translate(-50%,30px);
    background:#172033;
    color:white;
    padding:13px 18px;
    border-radius:12px;
    opacity:0;
    pointer-events:none;
    transition:.3s;
    z-index:500;
    box-shadow:0 15px 30px rgba(15,23,42,.2);
}

.toast.show{
    opacity:1;
    transform:translate(-50%,0);
}

/* ================= FOOTER ================= */

footer{
    border-top:1px solid var(--border);
    padding:35px 24px;
    text-align:center;
    color:var(--muted);
    font-size:13px;
    background:#fff;
}

/* ================= RESPONSIVE ================= */

@media(max-width:950px){

    .hero-box{
        padding:50px;
    }

    .hero-product{
        opacity:.22;
        right:-50px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .trust-grid{
        grid-template-columns:repeat(2,1fr);
    }
}

@media(max-width:650px){

    .nav{
        flex-wrap:wrap;
        gap:12px;
    }

    .logo{
        flex:1;
    }

    .search{
        order:3;
        flex-basis:100%;
    }

    .hero{
        margin-top:20px;
    }

    .hero-box{
        padding:40px 25px;
        min-height:540px;
    }

    .hero h1{
        font-size:48px;
        letter-spacing:-2px;
    }

    .hero-product{
        width:190px;
        height:240px;
        right:-40px;
        bottom:20px;
    }

    .hero-buttons{
        flex-direction:column;
        align-items:flex-start;
    }

    .trust-grid{
        grid-template-columns:1fr 1fr;
    }

    .section-head{
        align-items:flex-start;
        gap:15px;
        flex-direction:column;
    }

    .products{
        grid-template-columns:1fr;
    }

    .product-image{
        height:330px;
    }
}

@media(max-width:420px){

    .trust-grid{
        grid-template-columns:1fr;
    }

    .hero-box{
        min-height:560px;
    }

    .hero h1{
        font-size:42px;
    }
}

</style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

<nav class="nav">

    <div class="logo">
        NEXUS<span>PRIME</span>
    </div>

    <div class="search">

        <span class="search-icon">⌕</span>

        <input
            type="text"
            id="search"
            placeholder="Search smartphones, laptops, audio..."
            oninput="searchProducts()"
        >

    </div>

    <div class="nav-actions">

        <button
            class="icon-btn"
            onclick="showToast('Wishlist opened ❤️')">

            ♡

            <span
                class="badge"
                id="wishCount">
                0
            </span>

        </button>

        <button
            class="icon-btn"
            onclick="openCart()">

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


<!-- ================= HERO ================= -->

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
                onclick="document.getElementById('products').scrollIntoView({behavior:'smooth'})">

                Explore Collection →

            </button>

            <button
                class="btn"
                onclick="showToast('Free shipping on orders over $100 🚚')">

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


<!-- ================= TRUST ================= -->

<section class="trust">

<div class="trust-grid">

    <div class="trust-item">

        <div class="trust-icon">
            ⚡
        </div>

        <strong>
            Fast Delivery
        </strong>

        <span>
            Express shipping worldwide
        </span>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            🔐
        </div>

        <strong>
            Secure Payment
        </strong>

        <span>
            Protected checkout experience
        </span>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            ↩
        </div>

        <strong>
            Easy Returns
        </strong>

        <span>
            30-day hassle-free returns
        </span>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            ★
        </div>

        <strong>
            Premium Support
        </strong>

        <span>
            We're here whenever you need us
        </span>

    </div>

</div>

</section>


<!-- ================= PRODUCTS ================= -->

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

        </div>

        <select
            class="sort"
            onchange="sortProducts(this.value)">

            <option value="default">
                Sort: Featured
            </option>

            <option value="low">
                Price: Low → High
            </option>

            <option value="high">
                Price: High → Low
            </option>

        </select>

    </div>


    <div
        class="products"
        id="productGrid">
    </div>

</section>


<!-- ================= CART ================= -->

<div
    class="cart-overlay"
    id="cartOverlay">

    <div class="cart">

        <div class="cart-head">

            <h2>
                Your Cart
            </h2>

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


<!-- ================= TOAST ================= -->

<div
    class="toast"
    id="toast">
</div>


<!-- ================= FOOTER ================= -->

<footer>

    © 2026 NEXUS PRIME
    — Designed for the future.

</footer>


<script>

/* ================= PRODUCT DATA ================= */

const products = [

{
    id:1,
    name:"Nova X Smartphone",
    category:"Smartphones",
    price:899,
    rating:"★★★★★",
    tag:"BESTSELLER",
    image:"https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=800&q=85"
},

{
    id:2,
    name:"Aero Max Headphones",
    category:"Audio",
    price:249,
    rating:"★★★★★",
    tag:"NEW",
    image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
},

{
    id:3,
    name:"Vision Pro Watch",
    category:"Wearables",
    price:399,
    rating:"★★★★☆",
    tag:"TRENDING",
    image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=85"
},

{
    id:4,
    name:"UltraBook Air",
    category:"Laptops",
    price:1299,
    rating:"★★★★★",
    tag:"PREMIUM",
    image:"https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=800&q=85"
},

{
    id:5,
    name:"Pulse Gaming Console",
    category:"Gaming",
    price:499,
    rating:"★★★★★",
    tag:"HOT",
    image:"https://images.unsplash.com/photo-1605901309584-818e25960a8f?auto=format&fit=crop&w=800&q=85"
},

{
    id:6,
    name:"Studio Camera X",
    category:"Cameras",
    price:749,
    rating:"★★★★☆",
    tag:"LIMITED",
    image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=800&q=85"
}

];


/* ================= STATE ================= */

let cart =
    JSON.parse(
        localStorage.getItem("nexusCart")
    ) || [];

let wishlist =
    JSON.parse(
        localStorage.getItem("nexusWishlist")
    ) || [];


/* ================= RENDER PRODUCTS ================= */

function renderProducts(list = products){

    const grid =
        document.getElementById("productGrid");

    grid.innerHTML = "";


    if(!list.length){

        grid.innerHTML = `

            <div style="
                grid-column:1/-1;
                padding:70px 20px;
                text-align:center;
                background:#fff;
                border:1px solid #e5e7eb;
                border-radius:20px;
            ">

                <div style="
                    font-size:45px;
                    margin-bottom:15px;
                ">
                    🔎
                </div>

                <h3 style="
                    color:#172033;
                    margin-bottom:8px;
                ">
                    No products found
                </h3>

                <p style="
                    color:#6b7280;
                ">
                    Try searching for another product.
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
                    class="heart"
                    onclick="toggleWishlist(${product.id})">

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
                        onclick="addToCart(${product.id})">

                        +

                    </button>

                </div>

            </div>

        </article>

        `;

    });

}


/* ================= SEARCH ================= */

function searchProducts(){

    const query =
        document
        .getElementById("search")
        .value
        .toLowerCase()
        .trim();


    const result =
        products.filter(product =>

            product.name
                .toLowerCase()
                .includes(query)

            ||

            product.category
                .toLowerCase()
                .includes(query)

        );


    renderProducts(result);
}


/* ================= SORT ================= */

function sortProducts(type){

    let result =
        [...products];


    if(type === "low"){

        result.sort(
            (a,b) =>
            a.price - b.price
        );

    }


    if(type === "high"){

        result.sort(
            (a,b) =>
            b.price - a.price
        );

    }


    const query =
        document
        .getElementById("search")
        .value
        .toLowerCase()
        .trim();


    if(query){

        result =
            result.filter(product =>

                product.name
                .toLowerCase()
                .includes(query)

                ||

                product.category
                .toLowerCase()
                .includes(query)

            );

    }


    renderProducts(result);
}


/* ================= ADD TO CART ================= */

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
        `${product.name} added to cart ✓`
    );
}


/* ================= REMOVE ================= */

function removeFromCart(id){

    cart =
        cart.filter(
            item => item.id !== id
        );


    saveCart();

    updateCart();

    showToast(
        "Product removed from cart"
    );
}


/* ================= UPDATE CART ================= */

function updateCart(){

    const items =
        document.getElementById(
            "cartItems"
        );


    let total = 0;

    let count = 0;


    items.innerHTML = "";


    if(!cart.length){

        items.innerHTML = `

            <div style="
                text-align:center;
                padding:70px 20px;
                color:#64748b;
            ">

                <div style="
                    font-size:45px;
                    margin-bottom:15px;
                ">
                    🛒
                </div>

                <h3 style="
                    color:#172033;
                    margin-bottom:8px;
                ">
                    Your cart is empty
                </h3>

                Add something awesome.

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


                <div style="flex:1">

                    <h4>
                        ${item.name}
                    </h4>

                    <p>
                        $${item.price.toLocaleString()}
                        × ${item.qty}
                    </p>

                </div>


                <button
                    class="close"
                    onclick="removeFromCart(${item.id})">

                    ×

                </button>

            </div>

        `;

    });


    document
        .getElementById("cartTotal")
        .textContent =
        "$" + total.toLocaleString();


    document
        .getElementById("cartCount")
        .textContent =
        count;


    document
        .getElementById("wishCount")
        .textContent =
        wishlist.length;
}


/* ================= SAVE CART ================= */

function saveCart(){

    localStorage.setItem(
        "nexusCart",
        JSON.stringify(cart)
    );

}


/* ================= OPEN CART ================= */

function openCart(){

    updateCart();

    document
        .getElementById("cartOverlay")
        .classList
        .add("active");

}


/* ================= CLOSE CART ================= */

function closeCart(){

    document
        .getElementById("cartOverlay")
        .classList
        .remove("active");

}


/* ================= CLOSE CART OUTSIDE ================= */

document
.getElementById("cartOverlay")
.addEventListener(
    "click",
    function(e){

        if(e.target === this){

            closeCart();

        }

    }
);


/* ================= WISHLIST ================= */

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


    renderProducts();

    updateCart();
}


/* ================= CHECKOUT ================= */

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


/* ================= TOAST ================= */

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


/* ================= INITIALIZE ================= */

renderProducts();

updateCart();

</script>

</body>
</html>
