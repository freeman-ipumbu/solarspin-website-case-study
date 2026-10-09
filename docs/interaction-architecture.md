# Interaction and technical architecture

## Progressive by design

The website begins as a complete semantic document. JavaScript adds state, motion and responsive behaviour after the content is available. If the enhancement layer fails, the visitor still receives the company story, project evidence, contact route and fallback navigation.

## Experience modules

### Navigation

The fixed header reflects the active section and collapses into a full-screen orbit menu on smaller viewports. The mobile menu declares its expanded state, closes on Escape and restores page scrolling when dismissed.

### Hero system

Four orbit controls update one shared readout. The selected button exposes `aria-pressed="true"`. Pointer movement affects the atmosphere only on suitable input devices.

The canvas field is decorative. It is hidden from assistive technology, paused when the page becomes invisible and disabled under reduced-motion preferences.

### Architecture map

Six nodes explain the relationships between founder, company engine, commercial work, ventures, research and internal systems. Each selection updates the shared title, role, description and link.

### Capability cards

Pointer-capable devices receive a restrained tilt driven by local cursor position. Touch and reduced-motion contexts keep the same cards without the effect.

### Project Observatory

Twenty-seven public-safe project stories are organised into four semantic orbits. The sticky orbit navigator deep-links to each chapter and follows the visitor's position without taking over the browser wheel. Every chapter exposes a native horizontal rail with scroll snapping, previous and next controls, a live position readout, and Left, Right, Home and End keyboard support. The complete inventory remains present in semantic HTML when JavaScript is unavailable.

### Method rail

The method control follows a tab pattern. Arrow keys move across the sequence, and the shared panel announces the current method stage.

### Pathway builder

Visitors select the kind of problem they are carrying. The interface then changes the recommendation and prepares a contextual email subject without collecting information on the site.

### Founder note

The legacy seal uses the native dialog model where supported. It can be closed by its named control, Escape or a click outside the content panel.

## Runtime

```text
index.html
    │
    ├── styles.css
    │     ├── responsive composition
    │     ├── interaction states
    │     └── reduced-motion overrides
    │
    ├── app.js
    │     ├── navigation state
    │     ├── component readouts
    │     ├── project-observatory and pathway logic
    │     └── decorative motion
    │
    └── local assets
          ├── SVG identity and diagrams
          ├── WebP project imagery
          └── PNG social and application icons
```

There is no framework, build step or package dependency. This was an intentional fit for a focused company experience with a small, stable content model.

## Deployment surface

Cloudflare Pages serves the static publish directory. The release also includes:

- explicit cache and security headers
- a canonical URL and social metadata
- organization structured data
- a web manifest and application icons
- `robots.txt` and a sitemap
- a custom 404 document

Deployment configuration and account credentials remain outside this public case study.
