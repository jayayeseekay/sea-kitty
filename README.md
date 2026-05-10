# Sea Kitty

A swimming-cat game made for a 3-year-old. Black cat in a glass dome
helmet swims through an underwater world full of fish, eats them
(growing as she does), uses floating toilets to shrink back, can
jump out of the water, and pilots submarines with fishing nets.

## Folder layout

```
Sea Kitty/
├── public/                  Files that get deployed
│   ├── index.html           The whole game (single-file canvas app)
│   ├── _headers             Cloudflare cache rules
│   └── Audio/               Voice clips (Jack's recorded voice)
│       ├── oops 1.m4a
│       ├── oops 2.m4a
│       ├── oops 3.m4a
│       ├── who farted.m4a
│       └── go to the toilet.m4a
├── start-server.bat         Local LAN server (for iPad on same Wi-Fi)
├── README.txt               Original local-hosting instructions
├── README.md                This file
└── .gitignore               Excludes editor / OS junk
```

## Running locally

Double-click `start-server.bat` to serve `public/` over your LAN at
`http://<your-pc-ip>:8000/`. See `README.txt` for the full
walkthrough and troubleshooting.

## Hosting on Cloudflare Pages

Same pattern as Soko. One-time setup:

1. **Create a GitHub repo.** On https://github.com/new, name it
   something like `sea-kitty`. Public repo is fine — there's nothing
   sensitive here.

2. **Push from this folder.** In a terminal in the Sea Kitty folder:

   ```
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/<your-username>/sea-kitty.git
   git push -u origin main
   ```

3. **Connect to Cloudflare Pages.** Go to
   https://pages.cloudflare.com → "Create a project" → "Connect to
   Git". Authorize Cloudflare to read your GitHub. Pick the
   `sea-kitty` repo.

4. **Build settings:**
   - Framework preset: **None**
   - Build command: *(leave blank)*
   - Build output directory: `public`

5. **Save and Deploy.** First deploy takes ~30 seconds. You'll get
   a URL like `https://sea-kitty.pages.dev`.

6. **On the iPad:** open that URL in Safari from anywhere — no need
   for the iPad to be on the same Wi-Fi as your PC anymore. Add to
   home screen for a full-screen icon.

## Updating

Edit files locally → commit → push:

```
git add .
git commit -m "What you changed"
git push
```

Cloudflare auto-deploys in ~30 seconds. The `_headers` file makes
the HTML revalidate against origin every load, so you should see
changes on iPad immediately after a hard refresh (pull down on the
page).

## Notes

- Audio files are M4A (Voice Memos default) and play fine on iPad
  Safari and modern desktop browsers.
- Filenames have spaces (e.g. `oops 1.m4a`) — `index.html` URL-encodes
  them with `encodeURI`, so they work both locally and on Cloudflare.
- No backend, no database, no auth — pure static site.
