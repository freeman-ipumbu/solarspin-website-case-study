#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root_dir"

required_files=(
  README.md
  LICENSE
  assets/case-study-cover.svg
  assets/experience-system.svg
  assets/design-language.svg
  assets/brand/logo-reversed.svg
  assets/screenshots/hero-desktop.webp
  assets/screenshots/hero-mobile.webp
  assets/screenshots/system-map.webp
  assets/screenshots/proof-of-work.webp
  assets/screenshots/proof-of-work-final.webp
  assets/screenshots/field-atlas.webp
  assets/screenshots/project-orbit-mobile.webp
  assets/screenshots/tpts-grid-route-studio-live.jpg
  assets/screenshots/ignition-intro.webp
  assets/screenshots/cosmic-address.webp
  assets/screenshots/windhoek-transmission.webp
  assets/screenshots/experience-finale.webp
  assets/screenshots/method-desktop.webp
  assets/screenshots/founder-mobile.webp
  docs/visual-system.md
  docs/interaction-architecture.md
  docs/accessibility-and-qa.md
  docs/publication-boundary.md
)

for path in "${required_files[@]}"; do
  if [[ ! -s "$path" ]]; then
    printf 'Missing or empty required file: %s\n' "$path" >&2
    exit 1
  fi
done

if rg -n -i '(api[_-]?key|client[_-]?secret|private[_-]?key|cloudflare[_-]?token|authorization:[[:space:]]*bearer)' . \
  --glob '!scripts/verify-case-study.sh' \
  --glob '!LICENSE'; then
  printf 'Possible secret-like material detected.\n' >&2
  exit 1
fi

if rg -n '—' README.md docs; then
  printf 'Em dash detected. Use Freeman-compatible punctuation.\n' >&2
  exit 1
fi

for url in \
  'https://solarspin-namibia.pages.dev/' \
  'https://freeman-ipumbu.pages.dev/' \
  'https://github.com/SolarSpin-Technologies'; do
  status="$(curl -L --silent --output /dev/null --write-out '%{http_code}' --max-time 20 "$url")"
  if [[ "$status" != "200" ]]; then
    printf 'External link failed (%s): %s\n' "$status" "$url" >&2
    exit 1
  fi
done

printf 'Case-study verification passed: %s required files and 3 live links.\n' "${#required_files[@]}"
