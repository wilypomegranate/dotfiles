;;; config.el --- python-extras layer configuration file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: wilypomegranate <wilypomegranate@users.noreply.github.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; variables

(defvar python-extras-enable-black-format-on-save nil)
"If non-nil, enable automatically formatting via black on save.

This will disable yapf saving from the python layer.
"

(defvar python-extras-auto-set-local-pyvenv-virtualenv-by-name t)
"If non-nil, automatically use the projectile-name to source a virtualenv.

This will also override the behaviour set up in
python-auto-set-local-pyvenv-virtualenv entirely.
"
