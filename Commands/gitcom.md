grow, mark and tweak your common history
   branch    List, create, or delete branches
   commit    Record changes to the repository
   merge     Join two or more development histories together
   rebase    Reapply commits on top of another base tip
   reset     Reset current HEAD to the specified state
   switch    Switch branches
   tag       Create, list, delete or verify a tag object signed with GPG

collaborate (see also: git help workflows)
   fetch     Download objects and refs from another repository
   pull      Fetch from and integrate with another repository or a local branch
   push      Update remote refs along with associated objects

'git help -a' and 'git help -g' list available subcommands and some
concept guides. See 'git help <command>' or 'git help <concept>'
to read about a specific subcommand or concept.
See 'git help git' for an overview of the system.
(26Docker) (base) kolyada@MacBook-Air-MARIA 26Docker % git add .
(26Docker) (base) kolyada@MacBook-Air-MARIA 26Docker % git commit -m "Build action"
[main 1e0ae15] Build action
 5 files changed, 2298 insertions(+)
 create mode 100644 .DS_Store
 create mode 100644 Commands/terminal.md
 create mode 100644 Commands/terminal2.md
 create mode 100644 Commands/terminal_main.md
 create mode 100644 Commands/termonal3.md
(26Docker) (base) kolyada@MacBook-Air-MARIA 26Docker % 
(26Docker) (base) kolyada@MacBook-Air-MARIA 26Docker % git push origin main
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 4 threads
Compressing objects: 100% (8/8), done.
Writing objects: 100% (8/8), 22.22 KiB | 3.70 MiB/s, done.
Total 8 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/Masyanja/26Docker.git
   9ec8f0c..1e0ae15  main -> main
(26Docker) (base) kolyada@MacBook-Air-MARIA 26Docker % 

IN ACTIONS in Github

All workflows

Showing runs from all workflows
2 workflow runs
Event 
Status 
Branch 
Actor 

Build action
CI #2: Commit 1e0ae15 pushed by Masyanja
main	
 1 minute ago
 57s


Docker26
CI #1: Commit 9ec8f0c pushed by Masyanja
main	
 11 minutes ago
 19s


Потом deploy
