# DevOps Documentation Site

A minimalist, dark-themed documentation website for DevOps practices and tools, built with MkDocs Material theme.

## Quick Start

1. Install dependencies: 

```bash
pip install mkdocs mkdocs-material
```

2. Start the development server:

```bash
mkdocs serve
```
3. View the site at `http://127.0.0.1:8000`

## Project Structure

- `mkdocs.yml`: The configuration file for MkDocs.
- `docs/`: Directory containing Markdown files for the documentation.
- `docs.html`: Custom HTML template for the documentation page.

```
├── index.md # Homepage
├── getting-started/ # Getting Started section
│ └── index.md # Main getting started page
├── deployment/ # Deployment section
│ ├── index.md # Main deployment page
│ └── ci-cd.md # CI/CD specific guide
└── monitoring/ # Monitoring section
└── index.md # Main monitoring page
mkdocs.yml # MkDocs configuration
```

## Adding Content

### New Pages

1. Create a new `.md` file in the appropriate section folder under `docs/`
2. Add front matter at the top of the file:

```markdown
---
title: Your Page Title
category: Section Name
---
```

### New Sections

1. Create a new folder under `docs/`
2. Add an `index.md` file in the new folder
3. Update `mkdocs.yml` if you need to customize the navigation

## File Purposes

- `mkdocs.yml`: Main configuration file. Edit to change:
  - Site theme and appearance
  - Navigation structure
  - Plugins and extensions
  - Search settings

- `docs/index.md`: Homepage content and main navigation
  - Update "Quick Navigation" section when adding new categories
  - Maintain "Latest Updates" section

- Section `index.md` files (e.g., `docs/deployment/index.md`):
  - Main overview page for each section
  - Contains section-specific navigation

## Building for Production

1. Build the static site:

```bash
mkdocs build
```
2. The built site will be in the `site/` directory

## Theme Customization

- Edit theme settings in `mkdocs.yml`
- Current theme: Material Dark (Slate)
- Primary color: Deep Purple
- Accent color: Purple

## Features

- 🔍 Full-text search
- 📱 Mobile responsive
- 🌙 Dark theme
- ✨ Syntax highlighting
- 📝 Table of contents
- 🔗 Auto-generated navigation

## Contributing

1. Create new content in the appropriate section
2. Follow the existing structure and formatting
3. Use front matter for page metadata
4. Include code examples with syntax highlighting:
   ````markdown
   ```python
   def example():
       return "Hello, World!"
   ```
   ````

## Docker Deployment

1. Development Environment :

```bash
docker compose up docs-dev
```
