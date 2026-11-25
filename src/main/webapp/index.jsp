<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — User-Friendly Shopping</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #f8f9fb;
            --bg-card: #ffffff;
            --ink: #141824;
            --ink-muted: #5c6478;
            --ink-subtle: #8b93a7;
            --accent: #d95d39;
            --accent-hover: #b84828;
            --accent-soft: #fff0eb;
            --surface: #eef1f6;
            --border: #e3e7ef;
            --success: #1b8a6b;
            --success-soft: #e6f6f1;
            --warning: #eab308;
            --radius-lg: 18px;
            --radius-md: 12px;
            --radius-sm: 8px;
            --shadow-sm: 0 2px 10px rgba(20, 24, 36, 0.04);
            --shadow-md: 0 10px 28px rgba(20, 24, 36, 0.08);
            --shadow-lg: 0 20px 50px rgba(20, 24, 36, 0.16);
            --transition: 0.22s ease;
            --container: 1260px;
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
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--ink);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            display: block;
            max-width: 100%;
        }

        button, select, input {
            font-family: inherit;
        }

        button {
            cursor: pointer;
            border: none;
            background: none;
            color: inherit;
        }

        button:focus-visible, a:focus-visible, input:focus-visible, select:focus-visible {
            outline: 2px solid var(--accent);
            outline-offset: 2px;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Top Promo Bar */
        .promo-bar {
            background: var(--ink);
            color: #fff;
            font-size: 13px;
            padding: 8px 16px;
            text-align: center;
        }

        .promo-bar strong {
            color: #ffb098;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 90;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            min-height: 72px;
            padding: 10px 0;
        }

        .brand-left {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 21px;
            letter-spacing: -0.4px;
        }

        .brand-badge {
            width: 38px;
            height: 38px;
            border-radius: 10px;
            background: var(--accent);
            color: #fff;
            display: grid;
            place-items: center;
            font-size: 17px;
        }

        .brand span span {
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            list-style: none;
            gap: 4px;
        }

        nav.main-nav a {
            padding: 8px 14px;
            border-radius: var(--radius-sm);
            font-size: 14px;
            font-weight: 500;
            color: var(--ink-muted);
            transition: var(--transition);
        }

        nav.main-nav a:hover {
            background: var(--surface);
            color: var(--ink);
        }

        .search-box {
            display: flex;
            align-items: center;
            background: var(--surface);
            border: 1.5px solid transparent;
            border-radius: 999px;
            padding: 0 8px 0 16px;
            min-width: 240px;
            transition: var(--transition);
        }

        .search-box:focus-within {
            background: #fff;
            border-color: var(--accent);
            box-shadow: 0 0 0 4px rgba(217, 93, 57, 0.12);
        }

        .search-box input {
            flex: 1;
            border: none;
            background: transparent;
            padding: 9px 6px;
            font-size: 14px;
            color: var(--ink);
            outline: none;
        }

        .search-box .clear-search {
            color: var(--ink-subtle);
            padding: 6px;
            font-size: 13px;
            display: none;
        }

        .search-box .clear-search.visible {
            display: inline-flex;
        }

        .search-box .submit-search {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            background: var(--ink);
            color: #fff;
            display: grid;
            place-items: center;
            font-size: 13px;
            transition: var(--transition);
        }

        .search-box .submit-search:hover {
            background: var(--accent);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .icon-pill {
            height: 40px;
            padding: 0 12px;
            border-radius: 999px;
            background: var(--surface);
            color: var(--ink);
            font-size: 14px;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
            position: relative;
        }

        .icon-pill:hover {
            background: var(--border);
        }

        .cart-trigger {
            background: var(--ink);
            color: #fff;
        }

        .cart-trigger:hover {
            background: var(--accent);
        }

        .count-badge {
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            min-width: 20px;
            height: 20px;
            padding: 0 5px;
            border-radius: 999px;
            display: inline-grid;
            place-items: center;
        }

        .cart-trigger .count-badge {
            background: #fff;
            color: var(--ink);
        }

        .mobile-btn {
            display: none;
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: var(--surface);
            font-size: 18px;
            align-items: center;
            justify-content: center;
        }

        .mobile-drawer {
            display: none;
            padding: 12px 24px 20px;
            border-top: 1px solid var(--border);
            background: #fff;
        }

        .mobile-drawer.open {
            display: block;
        }

        .mobile-drawer a {
            display: block;
            padding: 10px 12px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--ink);
        }

        .mobile-drawer a:hover {
            background: var(--surface);
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 24px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
        }

        .btn-primary {
            background: var(--accent);
            color: #fff;
        }

        .btn-primary:hover {
            background: var(--accent-hover);
            transform: translateY(-1px);
            box-shadow: 0 8px 20px rgba(217, 93, 57, 0.25);
        }

        .btn-light {
            background: rgba(255, 255, 255, 0.14);
            color: #fff;
            border: 1px solid rgba(255, 255, 255, 0.28);
        }

        .btn-light:hover {
            background: rgba(255, 255, 255, 0.24);
        }

        .btn-outline {
            border: 1.5px solid var(--border);
            background: #fff;
            color: var(--ink);
        }

        .btn-outline:hover {
            border-color: var(--ink);
            background: var(--surface);
        }

        /* Hero */
        .hero {
            margin-top: 20px;
            border-radius: var(--radius-lg);
            overflow: hidden;
            position: relative;
            min-height: 410px;
            display: flex;
            align-items: center;
            background: linear-gradient(115deg, #141824 0%, #242b3d 60%, #3a2b28 100%);
            box-shadow: var(--shadow-md);
        }

        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.26;
        }

        .hero-inner {
            position: relative;
            z-index: 1;
            padding: 48px;
            max-width: 640px;
            color: #fff;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(255, 176, 152, 0.18);
            color: #ffb098;
            padding: 5px 14px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 0.4px;
            text-transform: uppercase;
            margin-bottom: 16px;
        }

        .hero h1 {
            font-family: 'Playfair Display', Georgia, serif;
            font-size: 44px;
            line-height: 1.15;
            margin-bottom: 14px;
        }

        .hero p {
            color: rgba(255, 255, 255, 0.84);
            font-size: 16px;
            margin-bottom: 24px;
            max-width: 500px;
        }

        .hero-cta {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
        }

        .trust-strip {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 26px;
            padding-top: 18px;
            border-top: 1px solid rgba(255, 255, 255, 0.14);
            font-size: 13px;
            color: rgba(255, 255, 255, 0.78);
        }

        .trust-strip span {
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

        /* Sections */
        .section {
            padding: 52px 0;
        }

        .section-head {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 24px;
            flex-wrap: wrap;
        }

        .section-head h2 {
            font-size: 26px;
            font-weight: 800;
            letter-spacing: -0.3px;
        }

        .section-head p {
            color: var(--ink-muted);
            font-size: 14px;
            margin-top: 3px;
        }

        /* Categories */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .cat-tile {
            background: var(--bg-card);
            border: 1.5px solid var(--border);
            border-radius: var(--radius-md);
            padding: 20px 14px;
            text-align: center;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
        }

        .cat-tile:hover, .cat-tile.active {
            border-color: var(--accent);
            background: var(--accent-soft);
            transform: translateY(-3px);
        }

        .cat-icon {
            width: 48px;
            height: 48px;
            margin: 0 auto 10px;
            border-radius: 12px;
            background: var(--surface);
            color: var(--ink);
            display: grid;
            place-items: center;
            font-size: 20px;
            transition: var(--transition);
        }

        .cat-tile:hover .cat-icon, .cat-tile.active .cat-icon {
            background: var(--accent);
            color: #fff;
        }

        .cat-tile h3 {
            font-size: 14px;
            font-weight: 700;
        }

        .cat-tile span {
            font-size: 12px;
            color: var(--ink-muted);
        }

        /* Filter & Sort Toolbar */
        .toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 14px;
            flex-wrap: wrap;
            margin-bottom: 22px;
            padding: 12px 16px;
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
        }

        .chip-row {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .filter-chip {
            padding: 7px 14px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            background: var(--surface);
            color: var(--ink-muted);
            transition: var(--transition);
        }

        .filter-chip:hover {
            color: var(--ink);
            background: var(--border);
        }

        .filter-chip.active {
            background: var(--ink);
            color: #fff;
        }

        .sort-wrap {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 13px;
            color: var(--ink-muted);
        }

        .sort-wrap select {
            padding: 7px 12px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--border);
            background: #fff;
            color: var(--ink);
            font-weight: 600;
            font-size: 13px;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
        }

        .product-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-md);
            border-color: #cbd3e3;
        }

        .product-media {
            position: relative;
            aspect-ratio: 4 / 3;
            background: var(--surface);
            overflow: hidden;
        }

        .product-media img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.35s ease;
        }

        .product-card:hover .product-media img {
            transform: scale(1.04);
        }

        .status-tag {
            position: absolute;
            top: 10px;
            left: 10px;
            padding: 4px 10px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.3px;
        }

        .status-tag.new {
            background: var(--ink);
            color: #fff;
        }

        .status-tag.sale {
            background: var(--success-soft);
            color: var(--success);
            border: 1px solid rgba(27, 138, 107, 0.25);
        }

        .wish-toggle {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.92);
            color: var(--ink-muted);
            display: grid;
            place-items: center;
            font-size: 15px;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
        }

        .wish-toggle:hover, .wish-toggle.saved {
            color: var(--accent);
            background: #fff;
        }

        .product-body {
            padding: 16px;
            display: flex;
            flex-direction: column;
            flex: 1;
            gap: 6px;
        }

        .product-cat {
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: var(--ink-subtle);
        }

        .product-title {
            font-size: 15px;
            font-weight: 700;
            color: var(--ink);
            line-height: 1.35;
        }

        .product-rating {
            font-size: 12px;
            color: var(--warning);
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .product-rating span {
            color: var(--ink-muted);
            font-weight: 500;
        }

        .product-price-row {
            margin-top: auto;
            padding-top: 8px;
            display: flex;
            align-items: baseline;
            gap: 8px;
        }

        .price-now {
            font-size: 18px;
            font-weight: 800;
            color: var(--ink);
        }

        .price-was {
            font-size: 13px;
            color: var(--ink-subtle);
            text-decoration: line-through;
        }

        .discount-pill {
            font-size: 11px;
            font-weight: 700;
            color: var(--success);
            background: var(--success-soft);
            padding: 2px 7px;
            border-radius: 6px;
        }

        .product-actions {
            padding: 0 16px 16px;
        }

        .add-to-cart {
            width: 100%;
            padding: 10px 14px;
            border-radius: var(--radius-sm);
            background: var(--ink);
            color: #fff;
            font-size: 13px;
            font-weight: 600;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 7px;
            transition: var(--transition);
        }

        .add-to-cart:hover {
            background: var(--accent);
        }

        .add-to-cart.added {
            background: var(--success);
        }

        .empty-state {
            grid-column: 1 / -1;
            text-align: center;
            padding: 48px 20px;
            background: var(--bg-card);
            border: 1px dashed var(--border);
            border-radius: var(--radius-md);
        }

        .empty-state p {
            color: var(--ink-muted);
            margin: 8px 0 16px;
        }

        /* Deal Banner */
        .deal-card {
            display: grid;
            grid-template-columns: 1fr 1.15fr;
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            box-shadow: var(--shadow-md);
        }

        .deal-visual {
            background: var(--surface);
            min-height: 300px;
        }

        .deal-visual img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-info {
            padding: 36px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-badge {
            align-self: flex-start;
            background: var(--accent-soft);
            color: var(--accent);
            font-size: 12px;
            font-weight: 700;
            padding: 5px 12px;
            border-radius: 999px;
            margin-bottom: 12px;
        }

        .deal-info h3 {
            font-size: 26px;
            font-weight: 800;
            margin-bottom: 8px;
        }

        .deal-info p {
            color: var(--ink-muted);
            margin-bottom: 16px;
        }

        .deal-pricing {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 8px;
        }

        .deal-pricing .big {
            font-size: 30px;
            font-weight: 800;
        }

        .deal-pricing .strike {
            font-size: 18px;
            color: var(--ink-subtle);
            text-decoration: line-through;
        }

        .stock-note {
            font-size: 13px;
            color: var(--ink-muted);
            margin-bottom: 18px;
        }

        .stock-note strong {
            color: var(--accent);
        }

        .countdown {
            display: flex;
            gap: 10px;
            margin-bottom: 22px;
        }

        .time-cell {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-sm);
            padding: 8px 12px;
            min-width: 62px;
            text-align: center;
        }

        .time-cell .val {
            font-size: 20px;
            font-weight: 800;
            line-height: 1.2;
        }

        .time-cell .lbl {
            font-size: 10px;
            text-transform: uppercase;
            color: var(--ink-muted);
            letter-spacing: 0.4px;
        }

        /* Reviews */
        .reviews-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 16px;
        }

        .review-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 20px;
            box-shadow: var(--shadow-sm);
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .review-stars {
            color: var(--warning);
            font-size: 14px;
        }

        .review-card blockquote {
            font-size: 14px;
            color: var(--ink);
            line-height: 1.55;
            flex: 1;
        }

        .reviewer {
            display: flex;
            align-items: center;
            gap: 10px;
            padding-top: 8px;
            border-top: 1px solid var(--surface);
        }

        .reviewer img {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            object-fit: cover;
        }

        .reviewer .name {
            font-size: 13px;
            font-weight: 700;
        }

        .reviewer .role {
            font-size: 12px;
            color: var(--ink-muted);
        }

        /* Newsletter */
        .newsletter-box {
            background: var(--ink);
            color: #fff;
            border-radius: var(--radius-lg);
            padding: 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            flex-wrap: wrap;
        }

        .newsletter-box h3 {
            font-size: 24px;
            font-weight: 800;
            margin-bottom: 4px;
        }

        .newsletter-box p {
            color: rgba(255, 255, 255, 0.75);
            font-size: 14px;
        }

        .newsletter-form {
            display: flex;
            gap: 10px;
            flex: 1;
            max-width: 460px;
            flex-wrap: wrap;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 210px;
            padding: 12px 18px;
            border-radius: 999px;
            border: 1px solid rgba(255, 255, 255, 0.22);
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            font-size: 14px;
        }

        .newsletter-form input::placeholder {
            color: rgba(255, 255, 255, 0.55);
        }

        .newsletter-feedback {
            width: 100%;
            font-size: 13px;
            margin-top: 6px;
            min-height: 18px;
        }

        /* Footer */
        footer {
            background: #fff;
            border-top: 1px solid var(--border);
            padding: 40px 0 24px;
            margin-top: 24px;
        }

        .footer-cols {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 32px;
            margin-bottom: 28px;
        }

        .footer-cols p {
            color: var(--ink-muted);
            font-size: 13px;
            margin-top: 10px;
            max-width: 290px;
        }

        .footer-cols h4 {
            font-size: 13px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: var(--ink);
            margin-bottom: 12px;
        }

        .footer-cols ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 7px;
            font-size: 13px;
            color: var(--ink-muted);
        }

        .footer-cols ul a:hover {
            color: var(--accent);
        }

        .footer-base {
            text-align: center;
            font-size: 12px;
            color: var(--ink-subtle);
            padding-top: 18px;
            border-top: 1px solid var(--surface);
        }

        /* Slide-Over Cart Drawer */
        .backdrop {
            position: fixed;
            inset: 0;
            background: rgba(20, 24, 36, 0.45);
            z-index: 120;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.22s ease;
        }

        .backdrop.open {
            opacity: 1;
            pointer-events: auto;
        }

        .drawer {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            max-width: 410px;
            background: #fff;
            z-index: 130;
            transform: translateX(100%);
            transition: transform 0.28s cubic-bezier(0.22, 1, 0.36, 1);
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow-lg);
        }

        .drawer.open {
            transform: translateX(0);
        }

        .drawer-head {
            padding: 18px 20px;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .drawer-head h3 {
            font-size: 17px;
            font-weight: 800;
        }

        .close-btn {
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            font-size: 15px;
        }

        .close-btn:hover {
            background: var(--border);
        }

        .shipping-meter {
            padding: 12px 20px;
            background: var(--bg);
            border-bottom: 1px solid var(--border);
            font-size: 12px;
            color: var(--ink-muted);
        }

        .meter-bar {
            height: 6px;
            background: var(--border);
            border-radius: 999px;
            overflow: hidden;
            margin-top: 6px;
        }

        .meter-fill {
            height: 100%;
            background: var(--success);
            width: 0%;
            transition: width 0.25s ease;
        }

        .drawer-items {
            flex: 1;
            overflow-y: auto;
            padding: 16px 20px;
            display: flex;
            flex-direction: column;
            gap: 14px;
        }

        .cart-empty {
            text-align: center;
            padding: 48px 16px;
            color: var(--ink-muted);
        }

        .cart-item {
            display: flex;
            gap: 12px;
            align-items: center;
            padding-bottom: 14px;
            border-bottom: 1px solid var(--surface);
        }

        .cart-item img {
            width: 64px;
            height: 64px;
            border-radius: var(--radius-sm);
            object-fit: cover;
            background: var(--surface);
            flex-shrink: 0;
        }

        .cart-item-meta {
            flex: 1;
            min-width: 0;
        }

        .cart-item-title {
            font-size: 14px;
            font-weight: 700;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .cart-item-price {
            font-size: 13px;
            color: var(--ink-muted);
            margin-top: 2px;
        }

        .qty-stepper {
            display: inline-flex;
            align-items: center;
            border: 1px solid var(--border);
            border-radius: 999px;
            margin-top: 6px;
        }

        .qty-stepper button {
            width: 26px;
            height: 26px;
            font-size: 13px;
            font-weight: 700;
            display: grid;
            place-items: center;
        }

        .qty-stepper span {
            padding: 0 8px;
            font-size: 13px;
            font-weight: 600;
        }

        .remove-item {
            color: var(--ink-subtle);
            font-size: 14px;
            padding: 6px;
        }

        .remove-item:hover {
            color: var(--accent);
        }

        .drawer-foot {
            padding: 18px 20px;
            border-top: 1px solid var(--border);
            background: var(--bg);
        }

        .subtotal-row {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin-bottom: 14px;
        }

        .subtotal-row span {
            font-size: 14px;
            color: var(--ink-muted);
        }

        .subtotal-row strong {
            font-size: 20px;
            font-weight: 800;
        }

        /* Toast */
        .toast {
            position: fixed;
            bottom: 22px;
            left: 50%;
            transform: translate(-50%, 24px);
            background: var(--ink);
            color: #fff;
            padding: 10px 18px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            box-shadow: var(--shadow-lg);
            z-index: 150;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.2s ease, transform 0.2s ease;
        }

        .toast.show {
            opacity: 1;
            transform: translate(-50%, 0);
        }

        /* Responsive */
        @media (max-width: 1100px) {
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .products-grid, .reviews-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .search-box {
                min-width: 180px;
            }
        }

        @media (max-width: 860px) {
            nav.main-nav {
                display: none;
            }
            .mobile-btn {
                display: inline-flex;
            }
            .deal-card {
                grid-template-columns: 1fr;
            }
            .deal-info {
                padding: 24px;
            }
            .footer-cols {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 600px) {
            .hero-inner {
                padding: 32px 22px;
            }
            .hero h1 {
                font-size: 32px;
            }
            .categories-grid, .products-grid, .reviews-grid, .footer-cols {
                grid-template-columns: 1fr;
            }
            .search-box {
                display: none;
            }
            .icon-pill .pill-label {
                display: none;
            }
        }
    </style>
</head>
<body>

    <div class="promo-bar">
        Free express shipping on orders over <strong>$150</strong> · 30-day easy returns on all items
    </div>

    <header>
        <div class="container header-inner">
            <div class="brand-left">
                <button class="mobile-btn" id="mobileMenuBtn" aria-label="Toggle navigation menu" aria-expanded="false">
                    <i class="fas fa-bars"></i>
                </button>
                <a href="#" class="brand">
                    <span class="brand-badge"><i class="fas fa-bag-shopping"></i></span>
                    <span>Nexus<span>Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#products">Shop All</a></li>
                    <li><a href="#deals">Flash Deal</a></li>
                    <li><a href="#reviews">Reviews</a></li>
                </ul>
            </nav>

            <div class="search-box" role="search">
                <input type="search" id="searchInput" placeholder="Search phones, shoes, audio..." aria-label="Search products" />
                <button type="button" class="clear-search" id="clearSearchBtn" aria-label="Clear search">
                    <i class="fas fa-times"></i>
                </button>
                <button type="button" class="submit-search" id="searchSubmitBtn" aria-label="Search">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <div class="header-actions">
                <button type="button" class="icon-pill" id="wishlistFilterBtn" title="Show saved items">
                    <i class="far fa-heart" id="headerWishIcon"></i>
                    <span class="pill-label">Saved</span>
                    <span class="count-badge" id="wishCount">0</span>
                </button>
                <button type="button" class="icon-pill cart-trigger" id="openCartBtn" aria-label="Open shopping cart">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="pill-label">Cart</span>
                    <span class="count-badge" id="cartCount">0</span>
                </button>
            </div>
        </div>

        <div class="mobile-drawer" id="mobileDrawer">
            <a href="#categories">Categories</a>
            <a href="#products">Shop All</a>
            <a href="#deals">Flash Deal</a>
            <a href="#reviews">Reviews</a>
        </div>
    </header>

    <main>
        <section class="hero" aria-label="Featured collection">
            <div class="hero-inner">
                <div class="hero-tag"><i class="fas fa-bolt"></i> 2026 Essentials Drop</div>
                <h1>Everyday gear that feels effortless.</h1>
                <p>Thoughtfully selected tech, footwear, and daily carry—priced transparently with fast dispatch and hassle-free returns.</p>
                <div class="hero-cta">
                    <a href="#products" class="btn btn-primary">Browse Products <i class="fas fa-arrow-right"></i></a>
                    <a href="#deals" class="btn btn-light">View Flash Deal</a>
                </div>
                <div class="trust-strip">
                    <span><i class="fas fa-shield-halved"></i> 2-Year Warranty</span>
                    <span><i class="fas fa-rotate-left"></i> 30-Day Free Returns</span>
                    <span><i class="fas fa-truck-fast"></i> Same-Day Dispatch</span>
                </div>
            </div>
        </section>

        <section class="section" id="categories" aria-labelledby="catHeading">
            <div class="container">
                <div class="section-head">
                    <div>
                        <h2 id="catHeading">Shop by Category</h2>
                        <p>Tap a category to filter the catalog below</p>
                    </div>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <section class="section" id="products" aria-labelledby="prodHeading">
            <div class="container">
                <div class="section-head">
                    <div>
                        <h2 id="prodHeading">Popular Picks</h2>
                        <p id="resultSummary">Showing all 8 items</p>
                    </div>
                </div>

                <div class="toolbar">
                    <div class="chip-row" id="categoryChips" role="group" aria-label="Filter by category"></div>
                    <div class="sort-wrap">
                        <label for="sortSelect">Sort by:</label>
                        <select id="sortSelect">
                            <option value="featured">Featured</option>
                            <option value="price-asc">Price: Low to High</option>
                            <option value="price-desc">Price: High to Low</option>
                            <option value="rating">Top Rated</option>
                        </select>
                    </div>
                </div>

                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <section class="section" id="deals" aria-labelledby="dealHeading">
            <div class="container">
                <div class="section-head">
                    <div>
                        <h2 id="dealHeading">Today's Flash Deal</h2>
                        <p>Limited allocation at member pricing</p>
                    </div>
                </div>
                <div class="deal-card">
                    <div class="deal-visual">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2">
                    </div>
                    <div class="deal-info">
                        <span class="deal-badge"><i class="fas fa-tag"></i> Save $200</span>
                        <h3>MacBook Air M2 (13-inch)</h3>
                        <p>Silent fanless design, all-day battery life, and crisp Liquid Retina display for work or travel.</p>
                        <div class="deal-pricing">
                            <span class="big">$999</span>
                            <span class="strike">$1,199</span>
                            <span class="discount-pill">17% OFF</span>
                        </div>
                        <div class="stock-note">Only <strong>12 units</strong> remaining in stock</div>
                        <div class="countdown" id="dealTimer" aria-label="Deal time remaining">
                            <div class="time-cell">
                                <div class="val" id="dealDays">0</div>
                                <div class="lbl">Days</div>
                            </div>
                            <div class="time-cell">
                                <div class="val" id="dealHours">24</div>
                                <div class="lbl">Hours</div>
                            </div>
                            <div class="time-cell">
                                <div class="val" id="dealMinutes">36</div>
                                <div class="lbl">Mins</div>
                            </div>
                            <div class="time-cell">
                                <div class="val" id="dealSeconds">00</div>
                                <div class="lbl">Secs</div>
                            </div>
                        </div>
                        <div>
                            <button type="button" class="btn btn-primary" id="addDealBtn">
                                <i class="fas fa-cart-plus"></i> Add Deal to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section" id="reviews" aria-labelledby="revHeading">
            <div class="container">
                <div class="section-head">
                    <div>
                        <h2 id="revHeading">Verified Buyer Reviews</h2>
                        <p>Rated 4.8 out of 5 across 650+ orders</p>
                    </div>
                </div>
                <div class="reviews-grid" id="reviewsGrid"></div>
            </div>
        </section>

        <section class="section" aria-labelledby="newsHeading">
            <div class="container">
                <div class="newsletter-box">
                    <div>
                        <h3 id="newsHeading">Get Early Access & Restock Alerts</h3>
                        <p>One weekly digest of new arrivals and price drops. Unsubscribe anytime.</p>
                    </div>
                    <form class="newsletter-form" id="newsletterForm" novalidate>
                        <input type="email" id="newsletterInput" placeholder="you@example.com" aria-label="Email address" required />
                        <button type="submit" class="btn btn-primary">Notify Me</button>
                        <div class="newsletter-feedback" id="newsletterFeedback" role="status"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-cols">
                <div>
                    <a href="#" class="brand">
                        <span class="brand-badge"><i class="fas fa-bag-shopping"></i></span>
                        <span>Nexus<span>Shop</span></span>
                    </a>
                    <p>Simple, dependable online shopping built around clear pricing, fast shipping, and responsive support.</p>
                </div>
                <div>
                    <h4>Shop</h4>
                    <ul>
                        <li><a href="#products">All Products</a></li>
                        <li><a href="#categories">Categories</a></li>
                        <li><a href="#deals">Flash Deal</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Customer Care</h4>
                    <ul>
                        <li><a href="#reviews">Customer Reviews</a></li>
                        <li><a href="#deals">Shipping & Returns</a></li>
                        <li><a href="#newsHeading">Order Support</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Policies</h4>
                    <ul>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Cookie Settings</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-base">
                &copy; <span id="copyrightYear"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- Cart Drawer -->
    <div class="backdrop" id="drawerBackdrop"></div>
    <aside class="drawer" id="cartDrawer" aria-label="Shopping cart" aria-hidden="true">
        <div class="drawer-head">
            <h3>Your Cart (<span id="drawerItemCount">0</span>)</h3>
            <button type="button" class="close-btn" id="closeCartBtn" aria-label="Close cart">
                <i class="fas fa-times"></i>
            </button>
        </div>
        <div class="shipping-meter">
            <div id="shippingMessage">Add <strong>$150</strong> for free express shipping</div>
            <div class="meter-bar">
                <div class="meter-fill" id="shippingFill"></div>
            </div>
        </div>
        <div class="drawer-items" id="drawerItems"></div>
        <div class="drawer-foot">
            <div class="subtotal-row">
                <span>Subtotal</span>
                <strong id="cartSubtotal">$0</strong>
            </div>
            <button type="button" class="btn btn-primary" style="width:100%;" id="checkoutBtn">
                Proceed to Checkout
            </button>
        </div>
    </aside>

    <div class="toast" id="toast" role="status" aria-live="polite"></div>

    <script>
        const FREE_SHIPPING_THRESHOLD = 150;

        const CATEGORIES = [
            { id: 'Smartphones', name: 'Smartphones', icon: 'fa-mobile-screen-button', count: 24 },
            { id: 'Laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'Clothing', name: 'Clothing', icon: 'fa-shirt', count: 42 },
            { id: 'Gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'Footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'Accessories', name: 'Accessories', icon: 'fa-watch-fitness', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 4.9, reviews: 128, badge: 'New', category: 'Smartphones', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4.7, reviews: 86, badge: '', category: 'Laptops', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 4.8, reviews: 214, badge: 'Sale', category: 'Accessories', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80' },
            { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4.6, reviews: 53, badge: '', category: 'Footwear', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, oldPrice: null, rating: 5.0, reviews: 42, badge: 'New', category: 'Gadgets', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80' },
            { id: 6, title: 'Chanel No. 5 Eau de Parfum', price: 120, oldPrice: null, rating: 4.9, reviews: 189, badge: '', category: 'Accessories', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80' },
            { id: 7, title: 'Everyday Travel Backpack', price: 79, oldPrice: 99, rating: 4.5, reviews: 67, badge: 'Sale', category: 'Accessories', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80' },
            { id: 8, title: 'Sony WH-1000XM5 Headphones', price: 399, oldPrice: null, rating: 4.8, reviews: 156, badge: '', category: 'Gadgets', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80' },
            { id: 99, title: 'MacBook Air M2 (Flash Deal)', price: 999, oldPrice: 1199, rating: 4.9, reviews: 310, badge: 'Sale', category: 'Laptops', img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80' }
        ];

        const REVIEWS = [
            { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and clear tracking from checkout to delivery. Everything arrived well packed.', stars: 5 },
            { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Easy to compare options and check out without clutter. Will order again.', stars: 4 },
            { name: 'Sophia Chen', role: 'Product Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Clean presentation, accurate specs, and zero surprises when the box showed up.', stars: 5 },
            { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'The M2 flash deal price was tough to beat and arrived ahead of schedule.', stars: 5 }
        ];

        let state = {
            category: 'All',
            sort: 'featured',
            search: '',
            onlySaved: false,
            savedIds: new Set(),
            cart: [] // { id, qty }
        };

        const els = {
            categoriesGrid: document.getElementById('categoriesGrid'),
            categoryChips: document.getElementById('categoryChips'),
            productsGrid: document.getElementById('productsGrid'),
            resultSummary: document.getElementById('resultSummary'),
            sortSelect: document.getElementById('sortSelect'),
            searchInput: document.getElementById('searchInput'),
            clearSearchBtn: document.getElementById('clearSearchBtn'),
            searchSubmitBtn: document.getElementById('searchSubmitBtn'),
            wishlistFilterBtn: document.getElementById('wishlistFilterBtn'),
            headerWishIcon: document.getElementById('headerWishIcon'),
            wishCount: document.getElementById('wishCount'),
            cartCount: document.getElementById('cartCount'),
            drawerItemCount: document.getElementById('drawerItemCount'),
            openCartBtn: document.getElementById('openCartBtn'),
            closeCartBtn: document.getElementById('closeCartBtn'),
            cartDrawer: document.getElementById('cartDrawer'),
            drawerBackdrop: document.getElementById('drawerBackdrop'),
            drawerItems: document.getElementById('drawerItems'),
            cartSubtotal: document.getElementById('cartSubtotal'),
            shippingMessage: document.getElementById('shippingMessage'),
            shippingFill: document.getElementById('shippingFill'),
            checkoutBtn: document.getElementById('checkoutBtn'),
            reviewsGrid: document.getElementById('reviewsGrid'),
            newsletterForm: document.getElementById('newsletterForm'),
            newsletterInput: document.getElementById('newsletterInput'),
            newsletterFeedback: document.getElementById('newsletterFeedback'),
            toast: document.getElementById('toast'),
            mobileMenuBtn: document.getElementById('mobileMenuBtn'),
            mobileDrawer: document.getElementById('mobileDrawer')
        };

        let toastTimer = null;
        function showToast(message) {
            els.toast.textContent = message;
            els.toast.classList.add('show');
            clearTimeout(toastTimer);
            toastTimer = setTimeout(() => els.toast.classList.remove('show'), 2200);
        }

        function formatMoney(amount) {
            return '$' + Number(amount).toLocaleString();
        }

        function setCategoryFilter(cat) {
            state.category = cat;
            state.onlySaved = false;
            renderCategories();
            renderChips();
            renderProducts();
            updateSavedPill();
        }

        function renderCategories() {
            els.categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const isActive = !state.onlySaved && state.category === cat.id;
                const btn = document.createElement('button');
                btn.type = 'button';
                btn.className = 'cat-tile' + (isActive ? ' active' : '');
                btn.innerHTML = `
                    <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                    <h3>${cat.name}</h3>
                    <span>${cat.count} items</span>
                `;
                btn.addEventListener('click', () => {
                    setCategoryFilter(isActive ? 'All' : cat.id);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                els.categoriesGrid.appendChild(btn);
            });
        }

        function renderChips() {
            const chipNames = ['All', ...CATEGORIES.map(c => c.id)];
            els.categoryChips.innerHTML = '';
            chipNames.forEach(name => {
                const btn = document.createElement('button');
                btn.type = 'button';
                const active = !state.onlySaved && state.category === name;
                btn.className = 'filter-chip' + (active ? ' active' : '');
                btn.textContent = name;
                btn.addEventListener('click', () => setCategoryFilter(name));
                els.categoryChips.appendChild(btn);
            });
        }

        function getCatalogProducts() {
            // Exclude duplicate flash-deal entry from main 8-item catalog unless searched/filtered
            return PRODUCTS.filter(p => p.id !== 99);
        }

        function getFilteredProducts() {
            let list = [...getCatalogProducts()];

            if (state.onlySaved) {
                list = list.filter(p => state.savedIds.has(p.id));
            } else if (state.category !== 'All') {
                list = list.filter(p => p.category === state.category);
            }

            const q = state.search.trim().toLowerCase();
            if (q) {
                list = list.filter(p =>
                    p.title.toLowerCase().includes(q) ||
                    p.category.toLowerCase().includes(q)
                );
            }

            if (state.sort === 'price-asc') list.sort((a, b) => a.price - b.price);
            else if (state.sort === 'price-desc') list.sort((a, b) => b.price - a.price);
            else if (state.sort === 'rating') list.sort((a, b) => b.rating - a.rating);

            return list;
        }

        function renderProducts() {
            const items = getFilteredProducts();
            els.productsGrid.innerHTML = '';

            const parts = [];
            if (state.onlySaved) parts.push('Saved items');
            else if (state.category !== 'All') parts.push(state.category);
            if (state.search.trim()) parts.push(`matching "${state.search.trim()}"`);
            const scope = parts.length ? ` (${parts.join(' · ')})` : '';
            els.resultSummary.textContent = `Showing ${items.length} ${items.length === 1 ? 'item' : 'items'}${scope}`;

            if (!items.length) {
                els.productsGrid.innerHTML = `
                    <div class="empty-state">
                        <strong>No matching products</strong>
                        <p>Try clearing your search or switching back to all categories.</p>
                        <button type="button" class="btn btn-outline" id="resetFiltersBtn">Reset Filters</button>
                    </div>
                `;
                document.getElementById('resetFiltersBtn').addEventListener('click', () => {
                    state.search = '';
                    els.searchInput.value = '';
                    els.clearSearchBtn.classList.remove('visible');
                    state.sort = 'featured';
                    els.sortSelect.value = 'featured';
                    setCategoryFilter('All');
                });
                return;
            }

            items.forEach(p => {
                const isSaved = state.savedIds.has(p.id);
                const discountPct = p.oldPrice ? Math.round(((p.oldPrice - p.price) / p.oldPrice) * 100) : 0;
                const badgeHtml = p.badge === 'Sale'
                    ? `<span class="status-tag sale">Sale</span>`
                    : p.badge === 'New'
                        ? `<span class="status-tag new">New</span>`
                        : '';

                const card = document.createElement('article');
                card.className = 'product-card';
                card.innerHTML = `
                    <div class="product-media">
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                        ${badgeHtml}
                        <button type="button" class="wish-toggle ${isSaved ? 'saved' : ''}" aria-label="${isSaved ? 'Remove from saved' : 'Save item'}" data-wish="${p.id}">
                            <i class="${isSaved ? 'fas' : 'far'} fa-heart"></i>
                        </button>
                    </div>
                    <div class="product-body">
                        <div class="product-cat">${p.category}</div>
                        <h3 class="product-title">${p.title}</h3>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <span>${p.rating.toFixed(1)} (${p.reviews})</span>
                        </div>
                        <div class="product-price-row">
                            <span class="price-now">${formatMoney(p.price)}</span>
                            ${p.oldPrice ? `<span class="price-was">${formatMoney(p.oldPrice)}</span>` : ''}
                            ${discountPct ? `<span class="discount-pill">-${discountPct}%</span>` : ''}
                        </div>
                    </div>
                    <div class="product-actions">
                        <button type="button" class="add-to-cart" data-add="${p.id}">
                            <i class="fas fa-plus"></i> Add to Cart
                        </button>
                    </div>
                `;
                els.productsGrid.appendChild(card);
            });

            els.productsGrid.querySelectorAll('[data-wish]').forEach(btn => {
                btn.addEventListener('click', () => toggleSave(Number(btn.dataset.wish)));
            });

            els.productsGrid.querySelectorAll('[data-add]').forEach(btn => {
                btn.addEventListener('click', () => addToCart(Number(btn.dataset.add), btn));
            });
        }

        function toggleSave(id) {
            if (state.savedIds.has(id)) {
                state.savedIds.delete(id);
                showToast('Removed from saved items');
            } else {
                state.savedIds.add(id);
                showToast('Saved for later');
            }
            updateSavedPill();
            renderProducts();
        }

        function updateSavedPill() {
            els.wishCount.textContent = state.savedIds.size;
            els.headerWishIcon.className = state.onlySaved ? 'fas fa-heart' : 'far fa-heart';
            els.wishlistFilterBtn.style.border = state.onlySaved ? '1.5px solid var(--accent)' : 'none';
        }

        function addToCart(productId, triggerBtn) {
            const existing = state.cart.find(item => item.id === productId);
            if (existing) existing.qty += 1;
            else state.cart.push({ id: productId, qty: 1 });

            renderCart();
            showToast('Added to your cart');

            if (triggerBtn) {
                const prev = triggerBtn.innerHTML;
                triggerBtn.innerHTML = '<i class="fas fa-check"></i> Added';
                triggerBtn.classList.add('added');
                setTimeout(() => {
                    triggerBtn.innerHTML = prev;
                    triggerBtn.classList.remove('added');
                }, 1100);
            }
        }

        function updateQty(productId, delta) {
            const idx = state.cart.findIndex(item => item.id === productId);
            if (idx === -1) return;
            state.cart[idx].qty += delta;
            if (state.cart[idx].qty <= 0) state.cart.splice(idx, 1);
            renderCart();
        }

        function renderCart() {
            const totalQty = state.cart.reduce((sum, item) => sum + item.qty, 0);
            const subtotal = state.cart.reduce((sum, item) => {
                const prod = PRODUCTS.find(p => p.id === item.id);
                return sum + (prod ? prod.price * item.qty : 0);
            }, 0);

            els.cartCount.textContent = totalQty;
            els.drawerItemCount.textContent = totalQty;
            els.cartSubtotal.textContent = formatMoney(subtotal);

            const remaining = Math.max(0, FREE_SHIPPING_THRESHOLD - subtotal);
            const pct = Math.min(100, Math.round((subtotal / FREE_SHIPPING_THRESHOLD) * 100));
            els.shippingFill.style.width = pct + '%';
            els.shippingMessage.innerHTML = remaining === 0
                ? '<strong style="color:var(--success);">Unlocked:</strong> Free express shipping included'
                : `Add <strong>${formatMoney(remaining)}</strong> more for free express shipping`;

            if (!state.cart.length) {
                els.drawerItems.innerHTML = `
                    <div class="cart-empty">
                        <p>Your cart is empty.</p>
                        <button type="button" class="btn btn-outline" id="continueShoppingBtn">Continue Shopping</button>
                    </div>
                `;
                document.getElementById('continueShoppingBtn').addEventListener('click', closeCart);
                return;
            }

            els.drawerItems.innerHTML = '';
            state.cart.forEach(item => {
                const prod = PRODUCTS.find(p => p.id === item.id);
                if (!prod) return;
                const row = document.createElement('div');
                row.className = 'cart-item';
                row.innerHTML = `
                    <img src="${prod.img}" alt="${prod.title}">
                    <div class="cart-item-meta">
                        <div class="cart-item-title">${prod.title}</div>
                        <div class="cart-item-price">${formatMoney(prod.price * item.qty)}</div>
                        <div class="qty-stepper">
                            <button type="button" aria-label="Decrease quantity" data-dec="${prod.id}">−</button>
                            <span>${item.qty}</span>
                            <button type="button" aria-label="Increase quantity" data-inc="${prod.id}">+</button>
                        </div>
                    </div>
                    <button type="button" class="remove-item" aria-label="Remove ${prod.title}" data-rm="${prod.id}">
                        <i class="fas fa-trash-can"></i>
                    </button>
                `;
                els.drawerItems.appendChild(row);
            });

            els.drawerItems.querySelectorAll('[data-dec]').forEach(b => b.addEventListener('click', () => updateQty(Number(b.dataset.dec), -1)));
            els.drawerItems.querySelectorAll('[data-inc]').forEach(b => b.addEventListener('click', () => updateQty(Number(b.dataset.inc), 1)));
            els.drawerItems.querySelectorAll('[data-rm]').forEach(b => {
                b.addEventListener('click', () => {
                    state.cart = state.cart.filter(x => x.id !== Number(b.dataset.rm));
                    renderCart();
                });
            });
        }

        function openCart() {
            els.cartDrawer.classList.add('open');
            els.drawerBackdrop.classList.add('open');
            els.cartDrawer.setAttribute('aria-hidden', 'false');
        }

        function closeCart() {
            els.cartDrawer.classList.remove('open');
            els.drawerBackdrop.classList.remove('open');
            els.cartDrawer.setAttribute('aria-hidden', 'true');
        }

        function renderReviews() {
            els.reviewsGrid.innerHTML = '';
            REVIEWS.forEach(r => {
                const stars = '<i class="fas fa-star"></i>'.repeat(r.stars);
                const card = document.createElement('article');
                card.className = 'review-card';
                card.innerHTML = `
                    <div class="review-stars">${stars}</div>
                    <blockquote>“${r.text}”</blockquote>
                    <div class="reviewer">
                        <img src="${r.avatar}" alt="${r.name}" loading="lazy">
                        <div>
                            <div class="name">${r.name}</div>
                            <div class="role">${r.role}</div>
                        </div>
                    </div>
                `;
                els.reviewsGrid.appendChild(card);
            });
        }

        function startCountdown() {
            const target = Date.now() + (24 * 60 + 36) * 60 * 1000;
            function update() {
                const diff = Math.max(0, target - Date.now());
                document.getElementById('dealDays').textContent = Math.floor(diff / 86400000);
                document.getElementById('dealHours').textContent = String(Math.floor((diff % 86400000) / 3600000)).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((diff % 3600000) / 60000)).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((diff % 60000) / 1000)).padStart(2, '0');
            }
            update();
            setInterval(update, 1000);
        }

        // Events
        els.searchInput.addEventListener('input', e => {
            state.search = e.target.value;
            els.clearSearchBtn.classList.toggle('visible', Boolean(state.search));
            renderProducts();
        });

        els.searchInput.addEventListener('keydown', e => {
            if (e.key === 'Enter') {
                document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        });

        els.searchSubmitBtn.addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        els.clearSearchBtn.addEventListener('click', () => {
            state.search = '';
            els.searchInput.value = '';
            els.clearSearchBtn.classList.remove('visible');
            renderProducts();
        });

        els.sortSelect.addEventListener('change', e => {
            state.sort = e.target.value;
            renderProducts();
        });

        els.wishlistFilterBtn.addEventListener('click', () => {
            state.onlySaved = !state.onlySaved;
            renderCategories();
            renderChips();
            renderProducts();
            updateSavedPill();
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        els.openCartBtn.addEventListener('click', openCart);
        els.closeCartBtn.addEventListener('click', closeCart);
        els.drawerBackdrop.addEventListener('click', closeCart);
        document.addEventListener('keydown', e => {
            if (e.key === 'Escape') closeCart();
        });

        document.getElementById('addDealBtn').addEventListener('click', function() {
            addToCart(99, this);
        });

        els.checkoutBtn.addEventListener('click', () => {
            if (!state.cart.length) {
                showToast('Add an item before checking out');
                return;
            }
            showToast('Order summary ready — demo checkout complete');
            state.cart = [];
            renderCart();
            closeCart();
        });

        els.newsletterForm.addEventListener('submit', e => {
            e.preventDefault();
            const val = els.newsletterInput.value.trim();
            if (!val || !val.includes('@') || !val.includes('.')) {
                els.newsletterFeedback.style.color = '#fca5a5';
                els.newsletterFeedback.textContent = 'Please enter a valid email address.';
                return;
            }
            els.newsletterFeedback.style.color = '#6ee7b7';
            els.newsletterFeedback.textContent = 'You are subscribed for weekly restocks and deals.';
            els.newsletterInput.value = '';
        });

        els.mobileMenuBtn.addEventListener('click', () => {
            const expanded = els.mobileDrawer.classList.toggle('open');
            els.mobileMenuBtn.setAttribute('aria-expanded', String(expanded));
        });

        els.mobileDrawer.querySelectorAll('a').forEach(a => {
            a.addEventListener('click', () => {
                els.mobileDrawer.classList.remove('open');
                els.mobileMenuBtn.setAttribute('aria-expanded', 'false');
            });
        });

        document.getElementById('copyrightYear').textContent = new Date().getFullYear();

        // Init
        renderCategories();
        renderChips();
        renderProducts();
        renderReviews();
        renderCart();
        startCountdown();
    </script>
</body>
</html>
