# Interaction and technical architecture

## Progressive by design

The website begins as a complete semantic document. JavaScript adds state, motion and responsive behaviour after the content is available. If the enhancement layer fails, the visitor still receives the company story, project evidence, contact route and fallback navigation.

The branded ignition is an optional prelude, not a loading gate. It is hidden from the accessibility tree, never accepts pointer input, releases itself after 1.48 seconds and is omitted for reduced motion, forced colours and no-JavaScript delivery.

## Experience modules

### Navigation

The fixed header reflects the active section and collapses into a full-screen orbit menu on smaller viewports. The mobile menu declares its expanded state, closes on Escape and restores page scrolling when dismissed.

The Project Observatory has two synchronized local navigation surfaces. Four native-link beacons inside the command deck preview an orbit on hover or keyboard focus and commit it on click, tap or Enter. The sticky orbit controls remain available throughout the inventory. When either surface selects an orbit, the active control scrolls fully into view and its heading lands below the fixed header and sticky controls. Automated geometry checks cover the beacons, active control and every project-orbit heading across all six responsive profiles.

### Hero system

Four orbit controls update one shared readout. The selected button exposes `aria-pressed="true"`. Pointer movement affects the atmosphere only on suitable input devices.

The canvas field is decorative. It is hidden from assistive technology, paused when the page becomes invisible and disabled under reduced-motion preferences.

### Architecture map

Six nodes explain the relationships between founder, company engine, commercial work, ventures, research and internal systems. Each selection updates the shared title, role, description and link.

### Capability cards

Pointer-capable devices receive a restrained tilt driven by local cursor position. Touch and reduced-motion contexts keep the same cards without the effect.

### Project Observatory

Twenty-eight public-safe project stories are organised into four semantic orbits. The visual beacons and sticky orbit navigator share one committed state and deep-link to the same chapters without taking over the browser wheel. Preview state never changes the selected orbit or accessible current state. Every chapter exposes a native horizontal rail with scroll snapping, previous and next controls, a visible position readout, and Left, Right, Home and End keyboard support. Without JavaScript, all four beacons remain honest native anchors and the complete inventory remains present in semantic HTML.

### Method rail

The method control follows a tab pattern. Arrow keys move across the sequence, and the shared panel announces the current method stage.

### Pathway builder

Visitors select the kind of problem they are carrying. The interface then changes the recommendation and prepares a contextual email subject without collecting information on the site.

### Founder note

The legacy seal uses the native dialog model where supported. It can be closed by its named control, Escape or a click outside the content panel.

### Cinematic Field Atlas

The Field Atlas is a progressive visual layer over the same semantic sections. Transparent night, dune and Namib-contour assets replace the former opaque system-lines panel, so each chapter keeps its native material surface.

The atmosphere responds to meaningful state changes:

- architecture-node selection moves the signal origin and changes its colour
- method-step selection moves the light, packet position and active accent
- pathway selection retunes the field and triggers a short, one-shot transmission
- the Project Observatory gives each orbit a specific terrain accent and highlights the card nearest the rail's snap position
- the founder linework drifts only while the founder chapter is active and motion is permitted

These visual responses mirror information already present in text and control state. They do not create a second route to essential content.

### Cosmic address and Windhoek transmission

The footer begins with a six-stop tab sequence: Milky Way, Solar System, Earth, Africa, Namibia and Windhoek. Each selection updates the shared SVG state and a textual readout. The buttons expose selected state, remain at least 44 pixels in both dimensions, stay inside their control group and support Arrow, Home and End keyboard movement.

The decorative route never carries meaning alone. Its title, description, labelled controls and changing text describe the same address. Under forced colours the illustration is removed while those labels and controls remain.

The address resolves into a live `Africa/Windhoek` clock in Central Africa Time beside the WHK.NA coordinate marker and system status. The initial placeholder remains understandable before JavaScript runs, and the clock does not gate any footer link or contact path. A static final panel closes with “You’ve now had a SolarSpin Experience,” so the ending remains present without motion or scripting.

## Animation and performance guardrails

An intersection observer gives each cinematic chapter a local live state. Ambient loops are paused by default, start only while their section is in view and, in the Project Observatory, narrow further to the current orbit. Decorative fields use paint containment, clip their overflow and never accept pointer input.

Input and preference boundaries reduce the effect again:

- coarse pointers remove selected backdrop filters while preserving readable solid surfaces
- reduced motion disables the canvas, reveal gating and all continuing infinite animation
- forced-colors mode removes decorative atmospheres and gives essential panels system borders and colours
- no-JavaScript mode keeps the content, project inventory, fallback navigation and direct email route

The QA harness enforces ceilings of fewer than 1,200 DOM nodes, no more than 10 backdrop filters, less than 4 MiB of initial transferred resources and no more than 12 simultaneous infinite animations. The latest recorded desktop run stayed inside each ceiling at 1,175 nodes, nine backdrop filters, 2,229,118 bytes and ten infinite animations. These are local-run guardrails, not field-performance scores.

## Runtime

```text
index.html
    │
    ├── styles.css
    │     ├── responsive composition
    │     ├── interaction states
    │     ├── short ignition and finale composition
    │     └── motion and forced-colors overrides
    │
    ├── app.js
    │     ├── navigation state
    │     ├── component readouts
    │     ├── project-observatory, atmosphere and pathway logic
    │     ├── cosmic-address state
    │     ├── Windhoek transmission time
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
