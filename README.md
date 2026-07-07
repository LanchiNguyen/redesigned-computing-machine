# Lana Nguyen — Portfolio

A personal product & UX design portfolio. Warm "editorial café / takeout" concept: dark espresso melting into oat paper, dusty-rose and olive accents, Fraunces display type, lit-edge gradient borders, glow blooms, coffee-sleeve bands, and scalloped biscuit cards. No build step, no dependencies — just static files.

## Files

- `index.html` — the **Home** page: hero, featured work, secondary work (biscuit cards), illustration board, about band, notes, and contact footer.
- `ledgerly.html` — the **Ledgerly case study** page. Duplicate this file per project (e.g. `fieldnote.html`) to add more case studies.
- `sketchbook.html` — the **Sketchbook** page: illustration, prints, posters, and doodles.
- `styles.css` — shared styles for every page.
- `script.js` — shared behavior (scroll reveals, count-up, pointer interactions).

Home links to `ledgerly.html` and `sketchbook.html`; both link back to Home's sections (`index.html#home-work`, etc.).

## Preview it

- **Open locally:** open `index.html` in any browser.
- **Serve it:** `python3 -m http.server` then visit http://localhost:8000

## Editing

- **Copy, names, metrics** — search for `EDIT:` comments in the markup. All project copy is placeholder; rewrite freely.
- **Colors & type** — the `:root` token block at the top of `styles.css`. Change `--serif`, `--sans`, or the accent tokens once and every page follows.
- **Imagery** — every striped box labeled like `[ banking dashboard UI ]` is a placeholder slot. Replace the `.ph` div with an `<img>` of the same height/border-radius.
- **New case study** — copy `ledgerly.html`, rename it, rewrite the copy, and point the relevant card's link at the new file.

## Design notes

- Typefaces: Fraunces (display), Work Sans (body), IBM Plex Mono (labels/meta), Klee One (handwriting, illustration band only) — Google Fonts.
- Signature treatments: 1px lit-edge gradient borders, rose radial glow blooms in dark sections, drop-shadow + rose halo on cards, gradient hairline dividers, grain overlay, corrugated coffee-sleeve bands, scalloped biscuit cards with docking dots.
- Scroll reveals and hover lifts are gated behind `prefers-reduced-motion`.
- Desktop-first at 1240px, with tablet/mobile reflow (hero cluster and pinned board become stacked grids; decorative props drop on small screens).
