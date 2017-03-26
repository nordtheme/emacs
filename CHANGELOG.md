<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-emacs/develop/assets/nord-emacs-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-emacs/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-emacs.svg"/></a> <a href="https://github.com/arcticicestudio/nord/releases/tag/v0.2.0"><img src="https://img.shields.io/badge/Nord-v0.2.0-88C0D0.svg"/></a> <img src="https://www.gnu.org/software/emacs/images/emacs.png" width=24 height=24/> <a href="https://www.gnu.org/software/emacs/#Releases"><img src="https://img.shields.io/badge/Emacs-24+-B48EAD.svg"/></a> <img src="https://melpa.org/favicon.ico" width=24 height=24/> <a href="https://stable.melpa.org/#/nord-theme"><img src="https://stable.melpa.org/packages/nord-theme-badge.svg"/></a> <a href="https://melpa.org/#/nord-theme"><img src="https://melpa.org/packages/nord-theme-badge.svg"/></a></p>

---

# 0.1.2
*2017-03-26*
## Bug Fixes
❯ Some more minor fixes created by a MELPA contributor to adhere to the packaging standard. (@purcell, PR #21, 70a3ee23)
  - Formated header conventionally, with `Commentary` and `Code` section markers
  - Removed redundant use of *Emacs* since all `elisp` packages are for Emacs
  - Declared Emacs `24` dependency via `Package-Requires` documentaion attribute
  - Fixed a typo from *marmelade* to *marmalade*
  - Added missing trailing comment line to mark the end of the theme file

# 0.1.1
*2017-03-25*
## Bug Fixes
❯ Fixed the package documentation format to adhere to the [MELPA contribution standard](https://github.com/melpa/melpa/blob/master/CONTRIBUTING.md). (@arcticicestudio, 8b835e60)

# 0.1.0
*2017-03-25*
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
*2017-03-25*
**Project Initialization**
