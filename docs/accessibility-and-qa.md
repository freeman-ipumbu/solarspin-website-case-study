# Accessibility and QA record

## Coverage

The release was exercised at four principal widths:

| Profile | Width | Purpose |
| --- | ---: | --- |
| Desktop | 1440 px | Full navigation, wide compositions and pointer interactions |
| Tablet | 768 px | Mid-width transitions and project layout |
| Mobile | 390 px | Primary mobile composition and touch interactions |
| Minimum mobile | 320 px | Narrow-screen resilience and overflow control |

The automated run also exercised reduced-motion mode, JavaScript-disabled mode and the custom 404 page.

## Recorded results

- exactly one primary page heading
- eight public project cards present
- zero horizontal overflow at 320 pixels in the recorded report
- all inspected images complete with natural dimensions
- no nameless buttons
- no blank external links missing a relationship declaration
- no essential content hidden in reduced-motion mode
- canvas disabled in reduced-motion mode
- essential content visible without JavaScript
- visible fallback navigation without JavaScript
- direct email fallback available without JavaScript

## Interaction checks

- desktop and mobile navigation
- active section state
- hero orbit changes
- architecture-node changes
- project category filters
- method step activation and keyboard navigation
- contact pathway updates
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

Reduced-motion preferences remove the hero canvas and reveal gating. The same content remains present and readable.

### Images

Content imagery carries descriptive alternative text. Decorative fields, lines and symbols are hidden from the accessibility tree.

## Honest boundary

These checks support the quality of this release. They do not constitute independent WCAG certification, assistive-technology coverage across every browser, a formal penetration test or a production performance guarantee.

Before any major content expansion, SolarSpin should repeat keyboard testing, screen-reader spot checks, contrast verification and performance measurement against the final production payload.
