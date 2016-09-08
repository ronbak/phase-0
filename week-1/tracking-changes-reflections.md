How does tracking and adding changes make developers' lives easier?
 Tracking allows you to see all the changes made to a file by using the command "git status". This allows you to see any files that were either modified or added to the branch. Having this information makes life easier because you can see what was worked on and determine if the files are ready to be committed. 

What is a commit?
 A commit is a “save point” in git.

What are the best practices for commit messages?
 The first line of the commit message should be a short description (50 characters or less).
 The body should include a more detailed message which uses the imperative, present tense and why the change was made.

What does the HEAD^ argument mean?
 The HEAD^ command is used if you commit a file and decide you actually want to make changes to it. It will go back to the last commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
 The three stages of a git change are modified, added, committed. To move a modified file you use the “git add” command, to move that file to commit you use the “git commit” command in the terminal. 

Write a handy cheatsheet of the commands you need to commit your changes?
  git add - adds modified file to be staged for commit
  git commit -m “commit message” - save the changes made to the branch  

What is a pull request and how do you create and merge one?
  A pull request is a way to merge code from a different branch into the master branch. You create a pull request in GitHub using the “Compare and pull request” button. This will bring you to a new screen where you need to verify the base branch and the compare branch (new branch), you should add a title and description in the boxes provided, then you click the “Create pull request” button. You merge a pull request by clicking the “merge pull request” button on the “Conversations” tab. Once this is clicked you will be prompted to “Confirm merge”.

Why are pull requests preferred when working with teams?
  A pull request is preferred when working with teams because it creates a linkable page that allows others to review code together.