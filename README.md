# Lana Nguyen — Portfolio

A personal product & UX design portfolio, built as a single self-contained HTML file (no build step, no dependencies).

- `index.html` — the whole site: hero, selected work, an in-depth case study, about, and contact.

## Preview it

- **Open locally:** open `index.html` in any browser.
- **Serve it:** `python3 -m http.server` then visit http://localhost:8000

## Editing

Everything lives in `index.html` and is commented for hand-editing:

- **Copy, names, metrics** — search for `EDIT:` comments in the markup.
- **Colors & type** — the `:root` token block at the top of the `<style>`. Change `--accent` once and the whole site follows (the accent hue is locked on purpose).
- **Projects** — each case study is a `<article class="work-card">` block; copy one to add another.
- **Images** — currently seeded placeholders from `picsum.photos`. Replace every `src` marked `EDIT: replace with real image` with your own screenshots and portrait.

## Design notes

- Warm-editorial direction: **Newsreader** (display) + **Hanken Grotesk** (body), putty paper, warm ink, and a single persimmon accent.
- Light and dark themes (respects system preference, with a manual toggle that persists).
- Smooth section reveals, hover states, and micro-interactions, all gated behind `prefers-reduced-motion`.
- Responsive from ~360px up; accessible landmarks, focus states, and a skip link.
