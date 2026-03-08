# ─────────────────────────────────────────────────────────────
#  HOW TO LINK YOUR MAIN PAGE TO THE NEW SERVICES PAGE
#  GitHub Repo: staple-agency/com
# ─────────────────────────────────────────────────────────────

## STEP 1 — Upload services.html
Upload `services.html` to your repo root (same folder as index.html).
Your repo should then look like:
  com/
  ├── index.html        ← existing main page
  ├── services.html     ← new file you're uploading now
  └── logo-blue.svg     ← (already there)


## STEP 2 — Change the nav "Services" link in index.html

Find this line in your index.html (it's inside the <nav> block):

  BEFORE:
  <li><a href="#services">Services</a></li>

  AFTER:
  <li><a href="services.html">Services</a></li>


## STEP 3 — (Optional but recommended) Add a prominent CTA button

Find the hero section in index.html where it says "STORY TELLING | PRODUCT DEVELOPMENT".
Add this button right below the scroll indicator arrow:

  <a href="services.html" style="
    display:inline-flex; align-items:center; gap:0.6rem;
    background:linear-gradient(135deg,#2563eb,#7c3aed);
    color:white; padding:0.85rem 2rem; border-radius:50px;
    font-size:1rem; font-weight:600; text-decoration:none;
    box-shadow:0 0 30px rgba(37,99,235,0.4);
    transition:all 0.3s; margin-top:1.5rem;
    position:relative; z-index:10;
  ">
    View Our Services →
  </a>


## STEP 4 — Commit & push
After saving both files, commit and push.
GitHub Pages will auto-deploy within ~60 seconds.

Your services page will be live at:
  https://staple-agency.github.io/com/services.html
