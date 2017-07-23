(defconst ob-ipython-packages
     '(
       ob-ipython)
)

(defun ob-ipython/init-ob-ipython()
  (use-package ob-ipython)
)

(with-eval-after-load 'org
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((ipython . t)))
)
