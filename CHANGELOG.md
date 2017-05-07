<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-emacs/develop/assets/nord-emacs-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-emacs/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-emacs.svg?style=flat-square"/></a> <a href="https://github.com/arcticicestudio/nord/releases/tag/v0.2.0"><img src="https://img.shields.io/badge/Nord-v0.2.0-88C0D0.svg?style=flat-square"/></a> <img src="https://www.gnu.org/software/emacs/images/emacs.png" width=24 height=24/> <a href="https://www.gnu.org/software/emacs/#Releases"><img src="https://img.shields.io/badge/Emacs-24+-B48EAD.svg?style=flat-square"/></a> <img src="https://melpa.org/favicon.ico" width=24 height=24/> <a href="https://stable.melpa.org/#/nord-theme"><img src="https://stable.melpa.org/packages/nord-theme-badge.svg"/></a> <a href="https://melpa.org/#/nord-theme"><img src="https://melpa.org/packages/nord-theme-badge.svg"/></a></p>

---

# 0.3.0
*2017-05-07*
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
*2017-04-17*
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
*2017-03-26*
## Bug Fixes
### UI
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
