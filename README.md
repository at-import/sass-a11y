# Sass A11Y
Accessibility helpers for Sass.

While working in Sass, it's useful to check to ensure your decisions are accessible ones. This Compass plugin (for the time being, until Sass gets an exponent function) will assist you in ensuring your designs are accessible as much as it can without having your whole site rendered.

## Installation

Add the following to your Gemfile:

```ruby
gem 'sass-a11y', '<1.0'
```

And the following to `config.rb`:

```ruby
require 'sass-a11y'
```

Finally, import the partials

```scss
@import "a11y";
```

## Functions

### `a11y-contrast($color, $background)`

Will determine if the color passes [W3C Contrast Minimums](http://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html) when placed on the given background. Based on Lea Verou's fantastic [contrast-ratio site](http://leaverou.github.io/contrast-ratio/) so it works with transparent colors as well!

Failing color combinations will throw an error, everything else will debug out the contrast minimum it passes. Failing color combinations will return `false`, passing ones will return `true`.

To suppress messages, set `$A11Y--Contrast-Output-Warnings: false;`.

### `a11y-luminance($color)`

W3C [relative luminance](http://www.w3.org/TR/2008/REC-WCAG20-20081211/#relativeluminancedef) functionality. Luminance is the relative brightness of any point in a colorspace, normalized to 0 for darkest black and 1 for lightest white based on the sRGB colorspace. Returns a unitless number.