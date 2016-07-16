+++
date = "2016-07-16T13:54:27+02:00"
title = "Git Messages Again"

+++

When started this blog I was wondering what should be in the first post? Then I thought: what is a typical commit message of the first commit in a new repository? 90% of the times it says "Initial commit". Well, starting a blog with "Initial Post" would be silly, so let's talk about commit messages instead! What's more, let's talk about later commits, because initial commit usually doesn't really matter.

There are plenty of [good blog posts](http://chris.beams.io/posts/git-commit/) [about writing good commit messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) already. I'll just recap in short (but if it's new to you, please check out the posts I've linked):

1. Subject, blank line, body format.
2. Limit subject to 50 characters, leave the period out.
3. Use imperative mood in subject.
4. Wrap the body at 72th column.
5. In the body explain why, not how did you change something.

What's really important is to understand why it all matters? Why bother with lack of period at the end of subject? Why bother with explaining why I fixed this simple bug, when the code is self explanatory? Nowadays teams and projects are getting bigger and bigger. If we compare [lines of code](http://www.informationisbeautiful.net/visualizations/million-lines-of-code/) from the past it's obvious that projects are getting bigger and more developers work on them. And the bigger the team is, the more difficult it is to maintain the code. When the team is scaling out it is more important for the developers to be good collaborators. And you can tell if a developer is good collaborator by looking at his/her commit messages.

Another important factor is that software deployment is tightly linked with SCM tools and workflows. It is popular to push on green (deploy from whatever commit in master that passed all tests) or use [git flow](http://nvie.com/posts/a-successful-git-branching-model/).

In the first scenario your software is deployed automatically by CI when all tests pass, so you might ask "why bother about commit messages?". Well, if tests don't catch a bug that got deployed to production, then you need to rollback. Good commit history will help you to identify where the problem might be. And in situations when you have to rollback your production, you don't want to analyze the code, because minutes or even seconds matter. You want to identify where the problem is as soon as possible.

If you're using git flow branching model, then it is also important to have clean commit history with good messages, because you rely on that information when creating release branches, cherry-picking fixes, etc. Would you be confident deploying release branch with "important fix" commit without any more details?

Of course good commit messages is only one thing that helps with maintenance of big project and big team. There are other factors as keeping feature branches up to date using rebase, keeping clean history squashing minor commits, or splitting huge changes into multiple independent commits. More on that on this blog soon!