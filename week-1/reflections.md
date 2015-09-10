## 1.1 Think About Time Reflection

To be added later.
This is a test

## 1.2 The Command Line Reflection

To be added later.

## 1.4 Forking and Cloning Reflection
To create a new repository, first log in to GitHub via internet browser. Look to the upper right corner where there is a plus sign, and click on it. There should be a scroll down menu in which you select "New Repository". Add a name for the repository, and choose whether you want it to be public or private. There are other options that I did not understand. I added a MIT License. Finally, hit "Create Repository."

To fork a repository, you first have to find a repository that you would like to fork on GitHub. When you have located the repository, look to the upper right hand corner where there is a button that says "Fork." This should create a copy and send it to your account.

To clone a repository, first find the repository on GitHub. On the righthand side there is a URL in a box labeled "HTTPS Clone URL." Copy this URL. Open up your command line, and move to the directory you want to clone the repo to. Type "git clone " and paste the URL after clone on the same line. Hit enter and it shall be cloned!

I believe that you would fork a repository because it copies all of the work to a new repository in your account. If you were to create a new one, it would be empty. Forking seems to be the easiest way to copy the work to your own account.

I don't see where it asks me to define commit, but I'll do it anyways. To be short a commit is an edit that is added to the repository. It is added on the timeline of changes that have been made to that branch.

At first I found GitHub confusing because I did not realize that git was different than GitHub, and I didn't understand how their relationship. Also I was unsure whether to use command-line, browser, or desktop app, and I saw instructions for each. Learning the relationship between git and GitHub was key. Also, now that I understand forking and cloning better, things are starting to make more sense.

I still wonder a bit about how it is used. For instance, if I am working on a project with someone, we'll create a repository on which we can share our work. Then we each fork it to our accounts (maybe optional) and clone it to our systems. Then we create other branches on our system so we can work on it without altering our individual masters. Then we commit the branch to our own  master, and then push this Master to GitHub? It doesn't seem right. I'll find out soon enough I'm sure.

## 1.5 Tracking Changes

How does tracking and adding changes make developers' lives easier?
  Tracking and adding helps save progress along the way. It also lets you look back to certain changes and recognize what happens at that point.

What is a commit?
  A commit is a check point, a way to save your work. It is not as final as pushing it to the repository, but it saves the work that has been completed as a snapshot.

What are the best practices for commit messages?
  Have a header that is Capitalized, concise and <50 char.

  The body should be separated by a blank line. Paragraphs should be wrapped around 72 characters. Write commit messages in imperative.
  * bullet points are okay too
  * and lists.

What does the HEAD^ argument mean?
  HEAD^ refers to the previous commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
  When a change is made, it is an unstaged change.
  Then you git add the file to stage it. This makes a staged change.
  When you commit the changes then you have a committed change.

Write a handy cheatsheet of the commands you need to commit your changes?
  Okay.

What is a pull request and how do you create and merge one?
  A pull request is a request to add code from a branch to another branch (sometimes master branch). You can create one on GitHub by clicking on pull requests and choosing which branch you want to pull the new code from. You or someone else can agree to this request, accept the pull, and delete the old branch.

Why are pull requests preferred when working with teams?
  Pull requests are good because it lets other people look at your work and confirm your submission before adding it to a branch of the repo.

