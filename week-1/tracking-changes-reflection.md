#Tracking Changes Reflection

Tracking and adding changes makes developers' lives easier by doing part of their work for them. Instead of having to manually keeping track of every little change they make and communicating it in whatever way they want, tracking the changes means there's one unified place for multiple users to see and collaborate on changes. 

A commit is a specific save point in your project. While working, the version control management system will save each of your actions, but committing manually groups all those changes into the project you're working on. These commits can then be reviewed individually to see what was changed, who made those changes, and why they were made. Best practices when completing a commit message are to always have a capitalized subject line about 50 characters or less, include a longer summary below the subject with more details if it is necessary, and to always use imperative rather than past tense. In the summary, bullets or more paragraphs are allowed. 

The HEAD^ argument refers to the last commit you completed. 

The three stages of a git change are working (which is when you are initially making changes), staged (when it's added to the current commit you're working on), and committed (when the change has actually been added to the current project and is saved). As soon as a file is edited or initially created it will be added to the working directory. To be moved to the staging area, the user should type git add file_name or git add . to include all files in the working directory. Once all desired files are staged, a user can type git commit -m "and include a commit message here". If they wanted to type a longer commit message instead they can type git commit -v, which will open the commit message editing in sublime. 

Handy cheatsheet of commands for committing:
* git status => displays the files that are currently staged or in working status that can be committed
* git add file_name => adds a file to the staging area
* git add . => adds all working files to the staging area
* git commit -m "commit message" => commits staged items and adds the commit message
* git commit -v => commits stages items and opens commit message editor in sublime

A pull request is a way to move your local repositories and commits onto github. Before doing this, the users should merge any changes to the master into their remote repository to make sure no master changes they are missing will cause issues. Before you're able to complete the pull request from Github, you'll have to use your terminal to push the desired branches using a push request. After this, you will see a "Compare and Pull Request" option on Github. If you follow the instructions here, you'll be able to see any changes, make comments, and then allow another user to check your work and actually merge your changes into the master branch. Pull requests are great because having another person check your work adds another double check so your master branch is always functional.