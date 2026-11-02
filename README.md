# Hariprasad Anand — Professional Engineering Portfolio

This repository contains the complete personal portfolio suite for **Hariprasad Anand** (Robotics & Automation Engineer), built from your master resume and GitHub profile (`@Hhaarii`).

---

## 📦 What's Inside

```text
portfolio/
├── index.html                    # Interactive Web Portfolio (Dark Robotics / Cyber theme)
├── deploy_to_github.bat          # 1-Click batch script to publish live on GitHub Pages
├── share_public.bat              # Instant live public HTTPS tunnel via Cloudflare
├── GITHUB_PROFILE_README.md      # Ready-to-use Profile README for github.com/Hhaarii
├── README.md                     # Setup & deployment documentation
└── assets/
    ├── models/
    │   └── ugv_v3_gesar.glb      # Interactive 3D rover model for WebGL / model-viewer
    ├── images/                   # High-resolution photorealistic CAD renders
    └── docs/
        └── Hariprasad_Anand_Resume.pdf  # Downloadable PDF resume for recruiters
```

---

## 🚀 1. How to Preview Locally

Because the portfolio loads a 3D model (`.glb`) via WebGL, run a lightweight local web server so your browser doesn't block local file requests:

### Option A: Python (Quickest)
```powershell
# Open terminal inside the portfolio folder
cd C:\Users\infok\.gemini\antigravity\scratch\portfolio

# Start a simple HTTP server on port 8000
python -m http.server 8000
```
Then visit: **`http://localhost:8000`** in your browser.

---

## 🌐 2. How to Deploy to GitHub Pages (Free Hosting)

You can host this live on your GitHub account in 2 minutes:

### Option A: Host at `hhaarii.github.io` (User Site)
1. On GitHub, create a new repository named exactly: **`Hhaarii.github.io`**
2. In your terminal inside this portfolio folder:
   ```bash
   git init
   git add .
   git commit -m "feat: initial commit of Hariprasad Anand robotics portfolio"
   git branch -M main
   git remote add origin https://github.com/Hhaarii/Hhaarii.github.io.git
   git push -u origin main
   ```
3. Your portfolio will automatically go live at **`https://hhaarii.github.io`**!

### Option B: Host in a repository named `portfolio`
1. Create a repo named `portfolio` on GitHub.
2. Push this folder to that repo.
3. Go to **Settings &rarr; Pages &rarr; Branch: `main` / `root` &rarr; Save**.
4. Your site will be live at **`https://hhaarii.github.io/portfolio/`**.

---

## 👤 3. How to Setup Your GitHub Profile README

To get the sleek robotics badges and cards on your main GitHub landing page (`https://github.com/Hhaarii`):

1. Go to GitHub and create a repository named **`Hhaarii`** (must match your username exactly).
2. Make sure it is marked **Public** and check **"Add a README file"** (or overwrite it).
3. Copy the full contents of [`GITHUB_PROFILE_README.md`](file:///C:/Users/infok/.gemini/antigravity/scratch/portfolio/GITHUB_PROFILE_README.md) into that repository's `README.md`.
4. Commit changes — your GitHub homepage is now instantly transformed into a senior engineering showcase!
