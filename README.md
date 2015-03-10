# Jekyll Reveal

Easily integrate [reveal.js](https://github.com/hakimel/reveal.js) to host presentations on your
Jekyll-powered site.

## Installation
```
git clone https://github.com/ajm188/jekyll-reveal.git
cd jekyll-reveal
./install /path/to/your/blog/
```

### What the install script does
1. Adds [reveal.js](https://github.com/hakimel/reveal.js) as a submodule to your project
1. Copies the [slides.rb](slides.rb) plugin to your _plugins directory
1. Copies the [reveal.html](reveal.html) layout to your _layouts directory
1. Appends some configuration options for the reveal layout to your _config.yml file

## Usage
The plugin defines a single block tag which is registered as "slide". Slides therefore begin
with `{% slide %}` and end with `{% endslide %}`. Feel free to use all of your normal markdown
inside of the slide tags.

To create vertical slides, simply nest slide tags. This plugin is designed to be very simple,
so it does not attempt to help you out with your nesting. If you nest your slides deeper than
one level, you are at the mercy of however reveal.js decides to handle that.

You can also pass tag attribuse directly to the slide tags (rather than manually creating <section> tags),
which is useful for things like setting the slide background on a per-slide basis.

### Example
```markdown
---
layout: reveal
---

{% slide %}

## This is a slide with just an h2 tag

{% endslide %}

{% slide %}
{% slide %}
## This is a vertical slide
{% endslide %}

{% slide %}
## This is the second vertical slide
{% endslide %}
{% endslide %}

{% slide data-background="#dddddd" %}
## This slide will have a different background color
{% endslide %}
```
