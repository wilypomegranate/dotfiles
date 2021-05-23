;;; ../dotfiles/emacs/.doom.d/eshell.el -*- lexical-binding: t; -*-

(setq eshell-destroy-buffer-when-process-dies t)

;; Set eshell up to be case-insentitive
(setq eshell-up-ignore-case t)

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
  (eshell/alias "g" "git $*")
  (eshell/alias "ga" "git add $*")
  (eshell/alias "gaa" "git add --all $*")
  (eshell/alias "gapa" "git add --patch $*")
  (eshell/alias "gau" "git add --update $*")
  (eshell/alias "gav" "git add --verbose $*")
  (eshell/alias "gap" "git apply $*")
  (eshell/alias "gapt" "git apply --3way $*")
  (eshell/alias "gb" "git branch $*")
  (eshell/alias "gba" "git branch -a $*")
  (eshell/alias "gbd" "git branch -d $*")
  (eshell/alias "gbD" "git branch -D $*")
  (eshell/alias "gbl" "git blame -b -w $*")
  (eshell/alias "gbnm" "git branch --no-merged $*")
  (eshell/alias "gbr" "git branch --remote $*")
  (eshell/alias "gbs" "git bisect $*")
  (eshell/alias "gbsb" "git bisect bad $*")
  (eshell/alias "gbsg" "git bisect good $*")
  (eshell/alias "gbsr" "git bisect reset $*")
  (eshell/alias "gbss" "git bisect start $*")
  (eshell/alias "gc" "git commit -v $*")
  (eshell/alias "gc!" "git commit -v --amend $*")
  (eshell/alias "gcn!" "git commit -v --no-edit --amend $*")
  (eshell/alias "gca" "git commit -v -a $*")
  (eshell/alias "gca!" "git commit -v -a --amend $*")
  (eshell/alias "gcan!" "git commit -v -a --no-edit --amend $*")
  (eshell/alias "gcans!" "git commit -v -a -s --no-edit --amend $*")
  (eshell/alias "gcam" "git commit -a -m $*")
  (eshell/alias "gcsm" "git commit -s -m $*")
  (eshell/alias "gcas" "git commit -a -s $*")
  (eshell/alias "gcasm" "git commit -a -s -m $*")
  (eshell/alias "gcb" "git checkout -b $*")
  (eshell/alias "gcf" "git config --list $*")
  (eshell/alias "gcl" "git clone --recurse-submodules $*")
  (eshell/alias "gclean" "git clean -id $*")
  (eshell/alias "gpristine" "git reset --hard && git clean -dffx $*")
  (eshell/alias "gcm" "git checkout $(git_main_branch) $*")
  (eshell/alias "gcd" "git checkout develop $*")
  (eshell/alias "gcmsg" "git commit -m $*")
  (eshell/alias "gco" "git checkout $*")
  (eshell/alias "gcount" "git shortlog -sn $*")
  (eshell/alias "gcp" "git cherry-pick $*")
  (eshell/alias "gcpa" "git cherry-pick --abort $*")
  (eshell/alias "gcpc" "git cherry-pick --continue $*")
  (eshell/alias "gcs" "git commit -S $*")
  (eshell/alias "gd" "git diff $*")
  (eshell/alias "gdca" "git diff --cached $*")
  (eshell/alias "gdcw" "git diff --cached --word-diff $*")
  (eshell/alias "gdct" "git describe --tags $(git rev-list --tags --max-count=1) $*")
  (eshell/alias "gds" "git diff --staged $*")
  (eshell/alias "gdt" "git diff-tree --no-commit-id --name-only -r $*")
  (eshell/alias "gdw" "git diff --word-diff $*")
  (eshell/alias "gf" "git fetch $*")
  (eshell/alias "gfa" "git fetch --all --prune --jobs=10 $*")
  (eshell/alias "gfo" "git fetch origin $*")
  (eshell/alias "gfg" "git ls-files | grep $*")
  (eshell/alias "gg" "git gui citool $*")
  (eshell/alias "gga" "git gui citool --amend $*")
  (eshell/alias "ggpur" "ggu $*")
  (eshell/alias "ghh" "git help $*")
  (eshell/alias "gignore" "git update-index --assume-unchanged $*")
  (eshell/alias "gignored" "git ls-files -v | grep '^[[:lower:]]'")
  (eshell/alias "gk" "\gitk --all --branches $*")
  (eshell/alias "gke" "\gitk --all ${git log -g --pretty=%h} $*")
  (eshell/alias "gl" "git pull $*")
  (eshell/alias "glg" "git log --stat $*")
  (eshell/alias "glgp" "git log --stat -p $*")
  (eshell/alias "glgg" "git log --graph $*")
  (eshell/alias "glgga" "git log --graph --decorate --all $*")
  (eshell/alias "glgm" "git log --graph --max-count=10 $*")
  (eshell/alias "glo" "git log --oneline --decorate $*")
  (eshell/alias "glol" "git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset $*")
  (eshell/alias "glols" "git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset --stat $*")
  (eshell/alias "glod" "git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset $*")
  (eshell/alias "glods" "git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset --date=short $*")
  (eshell/alias "glola" "git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset --all $*")
  (eshell/alias "glog" "git log --oneline --decorate --graph $*")
  (eshell/alias "gloga" "git log --oneline --decorate --graph --all $*")
  (eshell/alias "glp" "git log --pretty $*")
  (eshell/alias "gm" "git merge $*")
  (eshell/alias "gmt" "git mergetool --no-prompt $*")
  (eshell/alias "gmtvim" "git mergetool --no-prompt --tool=vimdiff $*")
  (eshell/alias "gma" "git merge --abort $*")
  (eshell/alias "gp" "git push $*")
  (eshell/alias "gpd" "git push --dry-run $*")
  (eshell/alias "gpf" "git push --force-with-lease $*")
  (eshell/alias "gpf!" "git push --force $*")
  (eshell/alias "gpoat" "git push origin --all && git push origin --tags $*")
  (eshell/alias "gpu" "git push upstream $*")
  (eshell/alias "gpv" "git push -v $*")
  (eshell/alias "gr" "git remote $*")
  (eshell/alias "gra" "git remote add $*")
  (eshell/alias "grb" "git rebase $*")
  (eshell/alias "grba" "git rebase --abort $*")
  (eshell/alias "grbc" "git rebase --continue $*")
  (eshell/alias "grbd" "git rebase develop $*")
  (eshell/alias "grbi" "git rebase -i $*")
  (eshell/alias "grbo" "git rebase --onto $*")
  (eshell/alias "grbs" "git rebase --skip $*")
  (eshell/alias "grev" "git revert $*")
  (eshell/alias "grh" "git reset $*")
  (eshell/alias "grhh" "git reset --hard $*")
  (eshell/alias "grm" "git rm $*")
  (eshell/alias "grmc" "git rm --cached $*")
  (eshell/alias "grmv" "git remote rename $*")
  (eshell/alias "grrm" "git remote remove $*")
  (eshell/alias "grs" "git restore $*")
  (eshell/alias "grset" "git remote set-url $*")
  (eshell/alias "grss" "git restore --source $*")
  (eshell/alias "grst" "git restore --staged $*")
  (eshell/alias "grt" "cd ${git rev-parse --show-toplevel || echo .} $*")
  (eshell/alias "gru" "git reset -- $*")
  (eshell/alias "grup" "git remote update $*")
  (eshell/alias "grv" "git remote -v $*")
  (eshell/alias "gsb" "git status -sb $*")
  (eshell/alias "gsd" "git svn dcommit $*")
  (eshell/alias "gsh" "git show $*")
  (eshell/alias "gsi" "git submodule init $*")
  (eshell/alias "gsps" "git show --pretty=short --show-signature $*")
  (eshell/alias "gsr" "git svn rebase $*")
  (eshell/alias "gss" "git status -s $*")
  (eshell/alias "gst" "git status $*")
  (eshell/alias "gstaa" "git stash apply $*")
  (eshell/alias "gstc" "git stash clear $*")
  (eshell/alias "gstd" "git stash drop $*")
  (eshell/alias "gstl" "git stash list $*")
  (eshell/alias "gstp" "git stash pop $*")
  (eshell/alias "gsts" "git stash show --text $*")
  (eshell/alias "gstu" "gsta --include-untracked $*")
  (eshell/alias "gstall" "git stash --all $*")
  (eshell/alias "gsu" "git submodule update $*")
  (eshell/alias "gsw" "git switch $*")
  (eshell/alias "gswc" "git switch -c $*")
  (eshell/alias "gts" "git tag -s $*")
  (eshell/alias "gtv" "git tag | sort -V $*")
  (eshell/alias "gunignore" "git update-index --no-assume-unchanged $*")
  (eshell/alias "gunwip" "git log -n 1 | grep -q -c '\-\-wip\-\-' && git reset HEAD~1 $*")
  (eshell/alias "gup" "git pull --rebase $*")
  (eshell/alias "gupv" "git pull --rebase -v $*")
  (eshell/alias "gupa" "git pull --rebase --autostash $*")
  (eshell/alias "gupav" "git pull --rebase --autostash -v $*")
  (eshell/alias "gwch" "git whatchanged -p --abbrev-commit --pretty=medium $*")
  (eshell/alias "gam" "git am $*")
  (eshell/alias "gamc" "git am --continue $*")
  (eshell/alias "gams" "git am --skip $*")
  (eshell/alias "gama" "git am --abort $*")
  (eshell/alias "gamscp" "git am --show-current-patch $*")

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

  ;; eshell-up aliases
  (eshell/alias "up" "eshell-up")
  (eshell/alias "pk" "eshell-up-peek")
  )
