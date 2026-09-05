<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NEXUS PRIME — Future Store</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap');

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

:root{
    --bg:#08090d;
    --card:#11131a;
    --card2:#171a23;
    --text:#f5f7fb;
    --muted:#9298a8;
    --primary:#8b5cf6;
    --secondary:#22d3ee;
    --green:#22c55e;
    --border:rgba(255,255,255,.08);
}

body{
    font-family:Inter,sans-serif;
    background:
        radial-gradient(circle at 10% 10%,rgba(139,92,246,.12),transparent 30%),
        radial-gradient(circle at 90% 20%,rgba(34,211,238,.10),transparent 30%),
        var(--bg);
    color:var(--text);
    min-height:100vh;
}

button,
input{
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
    backdrop-filter:blur(20px);
    background:rgba(8,9,13,.78);
    border-bottom:1px solid var(--border);
}

.nav{
    max-width:1250px;
    margin:auto;
    padding:18px 24px;
    display:flex;
    align-items:center;
    gap:30px;
}

.logo{
    font-size:21px;
    font-weight:800;
    letter-spacing:2px;
    white-space:nowrap;
}

.logo span{
    color:var(--secondary);
}

.search{
    flex:1;
    position:relative;
}

.search input{
    width:100%;
    padding:13px 18px 13px 44px;
    border-radius:14px;
    border:1px solid var(--border);
    background:rgba(255,255,255,.04);
    color:white;
    outline:none;
    transition:.3s;
}

.search input:focus{
    border-color:var(--primary);
    box-shadow:0 0 25px rgba(139,92,246,.15);
}

.search-icon{
    position:absolute;
    left:16px;
    top:50%;
    transform:translateY(-50%);
    color:var(--muted);
}

.nav-actions{
    display:flex;
    gap:10px;
}

.icon-btn{
    width:44px;
    height:44px;
    border-radius:13px;
    border:1px solid var(--border);
    background:rgba(255,255,255,.04);
    color:white;
    position:relative;
    transition:.3s;
}

.icon-btn:hover{
    background:rgba(255,255,255,.09);
    transform:translateY(-2px);
}

.badge{
    position:absolute;
    top:-5px;
    right:-5px;
    min-width:18px;
    height:18px;
    padding:0 4px;
    border-radius:20px;
    background:var(--primary);
    color:white;
    font-size:10px;
    display:flex;
    align-items:center;
    justify-content:center;
}

/* ================= HERO ================= */

.hero{
    max-width:1250px;
    margin:40px auto;
    padding:0 24px;
}

.hero-box{
    min-height:480px;
    border:1px solid var(--border);
    border-radius:30px;
    overflow:hidden;
    position:relative;
    display:flex;
    align-items:center;
    padding:70px;
    background:
        linear-gradient(120deg,#11131c,#17142b 50%,#0e2029);
}

.hero-box::before{
    content:"";
    position:absolute;
    width:450px;
    height:450px;
    border-radius:50%;
    background:var(--primary);
    filter:blur(120px);
    opacity:.22;
    right:-100px;
    top:-100px;
}

.hero-box::after{
    content:"";
    position:absolute;
    width:300px;
    height:300px;
    border-radius:50%;
    background:var(--secondary);
    filter:blur(120px);
    opacity:.15;
    left:20%;
    bottom:-150px;
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
    border:1px solid var(--border);
    border-radius:50px;
    background:rgba(255,255,255,.05);
    color:#c7cbd5;
    font-size:12px;
    margin-bottom:22px;
}

.dot{
    width:7px;
    height:7px;
    background:var(--green);
    border-radius:50%;
    box-shadow:0 0 12px var(--green);
}

.hero h1{
    font-size:clamp(42px,6vw,76px);
    line-height:1;
    letter-spacing:-4px;
    margin-bottom:22px;
}

.gradient-text{
    background:linear-gradient(90deg,#fff,var(--secondary),var(--primary));
    -webkit-background-clip:text;
    color:transparent;
}

.hero p{
    color:var(--muted);
    line-height:1.7;
    max-width:550px;
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
    color:white;
    background:rgba(255,255,255,.06);
    transition:.3s;
}

.btn:hover{
    transform:translateY(-3px);
}

.btn-primary{
    border:0;
    background:linear-gradient(135deg,var(--primary),#6d28d9);
    box-shadow:0 12px 30px rgba(139,92,246,.25);
}

/* ================= FLOATING PRODUCT ================= */

.hero-product{
    position:absolute;
    right:8%;
    bottom:40px;
    width:270px;
    height:340px;
    border-radius:30px;
    padding:12px;
    background:linear-gradient(145deg,rgba(255,255,255,.15),rgba(255,255,255,.03));
    border:1px solid rgba(255,255,255,.12);
    backdrop-filter:blur(20px);
    transform:rotate(6deg);
    box-shadow:0 40px 80px rgba(0,0,0,.4);
    animation:float 5s ease-in-out infinite;
}

.hero-product img{
    width:100%;
    height:100%;
    object-fit:cover;
    border-radius:22px;
}

@keyframes float{
    0%,100%{transform:rotate(6deg) translateY(0)}
    50%{transform:rotate(4deg) translateY(-16px)}
}

/* ================= TRUST ================= */

.trust{
    max-width:1250px;
    margin:0 auto 45px;
    padding:0 24px;
}

.trust-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:14px;
}

.trust-item{
    padding:20px;
    border:1px solid var(--border);
    border-radius:18px;
    background:rgba(255,255,255,.025);
}

.trust-item strong{
    display:block;
    margin-bottom:5px;
}

.trust-item span{
    color:var(--muted);
    font-size:13px;
}

/* ================= STORE ================= */

.store{
    max-width:1250px;
    margin:auto;
    padding:0 24px 70px;
}

.section-head{
    display:flex;
    align-items:end;
    justify-content:space-between;
    margin-bottom:25px;
}

.section-head h2{
    font-size:30px;
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
    background:var(--card);
    color:white;
}

/* ================= PRODUCTS ================= */

.products{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.product{
    position:relative;
    border:1px solid var(--border);
    background:linear-gradient(145deg,#11131a,#0e1016);
    border-radius:24px;
    padding:12px;
    transition:.35s;
    overflow:hidden;
}

.product:hover{
    transform:translateY(-7px);
    border-color:rgba(139,92,246,.4);
    box-shadow:0 25px 60px rgba(0,0,0,.3);
}

.product-image{
    height:280px;
    position:relative;
    border-radius:18px;
    overflow:hidden;
    background:#191c25;
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
    font-size:11px;
    font-weight:700;
    background:rgba(0,0,0,.65);
    backdrop-filter:blur(10px);
}

.heart{
    position:absolute;
    right:12px;
    top:12px;
    width:38px;
    height:38px;
    border-radius:12px;
    border:1px solid rgba(255,255,255,.12);
    background:rgba(0,0,0,.5);
    color:white;
    font-size:17px;
}

.product-info{
    padding:18px 6px 7px;
}

.category{
    color:var(--secondary);
    font-size:11px;
    text-transform:uppercase;
    letter-spacing:1px;
    font-weight:700;
}

.product h3{
    margin:8px 0;
    font-size:17px;
}

.rating{
    color:#fbbf24;
    font-size:12px;
    margin-bottom:12px;
}

.price-row{
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.price{
    font-size:20px;
    font-weight:800;
}

.add{
    width:42px;
    height:42px;
    border:0;
    border-radius:12px;
    background:white;
    color:#08090d;
    font-size:22px;
    transition:.3s;
}

.add:hover{
    background:var(--secondary);
    transform:rotate(5deg);
}

/* ================= CART ================= */

.cart-overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.65);
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
    background:#0e1016;
    border-left:1px solid var(--border);
    padding:25px;
    transform:translateX(100%);
    transition:.4s;
    display:flex;
    flex-direction:column;
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
    background:rgba(255,255,255,.04);
    color:white;
}

.cart-items{
    flex:1;
    overflow:auto;
    padding:20px 0;
}

.cart-item{
    display:flex;
    gap:12px;
    padding:12px 0;
    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:70px;
    height:70px;
    border-radius:12px;
    object-fit:cover;
}

.cart-item h4{
    font-size:14px;
    margin-bottom:7px;
}

.cart-item p{
    color:var(--secondary);
    font-size:13px;
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
    background:linear-gradient(135deg,var(--primary),#6d28d9);
    color:white;
    font-weight:700;
}

/* ================= TOAST ================= */

.toast{
    position:fixed;
    bottom:25px;
    left:50%;
    transform:translate(-50%,30px);
    background:#171923;
    border:1px solid var(--border);
    padding:13px 18px;
    border-radius:12px;
    opacity:0;
    pointer-events:none;
    transition:.3s;
    z-index:500;
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
}

/* ================= RESPONSIVE ================= */

@media(max-width:900px){

    .hero-box{
        padding:45px;
    }

    .hero-product{
        opacity:.3;
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
        padding:35px 25px;
        min-height:500px;
    }

    .hero h1{
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
        min-height:540px;
    }
}
</style>
</head>

<body>

<!-- HEADER -->

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
                placeholder="Search products..."
                oninput="searchProducts()"
            >
        </div>

        <div class="nav-actions">

            <button class="icon-btn" onclick="showToast('Wishlist opened')">
                ♡
                <span class="badge" id="wishCount">0</span>
            </button>

            <button class="icon-btn" onclick="openCart()">
                🛒
                <span class="badge" id="cartCount">0</span>
            </button>

        </div>

    </nav>
</header>


<!-- HERO -->

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
                <span class="gradient-text">Without Limits.</span>
            </h1>

            <p>
                Discover premium gadgets, intelligent devices and
                next-generation technology designed for the way
                you live today.
            </p>

            <div class="hero-buttons">

                <button
                    class="btn btn-primary"
                    onclick="document.getElementById('products').scrollIntoView({behavior:'smooth'})">
                    Explore Collection →
                </button>

                <button
                    class="btn"
                    onclick="showToast('Free shipping on orders over $100')">
                    Free Shipping
                </button>

            </div>

        </div>

        <div class="hero-product">
            <img
                src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=85"
                alt="Premium smartphone">
        </div>

    </div>

</section>


<!-- TRUST -->

<section class="trust">

    <div class="trust-grid">

        <div class="trust-item">
            <strong>⚡ Fast Delivery</strong>
            <span>Express shipping worldwide</span>
        </div>

        <div class="trust-item">
            <strong>🔐 Secure Payment</strong>
            <span>Protected checkout experience</span>
        </div>

        <div class="trust-item">
            <strong>↩ Easy Returns</strong>
            <span>30-day hassle-free returns</span>
        </div>

        <div class="trust-item">
            <strong>★ Premium Support</strong>
            <span>We're here whenever you need us</span>
        </div>

    </div>

</section>


<!-- PRODUCTS -->

<section class="store" id="products">

    <div class="section-head">

        <div>
            <h2>Trending Products</h2>
            <p>Hand-picked technology for modern life.</p>
        </div>

        <select class="sort" onchange="sortProducts(this.value)">
            <option value="default">Sort: Featured</option>
            <option value="low">Price: Low → High</option>
            <option value="high">Price: High → Low</option>
        </select>

    </div>

    <div class="products" id="productGrid"></div>

</section>


<!-- CART -->

<div class="cart-overlay" id="cartOverlay">

    <div class="cart">

        <div class="cart-head">

            <h2>Your Cart</h2>

            <button class="close" onclick="closeCart()">×</button>

        </div>

        <div class="cart-items" id="cartItems"></div>

        <div class="cart-footer">

            <div class="total">
                <span>Total</span>
                <span id="cartTotal">$0</span>
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

<div class="toast" id="toast"></div>


<!-- FOOTER -->

<footer>
    © 2026 NEXUS PRIME — Designed for the future.
</footer>


<script>

/* ================= DATA ================= */

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

let cart = JSON.parse(localStorage.getItem("nexusCart")) || [];
let wishlist = JSON.parse(localStorage.getItem("nexusWishlist")) || [];


/* ================= RENDER PRODUCTS ================= */

function renderProducts(list = products){

    const grid = document.getElementById("productGrid");

    grid.innerHTML = "";

    if(!list.length){

        grid.innerHTML = `
            <div style="
                grid-column:1/-1;
                padding:60px;
                text-align:center;
                color:#9298a8;
            ">
                <h3 style="color:white;margin-bottom:8px">
                    No products found
                </h3>
                Try another search.
            </div>
        `;

        return;
    }

    list.forEach(product => {

        const liked = wishlist.includes(product.id);

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
                        $${product.price}
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
        document.getElementById("search")
        .value
        .toLowerCase()
        .trim();

    const result = products.filter(product =>

        product.name.toLowerCase().includes(query) ||
        product.category.toLowerCase().includes(query)

    );

    renderProducts(result);
}


/* ================= SORT ================= */

function sortProducts(type){

    let result = [...products];

    if(type === "low"){
        result.sort((a,b)=>a.price-b.price);
    }

    if(type === "high"){
        result.sort((a,b)=>b.price-a.price);
    }

    const query =
        document.getElementById("search")
        .value
        .toLowerCase()
        .trim();

    if(query){

        result = result.filter(product =>
            product.name.toLowerCase().includes(query) ||
            product.category.toLowerCase().includes(query)
        );

    }

    renderProducts(result);
}


/* ================= CART ================= */

function addToCart(id){

    const product = products.find(p => p.id === id);

    const existing = cart.find(item => item.id === id);

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

    showToast(`${product.name} added to cart`);
}


function removeFromCart(id){

    cart = cart.filter(item => item.id !== id);

    saveCart();

    updateCart();
}


function updateCart(){

    const items = document.getElementById("cartItems");

    let total = 0;
    let count = 0;

    items.innerHTML = "";

    if(!cart.length){

        items.innerHTML = `
            <div style="
                text-align:center;
                padding:60px 20px;
                color:#9298a8;
            ">
                <div style="font-size:40px;margin-bottom:15px">
                    🛒
                </div>

                <h3 style="color:white;margin-bottom:8px">
                    Your cart is empty
                </h3>

                Add something awesome.
            </div>
        `;

    }

    cart.forEach(item => {

        total += item.price * item.qty;
        count += item.qty;

        items.innerHTML += `

        <div class="cart-item">

            <img
                src="${item.image}"
                alt="${item.name}"
            >

            <div style="flex:1">

                <h4>${item.name}</h4>

                <p>
                    $${item.price} × ${item.qty}
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

    document.getElementById("cartTotal").textContent =
        "$" + total.toLocaleString();

    document.getElementById("cartCount").textContent = count;

    document.getElementById("wishCount").textContent =
        wishlist.length;
}


function saveCart(){

    localStorage.setItem(
        "nexusCart",
        JSON.stringify(cart)
    );
}


/* ================= CART DRAWER ================= */

function openCart(){

    updateCart();

    document
        .getElementById("cartOverlay")
        .classList.add("active");
}


function closeCart(){

    document
        .getElementById("cartOverlay")
        .classList.remove("active");
}


document
    .getElementById("cartOverlay")
    .addEventListener("click",function(e){

        if(e.target === this){
            closeCart();
        }

    });


/* ================= WISHLIST ================= */

function toggleWishlist(id){

    if(wishlist.includes(id)){

        wishlist =
            wishlist.filter(item => item !== id);

        showToast("Removed from wishlist");

    }else{

        wishlist.push(id);

        showToast("Added to wishlist ❤️");

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

        showToast("Your cart is empty");

        return;
    }

    showToast("Checkout coming soon 🚀");
}


/* ================= TOAST ================= */

let toastTimer;

function showToast(message){

    const toast =
        document.getElementById("toast");

    toast.textContent = message;

    toast.classList.add("show");

    clearTimeout(toastTimer);

    toastTimer = setTimeout(()=>{

        toast.classList.remove("show");

    },2500);
}


/* ================= INITIALIZE ================= */

renderProducts();

updateCart();

</script>

</body>
</html>
