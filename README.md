# Lana Nguyen — Portfolio

A personal product & UX design portfolio, built as a single self-contained HTML file (no build step, no dependencies). Faithful implementation of the "editorial café / takeout" design handoff: dark espresso melting into oat paper, dusty-rose and olive accents, Instrument Serif display type, lit-edge gradient borders, glow blooms, coffee-sleeve bands, and scalloped postage-stamp cards.

- `index.html` — the whole site: Home (hero, featured work, secondary work, illustration board, sender band, notes, contact footer) and the Ledgerly case-study page, stacked as two page cards on a desk background and linked by in-page anchors.

## Preview it

- **Open locally:** open `index.html` in any browser.
- **Serve it:** `python3 -m http.server` then visit http://localhost:8000

## Editing

Everything lives in `index.html` and is commented for hand-editing:

- **Copy, names, metrics** — search for `EDIT:` comments in the markup. All project copy is placeholder from the handoff; rewrite freely.
- **Colors & type** — the `:root` token block at the top of the `<style>` mirrors the handoff's design tokens.
- **Imagery** — every striped box labeled like `[ banking dashboard UI ]` is a placeholder slot. Replace the `.ph` div with an `<img>` of the same height/border-radius.
- **Pages** — Home is `#home`, the case study is `#project`. Split into real routes later if wanted; nav labels and anchor ids are stable.

## Design notes

- Typefaces: Fraunces (display), Work Sans (body), IBM Plex Mono (labels/meta), Klee One (handwriting, illustration band only) — Google Fonts.
- Signature treatments from the handoff: 1px lit-edge gradient borders, rose radial glow blooms in dark sections, drop-shadow + rose halo on cards, gradient hairline dividers, grain overlay, corrugated coffee-sleeve meta bands, scalloped stamp/tin masks.
- Scroll reveals and hover lifts are gated behind `prefers-reduced-motion`.
- Desktop-first at 1240px like the design file, with tablet/mobile reflow (hero cluster and pinned board become stacked grids; decorative props drop on small screens).
