# GitHub Pages Deployment Guide

## Quick Start (No Custom Domain)

1. **Create GitHub Repository**
   ```bash
   # Initialize git in your project folder
   git init
   
   # Add all files
   git add .
   
   # Commit
   git commit -m "Initial commit"
   
   # Create repository on GitHub (via web interface)
   # Then connect and push:
   git remote add origin https://github.com/YOUR-USERNAME/REPOSITORY-NAME.git
   git branch -M main
   git push -u origin main
   ```

2. **Enable GitHub Pages**
   - Go to your repository on GitHub
   - Click "Settings" tab
   - Scroll to "Pages" section (left sidebar)
   - Under "Source", select branch: `main`
   - Select folder: `/ (root)`
   - Click "Save"
   - Wait 1-2 minutes for deployment
   - Your site will be live at: `https://YOUR-USERNAME.github.io/REPOSITORY-NAME/`

## Custom Domain Setup

1. **Create CNAME file**
   - In your repository root, create a file named `CNAME` (no extension)
   - Add your domain name only (example: `www.stapleagency.com` or `stapleagency.com`)

2. **Configure DNS Settings**
   
   **For apex domain (example.com):**
   - Add A records pointing to GitHub's IP addresses:
     ```
     185.199.108.153
     185.199.109.153
     185.199.110.153
     185.199.111.153
     ```
   
   **For www subdomain (www.example.com):**
   - Add CNAME record pointing to: `YOUR-USERNAME.github.io`

3. **Update GitHub Settings**
   - Go to repository Settings → Pages
   - Enter your custom domain in the "Custom domain" field
   - Check "Enforce HTTPS" (wait for SSL certificate to provision)

## Updating Your Site

```bash
# Make changes to index.html

# Stage changes
git add index.html

# Commit with message
git commit -m "Update website content"

# Push to GitHub
git push

# Changes will be live in 1-2 minutes
```

## Testing Before Deploy

Simply open `index.html` in your browser to test locally before pushing to GitHub.

## Troubleshooting

**Site not loading?**
- Check that `index.html` is in the root directory
- Verify GitHub Pages is enabled in Settings
- Wait a few minutes after first deployment

**Custom domain not working?**
- Check DNS propagation (can take 24-48 hours)
- Verify CNAME file contains only the domain name
- Use [dnschecker.org](https://dnschecker.org) to verify DNS settings

**Changes not appearing?**
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
- Check if changes were pushed: `git log`
- Wait 1-2 minutes for GitHub to rebuild

## Additional Resources

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Custom Domain Setup](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
