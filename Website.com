<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MegaStore – Full E‑Commerce</title>
  <style>
    :root {
      --primary:#1e88e5; --dark:#1f2937; --light:#f9fafb; --gray:#6b7280;
    }
    *{box-sizing:border-box;margin:0;padding:0;font-family:Arial,Helvetica,sans-serif}
    body{background:var(--light);color:#111}
    a{text-decoration:none;color:inherit}
    header{background:var(--dark);color:#fff;padding:15px 30px;display:flex;align-items:center;justify-content:space-between}
    header h1{font-size:24px}
    nav a{margin:0 12px;color:#e5e7eb;font-weight:bold}
    nav a:hover{color:#fff}
    .container{max-width:1300px;margin:auto;padding:20px}
    .search-bar{display:flex;gap:10px;margin:20px 0}
    .search-bar input{flex:1;padding:10px;border:1px solid #ccc;border-radius:6px}
    .search-bar button{padding:10px 20px;background:var(--primary);border:none;color:#fff;border-radius:6px;cursor:pointer}
    .hero{background:linear-gradient(120deg,#1e88e5,#42a5f5);color:#fff;padding:60px;border-radius:16px;margin-bottom:30px}
    .hero h2{font-size:36px;margin-bottom:10px}
    .hero p{font-size:18px}
    .layout{display:grid;grid-template-columns:250px 1fr;gap:20px}
    .sidebar{background:#fff;border-radius:12px;padding:20px;box-shadow:0 4px 10px rgba(0,0,0,.08)}
    .sidebar h3{margin-bottom:10px}
    .sidebar label{display:block;margin:8px 0;color:var(--gray)}
    .products{display:grid;grid-template-columns:repeat(auto-fill,minmax(220px,1fr));gap:20px}
    .product{background:#fff;border-radius:12px;padding:15px;box-shadow:0 4px 10px rgba(0,0,0,.08);display:flex;flex-direction:column}
    .product img{width:100%;height:160px;object-fit:cover;border-radius:8px;margin-bottom:10px}
    .product h4{margin-bottom:5px}
    .price{color:var(--primary);font-weight:bold;margin-bottom:10px}
    .product button{margin-top:auto;background:var(--primary);border:none;color:#fff;padding:10px;border-radius:6px;cursor:pointer}
    .product button:hover{opacity:.9}
    .cart{position:fixed;top:0;right:0;width:350px;height:100vh;background:#fff;box-shadow:-4px 0 10px rgba(0,0,0,.1);padding:20px;overflow:auto;display:none}
    .cart h3{margin-bottom:10px}
    .cart-item{display:flex;justify-content:space-between;margin:10px 0}
    .cart-total{font-weight:bold;margin-top:15px}
    .checkout{background:var(--primary);color:#fff;border:none;width:100%;padding:12px;border-radius:6px;margin-top:10px;cursor:pointer}
    footer{background:var(--dark);color:#fff;margin-top:40px;padding:40px}
    footer .grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:20px}
    footer h4{margin-bottom:10px}
    footer p,footer a{color:#d1d5db;font-size:14px}
    @media(max-width:900px){.layout{grid-template-columns:1fr}.sidebar{order:2}}
  </style>
</head>
<body>

<header>
  <h1>MegaStore</h1>
  <nav>
    <a href="#">Home</a>
    <a href="#">Shop</a>
    <a href="#">Deals</a>
    <a href="#">About</a>
    <a href="#" onclick="toggleCart()">Cart 🛒</a>
  </nav>
</header>

<div class="container">
  <div class="hero">
    <h2>Ultimate Online Store</h2>
    <p>Electronics • Fashion • Home • More than 1000 products</p>
  </div>

  <div class="search-bar">
    <input type="text" id="search" placeholder="Search products..." onkeyup="filterProducts()" />
    <button>Search</button>
  </div>

  <div class="layout">
    <aside class="sidebar">
      <h3>Categories</h3>
      <label><input type="checkbox" /> Electronics</label>
      <label><input type="checkbox" /> Fashion</label>
      <label><input type="checkbox" /> Home</label>
      <label><input type="checkbox" /> Sports</label>
      <label><input type="checkbox" /> Books</label>
      <hr style="margin:15px 0" />
      <h3>Price</h3>
      <label><input type="radio" name="p" /> Under $50</label>
      <label><input type="radio" name="p" /> $50 – $200</label>
      <label><input type="radio" name="p" /> $200+</label>
    </aside>

    <section class="products" id="products">
      <div class="product" data-name="Laptop">
        <img src="https://via.placeholder.com/300x200" />
        <h4>Laptop Pro</h4>
        <div class="price">$999</div>
        <button onclick="addToCart('Laptop Pro',999)">Add to Cart</button>
      </div>
      <div class="product" data-name="Phone">
        <img src="https://via.placeholder.com/300x200" />
        <h4>Smart Phone</h4>
        <div class="price">$699</div>
        <button onclick="addToCart('Smart Phone',699)">Add to Cart</button>
      </div>
      <div class="product" data-name="Shoes">
        <img src="https://via.placeholder.com/300x200" />
        <h4>Running Shoes</h4>
        <div class="price">$120</div>
        <button onclick="addToCart('Running Shoes',120)">Add to Cart</button>
      </div>
      <div class="product" data-name="Headphones">
        <img src="https://via.placeholder.com/300x200" />
        <h4>Headphones</h4>
        <div class="price">$89</div>
        <button onclick="addToCart('Headphones',89)">Add to Cart</button>
      </div>
    </section>
  </div>
</div>

<div class="cart" id="cart">
  <h3>Your Cart</h3>
  <div id="cartItems"></div>
  <div class="cart-total" id="cartTotal">Total: $0</div>
  <button class="checkout" onclick="checkout()">Checkout</button>
</div>

<footer>
  <div class="grid">
    <div>
      <h4>MegaStore</h4>
      <p>Full e‑commerce platform ready for scaling.</p>
    </div>
    <div>
      <h4>Customer Service</h4>
      <a href="#">Help Center</a><br />
      <a href="#">Returns</a><br />
      <a href="#">Shipping</a>
    </div>
    <div>
      <h4>Company</h4>
      <a href="#">About</a><br />
      <a href="#">Careers</a><br />
      <a href="#">Contact</a>
    </div>
    <div>
      <h4>Follow Us</h4>
      <a href="#">Facebook</a><br />
      <a href="#">Instagram</a><br />
      <a href="#">Twitter</a>
    </div>
  </div>
</footer>

<script>
  let cart=[];
  function toggleCart(){
    const c=document.getElementById('cart');
    c.style.display=c.style.display==='block'?'none':'block';
  }
  function addToCart(name,price){
    cart.push({name,price});
    renderCart();
  }
  function renderCart(){
    const items=document.getElementById('cartItems');
    const total=document.getElementById('cartTotal');
    items.innerHTML='';
    let sum=0;
    cart.forEach(p=>{
      sum+=p.price;
      items.innerHTML+=`<div class='cart-item'><span>${p.name}</span><span>$${p.price}</span></div>`;
    });
    total.innerText=`Total: $${sum}`;
  }
  function checkout(){alert('Checkout complete (demo)')}
  function filterProducts(){
    const q=document.getElementById('search').value.toLowerCase();
    document.querySelectorAll('.product').forEach(p=>{
      p.style.display=p.dataset.name.toLowerCase().includes(q)?'flex':'none';
    });
  }
</script>

</body>
</html>
