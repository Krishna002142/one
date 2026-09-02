<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop | Modern Online Shopping</title>

    <meta name="description"
        content="NexusShop - Shop smartphones, laptops, fashion, accessories and more.">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        :root {
            --primary: #111827;
            --primary-light: #1f2937;
            --accent: #635bff;
            --accent-dark: #5048e5;
            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;

            --bg: #f8fafc;
            --white: #ffffff;
            --surface: #f1f5f9;
            --border: #e5e7eb;

            --text: #111827;
            --muted: #64748b;

            --radius-sm: 8px;
            --radius-md: 14px;
            --radius-lg: 22px;

            --shadow-sm: 0 2px 8px rgba(15, 23, 42, .05);
            --shadow-md: 0 10px 30px rgba(15, 23, 42, .08);
            --shadow-lg: 0 20px 60px rgba(15, 23, 42, .14);

            --container: 1240px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
        }

        body.cart-open {
            overflow: hidden;
        }

        button,
        input,
        select {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            max-width: 100%;
            display: block;
        }

        .container {
            width: min(100% - 40px, var(--container));
            margin: auto;
        }

        /* =========================
           TOP BAR
        ========================= */

        .top-bar {
            background: var(--primary);
            color: white;
            padding: 9px 0;
            font-size: 13px;
        }

        .top-bar-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .top-links {
            display: flex;
            gap: 20px;
        }

        .top-links a {
            opacity: .85;
        }

        .top-links a:hover {
            opacity: 1;
        }

        /* =========================
           HEADER
        ========================= */

        .header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, .94);
            backdrop-filter: blur(15px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            min-height: 76px;
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .logo {
            font-family: Poppins, sans-serif;
            font-size: 24px;
            font-weight: 800;
            white-space: nowrap;
            color: var(--primary);
        }

        .logo span {
            color: var(--accent);
        }

        .desktop-nav {
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .desktop-nav a {
            padding: 9px 13px;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            color: #475569;
            transition: .2s;
        }

        .desktop-nav a:hover,
        .desktop-nav a.active {
            background: #eef2ff;
            color: var(--accent);
        }

        /* Search */

        .header-search {
            flex: 1;
            max-width: 430px;
            margin-left: auto;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: var(--surface);
            border: 1px solid transparent;
            border-radius: 12px;
            padding: 0 14px;
            transition: .2s;
        }

        .search-box:focus-within {
            background: white;
            border-color: var(--accent);
            box-shadow: 0 0 0 4px rgba(99, 91, 255, .1);
        }

        .search-box i {
            color: var(--muted);
        }

        .search-box input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            padding: 12px;
            font-size: 14px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 7px;
        }

        .header-btn {
            width: 42px;
            height: 42px;
            border: 0;
            background: transparent;
            border-radius: 10px;
            color: var(--primary);
            position: relative;
            transition: .2s;
        }

        .header-btn:hover {
            background: var(--surface);
            color: var(--accent);
        }

        .cart-count {
            position: absolute;
            top: 1px;
            right: 1px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            background: var(--danger);
            color: white;
            display: grid;
            place-items: center;
            font-size: 10px;
            font-weight: 700;
        }

        .mobile-menu-btn {
            display: none;
            border: 0;
            background: transparent;
            font-size: 21px;
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            padding: 45px 0;
        }

        .hero-grid {
            display: grid;
            grid-template-columns: 1.1fr .9fr;
            min-height: 510px;
            border-radius: var(--radius-lg);
            overflow: hidden;
            background: #e9edff;
        }

        .hero-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 70px;
            background:
                radial-gradient(circle at top right, rgba(99, 91, 255, .18), transparent 40%),
                linear-gradient(135deg, #eef2ff, #ffffff);
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            width: fit-content;
            background: #e0e7ff;
            color: var(--accent);
            padding: 7px 12px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(38px, 5vw, 64px);
            line-height: 1.08;
            letter-spacing: -2px;
            max-width: 650px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: var(--accent);
        }

        .hero-description {
            max-width: 550px;
            color: var(--muted);
            font-size: 16px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: 0;
            border-radius: 10px;
            padding: 13px 20px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            font-weight: 700;
            transition: .2s;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
            box-shadow: 0 8px 20px rgba(99, 91, 255, .25);
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
        }

        .btn-secondary {
            background: white;
            color: var(--primary);
            border: 1px solid var(--border);
        }

        .btn-secondary:hover {
            background: var(--surface);
        }

        .hero-image {
            min-height: 510px;
            background:
                linear-gradient(90deg, rgba(99, 91, 255, .1), transparent),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1200&q=85")
                center / cover;
        }

        /* =========================
           BENEFITS
        ========================= */

        .benefits {
            padding: 5px 0 45px;
        }

        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 14px;
        }

        .benefit {
            background: white;
            border: 1px solid var(--border);
            padding: 20px;
            border-radius: var(--radius-md);
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .benefit-icon {
            width: 46px;
            height: 46px;
            border-radius: 12px;
            display: grid;
            place-items: center;
            background: #eef2ff;
            color: var(--accent);
            font-size: 18px;
        }

        .benefit strong {
            display: block;
            font-size: 14px;
            margin-bottom: 2px;
        }

        .benefit span {
            color: var(--muted);
            font-size: 12px;
        }

        /* =========================
           SECTION
        ========================= */

        .section {
            padding: 55px 0;
        }

        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 25px;
        }

        .section-title h2 {
            font-family: Poppins, sans-serif;
            font-size: 28px;
            margin-bottom: 5px;
        }

        .section-title p {
            color: var(--muted);
            font-size: 14px;
        }

        .view-all {
            color: var(--accent);
            font-size: 14px;
            font-weight: 700;
        }

        /* =========================
           CATEGORIES
        ========================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .category {
            border: 1px solid var(--border);
            background: white;
            border-radius: var(--radius-md);
            padding: 22px 12px;
            text-align: center;
            transition: .25s;
            cursor: pointer;
        }

        .category:hover,
        .category.active {
            transform: translateY(-4px);
            border-color: #c7d2fe;
            box-shadow: var(--shadow-md);
        }

        .category-icon {
            width: 58px;
            height: 58px;
            margin: auto;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: #eef2ff;
            color: var(--accent);
            font-size: 22px;
            margin-bottom: 12px;
        }

        .category h3 {
            font-size: 14px;
            margin-bottom: 4px;
        }

        .category span {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================
           PRODUCTS
        ========================= */

        .product-controls {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .sort-select {
            border: 1px solid var(--border);
            background: white;
            border-radius: 9px;
            padding: 9px 12px;
            outline: 0;
            color: var(--primary);
            cursor: pointer;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .product {
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: .25s;
            position: relative;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
        }

        .product-image {
            height: 245px;
            background: var(--surface);
            position: relative;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform .35s;
        }

        .product:hover .product-image img {
            transform: scale(1.05);
        }

        .badge {
            position: absolute;
            left: 12px;
            top: 12px;
            z-index: 2;
            background: var(--primary);
            color: white;
            padding: 5px 9px;
            border-radius: 6px;
            font-size: 10px;
            font-weight: 800;
        }

        .badge.sale {
            background: var(--danger);
        }

        .wishlist {
            position: absolute;
            right: 12px;
            top: 12px;
            z-index: 2;
            width: 35px;
            height: 35px;
            border: 0;
            border-radius: 50%;
            background: rgba(255, 255, 255, .95);
            color: #64748b;
            display: grid;
            place-items: center;
            transition: .2s;
        }

        .wishlist:hover,
        .wishlist.active {
            color: var(--danger);
        }

        .product-body {
            padding: 15px;
        }

        .product-category {
            text-transform: uppercase;
            font-size: 10px;
            letter-spacing: .5px;
            color: var(--muted);
            font-weight: 700;
            margin-bottom: 6px;
        }

        .product-title {
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 8px;
            min-height: 22px;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 12px;
            margin-bottom: 12px;
        }

        .stars {
            color: #f59e0b;
        }

        .reviews {
            color: var(--muted);
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 8px;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            color: #94a3b8;
            font-size: 12px;
            text-decoration: line-through;
            margin-left: 5px;
        }

        .add-cart {
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 9px;
            background: var(--primary);
            color: white;
            transition: .2s;
        }

        .add-cart:hover {
            background: var(--accent);
            transform: scale(1.05);
        }

        .empty-products {
            grid-column: 1 / -1;
            text-align: center;
            padding: 70px 20px;
            color: var(--muted);
        }

        .empty-products i {
            font-size: 40px;
            margin-bottom: 15px;
            color: #cbd5e1;
        }

        /* =========================
           FLASH SALE
        ========================= */

        .flash-sale {
            background: linear-gradient(135deg, #111827, #312e81);
            color: white;
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            min-height: 430px;
        }

        .sale-image {
            background:
                linear-gradient(90deg, rgba(17, 24, 39, .2), transparent),
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85")
                center / cover;
        }

        .sale-content {
            padding: 55px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .sale-label {
            color: #c4b5fd;
            text-transform: uppercase;
            font-weight: 800;
            font-size: 12px;
            letter-spacing: 1px;
            margin-bottom: 12px;
        }

        .sale-content h2 {
            font-family: Poppins, sans-serif;
            font-size: 36px;
            margin-bottom: 10px;
        }

        .sale-content p {
            color: #cbd5e1;
            margin-bottom: 25px;
        }

        .countdown {
            display: flex;
            gap: 9px;
            margin-bottom: 25px;
        }

        .count-box {
            min-width: 65px;
            background: rgba(255, 255, 255, .1);
            border: 1px solid rgba(255, 255, 255, .1);
            border-radius: 9px;
            padding: 10px;
            text-align: center;
        }

        .count-box strong {
            display: block;
            font-size: 20px;
        }

        .count-box span {
            color: #cbd5e1;
            font-size: 10px;
        }

        .sale-price {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .sale-price strong {
            font-size: 28px;
        }

        .sale-price del {
            color: #94a3b8;
        }

        /* =========================
           TESTIMONIALS
        ========================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .testimonial {
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 25px;
        }

        .testimonial-stars {
            color: #f59e0b;
            margin-bottom: 14px;
        }

        .testimonial p {
            color: #475569;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 11px;
        }

        .customer-avatar {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .customer strong {
            display: block;
            font-size: 13px;
        }

        .customer span {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            background: linear-gradient(135deg, #eef2ff, #f5f3ff);
            border: 1px solid #e0e7ff;
            border-radius: var(--radius-lg);
            padding: 55px 30px;
            text-align: center;
        }

        .newsletter h2 {
            font-family: Poppins, sans-serif;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .newsletter p {
            color: var(--muted);
            margin-bottom: 22px;
        }

        .newsletter-form {
            max-width: 510px;
            margin: auto;
            display: flex;
            gap: 8px;
        }

        .newsletter-form input {
            flex: 1;
            border: 1px solid var(--border);
            background: white;
            border-radius: 10px;
            padding: 13px 15px;
            outline: 0;
        }

        .newsletter-form input:focus {
            border-color: var(--accent);
        }

        .newsletter-message {
            margin-top: 12px;
            font-size: 13px;
            display: none;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            margin-top: 30px;
            background: var(--primary);
            color: white;
            padding: 55px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-brand {
            font-family: Poppins, sans-serif;
            font-size: 22px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .footer-brand span {
            color: #818cf8;
        }

        .footer-description {
            color: #94a3b8;
            font-size: 13px;
            max-width: 300px;
        }

        .footer h4 {
            font-size: 14px;
            margin-bottom: 15px;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 9px;
        }

        .footer-links a {
            color: #94a3b8;
            font-size: 13px;
        }

        .footer-links a:hover {
            color: white;
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 18px;
        }

        .social {
            width: 36px;
            height: 36px;
            border-radius: 8px;
            background: #1f2937;
            display: grid;
            place-items: center;
            color: #cbd5e1;
        }

        .social:hover {
            background: var(--accent);
            color: white;
        }

        .copyright {
            border-top: 1px solid #1f2937;
            margin-top: 40px;
            padding-top: 20px;
            color: #64748b;
            text-align: center;
            font-size: 12px;
        }

        /* =========================
           CART DRAWER
        ========================= */

        .overlay {
            position: fixed;
            inset: 0;
            background: rgba(15, 23, 42, .55);
            z-index: 200;
            opacity: 0;
            visibility: hidden;
            transition: .25s;
        }

        .overlay.show {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: fixed;
            right: 0;
            top: 0;
            height: 100vh;
            width: min(430px, 100%);
            background: white;
            z-index: 201;
            transform: translateX(100%);
            transition: .3s ease;
            display: flex;
            flex-direction: column;
        }

        .cart-drawer.open {
            transform: translateX(0);
        }

        .cart-header {
            padding: 20px;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .cart-header h2 {
            font-family: Poppins, sans-serif;
            font-size: 20px;
        }

        .close-cart {
            width: 35px;
            height: 35px;
            border: 0;
            background: var(--surface);
            border-radius: 8px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 15px;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 72px 1fr;
            gap: 12px;
            padding: 13px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 72px;
            height: 72px;
            border-radius: 9px;
            object-fit: cover;
            background: var(--surface);
        }

        .cart-item h4 {
            font-size: 13px;
            margin-bottom: 5px;
        }

        .cart-item-price {
            font-weight: 700;
            font-size: 13px;
            margin-bottom: 8px;
        }

        .quantity {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .quantity button {
            width: 26px;
            height: 26px;
            border: 1px solid var(--border);
            background: white;
            border-radius: 6px;
        }

        .quantity span {
            font-size: 12px;
            min-width: 15px;
            text-align: center;
        }

        .remove-item {
            border: 0;
            background: transparent;
            color: var(--danger);
            font-size: 11px;
            margin-left: 8px;
        }

        .empty-cart {
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            color: var(--muted);
            text-align: center;
        }

        .empty-cart i {
            font-size: 45px;
            color: #cbd5e1;
            margin-bottom: 15px;
        }

        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
        }

        .subtotal {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .subtotal strong {
            font-size: 20px;
        }

        .checkout-btn {
            width: 100%;
        }

        /* =========================
           TOAST
        ========================= */

        .toast-container {
            position: fixed;
            right: 20px;
            bottom: 20px;
            z-index: 500;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .toast {
            background: var(--primary);
            color: white;
            padding: 13px 16px;
            border-radius: 9px;
            box-shadow: var(--shadow-lg);
            font-size: 13px;
            animation: slideIn .3s ease;
        }

        .toast.success {
            background: var(--success);
        }

        @keyframes slideIn {
            from {
                transform: translateY(15px);
                opacity: 0;
            }

            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* =========================
           MOBILE NAV
        ========================= */

        .mobile-bottom-nav {
            display: none;
        }

        /* =========================
           RESPONSIVE
        ========================= */

        @media(max-width:1100px) {

            .desktop-nav {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .hero-content {
                padding: 45px;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .benefits-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media(max-width:800px) {

            .top-bar {
                display: none;
            }

            .header-inner {
                min-height: 65px;
                gap: 10px;
            }

            .logo {
                font-size: 20px;
            }

            .header-search {
                order: 5;
                position: absolute;
                top: 65px;
                left: 20px;
                right: 20px;
                max-width: none;
            }

            .header {
                margin-bottom: 55px;
            }

            .header-actions {
                margin-left: auto;
            }

            .hero {
                padding-top: 25px;
            }

            .hero-grid {
                grid-template-columns: 1fr;
            }

            .hero-image {
                min-height: 280px;
                order: -1;
            }

            .hero-content {
                padding: 40px 25px;
            }

            .hero h1 {
                font-size: 40px;
                letter-spacing: -1px;
            }

            .flash-sale {
                grid-template-columns: 1fr;
            }

            .sale-image {
                min-height: 260px;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:600px) {

            .container {
                width: min(100% - 24px, var(--container));
            }

            .header-search {
                left: 12px;
                right: 12px;
            }

            .header-actions .account-btn,
            .header-actions .wishlist-btn {
                display: none;
            }

            .hero h1 {
                font-size: 34px;
            }

            .hero-description {
                font-size: 14px;
            }

            .hero-buttons {
                flex-direction: column;
            }

            .hero-buttons .btn {
                width: 100%;
            }

            .benefits-grid {
                grid-template-columns: 1fr;
            }

            .benefit {
                padding: 15px;
            }

            .section {
                padding: 40px 0;
            }

            .section-header {
                align-items: flex-start;
                flex-direction: column;
            }

            .product-controls {
                width: 100%;
            }

            .sort-select {
                width: 100%;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 10px;
            }

            .product-image {
                height: 180px;
            }

            .product-body {
                padding: 11px;
            }

            .product-title {
                font-size: 13px;
            }

            .price {
                font-size: 16px;
            }

            .old-price {
                display: block;
                margin-left: 0;
            }

            .add-cart {
                width: 34px;
                height: 34px;
            }

            .sale-content {
                padding: 35px 22px;
            }

            .sale-content h2 {
                font-size: 28px;
            }

            .countdown {
                gap: 5px;
            }

            .count-box {
                min-width: 55px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form .btn {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .mobile-bottom-nav {
                position: fixed;
                display: flex;
                bottom: 0;
                left: 0;
                right: 0;
                height: 62px;
                background: rgba(255, 255, 255, .96);
                backdrop-filter: blur(10px);
                border-top: 1px solid var(--border);
                z-index: 150;
                justify-content: space-around;
                align-items: center;
            }

            .mobile-bottom-nav button {
                border: 0;
                background: transparent;
                color: var(--muted);
                font-size: 10px;
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 4px;
            }

            .mobile-bottom-nav i {
                font-size: 17px;
            }

            body {
                padding-bottom: 62px;
            }

            .toast-container {
                bottom: 75px;
                right: 12px;
                left: 12px;
            }
        }
    </style>
</head>

<body>

    <!-- =========================
         TOP BAR
    ========================== -->

    <div class="top-bar">
        <div class="container top-bar-inner">
            <span>
                <i class="fa-solid fa-truck-fast"></i>
                Free shipping on orders over $50
            </span>

            <div class="top-links">
                <a href="#">Help Center</a>
                <a href="#">Track Order</a>
            </div>
        </div>
    </div>

    <!-- =========================
         HEADER
    ========================== -->

    <header class="header">

        <div class="container header-inner">

            <button
                class="mobile-menu-btn"
                id="mobileMenuBtn"
                aria-label="Open menu">
                <i class="fa-solid fa-bars"></i>
            </button>

            <a href="#" class="logo">
                Nexus<span>Shop</span>
            </a>

            <nav class="desktop-nav">

                <a href="#home" class="active">
                    Home
                </a>

                <a href="#categories">
                    Categories
                </a>

                <a href="#products">
                    Shop
                </a>

                <a href="#deals">
                    Deals
                </a>

                <a href="#reviews">
                    Reviews
                </a>

            </nav>

            <div class="header-search">

                <div class="search-box">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <input
                        type="search"
                        id="searchInput"
                        placeholder="Search products..."
                        autocomplete="off">

                </div>

            </div>

            <div class="header-actions">

                <button
                    class="header-btn account-btn"
                    title="Account">

                    <i class="fa-regular fa-user"></i>

                </button>

                <button
                    class="header-btn wishlist-btn"
                    title="Wishlist">

                    <i class="fa-regular fa-heart"></i>

                </button>

                <button
                    class="header-btn"
                    id="cartButton"
                    title="Shopping cart">

                    <i class="fa-solid fa-bag-shopping"></i>

                    <span
                        class="cart-count"
                        id="cartCount">
                        0
                    </span>

                </button>

            </div>

        </div>

    </header>


    <main>

        <!-- =========================
             HERO
        ========================== -->

        <section class="hero" id="home">

            <div class="container">

                <div class="hero-grid">

                    <div class="hero-content">

                        <span class="eyebrow">
                            <i class="fa-solid fa-sparkles"></i>
                            New Collection 2026
                        </span>

                        <h1>
                            Everything you need,
                            <span>all in one place.</span>
                        </h1>

                        <p class="hero-description">
                            Discover premium technology, fashion and accessories
                            carefully selected for modern lifestyles.
                        </p>

                        <div class="hero-buttons">

                            <button
                                class="btn btn-primary"
                                id="shopNow">

                                Shop Collection

                                <i class="fa-solid fa-arrow-right"></i>

                            </button>

                            <button
                                class="btn btn-secondary"
                                id="heroDeals">

                                View Today's Deals

                            </button>

                        </div>

                    </div>

                    <div class="hero-image"></div>

                </div>

            </div>

        </section>


        <!-- =========================
             BENEFITS
        ========================== -->

        <section class="benefits">

            <div class="container">

                <div class="benefits-grid">

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
                            <span>100% protected checkout</span>
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

            </div>

        </section>


        <!-- =========================
             CATEGORIES
        ========================== -->

        <section
            class="section"
            id="categories">

            <div class="container">

                <div class="section-header">

                    <div class="section-title">

                        <h2>Shop by Category</h2>

                        <p>
                            Find exactly what you're looking for.
                        </p>

                    </div>

                    <a
                        href="#products"
                        class="view-all">
                        View all →
                    </a>

                </div>

                <div
                    class="categories"
                    id="categoriesGrid">
                </div>

            </div>

        </section>


        <!-- =========================
             PRODUCTS
        ========================== -->

        <section
            class="section"
            id="products">

            <div class="container">

                <div class="section-header">

                    <div class="section-title">

                        <h2>Popular Products</h2>

                        <p>
                            Trending products customers love.
                        </p>

                    </div>

                    <div class="product-controls">

                        <select
                            id="sortSelect"
                            class="sort-select">

                            <option value="featured">
                                Featured
                            </option>

                            <option value="low">
                                Price: Low to High
                            </option>

                            <option value="high">
                                Price: High to Low
                            </option>

                            <option value="rating">
                                Highest Rated
                            </option>

                        </select>

                    </div>

                </div>

                <div
                    class="products-grid"
                    id="productsGrid">
                </div>

            </div>

        </section>


        <!-- =========================
             FLASH SALE
        ========================== -->

        <section
            class="section"
            id="deals">

            <div class="container">

                <div class="flash-sale">

                    <div class="sale-image"></div>

                    <div class="sale-content">

                        <span class="sale-label">
                            Limited Time Offer
                        </span>

                        <h2>
                            MacBook Air M2
                        </h2>

                        <p>
                            Powerful performance, incredible battery life
                            and a stunning lightweight design.
                        </p>

                        <div class="countdown">

                            <div class="count-box">
                                <strong id="days">00</strong>
                                <span>Days</span>
                            </div>

                            <div class="count-box">
                                <strong id="hours">00</strong>
                                <span>Hours</span>
                            </div>

                            <div class="count-box">
                                <strong id="minutes">00</strong>
                                <span>Minutes</span>
                            </div>

                            <div class="count-box">
                                <strong id="seconds">00</strong>
                                <span>Seconds</span>
                            </div>

                        </div>

                        <div class="sale-price">

                            <strong>
                                $999
                            </strong>

                            <del>
                                $1,199
                            </del>

                        </div>

                        <button
                            class="btn btn-primary"
                            id="dealButton">

                            Add Deal to Cart

                            <i class="fa-solid fa-cart-shopping"></i>

                        </button>

                    </div>

                </div>

            </div>

        </section>


        <!-- =========================
             REVIEWS
        ========================== -->

        <section
            class="section"
            id="reviews">

            <div class="container">

                <div class="section-header">

                    <div class="section-title">

                        <h2>What Customers Say</h2>

                        <p>
                            Trusted by thousands of happy shoppers.
                        </p>

                    </div>

                </div>

                <div class="testimonials">

                    <article class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "The shopping experience was incredibly smooth.
                            My order arrived earlier than expected and the
                            product quality was excellent."
                        </p>

                        <div class="customer">

                            <img
                                class="customer-avatar"
                                src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                                alt="Customer">

                            <div>

                                <strong>
                                    Ava Martin
                                </strong>

                                <span>
                                    Verified Customer
                                </span>

                            </div>

                        </div>

                    </article>


                    <article class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "Great products, excellent prices and very easy
                            checkout. I'll definitely be shopping here again."
                        </p>

                        <div class="customer">

                            <img
                                class="customer-avatar"
                                src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                                alt="Customer">

                            <div>

                                <strong>
                                    Michael Lee
                                </strong>

                                <span>
                                    Verified Customer
                                </span>

                            </div>

                        </div>

                    </article>


                    <article class="testimonial">

                        <div class="testimonial-stars">
                            ★★★★★
                        </div>

                        <p>
                            "Customer support was fantastic and my headphones
                            sound amazing. Highly recommended!"
                        </p>

                        <div class="customer">

                            <img
                                class="customer-avatar"
                                src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                                alt="Customer">

                            <div>

                                <strong>
                                    Sophia Wilson
                                </strong>

                                <span>
                                    Verified Customer
                                </span>

                            </div>

                        </div>

                    </article>

                </div>

            </div>

        </section>


        <!-- =========================
             NEWSLETTER
        ========================== -->

        <section class="section">

            <div class="container">

                <div class="newsletter">

                    <h2>
                        Get 10% off your first order
                    </h2>

                    <p>
                        Subscribe to receive exclusive offers and new arrivals.
                    </p>

                    <form
                        class="newsletter-form"
                        id="newsletterForm">

                        <input
                            type="email"
                            id="emailInput"
                            placeholder="Enter your email address"
                            required>

                        <button
                            class="btn btn-primary"
                            type="submit">

                            Subscribe

                        </button>

                    </form>

                    <div
                        class="newsletter-message"
                        id="newsletterMessage">
                    </div>

                </div>

            </div>

        </section>

    </main>


    <!-- =========================
         FOOTER
    ========================== -->

    <footer>

        <div class="container">

            <div class="footer-grid">

                <div>

                    <div class="footer-brand">
                        Nexus<span>Shop</span>
                    </div>

                    <p class="footer-description">
                        Your destination for premium technology,
                        fashion and lifestyle products.
                    </p>

                    <div class="socials">

                        <a href="#" class="social">
                            <i class="fa-brands fa-facebook-f"></i>
                        </a>

                        <a href="#" class="social">
                            <i class="fa-brands fa-instagram"></i>
                        </a>

                        <a href="#" class="social">
                            <i class="fa-brands fa-x-twitter"></i>
                        </a>

                        <a href="#" class="social">
                            <i class="fa-brands fa-youtube"></i>
                        </a>

                    </div>

                </div>


                <div>

                    <h4>Shop</h4>

                    <ul class="footer-links">

                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Deals</a></li>
                        <li><a href="#">Gift Cards</a></li>

                    </ul>

                </div>


                <div>

                    <h4>Support</h4>

                    <ul class="footer-links">

                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">FAQ</a></li>

                    </ul>

                </div>


                <div>

                    <h4>Company</h4>

                    <ul class="footer-links">

                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>

                    </ul>

                </div>

            </div>

            <div class="copyright">

                © <span id="year"></span>
                NexusShop. All rights reserved.

            </div>

        </div>

    </footer>


    <!-- =========================
         CART OVERLAY
    ========================== -->

    <div
        class="overlay"
        id="overlay">
    </div>


    <!-- =========================
         CART DRAWER
    ========================== -->

    <aside
        class="cart-drawer"
        id="cartDrawer">

        <div class="cart-header">

            <h2>
                Your Cart
            </h2>

            <button
                class="close-cart"
                id="closeCart"
                aria-label="Close cart">

                <i class="fa-solid fa-xmark"></i>

            </button>

        </div>

        <div
            class="cart-items"
            id="cartItems">
        </div>

        <div class="cart-footer">

            <div class="subtotal">

                <span>
                    Subtotal
                </span>

                <strong id="subtotal">
                    $0
                </strong>

            </div>

            <button
                class="btn btn-primary checkout-btn"
                id="checkoutButton">

                Proceed to Checkout

                <i class="fa-solid fa-arrow-right"></i>

            </button>

        </div>

    </aside>


    <!-- =========================
         MOBILE NAVIGATION
    ========================== -->

    <nav class="mobile-bottom-nav">

        <button onclick="scrollToSection('home')">

            <i class="fa-solid fa-house"></i>
            Home

        </button>

        <button onclick="scrollToSection('categories')">

            <i class="fa-solid fa-grid-2"></i>
            Categories

        </button>

        <button onclick="scrollToSection('products')">

            <i class="fa-solid fa-bag-shopping"></i>
            Shop

        </button>

        <button onclick="openCart()">

            <i class="fa-solid fa-cart-shopping"></i>
            Cart

        </button>

    </nav>


    <!-- =========================
         TOAST
    ========================== -->

    <div
        class="toast-container"
        id="toastContainer">
    </div>


    <script>

        /* =====================================
           PRODUCT DATA
        ===================================== */

        const PRODUCTS = [

            {
                id: 1,
                title: "iPhone 14 Pro Max",
                category: "Smartphones",
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: "NEW",
                image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 2,
                title: 'MacBook Pro 14"',
                category: "Laptops",
                price: 1999,
                rating: 4,
                reviews: 86,
                badge: "",
                image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 3,
                title: "Apple Watch Series 8",
                category: "Accessories",
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: "-25%",
                image: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 4,
                title: "Nike Air Max 270",
                category: "Footwear",
                price: 150,
                rating: 4,
                reviews: 53,
                badge: "",
                image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 5,
                title: "Sony A7 IV Camera",
                category: "Gadgets",
                price: 2499,
                rating: 5,
                reviews: 42,
                badge: "POPULAR",
                image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 6,
                title: "Premium Fragrance",
                category: "Accessories",
                price: 120,
                rating: 5,
                reviews: 189,
                badge: "",
                image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 7,
                title: "Travel Backpack",
                category: "Accessories",
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                badge: "SALE",
                image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
            },

            {
                id: 8,
                title: "Sony WH-1000XM5",
                category: "Gadgets",
                price: 399,
                rating: 5,
                reviews: 156,
                badge: "BEST SELLER",
                image: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85"
            }

        ];


        /* =====================================
           CATEGORIES
        ===================================== */

        const CATEGORIES = [

            {
                name: "Smartphones",
                icon: "fa-mobile-screen-button"
            },

            {
                name: "Laptops",
                icon: "fa-laptop"
            },

            {
                name: "Clothing",
                icon: "fa-shirt"
            },

            {
                name: "Gadgets",
                icon: "fa-headphones"
            },

            {
                name: "Footwear",
                icon: "fa-shoe-prints"
            },

            {
                name: "Accessories",
                icon: "fa-watch"
            }

        ];


        /* =====================================
           STATE
        ===================================== */

        let cart = [];

        let activeCategory = "All";


        /* =====================================
           DOM
        ===================================== */

        const productsGrid =
            document.getElementById("productsGrid");

        const categoriesGrid =
            document.getElementById("categoriesGrid");

        const searchInput =
            document.getElementById("searchInput");

        const sortSelect =
            document.getElementById("sortSelect");

        const cartCount =
            document.getElementById("cartCount");

        const cartDrawer =
            document.getElementById("cartDrawer");

        const cartItems =
            document.getElementById("cartItems");

        const overlay =
            document.getElementById("overlay");

        const subtotal =
            document.getElementById("subtotal");


        /* =====================================
           RENDER CATEGORIES
        ===================================== */

        function renderCategories() {

            categoriesGrid.innerHTML = "";

            const all = document.createElement("div");

            all.className =
                "category " +
                (activeCategory === "All" ? "active" : "");

            all.innerHTML = `

                <div class="category-icon">
                    <i class="fa-solid fa-border-all"></i>
                </div>

                <h3>All Products</h3>

                <span>
                    ${PRODUCTS.length} products
                </span>

            `;

            all.onclick = () => {

                activeCategory = "All";

                renderCategories();
                renderProducts();

            };

            categoriesGrid.appendChild(all);


            CATEGORIES.forEach(category => {

                const count =
                    PRODUCTS.filter(
                        product =>
                            product.category === category.name
                    ).length;

                const element =
                    document.createElement("div");

                element.className =
                    "category " +
                    (
                        activeCategory === category.name
                            ? "active"
                            : ""
                    );

                element.innerHTML = `

                    <div class="category-icon">

                        <i class="fa-solid ${category.icon}"></i>

                    </div>

                    <h3>
                        ${category.name}
                    </h3>

                    <span>
                        ${count} products
                    </span>

                `;

                element.onclick = () => {

                    activeCategory =
                        category.name;

                    renderCategories();
                    renderProducts();

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                };

                categoriesGrid.appendChild(element);

            });

        }


        /* =====================================
           RENDER PRODUCTS
        ===================================== */

        function renderProducts() {

            let list = [...PRODUCTS];

            const search =
                searchInput.value
                    .trim()
                    .toLowerCase();


            if (activeCategory !== "All") {

                list = list.filter(
                    product =>
                        product.category === activeCategory
                );

            }


            if (search) {

                list = list.filter(product =>

                    product.title
                        .toLowerCase()
                        .includes(search)

                    ||

                    product.category
                        .toLowerCase()
                        .includes(search)

                );

            }


            switch (sortSelect.value) {

                case "low":

                    list.sort(
                        (a, b) =>
                            a.price - b.price
                    );

                    break;

                case "high":

                    list.sort(
                        (a, b) =>
                            b.price - a.price
                    );

                    break;

                case "rating":

                    list.sort(
                        (a, b) =>
                            b.rating - a.rating
                    );

                    break;

            }


            productsGrid.innerHTML = "";


            if (!list.length) {

                productsGrid.innerHTML = `

                    <div class="empty-products">

                        <i class="fa-solid fa-box-open"></i>

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

                const card =
                    document.createElement("article");

                card.className = "product";

                const isWishlisted =
                    localStorage.getItem(
                        "wish_" + product.id
                    ) === "true";


                card.innerHTML = `

                    <div class="product-image">

                        ${
                            product.badge
                                ?
                                `
                                <span class="badge ${
                                    product.badge === "SALE"
                                    ||
                                    product.badge.startsWith("-")
                                    ? "sale"
                                    : ""
                                }">
                                    ${product.badge}
                                </span>
                                `
                                :
                                ""
                        }

                        <button
                            class="wishlist ${
                                isWishlisted
                                ? "active"
                                : ""
                            }"
                            data-wishlist="${product.id}">

                            <i class="${
                                isWishlisted
                                ? "fa-solid"
                                : "fa-regular"
                            } fa-heart"></i>

                        </button>

                        <img
                            src="${product.image}"
                            alt="${product.title}"
                            loading="lazy">

                    </div>


                    <div class="product-body">

                        <div class="product-category">
                            ${product.category}
                        </div>

                        <div class="product-title">
                            ${product.title}
                        </div>

                        <div class="rating">

                            <span class="stars">
                                ${"★".repeat(product.rating)}
                            </span>

                            <span class="reviews">
                                (${product.reviews})
                            </span>

                        </div>

                        <div class="price-row">

                            <div>

                                <span class="price">
                                    $${product.price.toLocaleString()}
                                </span>

                                ${
                                    product.oldPrice
                                        ?
                                        `
                                        <span class="old-price">
                                            $${product.oldPrice.toLocaleString()}
                                        </span>
                                        `
                                        :
                                        ""
                                }

                            </div>

                            <button
                                class="add-cart"
                                data-product="${product.id}"
                                aria-label="Add to cart">

                                <i class="fa-solid fa-plus"></i>

                            </button>

                        </div>

                    </div>

                `;


                productsGrid.appendChild(card);

            });


            attachProductEvents();

        }


        /* =====================================
           PRODUCT EVENTS
        ===================================== */

        function attachProductEvents() {

            document
                .querySelectorAll(".add-cart")
                .forEach(button => {

                    button.addEventListener(
                        "click",
                        () => {

                            const id =
                                Number(
                                    button.dataset.product
                                );

                            addToCart(id);

                        }
                    );

                });


            document
                .querySelectorAll("[data-wishlist]")
                .forEach(button => {

                    button.addEventListener(
                        "click",
                        () => {

                            const id =
                                button.dataset.wishlist;

                            const active =
                                button.classList.toggle(
                                    "active"
                                );

                            const icon =
                                button.querySelector("i");

                            icon.className =
                                active
                                    ?
                                    "fa-solid fa-heart"
                                    :
                                    "fa-regular fa-heart";


                            localStorage.setItem(
                                "wish_" + id,
                                active
                            );


                            showToast(
                                active
                                    ? "Added to wishlist"
                                    : "Removed from wishlist"
                            );

                        }
                    );

                });

        }


        /* =====================================
           CART
        ===================================== */

        function addToCart(id) {

            const product =
                PRODUCTS.find(
                    item => item.id === id
                );

            if (!product) return;


            const existing =
                cart.find(
                    item => item.id === id
                );


            if (existing) {

                existing.quantity++;

            } else {

                cart.push({

                    ...product,

                    quantity: 1

                });

            }


            updateCart();

            openCart();

            showToast(
                `${product.title} added to cart`,
                true
            );

        }


        function updateCart() {

            const count =
                cart.reduce(
                    (total, item) =>
                        total + item.quantity,
                    0
                );


            cartCount.textContent = count;


            renderCart();

        }


        function renderCart() {

            if (!cart.length) {

                cartItems.innerHTML = `

                    <div class="empty-cart">

                        <i class="fa-solid fa-bag-shopping"></i>

                        <h3>
                            Your cart is empty
                        </h3>

                        <p>
                            Add something you love!
                        </p>

                    </div>

                `;

                subtotal.textContent = "$0";

                return;

            }


            cartItems.innerHTML = "";


            cart.forEach(item => {

                const element =
                    document.createElement("div");

                element.className = "cart-item";

                element.innerHTML = `

                    <img
                        src="${item.image}"
                        alt="${item.title}">

                    <div>

                        <h4>
                            ${item.title}
                        </h4>

                        <div class="cart-item-price">
                            $${item.price.toLocaleString()}
                        </div>

                        <div class="quantity">

                            <button
                                data-action="minus"
                                data-id="${item.id}">
                                −
                            </button>

                            <span>
                                ${item.quantity}
                            </span>

                            <button
                                data-action="plus"
                                data-id="${item.id}">
                                +
                            </button>

                            <button
                                class="remove-item"
                                data-action="remove"
                                data-id="${item.id}">
                                Remove
                            </button>

                        </div>

                    </div>

                `;

                cartItems.appendChild(element);

            });


            const total =
                cart.reduce(
                    (sum, item) =>
                        sum +
                        item.price *
                        item.quantity,
                    0
                );


            subtotal.textContent =
                "$" + total.toLocaleString();


            attachCartEvents();

        }


        function attachCartEvents() {

            cartItems
                .querySelectorAll("button[data-action]")
                .forEach(button => {

                    button.addEventListener(
                        "click",
                        () => {

                            const id =
                                Number(
                                    button.dataset.id
                                );

                            const action =
                                button.dataset.action;

                            const item =
                                cart.find(
                                    product =>
                                        product.id === id
                                );

                            if (!item) return;


                            if (action === "plus") {

                                item.quantity++;

                            }


                            if (action === "minus") {

                                item.quantity--;

                                if (
                                    item.quantity <= 0
                                ) {

                                    cart =
                                        cart.filter(
                                            product =>
                                                product.id !== id
                                        );

                                }

                            }


                            if (action === "remove") {

                                cart =
                                    cart.filter(
                                        product =>
                                            product.id !== id
                                    );

                            }


                            updateCart();

                        }
                    );

                });

        }


        /* =====================================
           CART OPEN / CLOSE
        ===================================== */

        function openCart() {

            cartDrawer.classList.add("open");

            overlay.classList.add("show");

            document.body.classList.add(
                "cart-open"
            );

        }


        function closeCart() {

            cartDrawer.classList.remove("open");

            overlay.classList.remove("show");

            document.body.classList.remove(
                "cart-open"
            );

        }


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


        /* =====================================
           SEARCH
        ===================================== */

        searchInput.addEventListener(
            "input",
            renderProducts
        );


        /* =====================================
           SORT
        ===================================== */

        sortSelect.addEventListener(
            "change",
            renderProducts
        );


        /* =====================================
           HERO BUTTONS
        ===================================== */

        document
            .getElementById("shopNow")
            .addEventListener(
                "click",
                () => {

                    document
                        .getElementById("products")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );


        document
            .getElementById("heroDeals")
            .addEventListener(
                "click",
                () => {

                    document
                        .getElementById("deals")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );


        /* =====================================
           DEAL
        ===================================== */

        document
            .getElementById("dealButton")
            .addEventListener(
                "click",
                () => {

                    const dealProduct = {

                        id: 999,

                        title: "MacBook Air M2",

                        category: "Laptops",

                        price: 999,

                        oldPrice: 1199,

                        rating: 5,

                        reviews: 320,

                        image:
                            "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"

                    };


                    const existing =
                        cart.find(
                            item =>
                                item.id === 999
                        );


                    if (existing) {

                        existing.quantity++;

                    } else {

                        cart.push({

                            ...dealProduct,

                            quantity: 1

                        });

                    }


                    updateCart();

                    openCart();

                    showToast(
                        "MacBook Air M2 added to cart",
                        true
                    );

                }
            );


        /* =====================================
           COUNTDOWN
        ===================================== */

        const saleEnd =
            new Date(
                Date.now() +
                2 * 24 * 60 * 60 * 1000
            );


        function updateCountdown() {

            const difference =
                saleEnd.getTime() -
                Date.now();


            if (difference <= 0) {

                return;

            }


            const days =
                Math.floor(
                    difference /
                    (1000 * 60 * 60 * 24)
                );


            const hours =
                Math.floor(
                    difference %
                    (1000 * 60 * 60 * 24) /
                    (1000 * 60 * 60)
                );


            const minutes =
                Math.floor(
                    difference %
                    (1000 * 60 * 60) /
                    (1000 * 60)
                );


            const seconds =
                Math.floor(
                    difference %
                    (1000 * 60) /
                    1000
                );


            document.getElementById(
                "days"
            ).textContent =
                String(days).padStart(2, "0");


            document.getElementById(
                "hours"
            ).textContent =
                String(hours).padStart(2, "0");


            document.getElementById(
                "minutes"
            ).textContent =
                String(minutes).padStart(2, "0");


            document.getElementById(
                "seconds"
            ).textContent =
                String(seconds).padStart(2, "0");

        }


        updateCountdown();

        setInterval(
            updateCountdown,
            1000
        );


        /* =====================================
           NEWSLETTER
        ===================================== */

        document
            .getElementById("newsletterForm")
            .addEventListener(
                "submit",
                event => {

                    event.preventDefault();


                    const email =
                        document
                            .getElementById("emailInput")
                            .value
                            .trim();


                    const message =
                        document.getElementById(
                            "newsletterMessage"
                        );


                    if (!email.includes("@")) {

                        message.style.display =
                            "block";

                        message.style.color =
                            "#dc2626";

                        message.textContent =
                            "Please enter a valid email.";

                        return;

                    }


                    message.style.display =
                        "block";

                    message.style.color =
                        "#16a34a";

                    message.textContent =
                        "You're subscribed! Welcome to NexusShop.";


                    document
                        .getElementById("emailInput")
                        .value = "";


                    showToast(
                        "Successfully subscribed!",
                        true
                    );

                }
            );


        /* =====================================
           CHECKOUT
        ===================================== */

        document
            .getElementById("checkoutButton")
            .addEventListener(
                "click",
                () => {

                    if (!cart.length) {

                        showToast(
                            "Your cart is empty"
                        );

                        return;

                    }


                    showToast(
                        "Checkout coming soon!"
                    );

                }
            );


        /* =====================================
           TOAST
        ===================================== */

        function showToast(
            message,
            success = false
        ) {

            const container =
                document.getElementById(
                    "toastContainer"
                );


            const toast =
                document.createElement("div");

            toast.className =
                "toast" +
                (
                    success
                        ? " success"
                        : ""
                );


            toast.innerHTML = `

                <i class="fa-solid ${
                    success
                        ? "fa-circle-check"
                        : "fa-circle-info"
                }"></i>

                ${message}

            `;


            container.appendChild(toast);


            setTimeout(
                () => {

                    toast.remove();

                },
                3000
            );

        }


        /* =====================================
           MOBILE MENU
        ===================================== */

        document
            .getElementById("mobileMenuBtn")
            .addEventListener(
                "click",
                () => {

                    showToast(
                        "Use the navigation below to browse the store."
                    );

                }
            );


        /* =====================================
           MOBILE SCROLL
        ===================================== */

        function scrollToSection(id) {

            const element =
                document.getElementById(id);

            if (!element) return;

            element.scrollIntoView({
                behavior: "smooth"
            });

        }


        /* =====================================
           YEAR
        ===================================== */

        document.getElementById(
            "year"
        ).textContent =
            new Date().getFullYear();


        /* =====================================
           INITIALIZE
        ===================================== */

        renderCategories();

        renderProducts();

        updateCart();

    </script>

</body>

</html>
