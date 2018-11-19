;;; funcs.el --- python-extras layer functions file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: wilypomegranate <wilypomegranate@users.noreply.github.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: MIT

(defun python-extras-workon-root()
  (message "here")
  (let ((root-path (locate-dominating-file default-directory
                                           "setup.py")))
    (if root-path
        (let ((virtualenv (file-name-nondirectory (directory-file-name root-path))))
          (when virtualenv
            (pyvenv-workon virtualenv)
            )
          )
      (progn
        (let ((root-path (locate-dominating-file default-directory "pyproject.toml")))
          (let ((virtualenv (file-name-nondirectory (directory-file-name root-path))))
            (when virtualenv
              (pyvenv-workon virtualenv)
              )
            )
          )
        )
      )
    )
  )

(defun python-extras-workon-projectile-name()
  (require 'pyvenv)
  (when (projectile-project-name)
    (when (member (projectile-project-name) (pyvenv-virtualenv-list))
        (pyvenv-workon (projectile-project-name)))))

;;(when python-extras-auto-set-local-pyvenv-virtualenv-by-name
(defun spacemacs//pyvenv-mode-set-local-virtualenv()
  "Set virtualenv from projectile-name."
  (when (string-equal (format "%s" major-mode) "python-mode")
    (unless (string-equal python-extras-previous-project-root (projectile-project-root))
      (setq python-extras-previous-project-root (projectile-project-root))
      (if python-extras-auto-set-local-pyvenv-virtualenv-by-root
          (python-extras-workon-root)
        (python-extras-workon-projectile-name)))))

(defun python-extras-construct-entrypoint(virtualenv entry-point)
  (concat virtualenv (concat "bin/" entry-point)))

(defun python-extras-pdb-command(pyfile)
  (format "python -m pdb %s" pyfile)
  )

(defun python-extras-list-entrypoints(virtualenv)
  (directory-files (concat virtualenv (concat "bin/")) nil directory-files-no-dot-files-regexp)
  )

(defun python-extras-realgud-pdb-entry-point()
  (interactive)
  ;; Check to see if virtualenv enabled.
  (let ((virtualenv (file-name-as-directory (getenv "VIRTUAL_ENV"))))
    (when virtualenv
      ;; Choose between entry points in virtualenv.
      (let ((entrypoint (completing-read
                         "Select an entry point: "
                         (python-extras-list-entrypoints virtualenv))))

        (realgud:pdb (python-extras-pdb-command
                      (python-extras-construct-entrypoint
                       virtualenv (read-string "Run entry point (like this): " entrypoint))))))))

;; Add a hook to switch pyenv whenever a buffer is changed.
(add-hook 'switch-buffer-functions
           (lambda (prev cur) (spacemacs//pyvenv-mode-set-local-virtualenv)))
