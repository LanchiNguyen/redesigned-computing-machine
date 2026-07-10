# Lana Nguyen — Portfolio

A personal product & UX design portfolio. Warm "editorial café / takeout" concept: dark espresso melting into oat paper, dusty-rose and olive accents, Fraunces display type, lit-edge gradient borders, glow blooms, coffee-sleeve bands, and scalloped biscuit cards. No build step, no dependencies — just static files.

## Two versions

- **Root (`index.html` …)** — the original v1 site, unchanged.
- **`v2/`** — the hiring-audit redesign: honest positioning (all template fiction removed), reordered lineup (Hey Period → Nhat Huong → Mug → Matrix → Chatter), TL;DR + role-split blocks on every case study, decision-bearing captions, fixed contrast tokens, OG/social metadata, real contact email, and explicit `[ADD:]` placeholders wherever a real fact is still needed. Open `v2/index.html` to review. v2 shares `images/` with v1 but has its own `styles.css`/`script.js`; repaired image variants are suffixed `-fixed.webp`. The audit that produced it is in the project artifacts. **Notes and `ledgerly.html` are intentionally absent from v2** — Notes advertised unwritten articles, and Ledgerly is a fictional template case study that must never deploy under a real name (if v1 is ever deployed, exclude it or add `noindex`).

## Files

- `index.html` — the **Home** page: hero, featured work, secondary work (biscuit cards), illustration board, about band, notes, and contact footer.
- `mug.html` — the **Mug case study** (real project): research, persona, journey, ideation, brand, and animated prototypes. Assets in `images/mug/`.
- `chatter.html` — the **Chatter case study** (real project): interviews, affinity map, two ideas with a pivot, and animated prototypes. Assets in `images/chatter/`.
- `matrix.html` — the **Matrix case study** (real client project): two feature areas of production UI in a one-week engagement. Assets in `images/matrix/`.
- `heyperiod.html` — the **Hey Period case study** (real client project): user research, brand identity, marketing website, and mobile before/afters for a femtech startup. Assets in `images/heyperiod/`.
- `nhathuong.html` — the **Nhat Huong Bakery case study** (real client project): brand strategy, logo refresh, color/graphic system, and packaging for Vietnam's legacy baking brand. Assets in `images/nhathuong/`.
- `ledgerly.html` — a **sample case study** kept as a template (not linked from Home). Duplicate it per project to add more case studies.
- `sketchbook.html` — the **Sketchbook** page: illustration, prints, posters, and doodles.
- `about.html` — the **About / full bio** page: story, approach, experience, and now.
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
