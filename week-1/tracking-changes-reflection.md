# Tracking Changes Reflection
1. How does tracking and adding changes make developers' lives easier?
  * Tracking and adding changes works as a double check to ensure that a developer is changing the right part of the code.
2. What is a commit?
  * A commit is a save point where a developer commits to the changes he/she has made.
3. What are the best practices for commit messages?
  * Be specific, have commit messages read like commands
4. What does the HEAD^ argument mean?
  * It is the previous version of the branch
5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
  * While working on a file it will be unstaged and listed under "Untracked files" in git status. To move the file to staged, you use the command "git add [file]" or "git add ." if you want to add all of the unstaged files at once. Now the file is staged to be committed. To commit the file use the command "git commit -m "add commit message"".
6. Write a handy cheatsheet of the commands you need to commit your changes.
  * git status
  * git add [file]
  * git commit -m "commit message"
  * git push origin branch_name
7. What is a pull request and how do you create and merge one?
  * A pull request is a request that someone else on your team review your branch changes and merge them into the master code. Once you have committed your file changes to your branch and pushed the branch to GitHub, you can create a pull request from the repository page. Your push should have caused a "Compare & pull request" button to appear. If not, use the "New pull request" button. Adjust the base branch (master) and the compare branch (branch_name), complete the title and description, and click "Create pull request."
  * To merge a pull request you click the "Merge pull request" button on the Conversation tab of the pull request page. Then click "Confirm merge."
  * You can delete the feature branch after merging by clicking "Delete branch."
8. Why are pull requests preferred when working with teams?
  * Someone else reviews your work before the branches are merged.