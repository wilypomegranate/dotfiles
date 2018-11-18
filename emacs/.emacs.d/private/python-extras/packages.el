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
    flycheck-pycheckers
    (lsp-python
     :requires pyvenv
     :location (recipe
                :fetcher github
                :repo "wilypomegranate/lsp-python"))))

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
      "ds" 'realgud-short-key-mode)))


;; lsp-flycheck-ui overrides.
;; lsp-flycheck-ui adds lsp-ui to the beginning of flycheck-checkers.
;; This breaks the normal set of flycheck searching for python based checking.
;; For C++/cquery, just leave it as is, since what comes from the language server
;; is preferable to clang.
;; In the case of python, pylint is generally perferred, with flake8
;; if that's not available.
;; Type checking generally throws a wrench into that, because you want to
;; run that in addition to normal checking via pylint.
;; The python-pycheckers package solves that problem.
;; Now any available checkers will be used simultaneously.
;; TODO It probably makes sense to prompt for auto install of pylint and mypy.
;; if they're not available.
(defun python-extras/init-flycheck-pycheckers()
  (use-package flycheck-pycheckers
    :defer t
    :init
    (progn
      (with-eval-after-load 'flycheck
        (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup))
      ;; TODO Change this back to using python-pycheckers.
      (add-hook 'python-mode-hook (lambda () (setq flycheck-checker 'python-pylint))))))

(defun python-extras/init-lsp-python()
  (use-package lsp-python))
