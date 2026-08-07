# Lana Nguyen — Portfolio

A personal product & UX design portfolio. Warm "editorial café / takeout" concept: dark espresso melting into oat paper, dusty-rose and olive accents, Fraunces display type, lit-edge gradient borders, glow blooms, coffee-sleeve bands, and scalloped biscuit cards. No build step, no dependencies — just static files.

## Two versions

- **Root (`index.html` …)** — the original v1 site, unchanged.
- **`v2/`** — includes two functional concept prototypes, both honestly labeled (illustrative data, no user studies claimed):
  - **Tenet** (`v2/tenet.html`, № 01) — an order-time behavioral intervention layer: self-authored rules become reversible friction at order-send inside two fictional brokers (Dart mobile, Meridian desktop) with one shared Record. Case-study screens render live from the source Claude Design/Fable prototypes, which also ship interactively in `v2/tenet-proto/`; remaining rasters in `images/tenet/` are captured from the same builds.
  - **Morsel** (`v2/morsel.html`, № 02) — trust and safety in photo-first food discovery: a three-tier dietary model, the Allergy Gate order sheet, a proposed evidence model that abstains without data, and honest failure states. Case-study screens are rendered live from the prototype's own markup (see `build-figures.mjs`); the remaining rasters in `images/morsel/` are the source package's captures. Process docs live in `v2/morsel-docs/`.
- **`v2/`** — the hiring-audit redesign: honest positioning (all template fiction removed), reordered lineup (№ 01 Tenet → № 02 Morsel → № 03 Hey Period → № 04 Nhat Huong → № 05 Mug → № 06 Matrix → № 07 Chatter), TL;DR + role-split blocks on every case study, decision-bearing captions, fixed contrast tokens, OG/social metadata, real contact email, and explicit `[ADD:]` placeholders wherever a real fact is still needed. Open `v2/index.html` to review. v2 shares `images/` with v1 but has its own `styles.css`/`script.js`; repaired image variants are suffixed `-fixed.webp`. The audit that produced it is in the project artifacts. **Notes and `ledgerly.html` are intentionally absent from v2** — Notes advertised unwritten articles, and Ledgerly is a fictional template case study that must never deploy under a real name (if v1 is ever deployed, exclude it or add `noindex`).

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

## Deploy (GitHub Pages + custom domain)

The deployable site is **v2 only**, assembled by `build-site.sh` into `_site/` (v1 and its template fiction never ship). A GitHub Actions workflow (`.github/workflows/deploy.yml`) builds and publishes it automatically.

1. **Enable Pages (required once, can't be automated):** repo **Settings → Pages → Source: "GitHub Actions"**. Until this is done, deploy runs skip cleanly with a notice. After clicking, run the "Deploy portfolio" workflow from the Actions tab (or push anything). Site appears at `https://lanchinguyen.github.io/redesigned-computing-machine/`.
2. **Custom domain:** buy one (Porkbun/Namecheap/Cloudflare, ~$10/yr), then in **Settings → Pages → Custom domain** enter it. At your registrar add DNS records:
   - apex (`yourdomain.com`): four `A` records → `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - `www`: `CNAME` → `lanchinguyen.github.io`
   - back in Pages settings, tick **Enforce HTTPS** once the certificate is issued (minutes to an hour).
3. **Social previews:** set a repo variable `SITE_URL` (Settings → Secrets and variables → Actions → Variables) to `https://yourdomain.com` and re-run the workflow — og:image URLs become absolute so link cards work in Slack/LinkedIn.
4. Local test of exactly what deploys: `bash build-site.sh && python3 -m http.server -d _site`.

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
