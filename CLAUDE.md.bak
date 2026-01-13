# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static resume website for 김준영 (backend developer) hosted on GitHub Pages. The site is built as a single-page HTML document with embedded CSS, following a Modern Minimalist design theme with Minimal Slate color palette.

## Key Architecture

### Content Synchronization Pattern
- **Source of Truth**: `resume.md` contains the canonical resume content in markdown format
- **Display Layer**: `index.html` is the styled HTML version that must be kept in sync with `resume.md`
- **Update Flow**: When updating content, modify `resume.md` first, then apply those changes to `index.html`

### File Structure
```
/
├── index.html          # Main resume page (styled, deployed version)
├── resume.md           # Content source for drafting/editing
├── images/             # All image assets (profile.png, github-mark.png)
├── package.json        # Single dependency: gh-pages for deployment
└── AGENTS.md          # Repository guidelines (legacy documentation)
```

## Design System

### Color Palette (Minimal Slate Theme)
- Primary: `#0f172a` (slate black) - Headers, emphasis
- Text: `#1e293b`, `#475569` (dark/medium gray) - Body text
- Secondary: `#94a3b8`, `#64748b` (light gray) - Metadata, captions
- Background: `#fafafa`, `#f8fafc` - Card backgrounds
- Borders: `#e2e8f0`, `#f1f5f9` - Subtle dividers

### Typography
- Font stack: -apple-system, BlinkMacSystemFont, "Apple SD Gothic Neo", "Pretendard", "Segoe UI"
- Base line-height: 1.75
- Heading letter-spacing: Negative values for tighter spacing (-1px, -0.3px)
- Section headers: UPPERCASE with wide letter-spacing (3px)

### Layout Principles
- Max-width: 900px (centered)
- Generous padding: 100px 50px (desktop), 60px 30px (mobile)
- Section spacing: 80px between major sections
- Hover effects: Subtle transitions (0.2s-0.3s ease)

## Content Structure

### Resume Sections (in order)
1. **Header**: Name and subtitle
2. **Contact**: Profile image + contact links (email, GitHub, blog)
3. **Core Competency**: 5 key technical strengths
4. **My Working Style**: 3 work principles (claim → detailed example format)
5. **Skills**: Table of tech stack by category (Backend, DB, Frontend, DevOps, 협업/관리)
6. **Work Experience**: 더존비즈온 WEHAGO (4년차)
7. **Projects**: Detailed project experiences with Problem-Solution-Result format
8. **Certifications**: Professional certifications with dates

### Project Experience Format
Each project follows this structure:
- Project title + period
- Brief overview
- Sub-experiences using Problem-Solution-Result cards:
  - `.ps-label.problem` (red background)
  - `.ps-label.solution` (blue background)
  - `.ps-label.result` (green background)

## Development Commands

### Setup
```bash
npm install  # Install gh-pages dependency (one-time)
```

### Local Development
```bash
# Open index.html directly in browser, or use a local server:
npx serve .
# Then visit http://localhost:3000
```

### Deployment
```bash
npm run deploy  # Pushes current directory to gh-pages branch
```

## Common Editing Tasks

### Updating Resume Content
1. Edit `resume.md` with new content
2. Apply the same changes to `index.html` (maintain HTML structure and CSS classes)
3. Test locally by opening `index.html` in browser
4. Check responsive layout at ~375px and ~1200px widths
5. Deploy with `npm run deploy`

### Adding New Skills
- Update Skills table in both `resume.md` and `index.html`
- Use `<code>` tags for tech stack items in HTML
- Maintain categories: Backend, DB, Frontend, DevOps, 협업/관리

### Adding New Project Experience
- Follow Problem-Solution-Result structure
- Use appropriate `.ps-label` classes (problem/solution/result)
- Maintain consistent spacing with existing projects
- Add `<hr>` separator between different projects

### Modifying Design
- All CSS is inline in `<style>` tag within `index.html`
- Follow existing class naming conventions (`.contact-section`, `.problem-solving`, `.ps-title`)
- Maintain color palette consistency
- Test hover effects and transitions

## Git Workflow

### Commit Message Style
- Use short, present-tense Korean summaries (e.g., "내용 수정", "디자인 개선")
- Group related changes in single commit
- Keep dependency updates separate

### Before Deployment
1. Verify all image paths are correct (`images/` directory)
2. Test external links (email, GitHub, blog)
3. Check layout on mobile and desktop widths
4. Clear browser cache and test in private window
5. Ensure `resume.md` and `index.html` are synchronized

## Important Notes

- **Never edit files in `node_modules/`** - managed by npm
- **Image references** must use relative paths from repository root
- **No build process** - site is deployed as-is from root directory
- **GitHub Pages URL**: https://kimjunyoung90.github.io/resume/
- **Design theme**: Modern Minimalist with Minimal Slate palette (maintain consistency)
