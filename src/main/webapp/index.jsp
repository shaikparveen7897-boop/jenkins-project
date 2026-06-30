<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · Modern E‑Commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,400;0,500;0,600;0,700;1,400&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <style>
    /* ----- reset & variables ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    :root {
      --bg: #f8faff;
      --card: #ffffff;
      --primary: #0b1e33;
      --accent: #3b82f6;
      --accent-light: #dbeafe;
      --muted: #5b6e8a;
      --surface: #f1f5f9;
      --success: #22c55e;
      --radius: 20px;
      --shadow-sm: 0 8px 24px rgba(0, 20, 50, 0.04);
      --shadow-hover: 0 20px 40px rgba(0, 20, 50, 0.08);
    }
    body {
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }
    img { display: block; max-width: 100%; }
    button { cursor: pointer; font-family: inherit; }

    /* ----- header (glass) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.75);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(59, 130, 246, 0.08);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.02em;
    }
    .brand .highlight {
      background: var(--accent);
      color: white;
      padding: 2px 12px;
      border-radius: 40px;
      font-size: 18px;
    }
    .brand i { color: var(--accent); }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      padding: 6px 6px 6px 18px;
      border-radius: 60px;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(0,0,0,0.02);
      min-width: 260px;
      transition: 0.2s;
    }
    .search-wrap:focus-within {
      box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.2);
      border-color: var(--accent);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 100%;
      outline: none;
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      font-size: 16px;
      transition: 0.2s;
    }
    .search-wrap button:hover { background: #2563eb; }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 8px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-links a:hover {
      background: var(--accent-light);
      color: var(--accent);
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      width: 44px;
      height: 44px;
      border-radius: 40px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      font-size: 18px;
      color: var(--primary);
      transition: 0.15s;
      position: relative;
    }
    .icon-btn:hover { background: var(--surface); }
    .cart-badge {
      position: absolute;
      top: 4px;
      right: 4px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: grid;
      place-items: center;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 24px;
    }

    /* hero */
    .hero {
      background: linear-gradient(145deg, #eef4ff, #ffffff);
      border-radius: var(--radius);
      padding: 60px 40px;
      margin-top: 24px;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 40px;
      box-shadow: var(--shadow-sm);
    }
    .hero-content { flex: 1 1 300px; }
    .hero-content h1 {
      font-size: 44px;
      font-weight: 700;
      letter-spacing: -0.03em;
      line-height: 1.1;
    }
    .hero-content h1 span { color: var(--accent); }
    .hero-content p {
      color: var(--muted);
      margin: 16px 0 28px;
      font-size: 18px;
      max-width: 440px;
    }
    .btn-group { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      transition: 0.2s;
    }
    .btn-primary {
      background: var(--primary);
      color: white;
    }
    .btn-primary:hover { background: #1a3455; transform: scale(0.97); }
    .btn-outline {
      background: transparent;
      border: 1.5px solid var(--primary);
      color: var(--primary);
    }
    .btn-outline:hover { background: var(--primary); color: white; }
    .hero-illustration {
      flex: 1 1 240px;
      text-align: center;
      font-size: 100px;
      color: var(--accent);
      opacity: 0.4;
    }

    /* section */
    .section { padding: 48px 0; }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      margin-bottom: 24px;
    }
    .section-header h2 {
      font-size: 28px;
      font-weight: 600;
    }
    .section-header .muted { color: var(--muted); }

    /* categories */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 20px;
    }
    .cat-card {
      background: var(--card);
      border-radius: 28px;
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: 0.2s;
      border: 1px solid rgba(0,0,0,0.02);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon {
      font-size: 32px;
      color: var(--accent);
      margin-bottom: 8px;
    }
    .cat-card h4 { font-weight: 600; font-size: 15px; }

    /* product grid */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: 0.25s;
      border: 1px solid rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
    }
    .product-card .img-wrapper {
      height: 200px;
      background: #f0f5fe;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 12px;
    }
    .product-card .img-wrapper img {
      height: 100%;
      width: 100%;
      object-fit: contain;
    }
    .product-body {
      padding: 16px 18px 12px;
      flex: 1;
    }
    .product-body .title {
      font-weight: 600;
      font-size: 16px;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 12px;
      color: var(--muted);
      background: var(--surface);
      padding: 2px 12px;
      border-radius: 30px;
      display: inline-block;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 10px;
    }
    .price-current { font-weight: 700; font-size: 20px; }
    .price-old { color: var(--muted); text-decoration: line-through; font-size: 14px; }
    .rating {
      color: #f59e0b;
      font-size: 14px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-footer {
      padding: 12px 18px 18px;
      display: flex;
      gap: 10px;
      border-top: 1px solid #f0f4fe;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 12px;
      border-radius: 40px;
      font-weight: 600;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover { background: #1a3455; }
    .wish-btn {
      background: var(--surface);
      border: none;
      width: 48px;
      border-radius: 40px;
      font-size: 18px;
      transition: 0.2s;
    }
    .wish-btn:hover { background: #fee2e2; color: #ef4444; }

    /* deal */
    .deal-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 32px;
      display: flex;
      flex-wrap: wrap;
      gap: 32px;
      align-items: center;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(59,130,246,0.08);
    }
    .deal-card .deal-img {
      flex: 1 1 180px;
      background: #eaf1fe;
      border-radius: 20px;
      padding: 20px;
      text-align: center;
      font-size: 80px;
      color: var(--accent);
    }
    .deal-info { flex: 2 1 260px; }
    .deal-info h3 { font-size: 28px; }
    .timer-group {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }
    .timer-box {
      background: var(--primary);
      color: white;
      padding: 10px 16px;
      border-radius: 14px;
      min-width: 64px;
      text-align: center;
    }
    .timer-box .num { font-size: 26px; font-weight: 700; line-height: 1; }
    .timer-box .label { font-size: 11px; opacity: 0.7; }

    /* testimonials */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 24px;
    }
    .testimonial-card {
      background: white;
      padding: 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow-sm);
    }
    .testimonial-card .stars { color: #f59e0b; margin-bottom: 8px; }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
    }
    .newsletter-box h3 { font-size: 28px; }
    .newsletter-box p { opacity: 0.7; margin: 8px 0 20px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 24px;
      border-radius: 60px;
      border: none;
      min-width: 240px;
      font-size: 15px;
    }
    .newsletter-form .btn { background: var(--accent); color: white; }
    .newsletter-form .btn:hover { background: #2563eb; }

    /* footer */
    footer {
      padding: 40px 0 24px;
      color: var(--muted);
      border-top: 1px solid rgba(0,0,0,0.04);
    }

    /* responsive */
    @media (max-width: 820px) {
      .nav-links { display: none; }
      .mobile-toggle { display: inline-block; }
      .search-wrap { min-width: 160px; }
      .hero { padding: 32px 20px; }
      .hero-content h1 { font-size: 32px; }
    }
    @media (max-width: 540px) {
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 3; flex: 1 1 100%; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <!-- left: brand + mobile toggle -->
      <div style="display: flex; align-items: center; gap: 12px;">
        <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
        <a href="#" class="brand">
          <i class="fas fa-cube"></i> Nexus<span class="highlight">Shop</span>
        </a>
      </div>

      <!-- nav (desktop) -->
      <ul class="nav-links" id="navLinks">
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="catTrigger"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
        <li><a href="#"><i class="fas fa-heart"></i> Wishlist</a></li>
      </ul>

      <!-- right: search + actions -->
      <div style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap;">
        <div class="search-wrap">
          <input type="text" id="searchInput" placeholder="Search for products..." />
          <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn"><i class="far fa-user"></i></button>
          <button class="icon-btn" id="cartBtn">
            <i class="fas fa-shopping-bag"></i>
            <span class="cart-badge" id="cartCount">0</span>
          </button>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display: none; background: white; padding: 12px 24px; border-top: 1px solid #eef2f6;">
      <ul style="list-style: none; display: flex; flex-direction: column; gap: 10px; padding: 6px 0;">
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
        <li><a href="#"><i class="fas fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </header>

  <main>
    <div class="container">
      <!-- hero -->
      <section class="hero">
        <div class="hero-content">
          <h1>Discover <span>premium</span> picks</h1>
          <p>Curated electronics, fashion & accessories — all in one place. Fresh drops every week.</p>
          <div class="btn-group">
            <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-store"></i> Shop now</button>
            <button class="btn btn-outline" id="exploreBtn"><i class="fas fa-compass"></i> Explore</button>
          </div>
        </div>
        <div class="hero-illustration">
          <i class="fas fa-shopping-bag"></i>
        </div>
      </section>

      <!-- categories -->
      <section class="section" aria-labelledby="catTitle">
        <div class="section-header">
          <h2 id="catTitle">Categories</h2>
          <span class="muted">Browse by interest</span>
        </div>
        <div class="category-grid" id="categoriesGrid"></div>
      </section>

      <!-- products -->
      <section class="section" aria-labelledby="prodTitle">
        <div class="section-header">
          <h2 id="prodTitle">Trending now</h2>
          <span class="muted">Popular this week</span>
        </div>
        <div class="product-grid" id="productsGrid"></div>
      </section>

      <!-- deal -->
      <section id="deals" class="section">
        <div class="section-header">
          <h2>⚡ Flash deal</h2>
          <span class="muted">Limited time</span>
        </div>
        <div class="deal-card">
          <div class="deal-img"><i class="fas fa-laptop"></i></div>
          <div class="deal-info">
            <h3>MacBook Air M2</h3>
            <p class="muted">Supercharged by the M2 chip — thin, light, and legendary.</p>
            <div class="timer-group">
              <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
              <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
              <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
              <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
            </div>
            <div style="display: flex; align-items: center; gap: 16px; flex-wrap: wrap;">
              <span style="font-size: 28px; font-weight: 700;">$999</span>
              <span style="text-decoration: line-through; color: var(--muted);">$1,199</span>
              <span style="background: #ef4444; color: white; padding: 4px 14px; border-radius: 40px; font-weight: 600;">-17%</span>
            </div>
            <button class="btn btn-primary" id="dealBuyBtn" style="margin-top: 18px;"><i class="fas fa-bolt"></i> Grab deal</button>
          </div>
        </div>
      </section>

      <!-- testimonials -->
      <section class="section">
        <div class="section-header">
          <h2>❤️ Customer love</h2>
          <span class="muted">Real reviews</span>
        </div>
        <div class="testimonial-grid" id="testimonialGrid">
          <div class="testimonial-card">
            <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <p>"Amazing quality and fast delivery. My new favourite store!"</p>
            <div style="font-weight: 600; margin-top: 8px;">— Olivia Chen</div>
          </div>
          <div class="testimonial-card">
            <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
            <p>"Great selection, smooth checkout. Will definitely order again."</p>
            <div style="font-weight: 600; margin-top: 8px;">— Marcus Rivera</div>
          </div>
          <div class="testimonial-card">
            <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            <p>"The customer support was super helpful. Highly recommend!"</p>
            <div style="font-weight: 600; margin-top: 8px;">— Priya Sharma</div>
          </div>
        </div>
      </section>

      <!-- newsletter -->
      <section class="section">
        <div class="newsletter-box">
          <h3>📬 Stay in the loop</h3>
          <p>Get the latest deals and exclusive offers straight to your inbox.</p>
          <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Enter your email" required />
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          </form>
          <div id="newsletterMsg" style="margin-top: 12px; font-weight: 500; display: none;"></div>
        </div>
      </section>
    </div>
  </main>

  <footer>
    <div class="container" style="display: flex; flex-wrap: wrap; gap: 32px; justify-content: space-between;">
      <div>
        <div style="font-weight: 700; font-size: 20px;"><i class="fas fa-cube" style="color: var(--accent);"></i> NexusShop</div>
        <p style="max-width: 280px; margin-top: 8px;">Modern e‑commerce demo — built with simplicity and style.</p>
        <div style="display: flex; gap: 12px; margin-top: 14px;">
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-github"></i></a>
        </div>
      </div>
      <div style="display: flex; gap: 40px; flex-wrap: wrap;">
        <div><div style="font-weight: 600;">Company</div><div class="muted" style="line-height: 2;">About<br/>Careers<br/>Press</div></div>
        <div><div style="font-weight: 600;">Support</div><div class="muted" style="line-height: 2;">Help Center<br/>Returns<br/>Contact</div></div>
      </div>
    </div>
    <div style="text-align: center; padding-top: 24px; color: var(--muted); font-size: 13px;">© <span id="year"></span> NexusShop · all rights reserved</div>
  </footer>

  <script>
    // --- DATA ---
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=300&q=80', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=300&q=80', category: 'laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=300&q=80', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=300&q=80', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=300&q=80', category: 'gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=300&q=80', category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=300&q=80', category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=300&q=80', category: 'gadgets' }
    ];

    // --- state ---
    let cartCount = 0;

    // --- DOM refs ---
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');

    // --- helpers ---
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[s]));
    }

    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const card = document.createElement('div');
        card.className = 'cat-card';
        card.innerHTML = `
          <div class="icon"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
        `;
        card.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('prodTitle').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(card);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
          <div class="img-wrapper"><img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy" /></div>
          <div class="product-body">
            <div class="title">${escapeHtml(p.title)}</div>
            <span class="category-tag">${escapeHtml(p.category)}</span>
            <div class="price-row">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
              <span class="rating"><i class="fas fa-star"></i> ${p.rating}</span>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });
      // add listeners
      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', () => {
          const id = Number(btn.dataset.id);
          addToCart(id, btn);
        });
      });
    }

    function addToCart(id, btn) {
      const product = PRODUCTS.find(p => p.id === id);
      if (!product) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.style.background = '#22c55e';
        setTimeout(() => {
          btn.innerHTML = orig;
          btn.style.background = '';
        }, 1000);
      }
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // --- search ---
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // --- mobile toggle ---
    document.getElementById('mobileToggle').addEventListener('click', () => {
      const menu = document.getElementById('mobileMenu');
      menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
    });

    // --- deal timer ---
    (function setupTimer() {
      const target = new Date(Date.now() + (27 * 60 + 20) * 60 * 1000); // 27h20m demo
      const tick = () => {
        const diff = target - new Date();
        if (diff <= 0) return;
        document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
        document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000))/(3600*1000))).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000))/(60*1000))).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000))/1000)).padStart(2,'0');
      };
      tick();
      setInterval(tick, 1000);
    })();

    // --- newsletter ---
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email.';
        msg.style.color = '#fbbf24';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '✅ Subscribed! Welcome to the club.';
      msg.style.color = '#86efac';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => { msg.style.display = 'none'; }, 3000);
    });

    // --- buttons ---
    document.getElementById('shopNowBtn').addEventListener('click', () => {
      document.getElementById('prodTitle').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreBtn').addEventListener('click', () => {
      document.getElementById('catTitle').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('dealBuyBtn').
