# 1.1 Think About Time Reflection
In this first assignment I chose to look into meditation and timeboxing. Meditation is a new to me and I feel that with learning something completely new like coding, also learning how to clear my mind would be a useful tool. After researching timeboxing, I realized I use this method in my everyday life. I set time limits on tasks and once the time is up I evaluate how much progress has been made. This will be a very useful tool in Phase 0 since I am a true beginner to coding. Setting a specific amount of time for tasks and evaluating the progress made, will help me create a gauge for how long certain things should take. I will also help me take a step back and make sure I’m progressing in the correct direction during these first 9 weeks.

# 1.2 The Command Line Reflection
A shell is program that takes commands inputted by a user that the operating system performs. Bash is a Unix shell that is used on Linux and OS X.  The most challenging part of this material is that it is brand new to me. I have never used the command line so learning how to navigate is a tricky. I was able to successfully use all the commands in the “Command Line Crash Course”.  For me the most important commands are ls and help.

pwd - print working directory
ls - list directory
mv - move file or directory
cd - change directory
../ - go back to previous directory
touch - change file timestamp
mkdir - make directory
less - page through a file
rmdir - remove directory
rm - remove file
help - read a manual page

# 1.4 Forking and Cloning Reflection
To fork a repo you first must find the repository you wish to make a copy for yourself. once this is found, click the box in the top right corner labeled “Fork”. This will create a new copy of the repo in your own GitHub account.

Cloning a repo allows you to put the repo on your computer for editing. this is done in the command line on your computer. The first step is to copy the clone URL link on the GitHub website. Next open your terminal and determine what directory you are in. Once you are in the directory you want to clone the repo to enter the command “git clone COPIED URL”. After the command prompt appears again enter “ls”. You will see the folder with same name as the repo you cloned.

Forking a repo is making a copy of an already created repo. This will allow collaborate with others on the same project.

<<<<<<< HEAD
I didn't struggle setting up git and GitHub. While setting everything up, I realized I’m becoming more familiar with the command line and I’m feeling more confident.

# 1.5 Tracking Changes
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
 The three stages of a git change are modified, added, commited. To move a modified file you use the “git add” command, to move that file to commit you use the “git commit” command in the terminal. 

Write a handy cheatsheet of the commands you need to commit your changes?
  git add - adds modified file to be staged for commit
  git commit -m “commit message” - save the changes made to the branch  

What is a pull request and how do you create and merge one?
  A pull request is a way to merge code from a different branch into the master branch. You create a pull request in GitHub using the “Compare and pull request” button. This will bring you to a new screen where you need to verify the base branch and the compare branch (new branch), you should add a title and description in the boxes provided, then you click the “Create pull request” button. You merge a pull request by clicking the “merge pull request” button on the “Conversations” tab. Once this is clicked you will be prompted to “Confirm merge”.

Why are pull requests preferred when working with teams?
  A pull request is preferred when working with teams because it creates a linkable page that allows others to review code together.
=======
I didn't struggle setting up git and GitHub. While setting everything up, I realized I’m becoming more familiar with the command line and I’m feeling more confident.
>>>>>>> master
