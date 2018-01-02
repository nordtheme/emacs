<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-emacs/develop/assets/nord-emacs-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-emacs/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-emacs.svg?style=flat-square"/></a> <a href="https://github.com/arcticicestudio/nord/releases/tag/v0.2.0"><img src="https://img.shields.io/badge/Nord-v0.2.0-88C0D0.svg?style=flat-square"/></a> <img src="https://www.gnu.org/software/emacs/images/emacs.png" width=24 height=24/> <a href="https://www.gnu.org/software/emacs/#Releases"><img src="https://img.shields.io/badge/Emacs-24+-B48EAD.svg?style=flat-square"/></a> <img src="https://melpa.org/favicon.ico" width=24 height=24/> <a href="https://stable.melpa.org/#/nord-theme"><img src="https://stable.melpa.org/packages/nord-theme-badge.svg"/></a> <a href="https://melpa.org/#/nord-theme"><img src="https://melpa.org/packages/nord-theme-badge.svg"/></a></p>


<p align="center">An arctic, north-bluish clean and elegant <a href="https://www.gnu.org/software/emacs">Emacs</a> theme.</p>

<p align="center">Designed for a fluent and clear workflow.<br>
Based on the <a href="https://github.com/arcticicestudio/nord">Nord</a> color palette.</p>

---

Nord Emacs is a 16 colorspace theme build to run in GUI- and terminal mode with support for many third-party syntax- and UI packages.

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-package-syntax-jdee.png"/><br><blockquote>Font: <a href="https://adobe-fonts.github.io/source-code-pro">Source Code Pro</a> 20px</blockquote></p>

  - [Getting started](#getting-started)
    - [Installation](#installation)
      - [Manual](#manual)
      - [Package.el](#package-el)
    - [Activation](#activation)
  - [Features](#features)
  - [Customization](#customization)
    - [Custom Comment Brightness](#custom-comment-brightness)
    - [Region Highlight Style](#region-highlight-style)
    - [Uniform Mode Lines](#uniform-mode-lines)
  - [Package Support](#package-support)
    - [Syntax Packages](#syntax-packages)
    - [UI Packages](#ui-packages)
  - [Languages](#languages)
  - [Development](#development)
    - [Contribution](#contribution)

## Getting started
### Installation
**NOTE**: Nord Emacs in terminal mode **MUST** be used with the associated terminal emulator theme in order to work properly!  
Make sure to install one of the currently supported terminal themes listed below **BEFORE** installing Nord Emacs.

[![Nord GNOME Terminal](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-gnome-terminal-banner.svg)](https://github.com/arcticicestudio/nord-gnome-terminal)  
[![Nord Guake](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-guake-banner.svg)](https://github.com/arcticicestudio/nord-guake)  
[![Nord Hyper](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-hyper-banner.svg)](https://github.com/arcticicestudio/nord-hyper)  
[![Nord iTerm2](https://cdn.rawgit.com/arcticicestudio/nord/0971858f496823fd916f3368961f16ef2c7aad1e/src/assets/nord-iterm2-banner.svg)](https://github.com/arcticicestudio/nord-iterm2)  
[![Nord Konsole](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-konsole-banner.svg)](https://github.com/arcticicestudio/nord-konsole)  
[![Nord Mintty](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-mintty-banner.svg)](https://github.com/arcticicestudio/nord-mintty)  
[![Nord PuTTY](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-putty-banner.svg)](https://github.com/arcticicestudio/nord-putty)  
[![Nord Terminal.app](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-terminal-app-banner.svg)](https://github.com/arcticicestudio/nord-terminal-app)  
[![Nord Terminator](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-terminator-banner.svg)](https://github.com/arcticicestudio/nord-terminator)  
[![Nord Tilix](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-tilix-banner.svg)](https://github.com/arcticicestudio/nord-tilix)  
[![Nord Termite](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-termite-banner.svg)](https://github.com/arcticicestudio/nord-termite)  
[![Nord XFCE Terminal](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-xfce-terminal-banner.svg)](https://github.com/arcticicestudio/nord-xfce-terminal)  
[![Nord Xresources](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-xresources-banner.svg)](https://github.com/arcticicestudio/nord-xresources)  

#### Package.el
Nord Emacs is avaiable as `package.el`-compatible Emacs Lisp package via [MELPA](https://melpa.org), [MELPA Stable](https://stable.melpa.org) and [marmalade-repo](https://marmalade-repo.org).

> <kbd>M-x</kbd> `package-install` <kbd>RET</kbd> `nord-theme` <kbd>RET</kbd>

#### Manual
[Download](https://github.com/arcticicestudio/nord-emacs/releases/latest) the latest version or clone the repository and copy the [`nord-theme.el`](https://github.com/arcticicestudio/nord-emacs/blob/develop/nord-theme.el) theme file to your `~/.emacs.d/themes` directory.

### Activation
Make sure that the `themes` directory has been added to the load path:
```lisp
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
```

Use Nord Emacs as your default color theme by adding it to your `.init.el`
```lisp
(load-theme 'nord t)
```
or change it on-the-fly by running <kbd>M-x</kbd> `load-theme` <kbd>RET</kbd> `nord` <kbd>RET</kbd>.

## Features
<p align="center"><strong>Non-obtrusive bracket matching- and search marker.</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-feature-bracket-matching.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-feature-search.gif"/></p>

<p align="center"><strong>Colors of selected code can still be easily recognized.</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrcast-feature-selection.gif"/></p>

## Customization

All customizations need to be set before `load-theme` is invoked for Nord and require a restart of Emacs when changed!

### Custom Comment Brightness

This customization allows to define a custom comment color brightness with percentage adjustments from *0* - *20*. It is a way to provide a way for users to easily adjust the comment color to fit their needs without overriding specific faces individually.

It can be enabled by adding the `nord-comment-brightness` variable to a number between `1` and `20` in your `init.el`:

```lisp
(setq nord-comment-brightness 15)
```

To adhere to the Nord style guide this option uses `nord3` by default and applied as fallback when the variable is assigned a invalid value.

This customization is a port of the reference implementation from the [Nord Atom Syntax][nord-atom-syntax-gh-47] project. The values are calculated using the LESSCSS [`lighten`][lesscss-doc-lighten] function to ensure full interoperability with other port projects that providing this theme feature.

| Increased by | Calculated value |
| --- | --- |
| 0%  (default) | `nord3` |
| 1% | `#4e586d` |
| 2% | `#505b70` |
| 3% | `#525d73` |
| 4% | `#556076` |
| 5% | `#576279` |
| 6% | `#59647c` |
| 7% | `#5b677f` |
| 8% | `#5d6982` |
| 9% | `#5f6c85` |
| 10% | `#616e88` |
| 11% | `#63718b` |
| 12% | `#66738e` |
| 13% | `#687591` |
| 14% | `#6a7894` |
| 15% | `#6d7a96` |
| 16% | `#6f7d98` |
| 17% | `#72809a` |
| 18% | `#75829c` |
| 19% | `#78859e` |
| 20% | `#7b88a1` |

<p align="center"><strong>Default comment brightness</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-custom-comment-brightness-java-default.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-custom-comment-brightness-js-default.png"/><br><strong>Increased comment brightness by 15%</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-custom-comment-brightness-java-15percent.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-custom-comment-brightness-js-15percent.png"/></p>

### Region Highlight Style

Allows to set a style for the region highlight based on the Nord components, either to `snowstorm` or `frost`.

To adhere to the Nord style guide this option uses `nord2` as background- and no specific foreground color.

It can be enabled by setting the `nord-region-highlight` variable to the desired style `snowstorm` or `frost` in your `init.el`:

```lisp
(setq nord-region-highlight "snowstorm")
```

p align="center"><strong><code>snowstorm</code> region highlight style</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-customization-region-highlight-style-snowstorm.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrcast-customization-region-highlight-style-snowstorm.gif"/><br><strong><code>frost</code> region highlight style</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-customization-region-highlight-style-frost.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrcast-customization-region-highlight-style-frost.gif"/><br><strong>default region highlight style</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-customization-region-highlight-style-default.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrcast-customization-region-highlight-style-default.gif"/></p>

### Uniform Mode Lines

Enables uniform activate- and inactive mode lines using `nord3` as background.

It can be activated by setting the `nord-uniform-mode-lines` variable to `t` in your `init.el`:

```lisp
(setq nord-uniform-mode-lines t)
```

<p align="center"><strong>Default mode lines</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-customization-uniform-mode-lines-default.png"/><br><strong>Uniform mode lines</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-customization-uniform-mode-lines.png"/></p>

## Package Support
Nord Emacs provides support for many third-party syntax- and the UI packages.  
Detailed descriptions for supported packages can be found in the [project wiki](https://github.com/arcticicestudio/nord-emacs/wiki).

### Syntax Packages
<p align="center"><strong>Elixir</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-elixir.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-elixir-2.png"/></p>

<p align="center"><strong>Java (<code>jdee</code>)</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-package-syntax-jdee.png"/></p>

<p align="center"><strong>JavaScript (<code>js2-mode</code>, <code>js3-mode</code>)</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-package-syntax-js2.png"/></p>

<p align="center"><strong>Org Mode</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-package-syntax-org.png"/></p>

<p align="center"><strong>Rainbow Delimeters</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-package-syntax-rainbow-delimeters.png"/></p>

### UI Packages
<p align="center"><strong>Company Mode</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-package-ui-company.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrcast-package-ui-company.gif"/></p>

## Languages
Nord Emacs contains optimized styles to achieve a consistent and uniform coloring across languages.  
Detailed descriptions for supported languages can be found in the [project wiki](https://github.com/arcticicestudio/nord-emacs/wiki) and in the [Package Support](#package-support) section.

<p align="center"><strong>C</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-c.png"/></p>

<p align="center"><strong>C++</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-cpp.png"/></p>

<p align="center"><strong>C#</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-csharp.png"/></p>

<p align="center"><strong>CSS</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-css.png"/></p>

<p align="center"><strong>diff</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-diff.png"/></p>

<p align="center"><strong>Python</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-python.png"/></p>

<p align="center"><strong>Ruby</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-lang-ruby.png"/></p>

## Development
[![](https://img.shields.io/badge/Changelog-0.3.0-81A1C1.svg?style=flat-square)](https://github.com/arcticicestudio/nord-emacs/blob/v0.3.0/CHANGELOG.md) [![](https://img.shields.io/badge/Workflow-gitflow--branching--model-81A1C1.svg?style=flat-square)](http://nvie.com/posts/a-successful-git-branching-model) [![](https://img.shields.io/badge/Versioning-ArcVer_0.8.0-81A1C1.svg?style=flat-square)](https://github.com/arcticicestudio/arcver)

### Contribution
Please report issues/bugs, feature requests and suggestions for improvements to the [issue tracker](https://github.com/arcticicestudio/nord-emacs/issues).

<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/banner-footer-mountains.svg" /></p>

<p align="center">Copyright &copy; 2017-present Arctic Ice Studio</p>

<p align="center"><a href="https://github.com/arcticicestudio/nord-emacs/blob/develop/LICENSE.md"><img src="https://img.shields.io/badge/License-MIT-5E81AC.svg?style=flat-square"/></a> <a href="https://creativecommons.org/licenses/by-sa/4.0"><img src="https://img.shields.io/badge/License-CC_BY--SA_4.0-5E81AC.svg?style=flat-square"/></a></p>

[lesscss-doc-lighten]: http://lesscss.org/functions/#color-operations-lighten
[nord-atom-syntax-gh-47]: https://github.com/arcticicestudio/nord-atom-syntax/issues/47
