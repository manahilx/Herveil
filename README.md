# HerVeil — Privacy-first Women's Health Prototype

HerVeil is a hackathon starter project for recHERsion'26 PS1 (Women's Healthcare). It combines a simple health diary and wellbeing tracker with privacy-oriented controls.

## Features in this prototype

- First-run private vault protected by a passphrase.
- Health diary, cycle entries, mood check-ins, and a personal safety-plan note.
- Records are encrypted in the browser with AES-GCM (256-bit key); the key is derived using PBKDF2-SHA-256.
- Discreet Mode masks selected on-screen health text and offers a neutral planner screen through Quick Exit / Escape.
- Five-minute inactivity lock (while the page remains open), manual lock, record deletion, and encrypted backup export.
- No analytics, advertising scripts, external font/CDN requests, or third-party APIs are included.
- PWA service worker for caching the application shell after the first successful visit.
- Basic interface-label toggle for English/Urdu. It is not a medical translator.

## Run locally on Windows

1. Download and extract the ZIP.
2. Install Python 3 if it is not already installed.
3. Double-click `run_app.bat`.
4. Open `http://localhost:8000` in Chrome or Edge.
5. On first launch, create a unique passphrase with at least 12 characters and confirm it.
6. Add fictional test records to try the health diary, cycle tracker, mood check-in, privacy settings, export, and delete features.
7. To test Discreet Mode, click its toggle. Press `Esc` or use Quick Exit to switch to the neutral Daily Notes screen.
8. Keep the terminal window open while testing. Press `Ctrl+C` to stop the local server.

## Put it on GitHub Pages

1. Open your `Shecare_AI` repository.
2. Back up your existing files first (download ZIP or create a branch).
3. Upload the contents of this ZIP into the repository root, preserving the `css/` and `js/` folders.
4. Commit the changes to `main`.
5. In GitHub, open **Settings → Pages** and select deployment from the `main` branch and `/ (root)` if it is not already configured.
6. Wait for the Pages deployment, then open the published URL. Use HTTPS.
7. If an older version appears, hard refresh the browser or clear the site's cached service worker/site data and reload.

## Important limitations and safety notes

- **Prototype only:** do not enter real medical records or use this as a clinical product. It is not independently security-audited.
- **Local to one browser:** records do not sync across devices. Clearing browser site data can delete the vault.
- **Passphrase recovery:** if you forget the passphrase, encrypted records cannot be recovered. Keep a secure copy of your passphrase. Exported backup files contain encrypted records, but protect the file as sensitive information.
- **Discreet Mode is not invisibility:** it masks selected content in this app and changes the view; it cannot erase browser history, hide network/hosting logs, remove screenshots, stop device monitoring, or conceal the app from device administrators.
- **Device/session detection is intentionally limited:** this prototype reports only the current browser/platform. It cannot discover all other devices or remotely revoke sessions.
- **No real SOS:** the safety plan is stored locally only. No SMS, phone call, location sharing, or emergency alert is sent.
- **No third-party sharing:** no external health sharing or cloud backup is implemented. The sharing status is descriptive, not a permission engine for outside services.
- **No medical diagnosis:** cycle intervals are basic arithmetic over recorded dates and are not contraception, pregnancy detection, or diagnosis. Seek qualified clinical help for medical concerns.
- **No cookie-control promise:** the app does not add tracking cookies or analytics. The browser and hosting provider may still maintain technical storage or logs. The app cannot control cookies belonging to other websites.
- For a real deployment, obtain professional security/privacy review, add a robust threat model, test authentication and data recovery, verify local support resources, and get informed consent before using real participant data.

## Repository layout

```
HerVeil_Complete_Starter/
├── index.html
├── manifest.json
├── icon.svg
├── sw.js
├── run_app.bat
├── README.md
├── css/
│   └── styles.css
└── js/
    └── app.js
```
