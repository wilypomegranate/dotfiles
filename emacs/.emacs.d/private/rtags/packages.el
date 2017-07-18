(setq rtags-packages
      '(
        ;; package names go here
        rtags
        ))

;; List of packages to exclude.
(setq rtags-excluded-packages '())


(defun rtags-evil-standard-keybindings (mode)
  (evil-leader/set-key-for-mode mode
    "mR." 'rtags-find-symbol-at-point
    "mR," 'rtags-find-references-at-point
    "mRv" 'rtags-find-virtuals-at-point
    "mRV" 'rtags-print-enum-value-at-point
    "mR/" 'rtags-find-all-references-at-point
    "mRY" 'rtags-cycle-overlays-on-screen
    "mR>" 'rtags-find-symbol
    "mR<" 'rtags-find-references
    "mR[" 'rtags-location-stack-back
    "mR]" 'rtags-location-stack-forward
    "mRD" 'rtags-diagnostics
    "mRG" 'rtags-guess-function-at-point
    "mRp" 'rtags-set-current-project
    "mRP" 'rtags-print-dependencies
    "mRe" 'rtags-reparse-file
    "mRE" 'rtags-preprocess-file
    "mRR" 'rtags-rename-symbol
    "mRM" 'rtags-symbol-info
    "mRS" 'rtags-display-summary
    "mRO" 'rtags-goto-offset
    "mR;" 'rtags-find-file
    "mRF" 'rtags-fixit
    "mRL" 'rtags-copy-and-print-current-location
    "mRX" 'rtags-fix-fixit-at-point
    "mRB" 'rtags-show-rtags-buffer
    "mRI" 'rtags-imenu
    "mRT" 'rtags-taglist
    "mRh" 'rtags-print-class-hierarchy
    "mRa" 'rtags-print-source-arguments
    )
  )


;; For each package, define a function rtags/init-<package-name>
;;
(defun rtags/init-rtags ()
  "Initialize my package"
  (use-package rtags
    :init
    ;;(evil-set-initial-state 'rtags-mode 'emacs)
    ;;(rtags-enable-standard-keybindings c-mode-base-map)
    :ensure company
    :config
    (progn
      (require 'company-rtags)
      (add-to-list 'company-backends 'company-rtags)
      (setq company-rtags-begin-after-member-access t)
      (setq rtags-completions-enabled t)
      ;;(rtags-diagnostics)
      (define-key evil-normal-state-map (kbd "RET") 'rtags-select-other-window)
      (define-key evil-normal-state-map (kbd "M-RET") 'rtags-select)
      (define-key evil-normal-state-map (kbd "q") 'rtags-bury-or-delete)

      (rtags-evil-standard-keybindings 'c-mode)
      (rtags-evil-standard-keybindings 'c++-mode)
      )
    )
)
