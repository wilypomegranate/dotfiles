;;; packages.el --- python-extras layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: wilypomegranate <wilypomegranate@users.noreply.github.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: MIT

(defconst python-extras-packages
  '(
    switch-buffer-functions
    blacken
    sphinx-doc
    ;; This is needed for a post init that allows for
    ;; realgud in python mode.
    realgud
    ;; Pick up a forked version of lsp-python with support for
    ;; automatically sourcing virtualenv and installing
    ;; python-language-server.
    ))

(defun python-extras/init-switch-buffer-functions()
  (use-package switch-buffer-functions
    :defer t))

(defun python-extras/init-blacken()
  (use-package blacken
    :defer t))

;; (defun python-extras/init-sphinx-doc()
;;   (use-package sphinx-doc
;;     :defer t
;;     :init
;;     (progn
;;       ;; Enable sphinx when python loads
;;       (add-hook 'python-mode-hook (lambda ()
;;                                     (require 'sphinx-doc)
;;                                     (sphinx-doc-mode t)))
;;       ;; Keybindings for enabling sphinx-doc-mode
;;       (spacemacs/set-leader-keys-for-minor-mode 'sphinx-doc-mode
;;         "z" 'sphinx-doc
;;         )
;;       )
;;     )
;;   )

;; realgud setup for python mode
(defun python-extras/post-init-realgud()
  (progn
    (spacemacs/add-realgud-debugger 'python-mode "pdb")
    (spacemacs/set-leader-keys-for-major-mode 'python-mode
      "ds" 'realgud-short-key-mode)
    (spacemacs/set-leader-keys-for-major-mode 'python-mode
      "de" 'python-extras-realgud-pdb-entry-point)))
