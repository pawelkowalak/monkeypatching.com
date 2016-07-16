+++
date = "2016-07-16T13:54:27+02:00"
title = "Git Messages Again"

+++

When started this blog I was wondering what should be in the first post? Then I thought: what is a typical commit message of a first commit in a new repository? 90% of the times it says "Initial commit". Well, starting a blog with "Initial Post" would be silly, so let's talk about commit messages instead! What's more, let's talk about later commits, because the first one usually doesn't really matter.

There are plenty of [good blog posts](http://chris.beams.io/posts/git-commit/) [about writing good commit messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) already. I'll just recap in short (but if it's new to you, please check out the posts I've linked):

1. A Subject, blank line, body format.
2. Limit the subject to 50 characters, leave the period out.
3. Use an imperative mood in the subject.
4. Wrap the body at 72th column.
5. In the body explain why, not how did you change something.

What's really important is to understand why it all matters? Why bother with a lack of the period at the end of subject? Why bother with explaining why I fixed this simple bug, when the code is self explanatory? Nowadays teams and aprojects are getting bigger and bigger. If we compare [lines of code](http://www.informationisbeautiful.net/visualizations/million-lines-of-code/) from the past it's obvious that projects are getting bigger and more developers work on them. And the bigger the team is, the more difficult it is to maintain the code. When the team is scaling out it is more important for developers to be good collaborators. And you can tell if a developer is a good collaborator by looking at his/her commit messages.

Another important factor is that a software deployment is tightly linked with SCM tools and workflows. It is popular to push on green (deploy from whatever commit in a master that passed all tests) or use a [git flow](http://nvie.com/posts/a-successful-git-branching-model/).

In the first scenario your software is deployed automatically by the CI when all the tests pass, so you might ask "why bother about commit messages?". Well, if the tests don't catch a bug that got deployed to a production, then you need to rollback. Good commit history will help you to identify where the problem might be. And in the situations when you have to rollback your production, you don't want to analyze the code, because minutes or even seconds matter. You want to identify where the problem is as soon as possible.

If you're using the git flow branching model, then it is also important to have a clean commit history with good messages, because you rely on that information when creating release branches, cherry-picking fixes, etc. Would you be confident deploying the release branch with an "important fix" commit without any more details?

Of course good commit messages is only one thing that helps with a maintenance of a big project and a big team. There are other factors as keeping feature branches up to date using rebase, keeping a clean history by squashing minor commits, or splitting huge changes into multiple independent commits. More on that on this blog soon!