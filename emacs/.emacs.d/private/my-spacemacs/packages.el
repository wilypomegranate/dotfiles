(defconst my-spacemacs-packages
  '(
    virtualenvwrapper
    nord-theme
    doom-themes
    dhall-mode
    highlight-indent-guides
    meson-mode
    scad-mode
    )
  )

;; TRAMP mode remote shell config
(setq tramp-shell-prompt-pattern "\\(?:^\\|\r\\)[^]#$%>\n]*#?[]#$%>].* *\\(^[\\[[0-9;]*[a-zA-Z] *\\)*")
(setq tramp-verbose 10)

;; Use eww by default
(setq browse-url-browser-function 'eww-browse-url)

;; org agenda settings
(setq org-agenda-files (list "~/org/schedule.org"
                             "~/org/notes.org"))

(defun my-spacemacs/init-virtualenvwrapper()
  (use-package virtualenvwrapper)
  (venv-initialize-interactive-shells)
  (venv-initialize-eshell)
  (setq venv-location "~/venvs")
  ;; This is to disable projectile for TRAMP
  ;; TODO - Should be moved to init for projectile elsewhere
  (setq projectile-mode-line "Projectile")
  )

;; Define the function for auto sourcing virtualenvs.
;; (with-eval-after-load 'projectile
;;   (setq projectile-switch-project-action
;;         '(lambda ()
;;            (pyvenv-projectile-auto-workon)
;;            (projectile-find-file)))
;;   )

(defun pyvenv-projectile-auto-workon ()
  "If a venv with the projectile name exists, activate it."
  ;; NOTE The python layer is required for this to work.
  (require 'pyvenv)
  (pyvenv-workon projectile-project-name)
  )

(defun my-spacemacs/init-nord-theme()
  (use-package nord-theme :defer t)
  )

(defun my-spacemacs/init-doom-theme()
  (use-package doom-theme :defer t)
  )

(defun my-spacemacs/init-dhall-mode()
  (use-package dhall-mode
    :ensure t
    :mode "\\.dhall\\'")
  )

(defun my-spacemacs/init-highlight-indent-guides()
  (use-package highlight-indent-guides
    :defer t)
)

(defun my-spacemacs/init-meson-mode()
  (use-package meson-mode
    :defer t)
)

(defun my-spacemacs/init-scad-mode()
  (use-package scad-mode
    :defer t)
  )

;; This is a patch for projectile that for some reason isn't fixed.
;; See https://github.com/bbatsov/projectile/pull/1234.
(defun projectile-discover-projects-in-directory (directory)
  "Discover any projects in DIRECTORY and add them to the projectile cache.
This function is not recursive and only adds projects with roots
at the top level of DIRECTORY."
  (interactive
   (list (read-directory-name "Starting directory: ")))
  (let ((subdirs (directory-files directory t)))
    (mapcar
     (lambda (dir)
       (when (and (file-directory-p dir)
                  (not (member (file-name-nondirectory dir) '(".." "."))))
         (let ((default-directory dir)
               (projectile-cached-project-root dir))
           (when (projectile-project-p)
             (projectile-add-known-project (projectile-project-root))))))
     subdirs)))

;; (defun nvm-extract-version (nvm_info)
;;   (nvm-extract-version (cdr nvm_info))
;;   (car nvm_info)
;;   )

  ;; (when versions
  ;;   (nvm-extract-version versions)
  ;;   )
 ;; (cons (nvm--installed-versions) (nvm-extract-version(nvm--installed-versions)))
