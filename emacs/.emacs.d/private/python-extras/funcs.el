;;; funcs.el --- python-extras layer functions file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: wilypomegranate <wilypomegranate@users.noreply.github.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


;;(when python-extras-auto-set-local-pyvenv-virtualenv-by-name
(defun spacemacs//pyvenv-mode-set-local-virtualenv()
  "Set virtualenv from projectile-name."
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
 ;; )
