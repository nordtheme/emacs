<p align="center"><a href="https://www.nordtheme.com/ports/emacs" target="_blank"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/main/assets/images/ports/emacs/repository-hero.svg?sanitize=true"/></a></p>

<p align="center"><a href="https://github.com/arcticicestudio/nord-emacs/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-emacs.svg?style=flat-square&label=Release&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0"/></a> <a href="https://www.nordtheme.com/docs/ports/emacs"><img src="https://img.shields.io/github/release/arcticicestudio/nord-emacs.svg?style=flat-square&label=Docs&colorA=4c566a&colorB=88c0d0&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI%2BCiAgICA8cGF0aCBmaWxsPSIjZDhkZWU5IiBkPSJNMTMuNzQ2IDIuODEzYS42Ny42NyAwIDAgMC0uNTU5LS4xMzNMOCAzLjg0OGwtNS4xODgtMS4xOGEuNjY5LjY2OSAwIDAgMC0uNTcuMTMzLjY3Ny42NzcgMCAwIDAtLjI0Mi41MzF2OC4xMzNjLS4wMDguMzIuMjEuNTk4LjUyLjY2OGw1LjMzMiAxLjE5OWguMjk2bDUuMzMyLTEuMmEuNjY4LjY2OCAwIDAgMCAuNTItLjY2N1YzLjMzMmEuNjU5LjY1OSAwIDAgMC0uMjU0LS41MnpNMy4zMzIgNC4xNjhsNCAuODk4djYuNzY2bC00LS44OTh6bTkuMzM2IDYuNzY2bC00IC44OThWNS4wNjZsNC0uODk4em0wIDAiLz4KPC9zdmc%2BCg%3D%3D"/></a></p>

<!--lint disable no-duplicate-headings-->

# 0.5.0

![Release Date: 2020-01-08](https://img.shields.io/static/v1.svg?style=flat-square&label=Release%20Date&message=2020-01-08&colorA=4c566a&colorB=88c0d0) [![Project Board](https://img.shields.io/static/v1.svg?style=flat-square&label=Project%20Board&message=0.5.0&colorA=4c566a&colorB=88c0d0)](https://github.com/arcticicestudio/nord-vim/projects/11) [![Milestone](https://img.shields.io/static/v1.svg?style=flat-square&label=Milestone&message=0.5.0&colorA=4c566a&colorB=88c0d0)](https://github.com/arcticicestudio/nord-vim/milestone/7)

## Feature

**Support for _ivy-mode_** — #85 ⇄ #87 (⊶ d59f37c9) by [@jdek][gh-user-jdek]
↠ Added support for the [_ivy-mode_][abo-abo/swiper] of the [ivy][melpa-ivy] package.
It makes use of background to foreground color shading as main accent to highlight matches.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/71962257-5de30c00-31f9-11ea-8c7b-521000e21322.png" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/71822147-6cfc7980-3094-11ea-9c7c-b3bc7f268a6d.png" /></p>

**Migrate deprecated `show-paren-X-face` faces** — #75 ⇄ #89 (⊶ a2b90386) by [@janusvm][gh-user-janusvm]
↠ The `show-paren-match-face` and `show-paren-mismatch-face` face are [deprecated since Emacs version 22.1][emacs-git-c-c430f7e2] and were [removed in Emacs 25][emacs-gh-c-c430f7e2].
To provide compatibility to later Emacs version, the new `show-paren-match` and `show-paren-mismatch` faces have been added.

The deprecated faces will be removed later on, but for now its totally fine for both faces to co-exist to support Emacs versions <22.1 as well as >=22.1.

**Support _Cider_ evaluation result in terminal** — #70 ⇄ #71 (⊶ 995d8421) by [@fmnoise][gh-user-fmnoise]
↠ Added support for evaluation result highlighting of the [Cider][clojure-emacs/cider] package. When running in Emacs GUI mode through iTerm2 on macOS, the background and font color in the evaluation result overlay were the same (or very similar) color so it became unreadable.
Probably that's because of the [defined `cider-result-overlay-face` face][clojure-emacs/cider@f6ac1594#l35] and a difference in the rendering engine of iTerm2.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/71961954-c2519b80-31f8-11ea-944a-7584503790aa.png" /></p>

To prevent this problem, the background color has been removed by using the `unspecified` keyword for the `:background` attribute.

## Improvements

**Different colors for _Org-Mode_ headings** — #81 (⊶ e095a86a) by [@C0DK][gh-user-c0dk]
↠ The different [Org-Mode][org-mode-docs-headings] headings are now using the whole Nord's [Frost][nord-docs-colors#frost] color palette instead of only using `nord8`.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/71960310-f62ac200-31f4-11ea-857c-a8a0051d99a1.png" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/71960309-f62ac200-31f4-11ea-98f5-a7d4d4b0db86.png" /></p>

**Use `display-color-cells` to enable 24-bit color terminal support** — #59 ⇄ #64, #88 (⊶ a66c1202) by [@visigoth][gh-user-visigoth]
↠ In order to fix the „unable to load color X” errors when running Emacs in daemon-mode, the defined theme colors are now tested against the [`display-color-cells` „display feature testing“ function][emacs-docs-display_feature_test] to support 24-bit color terminals with a fallback to the `display-graphic-p` function.
This is a first step to fix the problems described and tracked in #59.

## Bug Fixes

**Superfluous brace character introduced in #81** — #82 (⊶ 2fc8fe41) by [@rien333][gh-user-rien333]
↠ Removed a superfluous brace character (introduced in #81) that caused the theme fail to load.

# 0.4.0

![Release Date: 2019-06-16](https://img.shields.io/static/v1.svg?style=flat-square&label=Release%20Date&message=2016-06-16&colorA=4c566a&colorB=88c0d0) [![Project Board](https://img.shields.io/static/v1.svg?style=flat-square&label=Project%20Board&message=0.4.0&colorA=4c566a&colorB=88c0d0)](https://github.com/arcticicestudio/nord-vim/projects/8) [![Milestone](https://img.shields.io/static/v1.svg?style=flat-square&label=Milestone&message=0.4.0&colorA=4c566a&colorB=88c0d0)](https://github.com/arcticicestudio/nord-vim/milestone/6)

## Features

**Nord Docs Transition** — #76 ⇄ #77 (⊶ 4456d69e)
↠ Transferred all documentations, assets and from „Nord Emacs“ to [Nord Docs][nord]
Please see the [corresponding issue in the Nord Docs repository][gh-nord-docs#155] to get an overview of what has changed for Nord Emacs and what has been done to migrate to Nord Docs.

<p align="center"><strong>Landing Page</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/59565380-2f31f800-9053-11e9-8963-7d0ca40b0f43.jpg"/></p>

<p align="center"><strong>Docs - Landing Page</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/59565381-2f31f800-9053-11e9-8351-2dcdcd9757e2.png"/></p>

<p align="center"><strong>Docs - Installation & Activation Guide</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/59565379-2f31f800-9053-11e9-802d-8c75cb93382a.png"/></p>

<p align="center"><strong>Docs - Configurations</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/59565378-2f31f800-9053-11e9-9b40-32a0c7d83adf.png"/></p>

**Uniform Mode Lines Customization** — #32, #47 ⇄ #48 (⊶ 6b801715) requested by [@localredhead][gh-user-localredhead]
↠ Added the new theme configuration variable `nord-uniform-mode-lines` to use `nord3` as background color highlighting for both active and inactive mode lines.
By default, only the mode line of the active buffer uses `nord3` as background color while inactive buffers are dimmed using `nord1`.

```lisp
(setq nord-uniform-mode-lines t)
```

<p align="center"><strong>Default mode lines</strong></p>
<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/main/content/docs/ports/emacs/configuration/uniform-mode-lines-disabled.png"/></p>

<p align="center"><strong>Uniform mode lines</strong></p>
<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/main/content/docs/ports/emacs/configuration/uniform-mode-lines-enabled.png"/></p>

**Custom Region Highlight Styles** — #45, #32 ⇄ #46 (⊶ b43a2491)
↠ By default, Nord Emacs uses `nord2` as background color for selected text in the editor to provide a sane default style.
To use a more colorful highlighting for region selections, Nord Emacs now provides the `nord-region-highlight` configuration that can be set to either `snowstorm` or `frost` to use `nord4` or `nord8` colors from Nord's [Frost][nord-docs-colors#frost] and [Snow Storm][nord-docs-colors#snowstorm] palettes.

```lisp
;; Use `nord8` from Nord's "Frost" palette as background color.
(setq nord-region-highlight "frost")

;; Use `nord4` from Nord's "Snow Storm" palette as background color.
(setq nord-region-highlight "snowstorm")
```

<p align="center"><strong>Selection in the editor with enabled <code>frost</code> region highlight style configuration</strong></p>
<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/main/src/assets/images/ports/emacs/editor-config-selection-highlight-frost.png"/></p>

<p align="center"><strong>Selection in the editor with enabled <code>snowstorm</code> region highlight style configuration</strong></p>
<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-docs/main/src/assets/images/ports/emacs/editor-config-selection-highlight-snowstorm.png"/></p>

**Custom Color Contrast** — #43 ⇄ #44 (⊶ 3e6bfdae)
↠ Please note that **this configuration has been implemented and deprecated again in this release version** through #73 that increased the default comment color (`nord3`) brightness by 10% from a lightness level of ~35% to ~45%
Please see #73 and #74 for more details and the migration guide.

## Improvements

**Comment Color Brightness** — #73 ⇄ #74 (⊶ 9ed7b9c2)
↠ Implemented the increase of the default comment color (`nord3`) brightness by 10% from a lightness level of ~35% to ~45%.

➜ **Please see [arcticicestudio/nord#94][gh-nord#94] for all details about this design change decision**!

⚠ **NOTE**: This change also **deprecates the „Custom Comment Contrast“ configuration** implemented in #44 that will be removed in Nord Emacs version 1.0.0!
The default comment color has been adjusted so the configuration is not required anymore for users to increase the brightness on their own.
To notify users about this change a deprecation warning will be shown when the `nord-comment-brightness` configuration variable has been set and initialized through the user's configuration.

#### Before

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/57432886-5406a480-7237-11e9-9479-7d397cc91bda.png" /><img src="https://user-images.githubusercontent.com/7836623/57432885-5406a480-7237-11e9-94e0-d750647788f5.png" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/57432916-5ff26680-7237-11e9-82fa-f120b8cfcd96.png" /><img src="https://user-images.githubusercontent.com/7836623/57432930-67b20b00-7237-11e9-9cf7-349f2095f86e.png" /></p>

**License Header Keyword** — #41 ⇄ #42 (⊶ 24deba86)
↠ Added a license header keyword to help tools to automatically detect the license type as used by GitHub and Emacsmirror ([licensee][gh-licensee/licensee]).

```lisp
;; License: Apache-2.0
```

## Bug Fixes

**Non-Prefixed Names Leaked To Global Environment** — #66 ⇄ #67 (⊶ c4e0b554) by [@slippycheeze][gh-user-slippycheeze]
↠ Prefixed all top level variable definitions, like custom theme configuration variables, to avoid _leaking_ them in a way that could conflict with other code. The convention of `package--` is used to mirror the most current Emacs coding conventions.
Sadly this is necessary because Emacs Lisp has no namespaces, so every top level definition is visible to the entire universe including variables and functions.

### Documentation

**Documentation Typo In Package Name** — #39 (⊶ eb7929e4) by [@gguimaraesbr][gh-user-gguimaraesbr]
↠ Fixed a invalid package name in the installation instructions: `nord` ➜ `nord-theme`

## Tasks

### Documentation

**MIT License Migration** — #57 ⇄ #58 (⊶ b5c1dc76)
↠ Migrated to the MIT license to adapt to the migration of the main [Nord][gh-nord] project. Detailed information can be found in the [main task ticket][gh-nord#55].

**„Nord Terminix“ References** — #49 ⇄ #50 (⊶ be328794)
↠ Updated all references to the Terminix project that has been renamed to [Tilix][gh-gnunn1/tilix].

# 0.3.0

_2017-05-07_

## Features

### Package Support

❯ Implemented support for <a href="http://elpa.gnu.org/packages/auctex.html"><img src="http://elpa.gnu.org/favicon.png" width=16 height=16/><code>auctex</code></a>. (@justbur, PR #22, c2cd1e84)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/25584117/056bddd2-2e95-11e7-92e7-b1f66851802f.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/25584145/1d0ee29a-2e95-11e7-8976-0918696b3291.png"/></p>

❯ Implemented support for <a href="https://melpa.org/#/git-gutter%2B"><img src="https://melpa.org/favicon.ico" width=16 height=16/><code>git-gutter+</code></a>. (@microamp, PR #30, a94a28fa)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/25586074/fc1a3c8e-2e9d-11e7-82aa-cc0ae4bbdc1f.png"/><p>

❯ Implemented support for <a href="https://melpa.org/#/helm-swoop"><img src="https://melpa.org/favicon.ico" width=16 height=16/><code>helm-swoop</code></a>. (@microamp, PR #31, 52413e75)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/25585304/2601410e-2e9a-11e7-8461-de675aae8602.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/25585309/322a275c-2e9a-11e7-9fcc-d1445b6d5b0b.png"/></p>

❯ Implemented support for <a href="http://elpa.gnu.org/packages/diff-hl.html"><img src="http://elpa.gnu.org/favicon.png" width=16 height=16/></a> <a href="https://melpa.org/#/diff-hl"><img src="https://melpa.org/favicon.ico" width=16 height=16/><code>diff-hl</code></a>. (@meqif, PR #33, 2db97b3a)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/25773470/119d8672-327e-11e7-8831-efa435eb4284.png"/></p>

❯ Implemented support for <a href="https://melpa.org/#/neotree"><img src="https://melpa.org/favicon.ico" width=16 height=16/><code>neotree</code></a>. (@geekerzp, PR #34, f58eb2a6)

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/25773361/5a7e8438-327c-11e7-9fe1-2e05e7404b14.png"/></p>

❯ Implemented support for <a href="http://elpa.gnu.org/packages/avy.html"><img src="http://elpa.gnu.org/favicon.png" width=16 height=16/></a> <a href="https://melpa.org/#/avy"><img src="https://melpa.org/favicon.ico" width=16 height=16/><code>avy</code></a>. (@microamp, PR #36, f65ff21d)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/25773402/26812180-327d-11e7-9c4f-53434d98bce8.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/25773420/4f230d42-327d-11e7-9a46-705d513ef78c.png"/></p>

## Improvements

### Mode Support

#### mu4e

❯ The highlighting for maildirs with unread emails is now colorized with `nord13` instead of `nord4`. (@microamp, PR #35, a0bfde06)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/1378791/25766520/22528152-3247-11e7-8a78-ce3cfd7751af.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/1378791/25766521/239c194c-3247-11e7-8dfa-06bd7e85f9ae.png"/></p>

# 0.2.0

_2017-04-17_

## Features

### Mode Support

❯ Implemented support for the `which-function-mode`. (@microamp, #28, f7a2f6e6)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/24758354/6ed3c51c-1ae2-11e7-8a18-b58c1d0e6185.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/24758374/7bc489aa-1ae2-11e7-9eba-6657425a3936.png"/></p>

## Improvements

### UI

❯ The text color of inactive mode lines are now colorized with `nord4` instead of `nord3` to increase the readability. (@cavd, #25, 067b9bbe)

## Bug Fixes

❯ Fixed the color of the `cursor` face caused by using the wrong attribute `:foreground` instead of `:background`. (@spegoraro, #24, b11fb535)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/25084545/66ecc672-235d-11e7-9526-cf8ab338238f.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/24761805/c1a9d858-1aec-11e7-914b-06d98d8802eb.png"/></p>

# 0.1.2

_2017-03-26_

## Bug Fixes

### UI

❯ Some more minor fixes created by a MELPA contributor to adhere to the packaging standard. (@purcell, PR #21, 70a3ee23)

- Formated header conventionally, with `Commentary` and `Code` section markers
- Removed redundant use of _Emacs_ since all `elisp` packages are for Emacs
- Declared Emacs `24` dependency via `Package-Requires` documentaion attribute
- Fixed a typo from _marmelade_ to _marmalade_
- Added missing trailing comment line to mark the end of the theme file

# 0.1.1

_2017-03-25_

## Bug Fixes

❯ Fixed the package documentation format to adhere to the [MELPA contribution standard](https://github.com/melpa/melpa/blob/master/CONTRIBUTING.md). (@arcticicestudio, 8b835e60)

# 0.1.0

_2017-03-25_

## Features

Detailed information about [features](https://github.com/arcticicestudio/nord-emacs/blob/develop/README.md#features), [supported packages](https://github.com/arcticicestudio/nord-emacs/blob/develop/README.md#package-support) and install instructions can be found in the [README](https://github.com/arcticicestudio/nord-emacs/blob/develop/README.md#installation) and in the [project wiki](https://github.com/arcticicestudio/nord-emacs/wiki).

❯ Implemented the main theme file [`nord-theme.el`](https://github.com/arcticicestudio/nord-emacs/blob/develop/nord-theme.el). (@arcticicestudio, #1, e51f7593)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-package-syntax-jdee.png"/></p>

<p align="center"><strong>Non-obtrusive bracket matching- and search marker.</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-feature-bracket-matching.png"/><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrot-feature-search.gif"/></p>

<p align="center"><strong>Colors of selected code can still be easily recognized.</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-emacs/develop/assets/scrcast-feature-selection.gif"/></p>

❯ Implemented support for multiple syntax packages:

- Elixir (@arcticicestudio, #18, 0b879fb1)
- Enhanced Ruby (@arcticicestudio, #15, 7b59c16f)
- JavaScript `js2-mode` and `js3-mode` (@arcticicestudio, #7, ffe1b276)
- Markdown (@arcticicestudio, #3, 02e7065f)
- Web (@arcticicestudio, #8, f1b893e9)

❯ Implemented support for multiple UI packages:

- Anzu (@arcticicestudio, #19, 6c3d0baf)
- Company (@arcticicestudio, #10, 7b8b6ec8)
- Evil (@arcticicestudio, #5, a240b411)
- Flycheck (@arcticicestudio, #17, 9c784ef6)
- Git Gutter (@arcticicestudio, #4, fa6ea1f8)
- Helm (@arcticicestudio, #16, 264ce64d)
- Magit (@arcticicestudio, #16, 641dd503)
- Org (@arcticicestudio, #2, 6b60bd55)
- Powerline (`powerline-evil`) (@arcticicestudio, #11, 5a854190)
- Rainbow Delimters (@arcticicestudio, #14, 6ee97d24)

# 0.0.0

_2017-03-25_
**Project Initialization**

<!--
+------------------+
+ Symbol Reference +
+------------------+
↠ (U+21A0): Start of a log section description
— (U+2014): Separator between a log section title and the metadata
⇄ (U+21C4): Separator between a issue ID and pull request ID in a log metadata
⊶ (U+22B6): Icon prefix for the short commit SHA checksum in a log metadata
-->

<!--lint disable final-definition-->

<!-- Base Links -->

[gh-nord]: https://github.com/arcticicestudio/nord
[nord-docs-colors#frost]: https://www.nordtheme.com/docs/colors-and-palettes#frost
[nord-docs-colors#frost]: https://www.nordtheme.com/docs/colors-and-palettes#frost
[nord-docs-colors#snowstorm]: https://www.nordtheme.com/docs/colors-and-palettes#snow-storm
[nord]: https://www.nordtheme.com
[org-mode-docs-headings]: https://orgmode.org/guide/Headings-and-sections.html
[org-mode]: https://orgmode.org

<!--v 0.4.0 -->

[gh-gnunn1/tilix]: https://github.com/gnunn1/tilix
[gh-licensee/licensee]: https://github.com/licensee/licensee
[gh-nord-docs#155]: https://github.com/arcticicestudio/nord-docs/issues/155
[gh-nord#55]: https://github.com/arcticicestudio/nord/issues/55
[gh-nord#94]: https://github.com/arcticicestudio/nord/issues/94
[gh-user-gguimaraesbr]: https://github.com/gguimaraesbr
[gh-user-localredhead]: https://github.com/localredhead
[gh-user-slippycheeze]: https://github.com/slippycheeze

<!--v 0.5.0 -->

[abo-abo/swiper]: https://github.com/abo-abo/swiper
[clojure-emacs/cider]: https://github.com/clojure-emacs/cider
[clojure-emacs/cider@f6ac1594#l35]: https://github.com/clojure-emacs/cider/blob/f6ac1594eb20b0d3b9f9b7601e3d2708346dc0bb/cider-overlays.el#L35
[emacs-docs-display_feature_test]: https://www.gnu.org/software/emacs/manual/html_node/elisp/Display-Feature-Testing.html
[emacs-gh-c-c430f7e2]: https://github.com/emacs-mirror/emacs/commit/c430f7e23fc2c22f251ace4254e37dea1452dfc3
[emacs-git-c-c430f7e2]: http://git.savannah.gnu.org/cgit/emacs.git/commit/?id=c430f7e23fc2c22f251ace4254e37dea1452dfc3
[gh-user-c0dk]: https://github.com/C0DK
[gh-user-fmnoise]: https://github.com/fmnoise
[gh-user-janusvm]: https://github.com/janusvm
[gh-user-jdek]: https://github.com/jdek
[gh-user-rien333]: https://github.com/rien333
[gh-user-visigoth]: https://github.com/visigoth
[melpa-ivy]: https://melpa.org/#/ivy
