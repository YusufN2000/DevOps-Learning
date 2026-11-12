Git

Terminology:

Repository - a folder where your project and all its files are stored, alongside a record of all the changes you've made to them.
Commit -  a saved snapshot of your project at a particular moment in time.
Branch - a separate copy of your project's work so you can make changes without affecting the main version.
Remote - a version of your Git repository that is stored somewhere else, usually online.
Staging Area - a place where you prepare and select which changes you want to include in your next commit.
Blob - an object that stores the actual content of a file.
Trees - a Git object that stores information about your project's folder structure, including filenames and where their contents are stored.
Refs(Reference) - a name that points to a specific commit in your Git repository.
HEAD - tells you where you currently are in your project's history.
Index - a binary file that holds the staging area info.
Object Store - stores all the objects that make up your project's history and data.
Tag - a way of giving a specific point in your project's history a name.


Git Directories:

All these directories are found inside the hidden .git directory, which Git creates when you initalise a repository.

.git/refs/ - stores references that point to specific commits in your repository.
.git/objects/ - stores the actual objects that make up your project's history.
.git/config - stores settings that apply to your particular Git repository.
.git/HEAD -  tells Git which commit or branch your current working position is associated with.
.git/index - stores information about the files and changes you've selected for your next commit (Staging Area).

Git Common Commands:

git init - turn an ordinary folder into a Git repository.
gid add - tells Git which changes you want to prepare for your next commit (save point).
git commit - saving a checkpoint.
git status - shows what is happing in the repository.
git log - shows history of all the changes that have been saved.
gif diff - shows what has been changed in your file.
git config - allows you to configure your Git settings
git help<command> - instruction manual for a particular command.
git clone - copies an existing Git repository onto your computer 
git rm - removes files from your project and stages that removal for your next commit .
git mv - move or rename a file and stages that change.
git restore -  undo changes to a file.

Areas of Git:

Working Directory - your actual project files where you make changes.
Staging Area (Index) - temporary holding area for where you prepare changes you want to include in your next commit.
Repository - your committed changes are stored as part of your project's history.

Viewing History:

git log --oneline --graph --all - shows you your Git commit history in a short, visual format.
git log --graph - visual tree structure to see where branches spilt.
git show <commit> - shows you the details of a specific commit (a saved change) in your Git history. 
git diff --staged - shows you exactly what changes you have added to the Staging Area but haven't committed yet.
git blame <file> - who last changed each individual line of a file and when they changed it.
git reflog - a history of everything you've recently done in Git.

Branching:

Branching off from the main code base to test and modify before staging it back into the main code.

git branch - list/create branches
git checkout -b <branch> - create & switch (old syntax)
git switch -c <branch> - create branches (modern version)
git switch <branch> - switch branches safely
git branch -d <branch> - delete branch

Merging 

Combine changes from one branch into another creating a new merge commit, creating more of a Y shaped history. Used more for collaboration.

git merge <branch> - merge target branch into current branch.
fast forward merge - move your main branch forward to include changes from another branch without needing to create a separate merge commit.
recursive merge - When two branches have developed separately, Git combines their changes into one branch. if the same file has been edited on both branches, it will create a merge conflict which would need to be resolved manually.

Rebase 

Takes your changes and puts them on top of the latest changes from another branch, creating a cleaner, straighter history. Used more for independent work and cleaning up history making it readable for others to collaborate.
After rebasing, you would still need to merge to update the branch to the latest change, otherwise the branch would have the latest change but the 'bookmark; hasn't moved. 

Git Advanced usage

git stash - temporarily save uncommitted changes.
git stash list - view all stashes.
git stash apply - reapply the latest stash (Keeps stash).
git stash pop - reapply and delete stash.
git revert - undo previous commit by creating a new commit that reverses the changes made in that earlier commit.
git reset - 3 types of reset. Soft - removes the commit but keeps its changes staged. Mixed - removed commit and upstages its changes, but keeps the files changed. Hard - Removes the commit and discards its changes from your working files (Nukes EVERYTHING!).
git cherry-pick - take a commit from another branch and apply to your branch.
Fork is a copy of someone else's git repository on a shared platform.
Clone personally copies a repository locally so changes can be made without affecting the original. Once changes have been made you can then push the fork to the shared platform (Github).
Pull Request (PR) is requesting the changes to be reviewed and added to another branch or repository.
The usual path for collaborative projects look like: Fork -> Clone -> Make Changes -> Commit -> Push Own Fork -> Pull Request (PR) -> Review -> Merge into Main.
When collaborating, use branches to isolate work, push to remote and open pull request, assign reviewers and use GitHub UI for comments, resolve conflicts before merging, use issues; projects; discussions to track work and finally keep commits focused and clean.
Trunk-Based Development (TBD) is 




