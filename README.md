# Personal Portfolio - Jordan Hughes Style

A pixel-perfect recreation of Jordan Hughes' stunning portfolio design, built with **Astro** and **Tailwind CSS**. This template captures the exact visual hierarchy, typography, and layout of one of the web's most admired designer portfolios.

## ✨ Features

- **Pixel-Perfect Design**: Meticulously recreated from the original Jordan Hughes portfolio
- **Professional Project Grid**: 3-column layout with mockup placeholders for your work
- **Beautiful Typography**: Large-scale text hierarchy with perfect spacing
- **Visual Impact**: Hero image section and clean project cards
- **Single Page Flow**: Smooth continuous scrolling experience
- **Fully Responsive**: Perfect on desktop, tablet, and mobile
- **Fast & SEO-Friendly**: Built with Astro for optimal performance

## 🚀 Getting Started

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Start development server:**
   ```bash
   npm run dev
   ```

3. **Open your browser to:**
   ```
   http://localhost:4321
   ```

## 📝 How to Use Markdown

### About Section
Edit `src/content/about.md` to update your about section:

```markdown
# About Me

I'm a product and web designer from **[Your Location]**. I enjoy working on...

## What I've been working on

I'm working on [current project] with some smart people...
```

### Reading List
Update `src/content/reading-list.md` to manage your book list:

```markdown
# Reading List

## 2025
- **Book Title** - Author Name
- **Another Book** - Another Author

## 2024
- **Previous Book** - Previous Author
```

## 🎨 Customization Guide

### 1. Replace Your Name & Info
In `src/pages/index.astro`, update:
- Line 12: `Jordan Hughes` → Your name
- Line 42: Change location from "Australia" 
- Line 435: Update email address
- Line 289: Update current location (currently "🇲🇽 Mexico")

### 2. Add Your Hero Image
Replace the hero image placeholder:
- Add your portrait photo to `public/hero-image.jpg` (recommended: 450x560px)
- Update lines 49-59 in `src/pages/index.astro`:

```astro
<div class="w-full max-w-md aspect-[4/5] rounded-2xl overflow-hidden shadow-lg">
  <img 
    src="/hero-image.jpg" 
    alt="Your name portrait photo"
    class="w-full h-full object-cover"
  />
</div>
```

### 3. Update Your Projects
Each project card (lines 87-272) needs:
- **Project mockup image**: Replace gradient placeholders with actual screenshots
- **Project title**: Update the project name
- **Description**: Write your project description
- **Website URL**: Link to your actual project

Example project replacement:
```astro
<div class="aspect-[4/3] bg-gray-100 rounded-2xl overflow-hidden">
  <img 
    src="/project-screenshot.jpg" 
    alt="Your project"
    class="w-full h-full object-cover"
  />
</div>
```

### 4. Update Social Links & Follower Counts
**Hero section** (lines 49-65) and **Footer** (lines 441-456):
- Replace `#` with your actual social media URLs
- Update follower counts (35k, 65k, 7.6k, etc.)
- Add/remove social platforms as needed

### 5. Customize Your About Section
**Lines 280-333**: Update your personal story including:
- Your location and background
- Publications that have featured your work
- Your current projects and achievements
- Your educational/professional background

### 6. Update Your Reading List
**Lines 350-416**: Add your actual books:
```astro
<div class="text-gray-700">
  <span class="font-semibold">Your Book Title</span> 
  <span class="text-gray-500">Author Name</span>
</div>
```

### 7. Add Project Images
For best results, add high-quality project mockups:
1. Create a `public/projects/` folder
2. Add your project screenshots (recommended: 800x600px)
3. Update the image src paths in each project card

### 8. Customize Footer
**Lines 425-431**: Update the footer text to reflect your tech stack and acknowledgments.

## 📁 Project Structure

```
/
├── public/
│   ├── favicon.svg           # Replace with your icon
│   ├── hero-image.jpg        # Add your hero photo
│   └── projects/             # Create folder for project images
│       ├── project1.jpg      
│       └── project2.jpg      
├── src/
│   ├── layouts/
│   │   └── Layout.astro      # Base HTML layout
│   ├── pages/
│   │   └── index.astro       # Main portfolio page (customize here!)
│   └── styles/
│       └── global.css        # Tailwind CSS imports
├── astro.config.mjs          # Astro configuration
└── package.json
```

## 🖼️ Design Elements

This template recreates all the key visual elements from the original:

- **Large Name Typography**: Massive hero heading with perfect font weight
- **Project Grid**: 3-column responsive grid with aspect ratio containers
- **Visual Hierarchy**: Proper spacing and typography scale throughout
- **Interactive Links**: Underlined links with hover states matching the original
- **Social Links**: Formatted exactly like Jordan's with follower counts
- **External Link Icons**: SVG icons next to project titles
- **Clean Footer**: Acknowledgments and contact information

## 💡 Pro Tips

1. **Project Images**: Use high-quality mockups or screenshots. The original uses professional product shots.

2. **Hero Photo**: Choose a landscape photo that represents you. Jordan's mountain photo is iconic.

3. **Content Strategy**: The original balances personal story with professional achievements. 

4. **Social Proof**: Include specific metrics, publications, and achievements like the original.

5. **Link Strategy**: Make sure external links open in new tabs for better UX.

## 🌐 Deployment

### Deploy to Netlify
1. Build your site: `npm run build`
2. Deploy the `dist/` folder to Netlify

### Deploy to Vercel
1. Connect your GitHub repo to Vercel
2. Vercel will automatically build and deploy

### Deploy to GitHub Pages
1. Add to `astro.config.mjs`:
   ```js
   export default defineConfig({
     site: 'https://yourusername.github.io',
     base: '/your-repo-name',
   })
   ```
2. Build and deploy the `dist/` folder

## 🎯 What Makes This Special

This isn't just "inspired by" Jordan Hughes' design - it's a meticulous recreation that captures:

- **Exact Typography Scale**: From the massive 8xl hero heading to perfectly sized body text
- **Precise Spacing**: Matching the generous whitespace and section margins
- **Authentic Interactions**: Proper link styles, hover states, and visual feedback
- **Professional Project Layout**: The signature 3-column grid with aspect-ratio containers
- **Perfect Visual Hierarchy**: Each section flows exactly like the original

The original was built with premium Webflow templates and design systems costing hundreds of dollars. This open-source version delivers the same stunning result.

## 🚀 Ready to Launch?

1. **Customize** your content using the guide above
2. **Add** your project images and hero photo
3. **Deploy** to your favorite platform
4. **Share** your beautiful new portfolio!

---

**Tech Stack:**
- [Astro](https://astro.build) - Lightning-fast static site generator
- [Tailwind CSS](https://tailwindcss.com) - Utility-first CSS framework  
- [Inter Font](https://fonts.google.com/specimen/Inter) - Clean, professional typography
- Modern HTML/CSS - No framework bloat, pure performance

**Original Design:** [jordanhughes.co](https://jordanhughes.co) by Jordan Hughes  
**Template:** Built with ❤️ for designers who appreciate pixel-perfect craftsmanship