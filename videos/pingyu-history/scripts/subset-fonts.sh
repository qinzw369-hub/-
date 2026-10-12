#!/bin/bash
# Subset the CJK fonts to the glyphs actually used in the project's HTML.
# Full source fonts (google/fonts, OFL) live in .fonts-src/ (not committed).
set -euo pipefail
cd "$(dirname "$0")/.."
python3 - <<'PY'
import glob, pathlib
chars = set(chr(c) for c in range(0x20, 0x7f))
chars |= set("，。、：；！？“”‘’《》（）·—…「」『』　")
for f in glob.glob("*.html") + glob.glob("compositions/**/*.html", recursive=True):
    chars |= set(pathlib.Path(f).read_text(encoding="utf-8"))
pathlib.Path(".fonts-src/chars.txt").write_text("".join(sorted(c for c in chars if c.isprintable())), encoding="utf-8")
PY
for pair in "MaShanZheng-Regular.ttf:MaShanZheng" "ZhiMangXing-Regular.ttf:ZhiMangXing" \
            "NotoSerifSC[wght].ttf:NotoSerifSC" "NotoSansSC[wght].ttf:NotoSansSC"; do
  src="${pair%%:*}"; out="${pair##*:}"
  pyftsubset ".fonts-src/$src" --text-file=.fonts-src/chars.txt --flavor=woff2 \
    --layout-features='*' --output-file="fonts/$out.woff2"
done
ls -la fonts
