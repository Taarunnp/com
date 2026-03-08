# STAPLE Website - Quick Start Guide

## 🚀 Get Your Website Live in 5 Minutes

### Step 1: Upload to GitHub

**Option A: Using the Deploy Script (Easiest)**
1. Open Terminal (Mac/Linux) or Command Prompt (Windows)
2. Navigate to your website folder:
   ```bash
   cd path/to/your/website
   ```
3. Run the deployment script:
   - **Mac/Linux**: `./deploy.sh`
   - **Windows**: `deploy.bat`
4. Follow the prompts!

**Option B: Manual Git Commands**
1. Create a repository on [GitHub](https://github.com/new)
2. Open Terminal/Command Prompt in your website folder
3. Run these commands (replace with your details):
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO.git
   git branch -M main
   git push -u origin main
   ```

### Step 2: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages** (in left sidebar)
3. Under **Source**, select branch: **main**
4. Click **Save**
5. Wait 1-2 minutes ⏰

### Step 3: Visit Your Live Site! 🎉

Your site will be available at:
```
https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/
```

## 📁 Files Included

| File | Purpose |
|------|---------|
| `index.html` | Your website (main file) |
| `README.md` | Project documentation |
| `DEPLOYMENT.md` | Detailed deployment guide |
| `QUICK_START.md` | This file |
| `.gitignore` | Files to exclude from git |
| `.nojekyll` | Prevents Jekyll processing |
| `deploy.sh` | Deployment helper (Mac/Linux) |
| `deploy.bat` | Deployment helper (Windows) |
| `CNAME.example` | Custom domain template |

## 🌐 Custom Domain (Optional)

Want to use your own domain like `www.stapleagency.com`?

1. Rename `CNAME.example` to `CNAME`
2. Edit it to contain only your domain
3. Update your DNS settings (see `DEPLOYMENT.md` for details)

## 🔄 Updating Your Website

When you make changes to `index.html`:

```bash
git add index.html
git commit -m "Updated website"
git push
```

Changes will be live in 1-2 minutes!

## ❓ Need Help?

- **Full deployment guide**: See `DEPLOYMENT.md`
- **GitHub Pages docs**: https://pages.github.com
- **Git tutorial**: https://git-scm.com/docs/gittutorial

## 📧 Contact

Having issues? Reach out to: staple.enquiry@gmail.com

---

**That's it! Your website is now live! 🚀**
