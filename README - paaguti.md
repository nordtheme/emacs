## About
This fork contains features for the latest Emacs releases:
* `line-number` is the preferred way to show line numbers in Emacs >= 26.1
* `tab-line` is a quick way to see what files are loaded and quickly access their buffers in Emacs >= 27.1
In order to keep a uniform presentation, these faces are all derived from fringe.
If the fringe changes in the future to make it more visually different from the default style, these things outside the window will get a uniform look.

## TODOs:
* Mode line: use `:box :width <n>` to get a modern look
