if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr 1 'cd -'
abbr 2 'cd -2'
abbr 3 'cd -3'
abbr 4 'cd -4'
abbr 5 'cd -5'
abbr 6 'cd -6'
abbr 7 'cd -7'
abbr 8 'cd -8'
abbr 9 'cd -9'
abbr s 'sudo'
abbr ff 'find_file'
abbr g 'git'
abbr ga 'git add'
abbr gaa 'git add --all'
abbr gap 'git apply'
abbr gapa 'git add --patch'
abbr gau 'git add --update'
abbr gav 'git add --verbose'
abbr gb 'git branch'
abbr gbD 'git branch -D'
abbr gba 'git branch -a'
abbr gbd 'git branch -d'
abbr gbda 'git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
abbr gbl 'git blame -b -w'
abbr gbnm 'git branch --no-merged'
abbr gbr 'git branch --remote'
abbr gbs 'git bisect'
abbr gbsb 'git bisect bad'
abbr gbsg 'git bisect good'
abbr gbsr 'git bisect reset'
abbr gbss 'git bisect start'
abbr gc 'git commit -v'
abbr 'gc!' 'git commit -v --amend'
abbr gca 'git commit -v -a'
abbr 'gca!' 'git commit -v -a --amend'
abbr gcam 'git commit -a -m'
abbr 'gcan!' 'git commit -v -a --no-edit --amend'
abbr 'gcans!' 'git commit -v -a -s --no-edit --amend'
abbr gcb 'git checkout -b'
abbr gcd 'git checkout develop'
abbr gcf 'git config --list'
abbr gcl 'git clone --recurse-submodules'
abbr gclean 'git clean -id'
abbr gcm 'git checkout master'
abbr gcmsg 'git commit -m'
abbr 'gcn!' 'git commit -v --no-edit --amend'
abbr gco 'git checkout'
abbr gcount 'git shortlog -sn'
abbr gcp 'git cherry-pick'
abbr gcpa 'git cherry-pick --abort'
abbr gcpc 'git cherry-pick --continue'
abbr gcs 'git commit -S'
abbr gcsm 'git commit -s -m'
abbr gd 'git diff'
abbr gdca 'git diff --cached'
abbr gdct 'git describe --tags $(git rev-list --tags --max-count=1)'
abbr gdcw 'git diff --cached --word-diff'
abbr gds 'git diff --staged'
abbr gdt 'git diff-tree --no-commit-id --name-only -r'
abbr gdw 'git diff --word-diff'
abbr gf 'git fetch'
abbr gfa 'git fetch --all --prune'
abbr gfg 'git ls-files | grep'
abbr gfo 'git fetch origin'
abbr gg 'git gui citool'
abbr gga 'git gui citool --amend'
abbr ggpull 'git pull origin "$(git_current_branch)"'
abbr ggpur ggu
abbr ggpush 'git push origin "$(git_current_branch)"'
abbr ggsup 'git branch --set-upstream-to=origin/$(git_current_branch)'
abbr ghh 'git help'
abbr gignore 'git update-index --assume-unchanged'
abbr gignored 'git ls-files -v | grep "^[[:lower:]]"'
abbr git-svn-dcommit-push 'git svn dcommit && git push github master:svntrunk'
abbr github 'web_search github'
abbr givero 'web_search givero'
abbr gk '\gitk --all --branches'
abbr gke '\gitk --all $(git log -g --pretty=%h)'
abbr gl 'git pull'
abbr glg 'git log --stat'
abbr glgg 'git log --graph'
abbr glgga 'git log --graph --decorate --all'
abbr glgm 'git log --graph --max-count=10'
abbr glgp 'git log --stat -p'
abbr glo 'git log --oneline --decorate'
abbr globurl 'noglob urlglobber '
abbr glod 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
abbr glods 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
abbr glog 'git log --oneline --decorate --graph'
abbr gloga 'git log --oneline --decorate --graph --all'
abbr glol 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
abbr glola 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
abbr glols 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'
abbr glp _git_log_prettily
abbr glum 'git pull upstream master'
abbr gm 'git merge'
abbr gma 'git merge --abort'
abbr gmom 'git merge origin/master'
abbr gmt 'git mergetool --no-prompt'
abbr gmtvim 'git mergetool --no-prompt --tool=vimdiff'
abbr gmum 'git merge upstream/master'
abbr goodreads 'web_search goodreads'
abbr google 'web_search google'
abbr goto project_goto
abbr gp 'git push'
abbr gpd 'git push --dry-run'
abbr gpf 'git push --force-with-lease'
abbr 'gpf!' 'git push --force'
abbr gpoat 'git push origin --all && git push origin --tags'
abbr gpristine 'git reset --hard && git clean -dfx'
abbr gpsup 'git push --set-upstream origin $(git_current_branch)'
abbr gpu 'git push upstream'
abbr gpv 'git push -v'
abbr gr 'git remote'
abbr gra 'git remote add'
abbr grb 'git rebase'
abbr grba 'git rebase --abort'
abbr grbc 'git rebase --continue'
abbr grbd 'git rebase develop'
abbr grbi 'git rebase -i'
abbr grbm 'git rebase master'
abbr grbs 'git rebase --skip'
abbr grep 'grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
abbr grev 'git revert'
abbr grh 'git reset'
abbr grhh 'git reset --hard'
abbr grm 'git rm'
abbr grmc 'git rm --cached'
abbr grmv 'git remote rename'
abbr groh 'git reset origin/$(git_current_branch) --hard'
abbr grrm 'git remote remove'
abbr grset 'git remote set-url'
abbr grt 'cd "$(git rev-parse --show-toplevel || echo .)"'
abbr gru 'git reset --'
abbr grup 'git remote update'
abbr grv 'git remote -v'
abbr gsb 'git status -sb'
abbr gsd 'git svn dcommit'
abbr gsh 'git show'
abbr gsi 'git submodule init'
abbr gsps 'git show --pretty=short --show-signature'
abbr gsr 'git svn rebase'
abbr gss 'git status -s'
abbr gst 'git status'
abbr gsta 'git stash push'
abbr gstaa 'git stash apply'
abbr gstall 'git stash --all'
abbr gstc 'git stash clear'
abbr gstd 'git stash drop'
abbr gstl 'git stash list'
abbr gstp 'git stash pop'
abbr gsts 'git stash show --text'
abbr gsu 'git submodule update'
abbr gtl 'gtl(){ git tag --sort=-v:refname -n -l ${1}* }; noglob gtl'
abbr gts 'git tag -s'
abbr gtv 'git tag | sort -V'
abbr gunignore 'git update-index --no-assume-unchanged'
abbr gunwip 'git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
abbr gup 'git pull --rebase'
abbr gupa 'git pull --rebase --autostash'
abbr gupav 'git pull --rebase --autostash -v'
abbr gupv 'git pull --rebase -v'
abbr gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
abbr gwip 'git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'
abbr j jobs
abbr k kubectl
abbr kaf 'kubectl apply -f'
abbr kca 'f(){ kubectl "$@" --all-namespaces;  unset -f f; }; f'
abbr kccc 'kubectl config current-context'
abbr kcdc 'kubectl config delete-context'
abbr kcgc 'kubectl config get-contexts'
abbr kcn 'kubectl config set-context $(kubectl config current-context) --namespace'
abbr kcp 'kubectl cp'
abbr kcsc 'kubectl config set-context'
abbr kcuc 'kubectl config use-context'
abbr kdcm 'kubectl describe configmap'
abbr kdd 'kubectl describe deployment'
abbr kdel 'kubectl delete'
abbr kdelcm 'kubectl delete configmap'
abbr kdeld 'kubectl delete deployment'
abbr kdelf 'kubectl delete -f'
abbr kdeli 'kubectl delete ingress'
abbr kdelno 'kubectl delete node'
abbr kdelns 'kubectl delete namespace'
abbr kdelp 'kubectl delete pods'
abbr kdelpvc 'kubectl delete pvc'
abbr kdels 'kubectl delete svc'
abbr kdelsec 'kubectl delete secret'
abbr kdelss 'kubectl delete statefulset'
abbr kdi 'kubectl describe ingress'
abbr kdno 'kubectl describe node'
abbr kdns 'kubectl describe namespace'
abbr kdp 'kubectl describe pods'
abbr kdpvc 'kubectl describe pvc'
abbr kds 'kubectl describe svc'
abbr kdsec 'kubectl describe secret'
abbr kdss 'kubectl describe statefulset'
abbr kecm 'kubectl edit configmap'
abbr ked 'kubectl edit deployment'
abbr kei 'kubectl edit ingress'
abbr keno 'kubectl edit node'
abbr kens 'kubectl edit namespace'
abbr kep 'kubectl edit pods'
abbr kepvc 'kubectl edit pvc'
abbr kes 'kubectl edit svc'
abbr kess 'kubectl edit statefulset'
abbr keti 'kubectl exec -ti'
abbr kga 'kubectl get all'
abbr kgaa 'kubectl get all --all-namespaces'
abbr kgcm 'kubectl get configmaps'
abbr kgd 'kubectl get deployment'
abbr kgdw 'kgd --watch'
abbr kgdwide 'kgd -o wide'
abbr kgi 'kubectl get ingress'
abbr kgno 'kubectl get nodes'
abbr kgns 'kubectl get namespaces'
abbr kgp 'kubectl get pods'
abbr kgpl 'kgp -l'
abbr kgpvc 'kubectl get pvc'
abbr kgpvcw 'kgpvc --watch'
abbr kgpw 'kgp --watch'
abbr kgpwide 'kgp -o wide'
abbr kgrs 'kubectl get rs'
abbr kgs 'kubectl get svc'
abbr kgsec 'kubectl get secret'
abbr kgss 'kubectl get statefulset'
abbr kgssw 'kgss --watch'
abbr kgsswide 'kgss -o wide'
abbr kgsw 'kgs --watch'
abbr kgswide 'kgs -o wide'
abbr kl 'kubectl logs'
abbr klf 'kubectl logs -f'
abbr kpf 'kubectl port-forward'
abbr krh 'kubectl rollout history'
abbr krsd 'kubectl rollout status deployment'
abbr krsss 'kubectl rollout status statefulset'
abbr kru 'kubectl rollout undo'
abbr ksd 'kubectl scale deployment'
abbr ksss 'kubectl scale statefulset'
abbr l 'ls -lah'
abbr la 'ls -lAh'
abbr lart 'ls -lart'
abbr ll 'ls -lh'
abbr lsa 'ls -lah'
abbr md 'mkdir -p'
# abbr #proj 'cd ${ZPROJ_ROOT_DIR}'
# abbr # pyfind 'find . -name "*.py"'
# abbr # pygrep 'grep --include="*.py"'
abbr rd rmdir
abbr rlf 'readlink -f'
abbr sc-cancel 'sudo systemctl cancel'
abbr sc-cat 'systemctl cat'
abbr sc-disable 'sudo systemctl disable'
abbr sc-disable-now 'sc-disable --now'
abbr sc-edit 'sudo systemctl edit'
abbr sc-enable 'sudo systemctl enable'
abbr sc-enable-now 'sc-enable --now'
abbr sc-help 'systemctl help'
abbr sc-is-active 'systemctl is-active'
abbr sc-is-enabled 'systemctl is-enabled'
abbr sc-isolate 'sudo systemctl isolate'
abbr sc-kill 'sudo systemctl kill'
abbr sc-link 'sudo systemctl link'
abbr sc-list-jobs 'systemctl list-jobs'
abbr sc-list-timers 'systemctl list-timers'
abbr sc-list-unit-files 'systemctl list-unit-files'
abbr sc-list-units 'systemctl list-units'
abbr sc-load 'sudo systemctl load'
abbr sc-mask 'sudo systemctl mask'
abbr sc-mask-now 'sc-mask --now'
abbr sc-preset 'sudo systemctl preset'
abbr sc-reenable 'sudo systemctl reenable'
abbr sc-reload 'sudo systemctl reload'
abbr sc-reset-failed 'sudo systemctl reset-failed'
abbr sc-restart 'sudo systemctl restart'
abbr sc-set-environment 'sudo systemctl set-environment'
abbr sc-show 'systemctl show'
abbr sc-show-environment 'systemctl show-environment'
abbr sc-start 'sudo systemctl start'
abbr sc-status 'systemctl status'
abbr sc-stop 'sudo systemctl stop'
abbr sc-try-restart 'sudo systemctl try-restart'
abbr sc-unmask 'sudo systemctl unmask'
abbr sc-unset-environment 'sudo systemctl unset-environment'
abbr scu-cancel 'systemctl --user cancel'
abbr scu-cat 'systemctl --user cat'
abbr scu-disable 'systemctl --user disable'
abbr scu-disable-now 'scu-disable --now'
abbr scu-edit 'systemctl --user edit'
abbr scu-enable 'systemctl --user enable'
abbr scu-enable-now 'scu-enable --now'
abbr scu-help 'systemctl --user help'
abbr scu-is-active 'systemctl --user is-active'
abbr scu-is-enabled 'systemctl --user is-enabled'
abbr scu-isolate 'systemctl --user isolate'
abbr scu-kill 'systemctl --user kill'
abbr scu-link 'systemctl --user link'
abbr scu-list-jobs 'systemctl --user list-jobs'
abbr scu-list-timers 'systemctl --user list-timers'
abbr scu-list-unit-files 'systemctl --user list-unit-files'
abbr scu-list-units 'systemctl --user list-units'
abbr scu-load 'systemctl --user load'
abbr scu-mask 'systemctl --user mask'
abbr scu-mask-now 'scu-mask --now'
abbr scu-preset 'systemctl --user preset'
abbr scu-reenable 'systemctl --user reenable'
abbr scu-reload 'systemctl --user reload'
abbr scu-reset-failed 'systemctl --user reset-failed'
abbr scu-restart 'systemctl --user restart'
abbr scu-set-environment 'systemctl --user set-environment'
abbr scu-show 'systemctl --user show'
abbr scu-show-environment 'systemctl --user show-environment'
abbr scu-start 'systemctl --user start'
abbr scu-status 'systemctl --user status'
abbr scu-stop 'systemctl --user stop'
abbr scu-try-restart 'systemctl --user try-restart'
abbr scu-unmask 'systemctl --user unmask'
abbr scu-unset-environment 'systemctl --user unset-environment'
abbr xbpsi 'sudo xbps-install -S'
abbr xbpsr 'sudo xbps-remove'
abbr xbpss 'xbps-query -Rs'
abbr xbpsu 'sudo xbps-install -Su'
abbr zal 'sudo zypper al'
abbr zar 'sudo zypper ar'
abbr zas 'sudo zypper as'
abbr zcl 'sudo zypper cl'
abbr zdup 'sudo zypper dup'
abbr zh 'zypper -h'
abbr zhse 'zypper -h se'
abbr zif 'zypper if'
abbr zin 'sudo zypper in'
abbr zinr 'sudo zypper inr'
abbr zlicenses 'zypper licenses'
abbr zll 'zypper ll'
abbr zlp 'zypper lp'
abbr zlr 'zypper lr'
abbr zls 'zypper ls'
abbr zlu 'zypper lu'
abbr zmr 'sudo zypper mr'
abbr zms 'sudo zypper ms'
abbr znr 'sudo zypper nr'
abbr zpa 'zypper pa'
abbr zpatch 'sudo zypper patch'
abbr zpatch-info 'zypper patch-info'
abbr zpattern-info 'zypper pattern-info'
abbr zpch 'zypper pch'
abbr zpchk 'sudo zypper pchk'
abbr zpd 'zypper pd'
abbr zproduct-info 'zypper product-info'
abbr zps 'sudo zypper ps'
abbr zpt 'zypper pt'
abbr zref 'sudo zypper ref'
abbr zrefs 'sudo zypper refs'
abbr zrl 'sudo zypper rl'
abbr zrm 'sudo zypper rm'
abbr zrr 'sudo zypper rr'
abbr zrs 'sudo zypper rs'
abbr zse 'zypper se'
abbr zshell 'sudo zypper shell'
abbr zsi 'sudo zypper si'
abbr zsource-download 'sudo zypper source-download'
abbr ztos 'zypper tos'
abbr zup 'sudo zypper up'
abbr zvcmp 'zypper vcmp'
abbr zve 'sudo zypper ve'
abbr zwp 'zypper wp'
