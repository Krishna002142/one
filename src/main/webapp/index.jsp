<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NEXUS — Modern Technology Store</title>

    <link
        href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap"
        rel="stylesheet"
    >

    <style>

        /* =========================================================
           GLOBAL
        ========================================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #f7f7f5;
            --white: #ffffff;
            --black: #151515;
            --gray: #707070;
            --light-gray: #ededeb;
            --green: #4d7c68;
            --blue: #5873c7;
            --orange: #e88b52;
            --pink: #d97891;
            --yellow: #d5a94f;

            --radius-lg: 28px;
            --radius-md: 18px;
            --radius-sm: 12px;

            --shadow:
                0 20px 60px rgba(0, 0, 0, 0.08);

            --transition: 0.25s ease;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "DM Sans", sans-serif;
            background: var(--bg);
            color: var(--black);
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
            width: 100%;
            display: block;
        }

        a {
            text-decoration: none;
            color: inherit;
        }


        /* =========================================================
           ANNOUNCEMENT
        ========================================================= */

        .announcement {
            height: 38px;

            background: #171717;
            color: white;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 12px;
            font-weight: 500;

            letter-spacing: .2px;
        }

        .announcement span {
            opacity: .7;
            margin-left: 5px;
        }


        /* =========================================================
           HEADER
        ========================================================= */

        .header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background: rgba(247,247,245,.92);

            backdrop-filter: blur(18px);

            border-bottom: 1px solid rgba(0,0,0,.06);
        }

        .nav {
            max-width: 1400px;
            height: 78px;

            margin: auto;
            padding: 0 28px;

            display: flex;
            align-items: center;
            gap: 30px;
        }

        .logo {
            font-family: "Space Grotesk", sans-serif;

            font-size: 25px;
            font-weight: 700;

            letter-spacing: -1.5px;
        }

        .logo-dot {
            display: inline-block;

            width: 7px;
            height: 7px;

            background: var(--orange);

            border-radius: 50%;

            margin-left: 2px;
        }


        /* NAV LINKS */

        .nav-links {
            display: flex;
            gap: 25px;

            margin-left: 10px;
        }

        .nav-links a {
            color: #555;

            font-size: 13px;
            font-weight: 500;

            transition: var(--transition);
        }

        .nav-links a:hover {
            color: #000;
        }


        /* SEARCH */

        .nav-search {
            flex: 1;
            max-width: 380px;
            margin-left: auto;

            position: relative;
        }

        .nav-search input {
            width: 100%;

            border: 1px solid #dededb;

            background: white;

            padding: 12px 18px 12px 42px;

            border-radius: 30px;

            outline: none;

            font-size: 13px;
        }

        .nav-search-icon {
            position: absolute;

            left: 16px;
            top: 50%;

            transform: translateY(-50%);

            color: #888;

            font-size: 14px;
        }


        /* ACTIONS */

        .nav-actions {
            display: flex;
            gap: 8px;
        }

        .nav-action {
            width: 42px;
            height: 42px;

            border: 1px solid #dededb;

            background: white;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 17px;

            position: relative;

            transition: var(--transition);
        }

        .nav-action:hover {
            transform: translateY(-2px);

            box-shadow:
                0 8px 20px rgba(0,0,0,.08);
        }

        .count {
            position: absolute;

            top: -4px;
            right: -2px;

            min-width: 17px;
            height: 17px;

            padding: 0 4px;

            background: var(--black);
            color: white;

            border-radius: 20px;

            font-size: 9px;
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

            margin: 25px auto;

            padding: 0 28px;
        }

        .hero-card {
            min-height: 610px;

            border-radius: var(--radius-lg);

            overflow: hidden;

            position: relative;

            background:
                linear-gradient(
                    110deg,
                    #dfe8df 0%,
                    #eef0e9 45%,
                    #f4ddd0 100%
                );

            display: flex;
            align-items: center;
        }

        .hero-content {
            width: 52%;

            padding: 70px;

            position: relative;
            z-index: 2;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;

            gap: 7px;

            background: rgba(255,255,255,.65);

            padding: 8px 13px;

            border-radius: 30px;

            font-size: 11px;
            font-weight: 700;

            margin-bottom: 24px;
        }

        .hero-label-dot {
            width: 7px;
            height: 7px;

            background: var(--green);

            border-radius: 50%;
        }

        .hero h1 {
            font-family: "Space Grotesk", sans-serif;

            font-size: clamp(48px, 6vw, 82px);

            line-height: .95;

            letter-spacing: -5px;

            max-width: 650px;

            margin-bottom: 25px;
        }

        .hero h1 span {
            color: var(--green);
        }

        .hero-description {
            max-width: 520px;

            color: #555;

            font-size: 16px;

            line-height: 1.7;

            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
        }

        .btn {
            border: none;

            border-radius: 30px;

            padding: 14px 22px;

            font-size: 13px;
            font-weight: 700;

            transition: var(--transition);
        }

        .btn-dark {
            background: var(--black);
            color: white;
        }

        .btn-dark:hover {
            transform: translateY(-3px);

            box-shadow:
                0 12px 25px rgba(0,0,0,.18);
        }

        .btn-light {
            background: rgba(255,255,255,.7);

            color: var(--black);

            border: 1px solid rgba(0,0,0,.08);
        }

        .btn-light:hover {
            background: white;
        }


        /* HERO PRODUCT */

        .hero-product {
            position: absolute;

            right: 3%;
            bottom: -5%;

            width: 53%;
            height: 100%;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .hero-product-circle {
            width: 500px;
            height: 500px;

            border-radius: 50%;

            background:
                rgba(255,255,255,.45);

            position: absolute;
        }

        .hero-product img {
            width: 75%;
            height: 75%;

            object-fit: contain;

            position: relative;

            z-index: 2;

            filter:
                drop-shadow(
                    0 35px 35px rgba(0,0,0,.18)
                );

            transform: rotate(-8deg);

            transition: .5s ease;
        }

        .hero-card:hover
        .hero-product img {
            transform:
                rotate(-3deg)
                scale(1.04);
        }


        /* =========================================================
           TRUST BAR
        ========================================================= */

        .trust {
            max-width: 1400px;

            margin: 0 auto 50px;

            padding: 0 28px;

            display: grid;

            grid-template-columns:
                repeat(4,1fr);

            gap: 12px;
        }

        .trust-item {
            background: white;

            border: 1px solid #e8e8e5;

            border-radius: 18px;

            padding: 20px;

            display: flex;

            align-items: center;

            gap: 14px;
        }

        .trust-icon {
            width: 42px;
            height: 42px;

            border-radius: 12px;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 17px;
        }

        .trust-item:nth-child(1)
        .trust-icon {
            background: #e4eee6;
        }

        .trust-item:nth-child(2)
        .trust-icon {
            background: #e8ebf7;
        }

        .trust-item:nth-child(3)
        .trust-icon {
            background: #f7e7df;
        }

        .trust-item:nth-child(4)
        .trust-icon {
            background: #f3e9ce;
        }

        .trust-text strong {
            display: block;

            font-size: 13px;
        }

        .trust-text span {
            display: block;

            color: #888;

            font-size: 11px;

            margin-top: 2px;
        }


        /* =========================================================
           SHOP
        ========================================================= */

        .shop {
            max-width: 1400px;

            margin: auto;

            padding: 0 28px 80px;
        }

        .shop-header {
            display: flex;

            justify-content: space-between;

            align-items: flex-end;

            margin-bottom: 25px;
        }

        .shop-title small {
            color: var(--orange);

            text-transform: uppercase;

            font-size: 10px;

            font-weight: 800;

            letter-spacing: 1.5px;
        }

        .shop-title h2 {
            font-family: "Space Grotesk", sans-serif;

            font-size: 38px;

            letter-spacing: -2px;

            margin-top: 5px;
        }

        .shop-title p {
            color: #777;

            font-size: 13px;

            margin-top: 5px;
        }


        /* =========================================================
           CATEGORY
        ========================================================= */

        .category-row {
            display: flex;

            gap: 9px;

            overflow-x: auto;

            padding-bottom: 8px;

            margin-bottom: 25px;
        }

        .category-row::-webkit-scrollbar {
            display: none;
        }

        .category {
            border: 1px solid #dededb;

            background: white;

            border-radius: 30px;

            padding: 10px 18px;

            white-space: nowrap;

            font-size: 12px;

            font-weight: 600;

            color: #666;

            transition: var(--transition);
        }

        .category:hover {
            border-color: #aaa;
        }

        .category.active {
            background: var(--black);

            color: white;

            border-color: var(--black);
        }


        /* =========================================================
           SHOP TOOLBAR
        ========================================================= */

        .shop-toolbar {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 20px;
        }

        .results {
            color: #888;

            font-size: 12px;
        }

        .sort {
            border: 1px solid #ddd;

            background: white;

            padding: 10px 14px;

            border-radius: 10px;

            outline: none;

            font-size: 12px;
        }


        /* =========================================================
           PRODUCT GRID
        ========================================================= */

        .products {
            display: grid;

            grid-template-columns:
                repeat(3,1fr);

            gap: 18px;
        }


        /* PRODUCT CARD */

        .product {
            background: white;

            border-radius: 22px;

            overflow: hidden;

            border: 1px solid #e8e8e5;

            transition:
                transform .3s ease,
                box-shadow .3s ease;
        }

        .product:hover {
            transform: translateY(-6px);

            box-shadow:
                0 20px 50px rgba(0,0,0,.08);
        }


        /* IMAGE */

        .product-image {
            height: 330px;

            position: relative;

            display: flex;

            align-items: center;

            justify-content: center;

            overflow: hidden;
        }

        .product:nth-child(6n+1)
        .product-image {
            background: #e8eee8;
        }

        .product:nth-child(6n+2)
        .product-image {
            background: #e8ebf7;
        }

        .product:nth-child(6n+3)
        .product-image {
            background: #f6e9dd;
        }

        .product:nth-child(6n+4)
        .product-image {
            background: #e8e8e5;
        }

        .product:nth-child(6n+5)
        .product-image {
            background: #eee7f0;
        }

        .product:nth-child(6n)
        .product-image {
            background: #e8ecea;
        }

        .product-image img {
            width: 78%;
            height: 78%;

            object-fit: contain;

            transition: .45s ease;

            filter:
                drop-shadow(
                    0 20px 15px rgba(0,0,0,.13)
                );
        }

        .product:hover
        .product-image img {
            transform: scale(1.07);
        }


        /* BADGE */

        .badge {
            position: absolute;

            top: 15px;
            left: 15px;

            padding: 7px 10px;

            border-radius: 20px;

            background: rgba(255,255,255,.85);

            backdrop-filter: blur(10px);

            font-size: 9px;

            font-weight: 800;

            text-transform: uppercase;

            letter-spacing: .5px;
        }


        /* WISHLIST */

        .heart {
            position: absolute;

            top: 13px;
            right: 13px;

            width: 40px;
            height: 40px;

            border: none;

            border-radius: 50%;

            background: rgba(255,255,255,.9);

            backdrop-filter: blur(10px);

            font-size: 17px;

            transition: var(--transition);

            z-index: 5;
        }

        .heart:hover {
            transform: scale(1.08);
        }

        .heart.active {
            color: #df526f;
        }


        /* QUICK VIEW */

        .quick-view {
            position: absolute;

            bottom: 14px;

            left: 14px;
            right: 14px;

            border: none;

            background: rgba(255,255,255,.92);

            backdrop-filter: blur(12px);

            padding: 12px;

            border-radius: 12px;

            font-size: 11px;

            font-weight: 700;

            opacity: 0;

            transform: translateY(10px);

            transition: var(--transition);
        }

        .product:hover
        .quick-view {
            opacity: 1;

            transform: translateY(0);
        }


        /* PRODUCT INFO */

        .product-info {
            padding: 20px;
        }

        .product-category {
            font-size: 10px;

            text-transform: uppercase;

            color: #999;

            letter-spacing: 1px;

            font-weight: 700;

            margin-bottom: 6px;
        }

        .product-name {
            font-family: "Space Grotesk", sans-serif;

            font-size: 18px;

            letter-spacing: -.5px;

            margin-bottom: 6px;
        }

        .product-description {
            color: #888;

            font-size: 12px;

            line-height: 1.6;

            min-height: 38px;
        }

        .product-footer {
            margin-top: 18px;

            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 10px;
        }

        .price {
            font-size: 18px;

            font-weight: 800;
        }

        .price-old {
            display: block;

            color: #aaa;

            text-decoration: line-through;

            font-size: 10px;

            font-weight: 500;
        }

        .add {
            border: none;

            background: var(--black);

            color: white;

            border-radius: 11px;

            padding: 11px 16px;

            font-size: 11px;

            font-weight: 700;

            transition: var(--transition);
        }

        .add:hover {
            background: #333;

            transform: translateY(-2px);
        }


        /* =========================================================
           EMPTY
        ========================================================= */

        .empty {
            display: none;

            background: white;

            border: 1px solid #e5e5e2;

            border-radius: 22px;

            padding: 80px 20px;

            text-align: center;
        }

        .empty.show {
            display: block;
        }

        .empty-icon {
            font-size: 42px;

            margin-bottom: 15px;
        }

        .empty h3 {
            font-family: "Space Grotesk", sans-serif;

            font-size: 24px;

            margin-bottom: 7px;
        }

        .empty p {
            color: #888;

            font-size: 13px;

            margin-bottom: 20px;
        }


        /* =========================================================
           CART
        ========================================================= */

        .overlay {
            position: fixed;

            inset: 0;

            background: rgba(0,0,0,.4);

            z-index: 1998;

            opacity: 0;

            visibility: hidden;

            transition: .25s ease;
        }

        .overlay.show {
            opacity: 1;

            visibility: visible;
        }

        .cart {
            position: fixed;

            top: 0;
            right: -470px;

            width: min(470px,100%);

            height: 100vh;

            background: white;

            z-index: 2000;

            display: flex;

            flex-direction: column;

            transition: .35s ease;

            box-shadow:
                -20px 0 60px rgba(0,0,0,.12);
        }

        .cart.open {
            right: 0;
        }

        .cart-header {
            padding: 22px;

            border-bottom: 1px solid #eee;

            display: flex;

            justify-content: space-between;

            align-items: center;
        }

        .cart-header h3 {
            font-family: "Space Grotesk", sans-serif;

            font-size: 20px;
        }

        .cart-close {
            width: 38px;
            height: 38px;

            border: 1px solid #ddd;

            background: white;

            border-radius: 50%;

            font-size: 20px;
        }

        .cart-items {
            flex: 1;

            overflow-y: auto;

            padding: 20px;
        }

        .cart-item {
            display: grid;

            grid-template-columns:
                75px 1fr auto;

            gap: 12px;

            padding: 14px 0;

            border-bottom: 1px solid #eee;
        }

        .cart-item-image {
            width: 75px;
            height: 75px;

            border-radius: 13px;

            background: #f3f3f1;

            display: flex;

            align-items: center;

            justify-content: center;
        }

        .cart-item-image img {
            width: 80%;
            height: 80%;

            object-fit: contain;
        }

        .cart-item-name {
            font-size: 13px;

            font-weight: 700;
        }

        .cart-item-price {
            color: #888;

            font-size: 12px;

            margin-top: 3px;
        }

        .quantity {
            display: flex;

            align-items: center;

            gap: 8px;

            margin-top: 9px;
        }

        .quantity button {
            width: 26px;
            height: 26px;

            border: 1px solid #ddd;

            background: white;

            border-radius: 7px;
        }

        .quantity span {
            min-width: 18px;

            text-align: center;

            font-size: 12px;

            font-weight: 700;
        }

        .remove {
            border: none;

            background: transparent;

            color: #d34e4e;

            font-size: 11px;
        }

        .cart-footer {
            padding: 20px;

            border-top: 1px solid #eee;
        }

        .cart-line {
            display: flex;

            justify-content: space-between;

            color: #777;

            font-size: 13px;

            margin-bottom: 9px;
        }

        .cart-total {
            color: #111;

            font-size: 19px;

            font-weight: 800;

            padding-top: 8px;

            border-top: 1px solid #eee;
        }

        .checkout {
            width: 100%;

            margin-top: 15px;

            border: none;

            background: var(--black);

            color: white;

            padding: 15px;

            border-radius: 12px;

            font-size: 13px;

            font-weight: 700;
        }


        /* =========================================================
           MODAL
        ========================================================= */

        .modal {
            position: fixed;

            inset: 0;

            z-index: 3000;

            background: rgba(0,0,0,.5);

            display: flex;

            align-items: center;

            justify-content: center;

            padding: 20px;

            opacity: 0;

            visibility: hidden;

            transition: .25s ease;
        }

        .modal.show {
            opacity: 1;

            visibility: visible;
        }

        .modal-box {
            width: min(900px,100%);

            background: white;

            border-radius: 25px;

            overflow: hidden;

            transform: translateY(20px);

            transition: .3s ease;

            position: relative;
        }

        .modal.show .modal-box {
            transform: translateY(0);
        }

        .modal-grid {
            display: grid;

            grid-template-columns: 1fr 1fr;
        }

        .modal-image {
            min-height: 480px;

            background: #edf0ea;

            display: flex;

            align-items: center;

            justify-content: center;
        }

        .modal-image img {
            width: 80%;
            height: 80%;

            object-fit: contain;

            filter:
                drop-shadow(
                    0 25px 20px rgba(0,0,0,.15)
                );
        }

        .modal-info {
            padding: 55px 45px;

            display: flex;

            flex-direction: column;

            justify-content: center;
        }

        .modal-category {
            color: #999;

            text-transform: uppercase;

            font-size: 10px;

            letter-spacing: 1px;

            font-weight: 800;
        }

        .modal-info h2 {
            font-family: "Space Grotesk", sans-serif;

            font-size: 34px;

            letter-spacing: -1.5px;

            margin: 10px 0;
        }

        .modal-info p {
            color: #777;

            font-size: 13px;

            line-height: 1.7;

            margin-bottom: 20px;
        }

        .modal-price {
            font-size: 28px;

            font-weight: 800;

            margin-bottom: 25px;
        }

        .modal-close {
            position: absolute;

            top: 15px;
            right: 15px;

            z-index: 3;

            width: 40px;
            height: 40px;

            border: none;

            background: white;

            border-radius: 50%;

            font-size: 20px;

            box-shadow:
                0 5px 20px rgba(0,0,0,.1);
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

            gap: 8px;
        }

        .toast {
            background: #171717;

            color: white;

            padding: 13px 18px;

            border-radius: 12px;

            font-size: 12px;

            box-shadow:
                0 15px 30px rgba(0,0,0,.15);

            animation:
                toastIn .3s ease;
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
            background: #171717;

            color: white;

            padding: 60px 28px 25px;
        }

        .footer {
            max-width: 1400px;

            margin: auto;

            display: grid;

            grid-template-columns:
                2fr 1fr 1fr 1fr;

            gap: 50px;
        }

        .footer-logo {
            font-family: "Space Grotesk", sans-serif;

            font-size: 25px;

            font-weight: 700;

            margin-bottom: 12px;
        }

        .footer-brand p {
            color: #999;

            font-size: 12px;

            max-width: 350px;

            line-height: 1.7;
        }

        .footer-column h4 {
            font-size: 12px;

            margin-bottom: 15px;
        }

        .footer-column a {
            display: block;

            color: #999;

            font-size: 12px;

            margin-bottom: 9px;
        }

        .footer-column a:hover {
            color: white;
        }

        .footer-bottom {
            max-width: 1400px;

            margin: 45px auto 0;

            padding-top: 20px;

            border-top: 1px solid #333;

            color: #777;

            font-size: 11px;
        }


        /* =========================================================
           MOBILE
        ========================================================= */

        @media(max-width: 1100px) {

            .nav-links {
                display: none;
            }

            .products {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .hero-content {
                width: 60%;

                padding: 50px;
            }

            .hero-product {
                width: 48%;
            }

            .trust {
                grid-template-columns:
                    repeat(2,1fr);
            }

        }


        @media(max-width: 750px) {

            .announcement {
                font-size: 10px;
            }

            .nav {
                height: 68px;

                padding: 0 15px;

                gap: 10px;
            }

            .logo {
                font-size: 21px;
            }

            .nav-search {
                display: none;
            }

            .nav-actions {
                margin-left: auto;
            }

            .nav-action {
                width: 38px;
                height: 38px;
            }


            /* HERO */

            .hero {
                margin-top: 15px;

                padding: 0 15px;
            }

            .hero-card {
                min-height: 620px;

                align-items: flex-start;
            }

            .hero-content {
                width: 100%;

                padding: 40px 25px;
            }

            .hero h1 {
                font-size: 52px;

                letter-spacing: -3px;
            }

            .hero-description {
                font-size: 14px;
            }

            .hero-product {
                width: 100%;

                height: 280px;

                right: 0;

                bottom: 0;
            }

            .hero-product-circle {
                width: 280px;
                height: 280px;
            }

            .hero-product img {
                width: 70%;
                height: 90%;
            }


            /* TRUST */

            .trust {
                padding: 0 15px;

                grid-template-columns:
                    repeat(2,1fr);

                margin-bottom: 40px;
            }

            .trust-item {
                padding: 14px;

                gap: 9px;
            }

            .trust-icon {
                width: 35px;
                height: 35px;
            }

            .trust-text strong {
                font-size: 11px;
            }

            .trust-text span {
                font-size: 9px;
            }


            /* SHOP */

            .shop {
                padding: 0 15px 60px;
            }

            .shop-title h2 {
                font-size: 31px;
            }

            .shop-header {
                display: block;
            }

            .shop-toolbar {
                margin-top: 20px;
            }


            /* PRODUCTS */

            .products {
                grid-template-columns: 1fr;

                gap: 15px;
            }

            .product-image {
                height: 340px;
            }

            .quick-view {
                opacity: 1;

                transform: none;
            }


            /* MODAL */

            .modal {
                padding: 12px;
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
                padding: 30px 25px;
            }

            .modal-info h2 {
                font-size: 27px;
            }


            /* FOOTER */

            .footer {
                grid-template-columns:
                    1fr 1fr;

                gap: 35px;
            }

            .footer-brand {
                grid-column: 1 / -1;
            }

        }


        @media(max-width: 450px) {

            .trust {
                grid-template-columns: 1fr;
            }

            .hero h1 {
                font-size: 45px;
            }

            .hero-buttons {
                flex-direction: column;
            }

            .hero-buttons .btn {
                width: 100%;
            }

            .footer {
                grid-template-columns: 1fr;
            }

        }

    </style>
</head>


<body>


    <!-- =========================================================
         ANNOUNCEMENT
    ========================================================== -->

    <div class="announcement">

        Free delivery on orders over ₹5,000
        <span>• 30-day easy returns</span>

    </div>


    <!-- =========================================================
         HEADER
    ========================================================== -->

    <header class="header">

        <nav class="nav">

            <a href="#" class="logo">
                NEXUS<span class="logo-dot"></span>
            </a>


            <div class="nav-links">

                <a href="#shop">Shop</a>

                <a href="#shop">New Arrivals</a>

                <a href="#shop">Best Sellers</a>

                <a href="#footer">Support</a>

            </div>


            <div class="nav-search">

                <span class="nav-search-icon">
                    ⌕
                </span>

                <input
                    type="search"
                    id="search"
                    placeholder="Search products..."
                    aria-label="Search products"
                >

            </div>


            <div class="nav-actions">

                <button
                    class="nav-action"
                    onclick="showWishlist()"
                    aria-label="Wishlist"
                >
                    ♡

                    <span
                        class="count"
                        id="wishlistCount"
                    >
                        0
                    </span>

                </button>


                <button
                    class="nav-action"
                    onclick="openCart()"
                    aria-label="Shopping cart"
                >
                    🛒

                    <span
                        class="count"
                        id="cartCount"
                    >
                        0
                    </span>

                </button>

            </div>

        </nav>

    </header>


    <!-- =========================================================
         HERO
    ========================================================== -->

    <section class="hero">

        <div class="hero-card">

            <div class="hero-content">

                <div class="hero-label">

                    <span class="hero-label-dot"></span>

                    NEW SEASON COLLECTION

                </div>


                <h1>

                    Better tech.
                    <br>

                    <span>Better everyday.</span>

                </h1>


                <p class="hero-description">

                    Discover beautifully designed technology
                    for work, creativity and everything in between.
                    Carefully selected. Easy to love.

                </p>


                <div class="hero-buttons">

                    <button
                        class="btn btn-dark"
                        onclick="scrollToShop()"
                    >
                        Shop now →
                    </button>


                    <button
                        class="btn btn-light"
                        onclick="showWishlist()"
                    >
                        My wishlist
                    </button>

                </div>

            </div>


            <div class="hero-product">

                <div class="hero-product-circle"></div>

                <img
                    src="https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?w=1000"
                    alt="Featured smartphone"
                >

            </div>

        </div>

    </section>


    <!-- =========================================================
         TRUST
    ========================================================== -->

    <section class="trust">

        <div class="trust-item">

            <div class="trust-icon">
                🚚
            </div>

            <div class="trust-text">

                <strong>Fast Delivery</strong>

                <span>
                    Reliable shipping
                </span>

            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                ✓
            </div>

            <div class="trust-text">

                <strong>Verified Products</strong>

                <span>
                    Quality checked
                </span>

            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                ↩
            </div>

            <div class="trust-text">

                <strong>Easy Returns</strong>

                <span>
                    30-day returns
                </span>

            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                ♧
            </div>

            <div class="trust-text">

                <strong>2-Year Warranty</strong>

                <span>
                    We've got you covered
                </span>

            </div>

        </div>

    </section>


    <!-- =========================================================
         SHOP
    ========================================================== -->

    <section
        class="shop"
        id="shop"
    >

        <div class="shop-header">

            <div class="shop-title">

                <small>Explore</small>

                <h2>Find your next favorite.</h2>

                <p>
                    Curated technology for modern life.
                </p>

            </div>

        </div>


        <!-- CATEGORIES -->

        <div class="category-row">

            <button
                class="category active"
                data-category="all"
            >
                All products
            </button>

            <button
                class="category"
                data-category="phone"
            >
                Smartphones
            </button>

            <button
                class="category"
                data-category="laptop"
            >
                Laptops
            </button>

            <button
                class="category"
                data-category="audio"
            >
                Audio
            </button>

            <button
                class="category"
                data-category="camera"
            >
                Cameras
            </button>

            <button
                class="category"
                data-category="accessories"
            >
                Accessories
            </button>

        </div>


        <!-- TOOLBAR -->

        <div class="shop-toolbar">

            <span
                class="results"
                id="results"
            >
                Showing products
            </span>


            <select
                class="sort"
                id="sort"
            >

                <option value="recommended">
                    Recommended
                </option>

                <option value="low">
                    Price: Low to High
                </option>

                <option value="high">
                    Price: High to Low
                </option>

                <option value="name">
                    Name: A-Z
                </option>

            </select>

        </div>


        <!-- PRODUCT GRID -->

        <div
            class="products"
            id="products"
        ></div>


        <!-- EMPTY -->

        <div
            class="empty"
            id="empty"
        >

            <div class="empty-icon">
                🔎
            </div>

            <h3>
                Nothing found
            </h3>

            <p>
                Try another search or category.
            </p>

            <button
                class="btn btn-dark"
                onclick="clearFilters()"
            >
                Clear filters
            </button>

        </div>

    </section>


    <!-- =========================================================
         OVERLAY
    ========================================================== -->

    <div
        class="overlay"
        id="overlay"
        onclick="closeCart()"
    ></div>


    <!-- =========================================================
         CART
    ========================================================== -->

    <aside
        class="cart"
        id="cart"
    >

        <div class="cart-header">

            <h3>Your cart</h3>

            <button
                class="cart-close"
                onclick="closeCart()"
            >
                ×
            </button>

        </div>


        <div
            class="cart-items"
            id="cartItems"
        ></div>


        <div class="cart-footer">

            <div class="cart-line">

                <span>Subtotal</span>

                <strong id="subtotal">
                    ₹0
                </strong>

            </div>


            <div class="cart-line">

                <span>Delivery</span>

                <strong>
                    FREE
                </strong>

            </div>


            <div class="cart-line cart-total">

                <span>Total</span>

                <strong id="total">
                    ₹0
                </strong>

            </div>


            <button
                class="checkout"
                onclick="checkout()"
            >
                Continue to checkout →
            </button>

        </div>

    </aside>


    <!-- =========================================================
         QUICK VIEW MODAL
    ========================================================== -->

    <div
        class="modal"
        id="modal"
    >

        <div class="modal-box">

            <button
                class="modal-close"
                onclick="closeModal()"
            >
                ×
            </button>


            <div class="modal-grid">

                <div class="modal-image">

                    <img
                        id="modalImage"
                        src=""
                        alt=""
                    >

                </div>


                <div class="modal-info">

                    <span
                        class="modal-category"
                        id="modalCategory"
                    ></span>


                    <h2 id="modalName"></h2>


                    <p id="modalDescription"></p>


                    <div
                        class="modal-price"
                        id="modalPrice"
                    ></div>


                    <button
                        class="btn btn-dark"
                        id="modalAdd"
                    >
                        Add to cart →
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
    ></div>


    <!-- =========================================================
         FOOTER
    ========================================================== -->

    <footer id="footer">

        <div class="footer">

            <div class="footer-brand">

                <div class="footer-logo">
                    NEXUS.
                </div>

                <p>
                    Modern technology, thoughtfully selected.
                    Discover products that make everyday life
                    simpler, smarter and more enjoyable.
                </p>

            </div>


            <div class="footer-column">

                <h4>Shop</h4>

                <a href="#shop">
                    Smartphones
                </a>

                <a href="#shop">
                    Laptops
                </a>

                <a href="#shop">
                    Audio
                </a>

                <a href="#shop">
                    Cameras
                </a>

            </div>


            <div class="footer-column">

                <h4>Help</h4>

                <a href="#">
                    Contact us
                </a>

                <a href="#">
                    Shipping
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
                    My account
                </a>

                <a href="#">
                    Wishlist
                </a>

                <a href="#">
                    Orders
                </a>

                <a href="#">
                    Support
                </a>

            </div>

        </div>


        <div class="footer-bottom">

            © 2026 NEXUS. All rights reserved.

        </div>

    </footer>


    <!-- =========================================================
         JAVASCRIPT
    ========================================================== -->

    <script>

        /* =========================================================
           PRODUCT DATA
        ========================================================== */

        const products = [

            {
                id: 1,

                name: "iPhone 15 Pro Max",

                category: "phone",

                categoryName: "Smartphone",

                price: 129999,

                oldPrice: 139999,

                tag: "Popular",

                description:
                    "Titanium design, powerful performance and an advanced camera system.",

                image:
                    "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?w=900"
            },


            {
                id: 2,

                name: "MacBook Pro 16",

                category: "laptop",

                categoryName: "Laptop",

                price: 249999,

                oldPrice: 269999,

                tag: "Premium",

                description:
                    "Powerful performance for creative work, business and everyday productivity.",

                image:
                    "https://images.unsplash.com/photo-1517336714739-489689fd1ca8?w=900"
            },


            {
                id: 3,

                name: "Apple Watch Series 9",

                category: "accessories",

                categoryName: "Smart Watch",

                price: 44999,

                oldPrice: 49999,

                tag: "New",

                description:
                    "Stay connected, active and organized throughout your day.",

                image:
                    "https://images.unsplash.com/photo-1546868871-7041f2a55e0d?w=900"
            },


            {
                id: 4,

                name: "Sony Alpha Camera",

                category: "camera",

                categoryName: "Camera",

                price: 149999,

                oldPrice: 164999,

                tag: "Best Seller",

                description:
                    "High-quality photos and smooth video for creators and photographers.",

                image:
                    "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=900"
            },


            {
                id: 5,

                name: "Sony WH-1000XM5",

                category: "audio",

                categoryName: "Headphones",

                price: 29999,

                oldPrice: 34999,

                tag: "Popular",

                description:
                    "Immersive sound with premium noise cancellation and all-day comfort.",

                image:
                    "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=900"
            },


            {
                id: 6,

                name: "Everyday Backpack",

                category: "accessories",

                categoryName: "Accessory",

                price: 8999,

                oldPrice: 10999,

                tag: "New",

                description:
                    "A lightweight everyday backpack designed for work and travel.",

                image:
                    "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=900"
            }

        ];


        /* =========================================================
           STATE
        ========================================================== */

        let cart =
            JSON.parse(
                localStorage.getItem("nexus-cart")
            ) || [];


        let wishlist =
            JSON.parse(
                localStorage.getItem("nexus-wishlist")
            ) || [];


        let selectedCategory = "all";

        let searchText = "";


        /* =========================================================
           ELEMENTS
        ========================================================== */

        const productContainer =
            document.getElementById("products");

        const emptyState =
            document.getElementById("empty");

        const searchInput =
            document.getElementById("search");

        const sortSelect =
            document.getElementById("sort");


        /* =========================================================
           FORMAT MONEY
        ========================================================== */

        function money(value) {

            return new Intl.NumberFormat(
                "en-IN",
                {
                    style: "currency",
                    currency: "INR",
                    maximumFractionDigits: 0
                }
            ).format(value);

        }


        /* =========================================================
           SAVE
        ========================================================== */

        function save() {

            localStorage.setItem(
                "nexus-cart",
                JSON.stringify(cart)
            );

            localStorage.setItem(
                "nexus-wishlist",
                JSON.stringify(wishlist)
            );

        }


        /* =========================================================
           RENDER PRODUCTS
        ========================================================== */

        function renderProducts() {

            let list =
                [...products];


            /* CATEGORY */

            if (selectedCategory !== "all") {

                list =
                    list.filter(
                        product =>
                            product.category ===
                            selectedCategory
                    );

            }


            /* SEARCH */

            if (searchText.trim()) {

                const query =
                    searchText
                        .toLowerCase()
                        .trim();


                list =
                    list.filter(product =>

                        product.name
                            .toLowerCase()
                            .includes(query)

                        ||

                        product.description
                            .toLowerCase()
                            .includes(query)

                        ||

                        product.categoryName
                            .toLowerCase()
                            .includes(query)

                    );

            }


            /* SORT */

            switch (sortSelect.value) {

                case "low":

                    list.sort(
                        (a,b) =>
                            a.price - b.price
                    );

                    break;


                case "high":

                    list.sort(
                        (a,b) =>
                            b.price - a.price
                    );

                    break;


                case "name":

                    list.sort(
                        (a,b) =>
                            a.name.localeCompare(
                                b.name
                            )
                    );

                    break;

            }


            /* RESULT */

            document.getElementById(
                "results"
            ).textContent =
                `${list.length} product${list.length !== 1 ? "s" : ""}`;


            /* EMPTY */

            if (!list.length) {

                productContainer.innerHTML = "";

                emptyState.classList.add("show");

                return;

            }


            emptyState.classList.remove("show");


            /* HTML */

            productContainer.innerHTML =

                list.map(product => {

                    const liked =
                        wishlist.includes(
                            product.id
                        );


                    return `

                        <article
                            class="product"
                            onclick="openQuickView(${product.id})"
                        >

                            <div class="product-image">

                                <span class="badge">
                                    ${product.tag}
                                </span>


                                <button
                                    class="
                                        heart
                                        ${liked ? "active" : ""}
                                    "
                                    onclick="
                                        event.stopPropagation();
                                        toggleWishlist(${product.id})
                                    "
                                    aria-label="Wishlist"
                                >
                                    ${liked ? "♥" : "♡"}
                                </button>


                                <img
                                    src="${product.image}"
                                    alt="${product.name}"
                                    loading="lazy"
                                >


                                <button
                                    class="quick-view"
                                    onclick="
                                        event.stopPropagation();
                                        openQuickView(${product.id})
                                    "
                                >
                                    Quick view
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


                                <div class="product-footer">

                                    <div>

                                        <span class="price-old">
                                            ${money(product.oldPrice)}
                                        </span>

                                        <span class="price">
                                            ${money(product.price)}
                                        </span>

                                    </div>


                                    <button
                                        class="add"
                                        onclick="
                                            event.stopPropagation();
                                            addToCart(${product.id})
                                        "
                                    >
                                        Add +
                                    </button>

                                </div>

                            </div>

                        </article>

                    `;

                }).join("");

        }


        /* =========================================================
           CART
        ========================================================== */

        function addToCart(id) {

            const product =
                products.find(
                    item => item.id === id
                );


            const existing =
                cart.find(
                    item => item.id === id
                );


            if (existing) {

                existing.quantity++;

            } else {

                cart.push({

                    id: id,

                    quantity: 1

                });

            }


            save();

            updateCart();

            showToast(
                `${product.name} added to cart`
            );

        }


        function removeFromCart(id) {

            cart =
                cart.filter(
                    item => item.id !== id
                );

            save();

            updateCart();

        }


        function changeQuantity(
            id,
            amount
        ) {

            const item =
                cart.find(
                    item => item.id === id
                );


            if (!item) return;


            item.quantity += amount;


            if (item.quantity <= 0) {

                removeFromCart(id);

                return;

            }


            save();

            updateCart();

        }


        function updateCart() {

            const totalItems =
                cart.reduce(
                    (total,item) =>
                        total + item.quantity,
                    0
                );


            document.getElementById(
                "cartCount"
            ).textContent =
                totalItems;


            if (!cart.length) {

                document.getElementById(
                    "cartItems"
                ).innerHTML = `

                    <div
                        style="
                            text-align:center;
                            padding:80px 20px;
                            color:#888;
                        "
                    >

                        <div
                            style="
                                font-size:40px;
                                margin-bottom:15px;
                            "
                        >
                            🛒
                        </div>

                        <strong
                            style="
                                color:#222;
                                display:block;
                            "
                        >
                            Your cart is empty
                        </strong>

                        <span
                            style="
                                font-size:12px;
                            "
                        >
                            Add something you love.
                        </span>

                    </div>

                `;

            } else {

                document.getElementById(
                    "cartItems"
                ).innerHTML =

                    cart.map(item => {

                        const product =
                            products.find(
                                p =>
                                    p.id === item.id
                            );


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
                                        ${money(product.price)}
                                    </div>


                                    <div class="quantity">

                                        <button
                                            onclick="
                                                changeQuantity(
                                                    ${product.id},
                                                    -1
                                                )
                                            "
                                        >
                                            −
                                        </button>


                                        <span>
                                            ${item.quantity}
                                        </span>


                                        <button
                                            onclick="
                                                changeQuantity(
                                                    ${product.id},
                                                    1
                                                )
                                            "
                                        >
                                            +
                                        </button>

                                    </div>

                                </div>


                                <button
                                    class="remove"
                                    onclick="
                                        removeFromCart(
                                            ${product.id}
                                        )
                                    "
                                >
                                    Remove
                                </button>

                            </div>

                        `;

                    }).join("");

            }


            const subtotal =
                cart.reduce(
                    (total,item) => {

                        const product =
                            products.find(
                                p =>
                                    p.id === item.id
                            );

                        return total +
                            product.price *
                            item.quantity;

                    },
                    0
                );


            document.getElementById(
                "subtotal"
            ).textContent =
                money(subtotal);


            document.getElementById(
                "total"
            ).textContent =
                money(subtotal);

        }


        /* =========================================================
           OPEN CART
        ========================================================== */

        function openCart() {

            document
                .getElementById("cart")
                .classList.add("open");


            document
                .getElementById("overlay")
                .classList.add("show");


            document.body.style.overflow =
                "hidden";

        }


        function closeCart() {

            document
                .getElementById("cart")
                .classList.remove("open");


            document
                .getElementById("overlay")
                .classList.remove("show");


            document.body.style.overflow =
                "";

        }


        /* =========================================================
           WISHLIST
        ========================================================== */

        function toggleWishlist(id) {

            const index =
                wishlist.indexOf(id);


            const product =
                products.find(
                    p => p.id === id
                );


            if (index === -1) {

                wishlist.push(id);

                showToast(
                    `${product.name} saved to wishlist`
                );

            } else {

                wishlist.splice(index,1);

                showToast(
                    `${product.name} removed from wishlist`
                );

            }


            save();

            updateWishlist();

            renderProducts();

        }


        function updateWishlist() {

            document.getElementById(
                "wishlistCount"
            ).textContent =
                wishlist.length;

        }


        function showWishlist() {

            if (!wishlist.length) {

                showToast(
                    "Your wishlist is empty"
                );

                return;

            }


            const names =
                wishlist

                    .map(
                        id =>
                            products.find(
                                p => p.id === id
                            )
                    )

                    .filter(Boolean);


            showToast(
                `${names.length} item${names.length > 1 ? "s" : ""} saved`
            );

        }


        /* =========================================================
           QUICK VIEW
        ========================================================== */

        function openQuickView(id) {

            const product =
                products.find(
                    p => p.id === id
                );


            if (!product) return;


            document.getElementById(
                "modalImage"
            ).src =
                product.image;


            document.getElementById(
                "modalImage"
            ).alt =
                product.name;


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
                money(product.price);


            document.getElementById(
                "modalAdd"
            ).onclick = function() {

                addToCart(product.id);

                closeModal();

            };


            document
                .getElementById("modal")
                .classList.add("show");


            document.body.style.overflow =
                "hidden";

        }


        function closeModal() {

            document
                .getElementById("modal")
                .classList.remove("show");


            document.body.style.overflow =
                "";

        }


        /* =========================================================
           SEARCH
        ========================================================== */

        searchInput.addEventListener(
            "input",
            function() {

                searchText =
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
           CATEGORY
        ========================================================== */

        document
            .querySelectorAll(".category")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    function() {

                        document
                            .querySelectorAll(
                                ".category"
                            )
                            .forEach(btn =>
                                btn.classList.remove(
                                    "active"
                                )
                            );


                        this.classList.add(
                            "active"
                        );


                        selectedCategory =
                            this.dataset.category;


                        renderProducts();

                    }
                );

            });


        /* =========================================================
           CLEAR FILTERS
        ========================================================== */

        function clearFilters() {

            selectedCategory =
                "all";

            searchText = "";

            searchInput.value = "";

            sortSelect.value =
                "recommended";


            document
                .querySelectorAll(".category")
                .forEach(button =>
                    button.classList.remove(
                        "active"
                    )
                );


            document
                .querySelector(
                    '[data-category="all"]'
                )
                .classList.add(
                    "active"
                );


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
                "Checkout integration can be connected here."
            );

        }


        /* =========================================================
           TOAST
        ========================================================== */

        function showToast(message) {

            const toast =
                document.createElement(
                    "div"
                );


            toast.className =
                "toast";


            toast.textContent =
                message;


            document
                .getElementById(
                    "toastContainer"
                )
                .appendChild(toast);


            setTimeout(
                () => toast.remove(),
                3000
            );

        }


        /* =========================================================
           SCROLL
        ========================================================== */

        function scrollToShop() {

            document
                .getElementById("shop")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }


        /* =========================================================
           MODAL CLICK
        ========================================================== */

        document
            .getElementById("modal")
            .addEventListener(
                "click",
                function(event) {

                    if (
                        event.target === this
                    ) {

                        closeModal();

                    }

                }
            );


        /* =========================================================
           ESCAPE
        ========================================================== */

        document.addEventListener(
            "keydown",
            function(event) {

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
