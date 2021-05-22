;;; ../dotfiles/emacs/.doom.d/eshell.el -*- lexical-binding: t; -*-

(setq eshell-destroy-buffer-when-process-dies t)

(add-hook! eshell-mode
  (add-to-list 'eshell-visual-commands "top")
  (add-to-list 'eshell-visual-options '("git" "--help"))
  (add-to-list 'eshell-visual-subcommands '("git" "log" "diff" "show"))


  ;; ls aliases
  (eshell/alias "ll" "ls -lh $*")
  (eshell/alias "l" "ls -lah $*")
  (eshell/alias "ld" "ls -ld *")
  (eshell/alias "la" "ls -lAh $*")
  (eshell/alias "lart" "ls -lart $*")

  ;; Other common aliases
  (eshell/alias "md" "mkdir -p $*")

  ;; dnf aliases - based on oh-my-zsh dnf plugin
  (eshell/alias "dnfc" "sudo dnf clean all $*")
  (eshell/alias "dnfgi" "sudo dnf groupinstall -y $*")
  (eshell/alias "dnfgl" "dnf grouplist $*")
  (eshell/alias "dnfgr" "sudo dnf groupremove $*")
  (eshell/alias "dnfi" "sudo dnf install -y $*")
  (eshell/alias "dnfl" "dnf list $*")
  (eshell/alias "dnfli" "dnf list installed $*")
  (eshell/alias "dnfmc" "dnf makecache $*")
  (eshell/alias "dnfp" "dnf info $*")
  (eshell/alias "dnfr" "sudo dnf remove $*")
  (eshell/alias "dnfs" "dnf search $*")
  (eshell/alias "dnfu" "sudo dnf upgrade -y $*")

  ;; git aliases
  (eshell/alias "gst" "git status")

  ;; npm aliases
  (eshell/alias "npmst" "npm start")
  (eshell/alias "npmrb" "npm run build")
  (eshell/alias "npmt" "npm test")

  ;; find-file aliases
  (eshell/alias "ff" "find-file-other-window $1")
  (eshell/alias "vim" "find-file-other-window $1")
  (eshell/alias "vi" "find-file-other-window $1")

  ;; cd aliases
  (eshell/alias "1" "cd -")
  (eshell/alias "2" "cd -2")
  (eshell/alias "3" "cd -3")
  (eshell/alias "4" "cd -4")
  (eshell/alias "po" "popd")
  (eshell/alias "pu" "pushd")

  ;; sudo alias
  (eshell/alias "_" "sudo $*")

  ;; process alias
  (eshell/alias "pa" "ps auwwxx | grep $1 | grep -vi grep")
  )
