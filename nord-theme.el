;;; nord-theme.el --- An arctic, north-bluish clean and elegant theme

;; Copyright (C) 2016-present Arctic Ice Studio <development@arcticicestudio.com> (https://www.arcticicestudio.com)
;; Copyright (C) 2016-present Sven Greb <development@svengreb.de> (https://www.svengreb.de)

;; Title: Nord Theme
;; Project: nord-emacs
;; Version: 0.5.0
;; URL: https://github.com/arcticicestudio/nord-emacs
;; Author: Arctic Ice Studio <development@arcticicestudio.com>
;; Package-Requires: ((emacs "24"))
;; License: MIT

;;; Commentary:

;; Nord is a 16 colorspace theme build to run in GUI- and terminal
;; mode with support for many third-party syntax- and UI packages.

;;; References:
;; Awesome Emacs
;;   https://github.com/emacs-tw/awesome-emacs
;; GNU ELPA
;;   https://elpa.gnu.org
;; GNU Emacs
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Custom-Themes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Creating-Custom-Themes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Faces.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Standard-Faces.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Face-Customization.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Attributes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Faces-for-Font-Lock.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Display-Feature-Testing.html
;; marmalade repo
;;   https://marmalade-repo.org
;; MELPA
;;   https://melpa.org
;;   https://stable.melpa.org

;;; Code:

(unless (>= emacs-major-version 24)
  (error "Nord theme requires Emacs 24 or later!"))

(deftheme nord "An arctic, north-bluish clean and elegant theme")

(defgroup nord nil
  "Nord theme customizations.
  The theme has to be reloaded after changing anything in this group."
  :group 'faces)

(defcustom nord-comment-brightness 10
  "Allows to define a custom comment color brightness with percentage adjustments from 0% - 20%.
  As of version 0.4.0, this variable is obsolete/deprecated and has no effect anymore and will be removed in version 1.0.0!
  The comment color brightness has been increased by 10% by default.
  Please see https://github.com/arcticicestudio/nord-emacs/issues/73 for more details."
  :type 'integer
  :group 'nord)

(make-obsolete-variable
  'nord-comment-brightness
  "The custom color brightness feature has been deprecated and will be removed in version 1.0.0!
  The comment color brightness has been increased by 10% by default.
  Please see https://github.com/arcticicestudio/nord-emacs/issues/73 for more details."
  "0.4.0")

(defcustom nord-region-highlight nil
  "Allows to set a region highlight style based on the Nord components.
  Valid styles are
    - 'snowstorm' - Uses 'nord0' as foreground- and 'nord4' as background color
    - 'frost' - Uses 'nord0' as foreground- and 'nord8' as background color"
  :type 'string
  :group 'nord)

(defcustom nord-uniform-mode-lines nil
  "Enables uniform activate- and inactive mode lines using 'nord3' as background."
  :type 'boolean
  :group 'nord)

(setq nord-theme--brightened-comments '("#4c566a" "#4e586d" "#505b70" "#525d73" "#556076" "#576279" "#59647c" "#5b677f" "#5d6982" "#5f6c85" "#616e88" "#63718b" "#66738e" "#687591" "#6a7894" "#6d7a96" "#6f7d98" "#72809a" "#75829c" "#78859e" "#7b88a1"))

(defun nord-theme--brightened-comment-color (percent)
  "Returns the brightened comment color for the given percent.
  The value must be greater or equal to 0 and less or equal to 20, otherwise the default 'nord3' color is used.
  As of version 0.4.0, this function is obsolete/deprecated and has no effect anymore and will be removed in version 1.0.0!
  The comment color brightness has been increased by 10% by default.
  Please see https://github.com/arcticicestudio/nord-emacs/issues/73 for more details."
  (nth 10 nord-theme--brightened-comments))

(make-obsolete
  'nord-theme--brightened-comment-color
  "The custom color brightness feature has been deprecated and will be removed in version 1.0.0!\
  The comment color brightness has been increased by 10% by default.\
  Please see https://github.com/arcticicestudio/nord-emacs/issues/73 for more details."
  "0.4.0")

(defun nord-display-truecolor-or-graphic-p ()
  "Returns whether the display can display nord colors"
  (or (= (display-color-cells) 16777216) (display-graphic-p)))

;;;; Color Constants
(let ((class '((class color) (min-colors 89)))
  (nord0 (if (nord-display-truecolor-or-graphic-p) "#2E3440" nil))
  (nord1 (if (nord-display-truecolor-or-graphic-p) "#3B4252" "black"))
  (nord2 (if (nord-display-truecolor-or-graphic-p) "#434C5E" "#434C5E"))
  (nord3 (if (nord-display-truecolor-or-graphic-p) "#4C566A" "brightblack"))
  (nord4 (if (nord-display-truecolor-or-graphic-p) "#D8DEE9" "#D8DEE9"))
  (nord5 (if (nord-display-truecolor-or-graphic-p) "#E5E9F0" "white"))
  (nord6 (if (nord-display-truecolor-or-graphic-p) "#ECEFF4" "brightwhite"))
  (nord7 (if (nord-display-truecolor-or-graphic-p) "#8FBCBB" "cyan"))
  (nord8 (if (nord-display-truecolor-or-graphic-p) "#88C0D0" "brightcyan"))
  (nord9 (if (nord-display-truecolor-or-graphic-p) "#81A1C1" "blue"))
  (nord10 (if (nord-display-truecolor-or-graphic-p) "#5E81AC" "brightblue"))
  (nord11 (if (nord-display-truecolor-or-graphic-p) "#BF616A" "red"))
  (nord12 (if (nord-display-truecolor-or-graphic-p) "#D08770" "brightyellow"))
  (nord13 (if (nord-display-truecolor-or-graphic-p) "#EBCB8B" "yellow"))
  (nord14 (if (nord-display-truecolor-or-graphic-p) "#A3BE8C" "green"))
  (nord15 (if (nord-display-truecolor-or-graphic-p) "#B48EAD" "magenta"))
  (nord-annotation (if (nord-display-truecolor-or-graphic-p) "#D08770" "brightyellow"))
  (nord-attribute (if (nord-display-truecolor-or-graphic-p) "#8FBCBB" "cyan"))
  (nord-class (if (nord-display-truecolor-or-graphic-p) "#8FBCBB" "cyan"))
  (nord-comment (if (nord-display-truecolor-or-graphic-p) (nord-theme--brightened-comment-color nord-comment-brightness) "brightblack"))
  (nord-escape (if (nord-display-truecolor-or-graphic-p) "#D08770" "brightyellow"))
  (nord-method (if (nord-display-truecolor-or-graphic-p) "#88C0D0" "brightcyan"))
  (nord-keyword (if (nord-display-truecolor-or-graphic-p) "#81A1C1" "blue"))
  (nord-numeric (if (nord-display-truecolor-or-graphic-p) "#B48EAD" "magenta"))
  (nord-operator (if (nord-display-truecolor-or-graphic-p) "#81A1C1" "blue"))
  (nord-preprocessor (if (nord-display-truecolor-or-graphic-p) "#5E81AC" "brightblue"))
  (nord-punctuation (if (nord-display-truecolor-or-graphic-p) "#D8DEE9" "#D8DEE9"))
  (nord-regexp (if (nord-display-truecolor-or-graphic-p) "#EBCB8B" "yellow"))
  (nord-string (if (nord-display-truecolor-or-graphic-p) "#A3BE8C" "green"))
  (nord-tag (if (nord-display-truecolor-or-graphic-p) "#81A1C1" "blue"))
  (nord-variable (if (nord-display-truecolor-or-graphic-p) "#D8DEE9" "#D8DEE9"))
  (nord-region-highlight-foreground (if (or
    (string= nord-region-highlight "frost")
    (string= nord-region-highlight "snowstorm")) "#2E3440" nil))
  (nord-region-highlight-background (if
    (string= nord-region-highlight "frost") "#88C0D0"
      (if (string= nord-region-highlight "snowstorm") "#D8DEE9" "#434C5E")))
  (nord-uniform-mode-lines-background (if nord-uniform-mode-lines "#4C566A" "#3B4252")))

;;;; +------------+
;;;; + Core Faces +
;;;; +------------+
  (custom-theme-set-faces
    'nord
    ;; +--- Base ---+
    `(bold ((,class (:weight bold))))
    `(bold-italic ((,class (:weight bold :slant italic))))
    `(default ((,class (:foreground ,nord4 :background ,nord0))))
    `(error ((,class (:foreground ,nord11 :weight bold))))
    `(escape-glyph ((,class (:foreground ,nord12))))
    `(font-lock-builtin-face ((,class (:foreground ,nord9))))
    `(font-lock-comment-face ((,class (:foreground ,nord-comment))))
    `(font-lock-comment-delimiter-face ((,class (:foreground ,nord-comment))))
    `(font-lock-constant-face ((,class (:foreground ,nord9))))
    `(font-lock-doc-face ((,class (:foreground ,nord-comment))))
    `(font-lock-function-name-face ((,class (:foreground ,nord8))))
    `(font-lock-keyword-face ((,class (:foreground ,nord9))))
    `(font-lock-negation-char-face ((,class (:foreground ,nord9))))
    `(font-lock-preprocessor-face ((,class (:foreground ,nord10 :weight bold))))
    `(font-lock-reference-face ((,class (:foreground ,nord9))))
    `(font-lock-regexp-grouping-backslash ((,class (:foreground ,nord13))))
    `(font-lock-regexp-grouping-construct ((,class (:foreground ,nord13))))
    `(font-lock-string-face ((,class (:foreground ,nord14))))
    `(font-lock-type-face ((,class (:foreground ,nord7))))
    `(font-lock-variable-name-face ((,class (:foreground ,nord4))))
    `(font-lock-warning-face ((,class (:foreground ,nord13))))
    `(italic ((,class (:slant italic))))
    `(shadow ((,class (:foreground ,nord3))))
    `(underline ((,class (:underline t))))
    `(warning ((,class (:foreground ,nord13 :weight bold))))

    ;; +--- Syntax ---+
    ;; > C
    `(c-annotation-face ((,class (:foreground ,nord-annotation))))

    ;; > diff
    `(diff-added ((,class (:foreground ,nord14))))
    `(diff-changed ((,class (:foreground ,nord13))))
    `(diff-context ((,class (:inherit default))))
    `(diff-file-header ((,class (:foreground ,nord8))))
    `(diff-function ((,class (:foreground ,nord7))))
    `(diff-header ((,class (:foreground ,nord9 :weight bold))))
    `(diff-hunk-header ((,class (:foreground ,nord9 :background ,nord0))))
    `(diff-indicator-added ((,class (:foreground ,nord14))))
    `(diff-indicator-changed ((,class (:foreground ,nord13))))
    `(diff-indicator-removed ((,class (:foreground ,nord11))))
    `(diff-nonexistent ((,class (:foreground ,nord11))))
    `(diff-refine-added ((,class (:foreground ,nord14))))
    `(diff-refine-changed ((,class (:foreground ,nord13))))
    `(diff-refine-removed ((,class (:foreground ,nord11))))
    `(diff-removed ((,class (:foreground ,nord11))))

    ;; +--- UI ---+
    `(border ((,class (:foreground ,nord4))))
    `(buffer-menu-buffer ((,class (:foreground ,nord4 :weight bold))))
    `(button ((,class (:background ,nord0 :foreground ,nord8 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(completions-annotations ((,class (:foreground ,nord9))))
    `(completions-common-part ((,class (:foreground ,nord8 :weight bold))))
    `(completions-first-difference ((,class (:foreground ,nord11))))
    `(custom-button ((,class (:background ,nord0 :foreground ,nord8 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-button-mouse ((,class (:background ,nord4 :foreground ,nord0 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-button-pressed ((,class (:background ,nord6 :foreground ,nord0 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-button-pressed-unraised ((,class (:background ,nord4 :foreground ,nord0 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-button-unraised ((,class (:background ,nord0 :foreground ,nord8 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-changed ((,class (:foreground ,nord13))))
    `(custom-comment ((,class (:foreground ,nord-comment))))
    `(custom-comment-tag ((,class (:foreground ,nord7))))
    `(custom-documentation ((,class (:foreground ,nord4))))
    `(custom-group-tag ((,class (:foreground ,nord8 :weight bold))))
    `(custom-group-tag-1 ((,class (:foreground ,nord8 :weight bold))))
    `(custom-invalid ((,class (:foreground ,nord11))))
    `(custom-modified ((,class (:foreground ,nord13))))
    `(custom-rogue ((,class (:foreground ,nord12 :background ,nord2))))
    `(custom-saved ((,class (:foreground ,nord14))))
    `(custom-set ((,class (:foreground ,nord8))))
    `(custom-state ((,class (:foreground ,nord14))))
    `(custom-themed ((,class (:foreground ,nord8 :background ,nord2))))
    `(cursor ((,class (:background ,nord4))))
    `(fringe ((,class (:foreground ,nord4 :background ,nord0))))
    `(file-name-shadow ((,class (:inherit shadow))))
    `(header-line ((,class (:foreground ,nord4 :background ,nord2))))
    `(help-argument-name ((,class (:foreground ,nord8))))
    `(highlight ((,class (:foreground ,nord8 :background ,nord2))))
    `(hl-line ((,class (:background ,nord1))))
    `(info-menu-star ((,class (:foreground ,nord9))))
    `(isearch ((,class (:foreground ,nord0 :background ,nord8))))
    `(isearch-fail ((,class (:foreground ,nord11))))
    `(link ((,class (:underline t))))
    `(link-visited ((,class (:underline t))))
    `(linum ((,class (:foreground ,nord3 :background ,nord0))))
    `(linum-relative-current-face ((,class (:foreground ,nord3 :background ,nord0))))
    `(match ((,class (:inherit isearch))))
    `(message-cited-text ((,class (:foreground ,nord4))))
    `(message-header-cc ((,class (:foreground ,nord9))))
    `(message-header-name ((,class (:foreground ,nord7))))
    `(message-header-newsgroup ((,class (:foreground ,nord14))))
    `(message-header-other ((,class (:foreground ,nord4))))
    `(message-header-subject ((,class (:foreground ,nord8))))
    `(message-header-to ((,class (:foreground ,nord9))))
    `(message-header-xheader ((,class (:foreground ,nord13))))
    `(message-mml ((,class (:foreground ,nord10))))
    `(message-separator ((,class (:inherit shadow))))
    `(minibuffer-prompt ((,class (:foreground ,nord8 :weight bold))))
    `(mm-command-output ((,class (:foreground ,nord8))))
    `(mode-line ((,class (:foreground ,nord8 :background ,nord3))))
    `(mode-line-buffer-id ((,class (:weight bold))))
    `(mode-line-highlight ((,class (:inherit highlight))))
    `(mode-line-inactive ((,class (:foreground ,nord4 :background ,nord-uniform-mode-lines-background))))
    `(next-error ((,class (:inherit error))))
    `(nobreak-space ((,class (:foreground ,nord3))))
    `(outline-1 ((,class (:foreground ,nord8 :weight bold))))
    `(outline-2 ((,class (:inherit outline-1))))
    `(outline-3 ((,class (:inherit outline-1))))
    `(outline-4 ((,class (:inherit outline-1))))
    `(outline-5 ((,class (:inherit outline-1))))
    `(outline-6 ((,class (:inherit outline-1))))
    `(outline-7 ((,class (:inherit outline-1))))
    `(outline-8 ((,class (:inherit outline-1))))
    `(package-description ((,class (:foreground ,nord4))))
    `(package-help-section-name ((,class (:foreground ,nord8 :weight bold))))
    `(package-name ((,class (:foreground ,nord8))))
    `(package-status-available ((,class (:foreground ,nord7))))
    `(package-status-avail-obso ((,class (:foreground ,nord7 :slant italic))))
    `(package-status-built-in ((,class (:foreground ,nord9))))
    `(package-status-dependency ((,class (:foreground ,nord8 :slant italic))))
    `(package-status-disabled ((,class (:foreground ,nord3))))
    `(package-status-external ((,class (:foreground ,nord12 :slant italic))))
    `(package-status-held ((,class (:foreground ,nord4 :weight bold))))
    `(package-status-new ((,class (:foreground ,nord14))))
    `(package-status-incompat ((,class (:foreground ,nord11))))
    `(package-status-installed ((,class (:foreground ,nord7 :weight bold))))
    `(package-status-unsigned ((,class (:underline ,nord13))))
    `(query-replace ((,class (:foreground ,nord8 :background ,nord2))))
    `(region ((,class (:foreground ,nord-region-highlight-foreground :background ,nord-region-highlight-background))))
    `(scroll-bar ((,class (:background ,nord3))))
    `(secondary-selection ((,class (:background ,nord2))))

    ;; `show-paren-match-face` and `show-paren-mismatch-face` are deprecated since Emacs version 22.1 and were
    ;; removed in Emacs 25.
    ;; https://github.com/arcticicestudio/nord-emacs/issues/75
    ;; http://git.savannah.gnu.org/cgit/emacs.git/commit/?id=c430f7e23fc2c22f251ace4254e37dea1452dfc3
    ;; https://github.com/emacs-mirror/emacs/commit/c430f7e23fc2c22f251ace4254e37dea1452dfc3
    `(show-paren-match-face ((,class (:foreground ,nord0 :background ,nord8))))
    `(show-paren-mismatch-face ((,class (:background ,nord11))))

    `(show-paren-match ((,class (:foreground ,nord0 :background ,nord8))))
    `(show-paren-mismatch ((,class (:background ,nord11))))
    `(success ((,class (:foreground ,nord14))))
    `(term ((,class (:foreground ,nord4 :background ,nord0))))
    `(term-color-black ((,class (:foreground ,nord1 :background ,nord1))))
    `(term-color-white ((,class (:foreground ,nord5 :background ,nord5))))
    `(term-color-cyan ((,class (:foreground ,nord7 :background ,nord7))))
    `(term-color-blue ((,class (:foreground ,nord8 :background ,nord8))))
    `(term-color-red ((,class (:foreground ,nord11 :background ,nord11))))
    `(term-color-yellow ((,class (:foreground ,nord13 :background ,nord13))))
    `(term-color-green ((,class (:foreground ,nord14 :background ,nord14))))
    `(term-color-magenta ((,class (:foreground ,nord15 :background ,nord15))))
    `(tool-bar ((,class (:foreground ,nord4 :background ,nord3))))
    `(tooltip ((,class (:foreground ,nord0 :background ,nord4))))
    `(trailing-whitespace ((,class (:foreground ,nord3))))
    `(tty-menu-disabled-face ((,class (:foreground ,nord1))))
    `(tty-menu-enabled-face ((,class (:background ,nord2 foreground ,nord4))))
    `(tty-menu-selected-face ((,class (:foreground ,nord8 :underline t))))
    `(undo-tree-visualizer-current-face ((,class (:foreground ,nord8))))
    `(undo-tree-visualizer-default-face ((,class (:foreground ,nord4))))
    `(undo-tree-visualizer-unmodified-face ((,class (:foreground ,nord4))))
    `(undo-tree-visualizer-register-face ((,class (:foreground ,nord9))))
    `(vc-conflict-state ((,class (:foreground ,nord12))))
    `(vc-edited-state ((,class (:foreground ,nord13))))
    `(vc-locally-added-state ((,class (:underline ,nord14))))
    `(vc-locked-state ((,class (:foreground ,nord10))))
    `(vc-missing-state ((,class (:foreground ,nord11))))
    `(vc-needs-update-state ((,class (:foreground ,nord12))))
    `(vc-removed-state ((,class (:foreground ,nord11))))
    `(vc-state-base ((,class (:foreground ,nord4))))
    `(vc-up-to-date-state ((,class (:foreground ,nord8))))
    `(vertical-border ((,class (:foreground ,nord2))))
    `(which-func ((,class (:foreground ,nord8))))
    `(whitespace-big-indent ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-empty ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-hspace ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-indentation ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-line ((,class (:background ,nord0))))
    `(whitespace-newline ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-space ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-space-after-tab ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-space-before-tab ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-tab ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-trailing ((,class (:inherit trailing-whitespace))))
    `(widget-button-pressed ((,class (:foreground ,nord9 :background ,nord1))))
    `(widget-documentation ((,class (:foreground ,nord4))))
    `(widget-field ((,class (:background ,nord2 :foreground ,nord4))))
    `(widget-single-line-field ((,class (:background ,nord2 :foreground ,nord4))))
    `(window-divider ((,class (:background ,nord3))))
    `(window-divider-first-pixel ((,class (:background ,nord3))))
    `(window-divider-last-pixel ((,class (:background ,nord3))))

    ;;;; +-----------------+
    ;;;; + Package Support +
    ;;;; +-----------------+
    ;; +--- Syntax ---+
    ;; > Auctex
    `(font-latex-bold-face ((,class (:inherit bold))))
    `(font-latex-italic-face ((,class (:inherit italic))))
    `(font-latex-math-face ((,class (:foreground ,nord8))))
    `(font-latex-sectioning-0-face ((,class (:foreground ,nord8 :weight bold))))
    `(font-latex-sectioning-1-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-sectioning-2-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-sectioning-3-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-sectioning-4-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-sectioning-5-face ((,class (:inherit font-latex-sectioning-0-face))))
    `(font-latex-script-char-face ((,class (:inherit font-lock-warning-face))))
    `(font-latex-string-face ((,class (:inherit font-lock-string-face))))
    `(font-latex-warning-face ((,class (:inherit font-lock-warning-face))))

    ;; > Elixir
    `(elixir-attribute-face ((,class (:foreground ,nord-annotation))))
    `(elixir-atom-face ((,class (:foreground ,nord4 :weight bold))))

    ;; > Enhanced Ruby
    `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,nord14))))
    `(enh-ruby-op-face ((,class (:foreground ,nord9))))
    `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,nord13))))
    `(enh-ruby-regexp-face ((,class (:foreground ,nord13))))
    `(enh-ruby-string-delimiter-face ((,class (:foreground ,nord14))))
    `(erm-syn-errline ((,class (:foreground ,nord11 :underline t))))
    `(erm-syn-warnline ((,class (:foreground ,nord13 :underline t))))

    ;; > Java Development Environment for Emacs
    `(jdee-db-active-breakpoint-face ((,class (:background ,nord2 :weight bold))))
    `(jdee-bug-breakpoint-cursor ((,class (:background ,nord2))))
    `(jdee-db-requested-breakpoint-face ((,class (:foreground ,nord13 :background ,nord2 :weight bold))))
    `(jdee-db-spec-breakpoint-face ((,class (:foreground ,nord14 :background ,nord2 :weight bold))))
    `(jdee-font-lock-api-face ((,class (:foreground ,nord4))))
    `(jdee-font-lock-code-face ((,class (:slant italic))))
    `(jdee-font-lock-constant-face ((,class (:foreground ,nord-keyword))))
    `(jdee-font-lock-constructor-face ((,class (:foreground ,nord-method))))
    `(jdee-font-lock-doc-tag-face ((,class (:foreground ,nord7))))
    `(jdee-font-lock-link-face ((,class (:underline t))))
    `(jdee-font-lock-modifier-face ((,class (:foreground ,nord-keyword))))
    `(jdee-font-lock-number-face ((,class (:foreground ,nord-numeric))))
    `(jdee-font-lock-operator-fac ((,class (:foreground ,nord-operator))))
    `(jdee-font-lock-package-face ((,class (:foreground ,nord-class))))
    `(jdee-font-lock-pre-face ((,class (:foreground ,nord-comment :slant italic))))
    `(jdee-font-lock-private-face ((,class (:foreground ,nord-keyword))))
    `(jdee-font-lock-public-face ((,class (:foreground ,nord-keyword))))
    `(jdee-font-lock-variable-face ((,class (:foreground ,nord-variable))))

    ;; > JavaScript 2
    `(js2-function-call ((,class (:foreground ,nord8))))
    `(js2-private-function-call ((,class (:foreground ,nord8))))
    `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,nord6))))
    `(js2-jsdoc-html-tag-name ((,class (:foreground ,nord9))))
    `(js2-external-variable ((,class (:foreground ,nord4))))
    `(js2-function-param ((,class (:foreground ,nord4))))
    `(js2-jsdoc-value ((,class (:foreground ,nord-comment))))
    `(js2-jsdoc-tag ((,class (:foreground ,nord7))))
    `(js2-jsdoc-type ((,class (:foreground ,nord7))))
    `(js2-private-member ((,class (:foreground ,nord4))))
    `(js2-object-property ((,class (:foreground ,nord4))))
    `(js2-error ((,class (:foreground ,nord11))))
    `(js2-warning ((,class (:foreground ,nord13))))
    `(js2-instance-member ((,class (:foreground ,nord4))))

    ;; > JavaScript 3
    `(js3-error-face ((,class (:foreground ,nord11))))
    `(js3-external-variable-face ((,class (:foreground ,nord4))))
    `(js3-function-param-face ((,class (:foreground ,nord4))))
    `(js3-instance-member-face ((,class (:foreground ,nord4))))
    `(js3-jsdoc-html-tag-delimiter-face ((,class (:foreground ,nord6))))
    `(js3-jsdoc-html-tag-name-face ((,class (:foreground ,nord9))))
    `(js3-jsdoc-tag-face ((,class (:foreground ,nord9))))
    `(js3-jsdoc-type-face ((,class (:foreground ,nord7))))
    `(js3-jsdoc-value-face ((,class (:foreground ,nord4))))
    `(js3-magic-paren-face ((,class (:inherit show-paren-match-face))))
    `(js3-private-function-call-face ((,class (:foreground ,nord8))))
    `(js3-private-member-face ((,class (:foreground ,nord4))))
    `(js3-warning-face ((,class (:foreground ,nord13))))

    ;; > Markdown
    `(markdown-blockquote-face ((,class (:foreground ,nord-comment))))
    `(markdown-bold-face ((,class (:inherit bold))))
    `(markdown-header-face-1 ((,class (:foreground ,nord8))))
    `(markdown-header-face-2 ((,class (:foreground ,nord8))))
    `(markdown-header-face-3 ((,class (:foreground ,nord8))))
    `(markdown-header-face-4 ((,class (:foreground ,nord8))))
    `(markdown-header-face-5 ((,class (:foreground ,nord8))))
    `(markdown-header-face-6 ((,class (:foreground ,nord8))))
    `(markdown-inline-code-face ((,class (:foreground ,nord7))))
    `(markdown-italic-face ((,class (:inherit italic))))
    `(markdown-link-face ((,class (:foreground ,nord8))))
    `(markdown-markup-face ((,class (:foreground ,nord9))))
    `(markdown-reference-face ((,class (:inherit markdown-link-face))))
    `(markdown-url-face ((,class (:foreground ,nord4 :underline t))))

    ;; > Rainbow Delimeters
    `(rainbow-delimiters-depth-1-face ((,class :foreground ,nord7)))
    `(rainbow-delimiters-depth-2-face ((,class :foreground ,nord8)))
    `(rainbow-delimiters-depth-3-face ((,class :foreground ,nord9)))
    `(rainbow-delimiters-depth-4-face ((,class :foreground ,nord10)))
    `(rainbow-delimiters-depth-5-face ((,class :foreground ,nord12)))
    `(rainbow-delimiters-depth-6-face ((,class :foreground ,nord13)))
    `(rainbow-delimiters-depth-7-face ((,class :foreground ,nord14)))
    `(rainbow-delimiters-depth-8-face ((,class :foreground ,nord15)))
    `(rainbow-delimiters-unmatched-face ((,class :foreground ,nord11)))

    ;; > Web Mode
    `(web-mode-attr-tag-custom-face ((,class (:foreground ,nord-attribute))))
    `(web-mode-builtin-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-comment-face ((,class (:foreground ,nord-comment))))
    `(web-mode-comment-keyword-face ((,class (:foreground ,nord-comment))))
    `(web-mode-constant-face ((,class (:foreground ,nord-variable))))
    `(web-mode-css-at-rule-face ((,class (:foreground ,nord-annotation))))
    `(web-mode-css-function-face ((,class (:foreground ,nord-method))))
    `(web-mode-css-property-name-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-css-pseudo-class-face ((,class (:foreground ,nord-class))))
    `(web-mode-css-selector-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-css-string-face ((,class (:foreground ,nord-string))))
    `(web-mode-doctype-face ((,class (:foreground ,nord-preprocessor))))
    `(web-mode-function-call-face ((,class (:foreground ,nord-method))))
    `(web-mode-function-name-face ((,class (:foreground ,nord-method))))
    `(web-mode-html-attr-name-face ((,class (:foreground ,nord-attribute))))
    `(web-mode-html-attr-equal-face ((,class (:foreground ,nord-punctuation))))
    `(web-mode-html-attr-value-face ((,class (:foreground ,nord-string))))
    `(web-mode-html-entity-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-html-tag-bracket-face ((,class (:foreground ,nord-punctuation))))
    `(web-mode-html-tag-custom-face ((,class (:foreground ,nord-tag))))
    `(web-mode-html-tag-face ((,class (:foreground ,nord-tag))))
    `(web-mode-html-tag-namespaced-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-json-key-face ((,class (:foreground ,nord-class))))
    `(web-mode-json-string-face ((,class (:foreground ,nord-string))))
    `(web-mode-keyword-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-preprocessor-face ((,class (:foreground ,nord-preprocessor))))
    `(web-mode-string-face ((,class (:foreground ,nord-string))))
    `(web-mode-symbol-face ((,class (:foreground ,nord-variable))))
    `(web-mode-type-face ((,class (:foreground ,nord-class))))
    `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
    `(web-mode-variable-name-face ((,class (:foreground ,nord-variable))))

    ;; +--- UI ---+
    ;; > Anzu
    `(anzu-mode-line ((,class (:foreground, nord8))))
    `(anzu-mode-line-no-match ((,class (:foreground, nord11))))

    ;; > Avy
    `(avy-lead-face ((,class (:background ,nord11 :foreground ,nord5))))
    `(avy-lead-face-0 ((,class (:background ,nord10 :foreground ,nord5))))
    `(avy-lead-face-1 ((,class (:background ,nord3 :foreground ,nord5))))
    `(avy-lead-face-2 ((,class (:background ,nord15 :foreground ,nord5))))

    ;; > Company
    `(company-echo-common ((,class (:foreground ,nord0 :background ,nord4))))
    `(company-preview ((,class (:foreground ,nord4 :background ,nord10))))
    `(company-preview-common ((,class (:foreground ,nord0 :background ,nord8))))
    `(company-preview-search ((,class (:foreground ,nord0 :background ,nord8))))
    `(company-scrollbar-bg ((,class (:foreground ,nord1 :background ,nord1))))
    `(company-scrollbar-fg ((,class (:foreground ,nord2 :background ,nord2))))
    `(company-template-field ((,class (:foreground ,nord0 :background ,nord7))))
    `(company-tooltip ((,class (:foreground ,nord4 :background ,nord2))))
    `(company-tooltip-annotation ((,class (:foreground ,nord12))))
    `(company-tooltip-annotation-selection ((,class (:foreground ,nord12 :weight bold))))
    `(company-tooltip-common ((,class (:foreground ,nord8))))
    `(company-tooltip-common-selection ((,class (:foreground ,nord8 :background ,nord3))))
    `(company-tooltip-mouse ((,class (:inherit highlight))))
    `(company-tooltip-selection ((,class (:background ,nord3 :weight bold))))

    ;; > diff-hl
   `(diff-hl-change ((,class (:background ,nord13))))
   `(diff-hl-insert ((,class (:background ,nord14))))
   `(diff-hl-delete ((,class (:background ,nord11))))
   
    ;; > Evil
    `(evil-ex-info ((,class (:foreground ,nord8))))
    `(evil-ex-substitute-replacement ((,class (:foreground ,nord9))))
    `(evil-ex-substitute-matches ((,class (:inherit isearch))))

    ;; > Flycheck
    `(flycheck-error ((,class (:underline (:style wave :color ,nord11)))))
    `(flycheck-fringe-error ((,class (:foreground ,nord11 :weight bold))))
    `(flycheck-fringe-info ((,class (:foreground ,nord8 :weight bold))))
    `(flycheck-fringe-warning ((,class (:foreground ,nord13 :weight bold))))
    `(flycheck-info ((,class (:underline (:style wave :color ,nord8)))))
    `(flycheck-warning ((,class (:underline (:style wave :color ,nord13)))))

    ;; > Git Gutter
    `(git-gutter:modified ((,class (:foreground ,nord13))))
    `(git-gutter:added ((,class (:foreground ,nord14))))
    `(git-gutter:deleted ((,class (:foreground ,nord11))))

    ;; > Git Gutter Plus
    `(git-gutter+-modified ((,class (:foreground ,nord13))))
    `(git-gutter+-added ((,class (:foreground ,nord14))))
    `(git-gutter+-deleted ((,class (:foreground ,nord11))))

    ;; > Helm
    `(helm-bookmark-addressbook ((,class (:foreground ,nord7))))
    `(helm-bookmark-directory ((,class (:foreground ,nord9))))
    `(helm-bookmark-file ((,class (:foreground ,nord8))))
    `(helm-bookmark-gnus ((,class (:foreground ,nord10))))
    `(helm-bookmark-info ((,class (:foreground ,nord14))))
    `(helm-bookmark-man ((,class (:foreground ,nord4))))
    `(helm-bookmark-w3m ((,class (:foreground ,nord9))))
    `(helm-buffer-directory ((,class (:foreground ,nord9))))
    `(helm-buffer-file ((,class (:foreground ,nord8))))
    `(helm-buffer-not-saved ((,class (:foreground ,nord13))))
    `(helm-buffer-process ((,class (:foreground ,nord10))))
    `(helm-candidate-number ((,class (:foreground ,nord4 :weight bold))))
    `(helm-candidate-number-suspended ((,class (:foreground ,nord4))))
    `(helm-ff-directory ((,class (:foreground ,nord9 :weight bold))))
    `(helm-ff-dirs ((,class (:foreground ,nord9))))
    `(helm-ff-dotted-director ((,class (:foreground ,nord9 :underline t))))
    `(helm-ff-dotted-symlink-director ((,class (:foreground ,nord7 :weight bold))))
    `(helm-ff-executable ((,class (:foreground ,nord8))))
    `(helm-ff-file ((,class (:foreground ,nord4))))
    `(helm-ff-invalid-symlink ((,class (:foreground ,nord11 :weight bold))))
    `(helm-ff-prefix ((,class (:foreground ,nord0 :background ,nord9))))
    `(helm-ff-symlink ((,class (:foreground ,nord7))))
    `(helm-grep-cmd-line ((,class (:foreground ,nord4 :background ,nord0))))
    `(helm-grep-file ((,class (:foreground ,nord8))))
    `(helm-grep-finish ((,class (:foreground ,nord5))))
    `(helm-grep-lineno ((,class (:foreground ,nord4))))
    `(helm-grep-match ((,class (:inherit isearch))))
    `(helm-grep-running ((,class (:foreground ,nord8))))
    `(helm-header ((,class (:foreground ,nord9 :background ,nord2))))
    `(helm-header-line-left-margin ((,class (:foreground ,nord9 :background ,nord2))))
    `(helm-history-deleted ((,class (:foreground ,nord11))))
    `(helm-history-remote ((,class (:foreground ,nord4))))
    `(helm-lisp-completion-info ((,class (:foreground ,nord4 :weight bold))))
    `(helm-lisp-show-completion ((,class (:inherit isearch))))
    `(helm-locate-finish ((,class (:foreground ,nord14))))
    `(helm-match ((,class (:foreground ,nord8))))
    `(helm-match-item ((,class (:inherit isearch))))
    `(helm-moccur-buffer ((,class (:foreground ,nord8))))
    `(helm-resume-need-update ((,class (:foreground ,nord0 :background ,nord13))))
    `(helm-selection ((,class (:inherit highlight))))
    `(helm-selection-line ((,class (:background ,nord2))))
    `(helm-source-header ((,class (:height 1.44 :foreground ,nord8 :background ,nord2))))
    `(helm-swoop-line-number-face ((,class (:foreground ,nord4 :background ,nord0))))
    `(helm-swoop-target-word-face ((,class (:foreground ,nord0 :background ,nord7))))
    `(helm-swoop-target-line-face ((,class (:background ,nord13 :foreground ,nord3))))
    `(helm-swoop-target-line-block-face ((,class (:background ,nord13 :foreground ,nord3))))
    `(helm-separator ((,class (:background ,nord2))))
    `(helm-visible-mark ((,class (:background ,nord2))))

    ;; > Magit
    `(magit-branch ((,class (:foreground ,nord7 :weight bold))))
    `(magit-diff-context-highlight ((,class (:background ,nord2))))
    `(magit-diff-file-header ((,class (:foreground ,nord8 :box (:color ,nord8)))))
    `(magit-diffstat-added ((,class (:foreground ,nord14))))
    `(magit-diffstat-removed ((,class (:foreground ,nord11))))
    `(magit-hash ((,class (:foreground ,nord8))))
    `(magit-hunk-heading ((,class (:foreground ,nord9))))
    `(magit-hunk-heading-highlight ((,class (:foreground ,nord9 :background ,nord2))))
    `(magit-item-highlight ((,class (:foreground ,nord8 :background ,nord2))))
    `(magit-log-author ((,class (:foreground ,nord7))))
    `(magit-process-ng ((,class (:foreground ,nord13 :weight bold))))
    `(magit-process-ok ((,class (:foreground ,nord14 :weight bold))))
    `(magit-section-heading ((,class (:foreground ,nord7 :weight bold))))
    `(magit-section-highlight ((,class (:background ,nord2))))

    ;; > MU4E
    `(mu4e-header-marks-face ((,class (:foreground ,nord9))))
    `(mu4e-title-face ((,class (:foreground ,nord8))))
    `(mu4e-header-key-face ((,class (:foreground ,nord8))))
    `(mu4e-highlight-face ((,class (:highlight))))
    `(mu4e-flagged-face ((,class (:foreground ,nord13))))
    `(mu4e-unread-face ((,class (:foreground ,nord13 :weight bold))))
    `(mu4e-link-face ((,class (:underline t))))

    ;; > Powerline
    `(powerline-active1 ((,class (:foreground ,nord4 :background ,nord1))))
    `(powerline-active2 ((,class (:foreground ,nord4 :background ,nord3))))
    `(powerline-inactive1 ((,class (:background ,nord2))))
    `(powerline-inactive2 ((,class (:background ,nord2))))

    ;; > Powerline Evil
    `(powerline-evil-base-face ((,class (:foreground ,nord4))))
    `(powerline-evil-normal-face ((,class (:background ,nord8))))
    `(powerline-evil-insert-face ((,class (:foreground ,nord0 :background ,nord4))))
    `(powerline-evil-visual-face ((,class (:foreground ,nord0 :background ,nord7))))
    `(powerline-evil-replace-face ((,class (:foreground ,nord0 :background ,nord9))))

    ;; > NeoTree
    `(neo-banner-face ((,class (:foreground ,nord10))))
    `(neo-dir-link-face ((,class (:foreground ,nord9))))
    `(neo-expand-btn-face ((,class (:foreground ,nord6 :bold t))))
    `(neo-file-link-face ((,class (:foreground ,nord4))))
    `(neo-root-dir-face ((,class (:foreground ,nord7 :weight bold))))
    `(neo-vc-added-face ((,class (:foreground ,nord14))))
    `(neo-vc-conflict-face ((,class (:foreground ,nord11))))
    `(neo-vc-default-face ((,class (:foreground ,nord4))))
    `(neo-vc-edited-face ((,class (:foreground ,nord13))))
    `(neo-vc-ignored-face ((,class (:foreground ,nord3))))
    `(neo-vc-missing-face ((,class (:foreground ,nord12))))
    `(neo-vc-needs-merge-face ((,class (:background ,nord12 :foreground ,nord4))))
    `(neo-vc-needs-update-face ((,class (:background ,nord10 :foreground ,nord4))))
    `(neo-vc-removed-face ((,class (:foreground ,nord11 :strike-through nil))))
    `(neo-vc-up-to-date-face ((,class (:foreground ,nord4))))
    `(neo-vc-user-face ((,class (:foreground ,nord4))))

    ;; > Cider
    `(cider-result-overlay-face ((t (:background unspecified))))

    ;; > Org
    `(org-level-1 ((,class (:foreground ,nord7 :weight extra-bold))))
    `(org-level-2 ((,class (:foreground ,nord8 :weight bold))))
    `(org-level-3 ((,class (:foreground ,nord9 :weight semi-bold))))
    `(org-level-4 ((,class (:foreground ,nord10 :weight normal))))
    `(org-level-5 ((,class (:inherit org-level-4))))
    `(org-level-6 ((,class (:inherit org-level-4))))
    `(org-level-7 ((,class (:inherit org-level-4))))
    `(org-level-8 ((,class (:inherit org-level-4))))
    `(org-agenda-structure ((,class (:foreground ,nord9))))
    `(org-agenda-date ((,class (:foreground ,nord8 :underline nil))))
    `(org-agenda-done ((,class (:foreground ,nord14))))
    `(org-agenda-dimmed-todo-face ((,class (:background ,nord13))))
    `(org-block ((,class (:foreground ,nord4))))
    `(org-block-background ((,class (:background ,nord0))))
    `(org-block-begin-line ((,class (:foreground ,nord7))))
    `(org-block-end-line ((,class (:foreground ,nord7))))
    `(org-checkbox ((,class (:foreground ,nord9))))
    `(org-checkbox-statistics-done ((,class (:foreground ,nord14))))
    `(org-checkbox-statistics-todo ((,class (:foreground ,nord13))))
    `(org-code ((,class (:foreground ,nord7))))
    `(org-column ((,class (:background ,nord2))))
    `(org-column-title ((,class (:inherit org-column :weight bold :underline t))))
    `(org-date ((,class (:foreground ,nord8))))
    `(org-document-info ((,class (:foreground ,nord4))))
    `(org-document-info-keyword ((,class (:foreground ,nord3 :weight bold))))
    `(org-document-title ((,class (:foreground ,nord8 :weight bold))))
    `(org-done ((,class (:foreground ,nord14 :weight bold))))
    `(org-ellipsis ((,class (:foreground ,nord3))))
    `(org-footnote ((,class (:foreground ,nord8))))
    `(org-formula ((,class (:foreground ,nord9))))
    `(org-hide ((,class (:foreground ,nord0 :background ,nord0))))
    `(org-link ((,class (:underline t))))
    `(org-scheduled ((,class (:foreground ,nord14))))
    `(org-scheduled-previously ((,class (:foreground ,nord13))))
    `(org-scheduled-today ((,class (:foreground ,nord8))))
    `(org-special-keyword ((,class (:foreground ,nord9))))
    `(org-table ((,class (:foreground ,nord9))))
    `(org-todo ((,class (:foreground ,nord13 :weight bold))))
    `(org-upcoming-deadline ((,class (:foreground ,nord12))))
    `(org-warning ((,class (:foreground ,nord13 :weight bold))))
    `(font-latex-bold-face ((,class (:inherit bold))))
    `(font-latex-italic-face ((,class (:slant italic))))
    `(font-latex-string-face ((,class (:foreground ,nord14))))
    `(font-latex-match-reference-keywords ((,class (:foreground ,nord9))))
    `(font-latex-match-variable-keywords ((,class (:foreground ,nord4))))
    `(ido-only-match ((,class (:foreground ,nord8))))
    `(org-sexp-date ((,class (:foreground ,nord7))))
    `(ido-first-match ((,class (:foreground ,nord8 :weight bold))))
    `(ido-subdir ((,class (:foreground ,nord9))))
    `(org-quote ((,class (:inherit org-block :slant italic))))
    `(org-verse ((,class (:inherit org-block :slant italic))))
    `(org-agenda-date-weekend ((,class (:foreground ,nord9))))
    `(org-agenda-date-today ((,class (:foreground ,nord8 :weight bold))))
    `(org-agenda-done ((,class (:foreground ,nord14))))
    `(org-verbatim ((,class (:foreground ,nord7))))

    ;; > ivy-mode
    `(ivy-current-match ((,class (:inherit region))))
    `(ivy-minibuffer-match-face-1 ((,class (:inherit default))))
    `(ivy-minibuffer-match-face-2 ((,class (:background ,nord7 :foreground ,nord0))))
    `(ivy-minibuffer-match-face-3 ((,class (:background ,nord8 :foreground ,nord0))))
    `(ivy-minibuffer-match-face-4 ((,class (:background ,nord9 :foreground ,nord0))))
    `(ivy-remote ((,class (:foreground ,nord14))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
    (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nord)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; nord-theme.el ends here
