;;; packages.el --- my-c++ layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: wilypomegranate <wilypomegranate@users.noreply.github.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `my-c++-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `my-c++/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `my-c++/pre-init-PACKAGE' and/or
;;   `my-c++/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

;; NOTE - All completion and syntax checking have been moved to cquery/lsp-mode.
;; It's already better(ish) than irony, and I'm hoping after a little more development,
;; it's much better.
(defconst my-c++-packages
  '(cc-mode ;; Finding header/impl files.
    disaster ;; Showing assembly.
    clang-format ;; Formatting code.
    ;; gdb-mi ;; gdb
    realgud ;; gdb
    ;; These are also defined in the semantic layer,
    ;; but there are modifications for c++ mode in here.
    semantic
    srefactor
    stickyfunc-enance
    )
  "The list of Lisp packages required by the my-c++ layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun my-c++/init-cc-mode ()
  (use-package cc-mode
    :defer t
    :init
    (progn
      (add-to-list 'auto-mode-alist
                   `("\\.h\\'" . ,'c++-mode)))
    :config
    (progn
      (require 'compile)
      (c-toggle-auto-newline 1)
        (spacemacs/declare-prefix-for-mode 'c++-mode "mc" "compile")
        (spacemacs/declare-prefix-for-mode 'c++-mode "mg" "goto")
        (spacemacs/declare-prefix-for-mode 'c++-mode "mp" "project")
        (spacemacs/set-leader-keys-for-major-mode 'c++-mode
          "ga" 'projectile-find-other-file
          "gA" 'projectile-find-other-file-other-window))))

(defun my-c++/init-disaster ()
  (use-package disaster
    :defer t
    :commands (disaster)
    :init
    (progn
        (spacemacs/set-leader-keys-for-major-mode 'c++-mode
          "D" 'disaster))))

;; The changes I made to the default behaviour is to remove
;; the check for variables since I just always want clang
;; formatting to be enabled.
(defun my-c++/init-clang-format ()
  (use-package clang-format
    :init
    (progn
        (spacemacs/add-to-hooks 'spacemacs/clang-format-on-save 'c++-mode-hook)
        (spacemacs/declare-prefix-for-mode 'c++-mode "m=" "format")
        (spacemacs/set-leader-keys-for-major-mode 'c++-mode
          "==" 'spacemacs/clang-format-region-or-buffer
          "=f" 'spacemacs/clang-format-function))))

(defun my-c++/init-realgud()
  (use-package realgud
    :defer t
    :commands (realgud:gdb)
    :init
    (progn
        (spacemacs/set-leader-keys-for-major-mode 'c++-mode
          "dd" 'realgud:gdb
          "de" 'realgud:cmd-eval-dwim)
      (advice-add 'realgud-short-key-mode-setup
                  :before #'spacemacs//short-key-state)
      (evilified-state-evilify-map realgud:shortkey-mode-map
        :eval-after-load realgud
        :mode realgud-short-key-mode
        :bindings
        "s" 'realgud:cmd-next
        "i" 'realgud:cmd-step
        "b" 'realgud:cmd-break
        "B" 'realgud:cmd-clear
        "o" 'realgud:cmd-finish
        "c" 'realgud:cmd-continue
        "e" 'realgud:cmd-eval
        "r" 'realgud:cmd-restart
        "q" 'realgud:cmd-quit
        "S" 'realgud-window-cmd-undisturb-src))))

(defun my-c++/post-init-semantic ()
  (spacemacs/add-to-hooks 'semantic-mode c-c++-mode-hooks))

(defun my-c++/post-init-srefactor ()
  (dolist (mode c-c++-modes)
    (spacemacs/set-leader-keys-for-major-mode mode "r" 'srefactor-refactor-at-point))
  (spacemacs/add-to-hooks 'spacemacs/load-srefactor c-c++-mode-hooks))

(defun my-c++/post-init-stickyfunc-enhance ()
  (spacemacs/add-to-hooks 'spacemacs/load-stickyfunc-enhance c-c++-mode-hooks))

;;; packages.el ends here
