# Repository Guidelines

## Project Structure & Module Organization
All public assets live at the repository root to match GitHub Pages hosting. `index.html` is the canonical resume UI with embedded CSS, while `resume.md` documents the raw content used to draft new sections. Images referenced by the HTML sit under `images/`, and any generated dependencies stay in `node_modules/` (never edit them manually). Keep new media or downloadable assets grouped under `images/` or a new folder created at the root so relative paths stay shallow and easy to audit.

## Build, Test, and Development Commands
Run `npm install` once to pull the single `gh-pages` dependency used for deployment. During authoring, open `index.html` directly in a browser or spin up a local server via `npx serve .` to confirm relative asset paths. Publish updates with `npm run deploy`, which pushes the current root directory to the configured `gh-pages` branch. Avoid custom build steps—the site is a static document and the GitHub Action expects the flat structure.

## Coding Style & Naming Conventions
HTML uses four-space indentation and lowercase tags. Prefer semantic grouping with `<section>` and `<h2>` rather than extra `<div>` layers, mirroring the existing hierarchy. CSS is inline within `<style>`; reuse the established neutral palette (`#1a202c`, `#718096`, `#e2e8f0`) and typography stack for consistency. Class names should stay descriptive (`.contact-section`, `.project-period`) and hyphenated. Keep filenames lowercase with hyphens, e.g., `images/company-logo.png`.

## Testing Guidelines
There is no automated test harness, so rely on manual verification. Check desktop widths up to 1200px and narrow mobile widths (~375px) to ensure flex layouts wrap cleanly and typography remains legible. Validate external links (email, GitHub, blog) after edits, and confirm that all images referenced in `index.html` exist in `images/` to avoid broken deployments. Before running `npm run deploy`, reload the page in a private browser window to ensure cached styles do not hide regressions.

## Commit & Pull Request Guidelines
Recent history favors short, Korean summaries (e.g., `내용 수정`, `md 파일 수정`). Follow that style: one-line present-tense statements that describe the scope. Group related visual and content tweaks into a single commit; leave dependency updates isolated. Pull requests should include a concise description of the resume sections touched, before/after screenshots when layout changes, and links to any issue or ticket motivating the edit. Mention manual test steps performed so reviewers can reproduce results quickly.
