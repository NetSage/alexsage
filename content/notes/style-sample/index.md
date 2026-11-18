+++
title = "Style sample: every element"
description = "A test note that uses every element the theme styles."
date = 2026-11-10
updated = 2026-11-17
draft = false

[taxonomies]
tags = ["meta", "sample"]

[extra]
status = "budding"
+++

This opening paragraph gets the illuminated first letter. The rest is ordinary body text in the serif reading face, long enough to wrap a few times so you can judge line length, line height and how the drop cap sits against the second and third lines. Here is a [normal link](https://www.getzola.org/), some *emphasis*, some **strong text**, a bit of `inline code`, ~~struck-out text~~, and a keyboard shortcut: <kbd>Ctrl</kbd> + <kbd>K</kbd>.

A second paragraph without the drop cap, so you can compare. Smart punctuation turns "straight quotes" and -- dashes -- into proper typography, and ... into an ellipsis.[^1]

## Headings and the section link

Hover over this heading (or Tab to it) to see the § link. Headings are serif small caps; the sidebar's contents list is built from them.

### A third-level heading

Text under a third-level heading.

#### A fourth-level heading

Text under a fourth-level heading.

## Lists

An unordered list:

- Parchment in light mode
- Night sky in dark mode
  - Nested item with a [link inside it](https://alexsage.com/)
  - Another nested item
- Gold for accents

An ordered list:

1. Write the post
2. Preview it with `zola serve --drafts`
3. Commit and push

A task list:

- [x] Template skeleton
- [x] Styling
- [ ] Search, someday

## Quotes

> A blockquote gets a gold rule on the left and muted italic text. It can run over several lines and still read cleanly.
>
> — A second paragraph inside the same quote

## Code

A plain code block with no language:

```
No highlighting here, just monospace on the code background.
```

TOML with line numbers, highlighted lines and a file name:

```toml,linenos,hl_lines=3-4,name=config.toml
base_url = "https://alexsage.com"
compile_sass = true

[markdown.highlighting]
light_theme = "light-plus"
dark_theme = "catppuccin-mocha"
```

Python:

```python
def tended(note):
    """Return the most recent date a note was touched."""
    return note.updated or note.date

print(tended(note))  # comments should stay readable in both modes
```

A shell session:

```bash
git add -A
git commit -m "Add style sample"
git push origin main
```

SCSS:

```scss
.marginalia {
  font-size: 0.95rem;
  border-top: 1px solid var(--border);
  @media (min-width: 64rem) { position: sticky; }
}
```

## Table

| Mode  | Background | Text      | Accent |
|-------|------------|-----------|--------|
| Light | Parchment  | Ink       | Teal and gold |
| Dark  | Night blue | Warm white | Cyan and gold |

## Image

The original is a 1600 × 900 JPG in this folder. The component publishes an 800px WebP instead, and the JPG itself is never deployed.

{{ <site.img src="night-ridge.jpg" alt="A full moon over layered mountain ridges under a starry night sky" caption="Night ridge: a generated test image, resized to WebP at build time." /> }}

## Horizontal rule

Text above the rule.

---

Text below the rule.

## Footnotes

The footnote marker in the second paragraph links down here.

[^1]: This is the footnote. Footnotes have no special styling yet; tell me if you want them smaller.
