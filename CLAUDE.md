# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build Commands

**Typst (local, preferred):**
```sh
typst compile resume.typ            # produces resume.pdf
typst watch resume.typ              # live preview
```

**Pandoc (matches CI):**
```sh
# HTML
pandoc index.md -o _site/index.html --standalone --metadata title="Josh Day - Resume" --css=style.css --embed-resources

# PDF
pandoc index.md -o _site/resume.pdf --pdf-engine=pdflatex -V geometry:margin=0.75in -V fontsize=11pt -V colorlinks=true -V linkcolor=blue -V urlcolor=blue
```

## Architecture

The resume exists in two parallel formats:

| File | Format | Purpose |
|------|--------|---------|
| `index.md` | Markdown | Source of truth; built by CI via pandoc → HTML + PDF |
| `resume.typ` | Typst | Modern typesetting alternative; compile locally with `typst compile` |
| `style.css` | CSS | Styles for the pandoc HTML output |

CI (`.github/workflows/build.yml`) runs on every push to `master` using the `pandoc/extra` Docker image, builds both HTML and PDF, and deploys to GitHub Pages. The live outputs are at `https://joshday.github.io/resume/`.

**When editing content**, update both `index.md` and `resume.typ` to keep them in sync.
