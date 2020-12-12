;;; ../dotfiles/emacs/.doom.d/eshell.el -*- lexical-binding: t; -*-

(add-to-list 'eshell-visual-commands "top")
(add-to-list 'eshell-visual-options '("git" "--help"))
(add-to-list 'eshell-visual-subcommands '("git" "log" "diff" "show"))
(setq eshell-destroy-buffer-when-process-dies t)
