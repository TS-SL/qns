# Queens Networking Society Website

A modern, responsive website for the Queens Networking Society built with HTML, CSS, and JavaScript.

## 🚀 Features

- **Responsive Design**: Optimized for desktop, tablet, and mobile devices
- **Modern UI/UX**: Clean, professional design with smooth animations
- **Three Main Pages**: Home, About Us, and Contact
- **Interactive Navigation**: Mobile-friendly hamburger menu
- **Contact Form**: Ready for Formspree integration
- **Accessibility**: Semantic HTML and keyboard navigation support
- **Performance**: Optimized loading and smooth scrolling

## 📁 Project Structure

```
queens-networking-society-website/
├── index.html          # Home page
├── about.html          # About Us page
├── contact.html        # Contact page
├── styles.css          # Main stylesheet
├── script.js           # JavaScript functionality
└── README.md           # Project documentation
```

## 🛠️ Tech Stack

- **HTML5**: Semantic markup and structure
- **CSS3**: Modern styling with Flexbox and Grid
- **JavaScript (ES6+)**: Interactive functionality
- **Font Awesome**: Icons and social media links
- **Google Fonts**: Inter font family
- **Formspree**: Form submission handling (ready for integration)

## 🎨 Design Features

- **Color Scheme**: Professional blue gradient theme
- **Typography**: Inter font family for modern readability
- **Layout**: CSS Grid and Flexbox for responsive design
- **Animations**: Smooth hover effects and scroll animations
- **Icons**: Font Awesome icons throughout the site

## 📱 Responsive Breakpoints

- **Desktop**: 1200px and above
- **Tablet**: 768px - 1199px
- **Mobile**: Below 768px

## 🔧 Setup Instructions

### Quick Deployment (Recommended)

1. **Install Git** (if not already installed):
   - Download from [git-scm.com](https://git-scm.com/downloads)
   - Install with default settings

2. **Deploy to GitHub & Netlify**:
   ```bash
   # Run the deployment script
   ./deploy.ps1
   
   # Or manually:
   git init
   git add .
   git commit -m "Initial commit: Queens Networking Society website"
   git remote add origin https://github.com/TS-SL/qns.git
   git push -u origin main
   ```

3. **Verify Deployment**:
   - Check your Netlify dashboard
   - Test the live website
   - Set up Formspree for contact form

### Local Development

1. **Open in browser**:
   - Simply open `index.html` in your web browser
   - Or use a local server:
     ```bash
     # Using Python
     python -m http.server 8000
     
     # Using Node.js
     npx http-server
     ```

2. **For development**:
   - Edit HTML, CSS, or JavaScript files as needed
   - Refresh browser to see changes

## 🌐 Deployment

### Netlify Deployment

1. **Connect to Netlify**:
   - Push your code to GitHub
   - Connect your GitHub repository to Netlify
   - Netlify will automatically deploy your site

2. **Custom Domain** (optional):
   - Add your custom domain in Netlify settings
   - Update DNS records as instructed

3. **Form Integration**:
   - Sign up for Formspree at [formspree.io](https://formspree.io)
   - Replace `example@domain.com` in `contact.html` with your Formspree endpoint
   - Test form submissions

## 📝 Customization

### Updating Content

- **Text Content**: Edit HTML files directly
- **Styling**: Modify `styles.css` for colors, fonts, and layout
- **Functionality**: Update `script.js` for interactive features

### Adding Pages

1. Create new HTML file (e.g., `events.html`)
2. Add navigation link in all HTML files
3. Update `styles.css` if new styles are needed
4. Test responsive design

### Form Configuration

To enable form submissions:

1. Sign up for [Formspree](https://formspree.io)
2. Create a new form
3. Replace the form action URL in `contact.html`:
   ```html
   <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   ```

## 🎯 Future Enhancements

- [ ] Event calendar integration
- [ ] Member login system
- [ ] Blog/news section
- [ ] Photo gallery
- [ ] Newsletter signup
- [ ] Advanced search functionality
- [ ] Multi-language support

## 📞 Support

For questions or support regarding this website:

- **Email**: info@queensnetworking.ca
- **GitHub Issues**: Create an issue in this repository
- **Documentation**: Check this README for setup instructions

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 🙏 Acknowledgments

- **Queen's University** for inspiration
- **Font Awesome** for icons
- **Google Fonts** for typography
- **Formspree** for form handling
- **Netlify** for hosting platform

---

**Built with ❤️ for the Queens Networking Society**

*Last updated: December 2024*
