# The "Distribution" project

## What is this

A docker "primitive" that handles anything related to the distribution of images.

### Punchline

Pack. Sign. Ship. Store. Deliver. Verify.

### Technical scope

This project encompasses:

 * libtrust, providing cryptographical primitives to handle image signing and verification
 * image format, as transferred over the wire
 * docker-registry, the server side component that allows storage and retrieval of packed images
 * authentication and key management APIs, that are used to verify images and access storage services
 * PKI infrastructure
 * docker core "client" code gluing all this together, including network communication code, tarsum, etc

### Vision

Exchanging images in the docker ecosystem is the backbone of the technology.

### Mission

Build end-to-end a versatile, reliable and scalable distribution platform that the community can use and depend on, and that ISVs can build on-top of.

### Values

 * the [Programmer Manifesto](http://programming-motherfucker.com/)
 * "use-case" is first and foremost
 * ship it!

## Organisation

### Benevolent dictatorship

Function:

 * use gentle but firm pinch when things go sideways 

Rights:

 * ability to merge approved PRs
 * veto capacity on proposals and PRs

Responsibilities:

 * drive the release process
 * ensure approved PRs are merged timely
 * arbitrate conflicts in the community
 * resolve disputed technical issues
 * drive irc meetings
 
Expected commitment:

 * full-time

Currently:

 * dmp42, for Docker, inc

### Counselors

Function:

 * drive the project roadmap and processes
 * validate proposals
 * make things flow

Rights:

 * ability to cast a vote on proposals
 * ability to review and "validate" PRs
 * vote on other decisions (including roadmap decisions)

Responsibilities:

 * actively participate in reviewing proposals and PRs
 * actively participate in process (change) discussions
 * actively participate in roadmap decisions

Currently:

 * claim your seat! (google? redhat? deis? yandex? tutum? you?)
 * dmp42, for Docker, inc

Nitty gritty:

 * once you have a seat, you keep it, as long as you are actively participating
 * if you stop actively participating, you loose your seat
 * everyone is welcome, but you need to demonstrate your commitment through either outstanding contributions or an active project built on-top of Distribution.
 * each company is limited to one-seat - so, please synchronize internally with your other buddies to get your votes right 
 

### Outstanding community members


Function:

 * be outstanding

Rights:

 * propose, discuss, submit code, challenge

Responsibilities:

 * lookout for the good of the project
 * help newcomers

Currently (add your name):

 * samalba
 * wking
 * bacongobbler
 * noxiouz
 * ncdc
 * shin-
