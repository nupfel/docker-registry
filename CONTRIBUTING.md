# Contributing to distribution

## Are you having issues?

Please first try any of these support forums before opening an issue:

 * irc #docker on freenode (archives: https://botbot.me/freenode/docker/)
 * https://forums.docker.com/
 * if your problem is with the "hub" (the website and other user-facing components), or about automated builds, then please direct your issues to https://support.docker.com

## So, you found a bug?

First check if your problem was already reported in the issue tracker.

If it's already there, please refrain from adding "same here" comments - these don't add any value and are only adding useless noise. **Said comments will quite often be deleted at sight**. On the other hand, if you have technical, relevant informations to add, by all means do!

Your issue is not there? Then please, create a ticket.

If possible the following guidelines should be followed:

 * try to come up with a minimal, simple to reproduce test-case
 * try to add a  title that describe succintly the issue
 * if you are running your own registry, please provide:
  * registry version
  * registry launch command used
  * registry configuration
  * registry logs
 * in all cases:
  * `docker version` and `docker info`
  * run your docker daemon in debug mode (-D), and provide output logs if relevant
 

## You have a patch for a known bug, or a small correction?

Fork the repository, then submit a PR, clearly pointing to the issue you are trying to solve.

## You want some shiny new feature to be added?

So, so.

Fork the project.

Create a new proposal in the folder open-design/specs, named DEP_XXX_MY_AWESOME_PROPOSAL.md, using open-design/specs/TEMPLATE.md as a starting point. XXX should be an incremental number, and MY_AWESOME_PROPOSAL should be a short title describing your proposal.

Then immediately submit this new file as a pull-request, in order to get early feedback from the counselors.

Eventually, you will have to update your proposal to accomodate with the feedback you received.

Once your proposal PR is accepted and merged, you may start working on implementing it, and submit a new PR.

That, like the proposal, will be reviewed by the community, and ultimately approved by the counselors.

 