# Accessibility and QA record

## Coverage

The cinematic Field Atlas release was exercised through six responsive profiles:

| Profile | Viewport | Input | Purpose |
| --- | ---: | --- | --- |
| Desktop | 1440 × 1000 | Fine pointer | Full navigation, wide compositions and pointer interactions |
| Tablet | 768 × 1024 | Fine pointer | Mid-width transitions and project layout |
| Mobile | 390 × 844 | Touch and coarse pointer | Primary mobile composition, menu and project rails |
| Compact mobile | 360 × 800 | Touch and coarse pointer | Intermediate handset resilience |
| Minimum mobile | 320 × 740 | Touch and coarse pointer | Narrow-screen resilience and overflow control |
| Mobile landscape | 844 × 390 | Touch and coarse pointer | Short-height navigation, content and rail behaviour |

The automated run also exercised three separate resilience modes at 390 × 844: reduced motion, forced colors and JavaScript disabled. The custom 404 page and public metadata files were checked separately.

## Recorded results

- exactly one primary page heading
- 27 public project cards present across four semantic orbits
- zero horizontal overflow in all six responsive profiles
- touch project rails moved horizontally while vertical page scrolling remained available
- all inspected images complete with natural dimensions
- no nameless buttons
- no blank external links missing a relationship declaration
- no essential content hidden, no canvas and zero continuing infinite animations in reduced-motion mode
- essential content visible with zero horizontal overflow in forced-colors mode
- all 27 projects and four project orbits visible without JavaScript
- visible fallback navigation and direct email available without JavaScript
- 976 DOM nodes across the responsive profiles
- at most eight active backdrop filters, below the ceiling of 10
- 2,124,942 initial transfer bytes, below the 4 MiB ceiling
- at most nine continuing infinite animations in a standard profile, below the ceiling of 12
- no decorative Field Atlas layer accepted pointer input

## Interaction checks

- desktop and mobile navigation
- active section state
- hero orbit changes
- architecture-node changes
- project-orbit navigation and deep links
- project-rail arrow controls, keyboard movement and visible position readouts
- project-rail horizontal movement and retained vertical page scrolling on every touch profile
- method step activation and keyboard navigation
- contact pathway updates
- interaction-driven architecture, method and pathway atmosphere state
- founder dialog open and close paths
- local asset resolution
- console and page errors
- custom 404 rendering

## Accessibility decisions

### Reading order

The DOM order follows the story order. Desktop layout never changes the underlying reading sequence.

### State

Buttons disclose active, selected and expanded state with ARIA attributes. Shared readouts use live regions where a state change would otherwise be silent.

### Keyboard

Interactive controls are native buttons or links. Focus receives a clear mint outline. The skip link becomes visible on focus. Escape closes temporary layers.

### Motion

Reduced-motion preferences remove the hero canvas and reveal gating. They also stop the Field Atlas orbit, packet, signal, radar and badge loops. The recorded reduced-motion run reported zero continuing infinite animations, with the same content present and readable.

### Forced colors

Decorative atmospheres, terrain horizons, founder scenery and pathway transmissions are removed under forced colors. Essential panels use system colours and borders. The recorded run kept the hero, work, founder and pathway headings visible with zero horizontal overflow.

### Performance and pointer isolation

Ambient loops begin only when their own section is live. Project loops are limited again to the current orbit. Decorative layers are clipped to their chapters, use paint containment where appropriate and expose `pointer-events: none`, so they cannot block controls or scrolling.

### Images

Content imagery carries descriptive alternative text. Decorative fields, lines and symbols are hidden from the accessibility tree.

## Honest boundary

These checks support the quality of this release. They do not constitute independent WCAG certification, assistive-technology coverage across every browser, a formal penetration test or a production performance guarantee. The transfer and animation figures are recorded local-run diagnostics, not field-performance measurements.

Before any major content expansion, SolarSpin should repeat keyboard testing, screen-reader spot checks, contrast verification and performance measurement against the final production payload.
