# Elin Marsh — UI/UX portfolio concept

A homepage concept for a product designer's portfolio: editorial, structured, and premium.
Single self-contained file — no build step, no dependencies, no external assets.

- `index.html` — the complete site (markup + styles).

## Design system

| Token | Value | Role |
| --- | --- | --- |
| Oat | `#F4EFE7` | Page ground |
| Ivory | `#FBF8F2` | Raised card surface |
| Espresso | `#2C241F` | Text, dark accent sections |
| Dusty pink | `#B9767F` / `#9E5A64` | Primary accent |
| Sage / blue / olive / terracotta | — | Project-category dots only |

- **Type**: Iowan Old Style / Palatino serif for display, a quiet grotesque for body, mono for meta labels.
- **Layout**: modular card grid with hairline borders, faint inner highlights, a whisper of SVG grain, and structural rule lines in the hero.
- **Sections**: hero thesis → featured case-study cards (with CSS-built product previews) → dark process band → project-preview grid → about → contact footer.

## Preview it

- **Open locally:** open `index.html` in any browser.
- **Serve it:** `python3 -m http.server` then visit http://localhost:8000
