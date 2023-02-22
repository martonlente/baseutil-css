# Baseutil CSS
Baseutil CSS is a modern, fully flexible, and utility-centric  desktop-first framework, designed to help you in streamlined custom web development. It's built on the idea to have a modest set of variable-based base styles for grid and type, and a rich set of also variable-based single-responsibility utilities. :triangular_ruler:

Baseutil CSS is in version alpha. :seedling:

### Background
Baseutil CSS is born of a highly organized utility-based workflow, built up over more years of developing mostly design-centric small to medium size custom web projects. It's inspired by [CSS Guidelines,](https://github.com/csswizardry/CSS-Guidelines) and promotes CSS architectural best practices, leveraging _Separation of concerns,_ the _Single-responsibility principle,_ the _Open-closed principle,_ and also the _DRY principle._

The projects you build with Baseutil CSS should have ultra-low CSS specificity, and infinite scalability. Base styles are inspired by [Wing,](https://github.com/kbrsh/wing) a minimalist CSS framework. Baseutil CSS promotes a similar approach to utility frameworks like [Tailwind CSS](https://github.com/tailwindlabs/tailwindcss), but with a focus on meaningfully blending base styles with utilities, while being simpler. It's written in vanilla CSS with the benefits of fully leveraging custom properties. It's likely also more inviting for novices.

The class names follow [Bootstrap's](https://github.com/twbs/bootstrap) naming conventions, to minimize learning curve, if you're already familiar with the former. The stylesheets comply with Google CSS Guidelines. Rules are alphabetically ordered, groups of related items being an exception.

Baseutil CSS promotes the idea of designing in the browser, and is a developer alternative to modern UX/UI design software like Figma or Penpot. (Developing with Baseutil CSS is a lot like using the latter the smart way.)

## Installation
Download Eric Meyer's [CSS Reset,](https://meyerweb.com/eric/tools/css/reset/reset.css) and add the stylesheet `<link>` to your `<head>` before all other stylesheets.
```html
<link href="css/reset.css" rel="stylesheet">
```
Download Baseutil CSS, and add the stylesheet `<link>` to your `<head>` before other stylesheets.
```html
<link href="css/baseutil.css" rel="stylesheet">
```

## Usage
Customize and use Baseutil CSS efficiently for your project by following and repeating these steps:
- **Set or reset Baseutil CSS variables** (custom properties) accordingly to design in your own `style.css`.
- **Adjust Baseutil CSS grid and type** base styles accordingly to design in your own `style.css`.
- **Use Baseutil CSS utilities** styles (classes) to build your HTML markup. Build for desktop first, and use utilities appended with `-xl`, `-lg`, `-sm` and `-xs` for smaller screens.
- Add missing utilities styles if needed in your own `style.css`. Add components styles if needed in your own `style.css`.

Baseutil CSS might also work as a drop-in CSS framework for old projects.

### Variables
Baseutil CSS variables set atomic elements of a design system, like colour, grid spacing and type. Variables prevail in all base and utilities styles.

Set | Variables
--- | ---
Colour | `--black`, `--gradient`, `grey-*`, `--primary`, `--secondary`, `--tertiary`, `--white`
Grid | `--container-max-width`, `--grid-columns`, `--grid-gutter-width`, `--spacer`
Type | `--font-monospace`, `--font-sans-serif`, `--font-serif`, `--fs-1`, `--fs-2`, `--fs-3`, `--fs-4`, `--fs-5`, `--fs-6`, `--fw-bold`, `--fw-light`, `--fw-normal`, `--letter-spacing-lg`, `--letter-spacing-sm`, `--lh-base`, `--lh-lg`, `--lh-sm`, `--transition-duration`

### Grid and type
Baseutil CSS grid and type styles set molecular elements of a design system, and act as building blocks of complex designs. 

#### Grid
The grid is based on variables grid. The smallest grid spacing unit is variable `--spacer`. All spacing is set to be multiples of this unit, which is `0.8rem` by default. Baseutil CSS is fully flexbox-based.

Baseutil CSS supports column-based layouts from 1 to 16 columns that work accordingly to variables. Breakpoints are desktop first by design, and target five different device or screen groups.

Device | Code | Type | Range (max-width)
--- | --- | --- | ---
Extra large | - | 4k and ultrawide | -
Large | `lg` | desktop | 1904 px
Medium | `md` | from large tablet to laptop | 1264 px
Small | `sm` | from small to medium tablet | 960 px
Extra small | `xs` | from small to large smartphone | 600 px

Baseutil CSS supports inner (nested) rows. Inner rows inherit variable `--grid-columns`, or can be reset by `.grid-columns-*` utility classes, so that nested columns' widths match main columns'.

Example usage:
```html
<div class="row">
  <div class="col-8">
    <div class="grid-columns-8 row">
      <div class="col-6"></div>
      <div class="col-2"></div>
    </div>
  </div>
  <div class="col-4"></div>
</div>
```

#### Type
The type styles set or reset basic styling for typography, and make semantic markup look accordingly to variables type.

### Utilities
Baseutil CSS utility styles are low-level single-responsibility utilities, that are based on set variables. Build complex design organisms by assigning utilities (classes) to your markup.

Utilities are very suitable to be used with JavaScript frameworks for dynamic styling due to their single-responsibility nature.

**Utilities are organized into different styling groups:** _Align items, Background attachment, Background colour, Background position, Background repeat, Background size, Border, Border colour, Border radius, Border width, Bottom - Left - Right - Top, Box shadow, Colour, Display, Fill, Filter, Flex, Font family, Font size, Font weight, Grid columns, Height, Justify content, Letter spacing, Line height, List style position, List style type, Margin and padding, Object fit, Opacity, Order, Overflow, Position, Ratio, Stroke, Text align, Text transform, Text decoration, Transform, Transform translate, Transition, Vertical align, Visibility, White space, Width, Writing mode, Z-index_

For a full list of available utilities, study the code.

### Site and web app examples built with Baseutil CSS
- [KÉK Tudástár](https://tudastar.kek.org.hu): Knowledgebase web app for browsing, reading and researching Contemporary Architecture Center Budapest's library, and publications.
- [MádiLáncos Studio](https://madilancos.hu): Business website of an award-winning interior design studio in Budapest, Hungary.
- [PI-HUN](https://pi-hun.hu): Business website of an established architecture and engineering company in Budapest, Hungary.

## Roadmap
- Add logo
- Add comprehensive documentation
- Add new site and web app examples
- Add npm package
- TODO

## Contributing
Pull requests are not yet welcome. For support requests, please open an issue first to discuss what you would like to change.

## License
[Apache 2.0](https://github.com/martonlente/baseutil-css/blob/main/LICENSE)
