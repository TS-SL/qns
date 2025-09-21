# Deployment Guide for Queens Networking Society Website

This guide will help you deploy the website to Netlify and set up form handling.

## 🚀 Netlify Deployment

### Method 1: Drag and Drop (Quickest)

1. **Prepare your files**:
   - Zip all your project files (index.html, about.html, contact.html, styles.css, script.js, README.md)
   - Or ensure all files are in a single folder

2. **Deploy to Netlify**:
   - Go to [netlify.com](https://netlify.com)
   - Sign up for a free account
   - Drag and drop your project folder onto the Netlify dashboard
   - Your site will be live in minutes!

### Method 2: Git Integration (Recommended)

1. **Install Git** (if not already installed):
   - Download from [git-scm.com](https://git-scm.com/downloads)
   - Follow installation instructions

2. **Initialize Git repository**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Queens Networking Society website"
   ```

3. **Create GitHub repository**:
   - Go to [github.com](https://github.com)
   - Create a new repository named `queens-networking-society-website`
   - Follow GitHub's instructions to push your code

4. **Connect to Netlify**:
   - In Netlify dashboard, click "New site from Git"
   - Connect your GitHub account
   - Select your repository
   - Deploy settings:
     - Build command: (leave empty)
     - Publish directory: (leave empty)
   - Click "Deploy site"

## 📧 Form Setup with Formspree

### Step 1: Create Formspree Account

1. Go to [formspree.io](https://formspree.io)
2. Sign up for a free account
3. Create a new form

### Step 2: Update Contact Form

1. **Get your form endpoint**:
   - In Formspree dashboard, copy your form's endpoint URL
   - It will look like: `https://formspree.io/f/YOUR_FORM_ID`

2. **Update contact.html**:
   ```html
   <!-- Replace this line in contact.html -->
   <form class="contact-form" action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   ```

3. **Test the form**:
   - Deploy your updated site
   - Submit a test message
   - Check your email for the form submission

### Step 3: Customize Form (Optional)

You can customize the form behavior by adding these attributes to your form tag:

```html
<form class="contact-form" 
      action="https://formspree.io/f/YOUR_FORM_ID" 
      method="POST"
      data-netlify="true"
      netlify-honeypot="bot-field">
  
  <!-- Hidden field for Netlify -->
  <input type="hidden" name="form-name" value="contact">
  
  <!-- Honeypot field for spam protection -->
  <div style="display: none;">
    <input name="bot-field">
  </div>
  
  <!-- Your existing form fields -->
  <!-- ... -->
</form>
```

## 🔧 Custom Domain Setup

### Step 1: Add Custom Domain in Netlify

1. In Netlify dashboard, go to "Domain settings"
2. Click "Add custom domain"
3. Enter your domain name (e.g., `queensnetworking.ca`)

### Step 2: Update DNS Records

1. **Go to your domain registrar** (GoDaddy, Namecheap, etc.)
2. **Update DNS records**:
   - Add a CNAME record:
     - Name: `www`
     - Value: `your-site-name.netlify.app`
   - Add an A record:
     - Name: `@` (or your domain root)
     - Value: `75.2.60.5` (Netlify's IP)

3. **Wait for propagation** (can take up to 24 hours)

## 📱 Mobile Testing

After deployment, test your site on:

- **Desktop browsers**: Chrome, Firefox, Safari, Edge
- **Mobile devices**: iOS Safari, Android Chrome
- **Tablets**: iPad Safari, Android tablets

## 🔍 SEO Optimization

### Add Meta Tags

Add these to the `<head>` section of each HTML file:

```html
<!-- SEO Meta Tags -->
<meta name="description" content="Queens Networking Society - Connect, Network, Grow. Join our professional networking community at Queen's University.">
<meta name="keywords" content="networking, Queen's University, professional development, career, students">
<meta name="author" content="Queens Networking Society">

<!-- Open Graph Tags (for social media sharing) -->
<meta property="og:title" content="Queens Networking Society">
<meta property="og:description" content="Connect, Network, Grow with Queens Networking Society">
<meta property="og:type" content="website">
<meta property="og:url" content="https://your-domain.com">
<meta property="og:image" content="https://your-domain.com/og-image.jpg">

<!-- Twitter Card Tags -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Queens Networking Society">
<meta name="twitter:description" content="Connect, Network, Grow with Queens Networking Society">
<meta name="twitter:image" content="https://your-domain.com/twitter-image.jpg">
```

## 🚨 Troubleshooting

### Common Issues

1. **Form not working**:
   - Check Formspree endpoint URL
   - Ensure form has `method="POST"`
   - Verify all required fields are present

2. **Site not loading**:
   - Check Netlify build logs
   - Ensure all files are uploaded
   - Verify file names are correct (case-sensitive)

3. **Mobile layout issues**:
   - Test responsive design
   - Check CSS media queries
   - Verify viewport meta tag

4. **Custom domain not working**:
   - Wait for DNS propagation
   - Check DNS records are correct
   - Verify domain is added in Netlify

### Getting Help

- **Netlify Support**: [docs.netlify.com](https://docs.netlify.com)
- **Formspree Support**: [help.formspree.io](https://help.formspree.io)
- **GitHub Issues**: Create an issue in your repository

## 📊 Analytics Setup (Optional)

### Google Analytics

1. Create a Google Analytics account
2. Get your tracking ID (GA4)
3. Add this to the `<head>` section of all HTML files:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## 🎉 Success!

Your Queens Networking Society website is now live and ready to connect students and professionals!

**Next Steps**:
- Share the website URL with your members
- Test all functionality thoroughly
- Set up regular backups
- Plan for future updates and enhancements

---

*Need help? Check the main README.md file or create an issue in your GitHub repository.*
