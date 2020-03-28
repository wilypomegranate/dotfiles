(defconst cquery-packages '((cquery)))
(setq cquery-executable "~/bin/cquery")

;; See also https://github.com/cquery-project/cquery/wiki/Emacs
(defun cquery/init-cquery ()
  (use-package cquery
    :defer t
    :commands lsp
    :init
    ;; Customize `lsp-project-whitelist' `lsp-project-blacklist' to disable auto initialization.
    (add-hook 'c-mode-common-hook #'cquery//enable)
    (add-hook 'c++-mode-hook #'cquery//enable)
    ;; (setq cquery-sem-highlight-method 'overlay)
    ;; (setq cquery-sem-highlight-method 'font-lock)
    ;; (cquery-use-default-rainbow-sem-highlight())
    :config
    (setq cquery-sem-highlight-method 'overlay)
    (setq cquery-sem-highlight-method 'font-lock)
    (cquery-use-default-rainbow-sem-highlight)
    ;; (setq cquery-extra-init-params '(:cacheFormat "msgpack" :completion (:detailedLabel t)))
    )
  )
