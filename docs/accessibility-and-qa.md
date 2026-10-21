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

The case-study sync also checks the current Ontoko Foods client evidence image and both of its public destinations. This adds presentation evidence and link coverage without changing the live observatory's 30-project, four-orbit structure.

## Recorded results

- exactly one primary page heading
- 30 public project cards present across four semantic orbits
- four native-link Observatory beacons with 44-pixel targets, synchronized committed state and separate non-mutating preview state
- zero horizontal overflow in all six responsive profiles
- touch project rails moved horizontally while vertical page scrolling remained available
- all inspected images complete with natural dimensions
- no nameless buttons
- no blank external links missing a relationship declaration
- the ignition released the interface as hidden, transparent and pointer-inert in every standard profile
- six cosmic-address controls present, with no undersized or clipped control in any profile
- no project-orbit or primary section heading overflow in any profile
- no essential content hidden, no canvas and zero continuing infinite animations in reduced-motion mode
- essential content visible with zero horizontal overflow in forced-colors mode
- all 30 projects, four project orbits and four native beacon destinations visible without JavaScript
- visible fallback navigation and direct email available without JavaScript
- 1,244 DOM nodes across the responsive profiles, below the ceiling of 1,250
- at most nine active backdrop filters, below the ceiling of 10
- 2,760,101 initial transfer bytes, below the 4 MiB ceiling
- at most ten continuing infinite animations in a standard profile, below the ceiling of 12
- no decorative Field Atlas layer accepted pointer input
- the Ontoko client evidence uses descriptive alternative text and contains no customer, delivery-pin, order or protected-admin data
- the Ontoko live experience and public case-study destinations are included in external-link verification

## Interaction checks

- desktop and mobile navigation
- project-orbit landing position, active-control visibility and heading containment
- active section state
- hero orbit changes
- architecture-node changes
- Observatory beacon preview, Enter activation, synchronized project-orbit navigation and deep links
- project-rail arrow controls, keyboard movement and visible position readouts
- project-rail horizontal movement and retained vertical page scrolling on every touch profile
- method step activation and keyboard navigation
- contact pathway updates
- six-stop cosmic-address selection, readout update and keyboard return to the first stop
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

The cosmic address uses a labelled tablist and a shared tab panel. Its selected control, visual state and textual readout move together, so the animated route is not the only state signal.

### Keyboard

Interactive controls are native buttons or links. Focus receives a clear mint outline. The skip link becomes visible on focus. Escape closes temporary layers. The method and cosmic-address sequences expose Arrow, Home and End keyboard paths.

### Motion

Reduced-motion preferences skip the branded ignition, remove the hero canvas and reveal gating, and stop the Field Atlas orbit, packet, signal, radar and badge loops. The recorded reduced-motion run reported zero continuing infinite animations, with the same content and finale present and readable.

### Forced colors

Decorative atmospheres, terrain horizons, founder scenery, pathway transmissions and the cosmic illustration are removed under forced colors. Essential panels, cosmic controls and readouts use system colours and borders. The recorded run kept the hero, work, founder and pathway headings visible with zero horizontal overflow.

### Performance and pointer isolation

Ambient loops begin only when their own section is live. Project loops are limited again to the current orbit. Decorative layers are clipped to their chapters, use paint containment where appropriate and expose `pointer-events: none`, so they cannot block controls or scrolling.

### Images

Content imagery carries descriptive alternative text. Decorative fields, lines and symbols are hidden from the accessibility tree.

The Ontoko client-launch screenshot is content evidence, so its alternative text identifies the live order and enquiry experience rather than repeating decorative colour or layout detail. The image does not stand in for the payment boundary: adjacent text states that requests require human confirmation, cash requests are live and OneGate-hosted online methods remain activation-gated pending Ontoko's payment-capable merchant profile.

## Honest boundary

These checks support the quality of this release. They do not constitute independent WCAG certification, assistive-technology coverage across every browser, a formal penetration test or a production performance guarantee. The DOM, transfer, filter and animation figures are recorded local-run diagnostics, not field-performance measurements or Lighthouse results. The public Ontoko evidence also does not test or expose Jane's protected admin desk, customer records or inactive merchant rails.

Before any major content expansion, SolarSpin should repeat keyboard testing, screen-reader spot checks, contrast verification and performance measurement against the final production payload.
