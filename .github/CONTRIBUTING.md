# How to contribute

I absolutely love merging pull requests from you all. It's awesome to see receive contributions to the software. 

## Getting Started

* Submit a ticket for your issue, assuming one does not already exist.
  * Clearly describe the issue including steps to reproduce when it is a bug.
  * Make sure you fill in the earliest version that you know has the issue.
* Fork the repository on GitHub

## Making Changes 

* Create a topic branch from where you want to base your work.
  * This is usually the master branch.
  * Only target release branches if you are certain your fix must be on that
    branch.
  * To quickly create a topic branch based on master; `git checkout -b
    fix/master/my_contribution master`. Please avoid working directly on the
    `master` branch.
* Make commits of logical units. Please do not lump issues that have nothing to do with each other on a single branch.
* Make sure that your commit messages reference the the issue(s) you are working on.
* Make sure that all tests pass and that checkstyle completes successfully. Use `mvn clean package` to verify.

Borrowing heavily from the [contributing for Puppet](https://github.com/puppetlabs/puppet/blob/master/CONTRIBUTING.md).