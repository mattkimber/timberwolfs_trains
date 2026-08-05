# Contributor Code of Conduct

This project welcomes external contributions and aims to be a welcoming and
inclusive place for all participants. However, certain rules apply to keep
maintenance sustainable and ensure this is a welcoming place for all.

## Respect for others

Discrimination or harassment on the basis of nationality, race,
sexual orientation, gender identity, age, class, disability, appearance
or similar characteristic will not be tolerated.

Consistently unwelcoming behaviour or repeated acting in bad faith will
result in being blocked.

Contributors found to have a history of public LGBTQ+ or similar harassment
will be blocked and where practical their prior contributions to the project
will be removed.

## Contribution Guidelines

Contributions are accepted via pull request to this repository.

This is an unpaid volunteer project developed and maintained in spare time.
To keep this workload manageable contributions must be **substantially
complete** and **not burdensome to support**.

This aims to provide a balance between allowing those who require a small
amount of guidance or help with some of the more esoteric elements of a
project to contribute, while not spending all available maintenance effort
(see "unpaid spare time" above) on "needy" contributions requiring a
disproportionate amount of maintenance effort for the value they bring.

### Examples

Examples of a contribution that is "substantially complete":

* "I have added a new feature to this code to handle the scenario when
   x is set to y"
* "I have enabled using the footbridge sprites as waypoints. I've tested
   myself but the code might benefit from a check over."
* "Here are some new models and my proposed tracking table entries. I've
   rendered the sprites locally using your manifest and checked they fit
   in well with the others, but was a bit stumped at some of the tracking
   table fields so couldn't add it to the set."

Examples of "non-burdensome" support:

* "In method xyzzy of the render code on line 123 you do this, but I think
   this might be causing a shadow rendering bug, is there anything I'm
   missing?"
* "Looking at the build there's this compositor process, I think based on
   the existing examples I need to add some entries to x/y/z, is this the
   right approach?"

There is an expectation (but not a requirement) that where a contribution
required some support, documentation of what was unclear and how to resolve
it will be added to a suitable file in a `/docs` directory within the
project, creating one if it does not exist - if in doubt, a `/docs/FAQS.md`
is a reasonable place to start.

### Counter-examples

Examples of a contribution that is **not** "substantially complete":

* "I've got a great idea for this feature, all you need to do is code it
   up now I've done the design work."
* "Here is a giant list of vehicles you should include in the set."
* "Here is a voxel object, it doesn't fit with the existing scale or style
   of the set and needs some detail added but I'm sure you can easily do
   that and add it."
* "I started writing this code, it's currently not compiling but I think
   this is enough for you to work with and complete."

Examples of "burdensome" support:

* "Your build process is too obtuse, you need to rewrite it so I don't have
   to deal with all this."
* "I don't want to waste time looking at the existing models, can you just
   tell me what colour/size/whatever is used for this?"
* General support for tools (Go, MagicaVoxel, etc.)
* Repeated queries for things which can be easily discovered by
  experimentation or reading existing documentation.
* Urgency or demands that tasks be completed within a specific timeframe.

In general, a contribution which requires more work on the part of the
maintainer(s) than it does on the part of the contributor is unlikely
to be accepted, especially in the case where the work required exceeds
that required for the maintainer(s) to do the whole task themselves.

## Generative AI and LLMs

There are two non-negotiable policies relating to generative AI:

* AI-generated assets **MUST NOT** be included in a submission, as it is
  not feasible to verify that an output does not contain elements of work
  stolen from artists or otherwise reproduced without consent.
* AI-generated code **MUST NOT** be used for any code submitted as part
  of a pull request, as it cannot be guaranteed that the output does not
  replicate code tainted by an incompatible licence.

These conditions may be waived on discretion in the case of a fully
open-source (not merely open-weight) model which can provide attestations
that all data has been obtained ethically on an opt-in basis.

It is accepted that LLM-based tooling and generative AI is in widespread
use and some developers may prefer to use it for support, prototyping, or
creating their own tools to assist in the build process. However, an air
gap **MUST** be maintained at all times to prevent AI-generated code or
assets from leaking into any submitted pull request.

### AI Translation and text generation

Do not use LLM-based tools to create documentation, commit messages,
issues/pull requests or comments where you are able to write a recognised
dialect of English to any level. It is vastly preferable to receive
non-native English which can be parsed for intent and primary language
idioms than AI-generated text which frequently alters meaning and favours
verbose, repetitive output which is time-consuming to read and parse.

All contributors are expected to respect that English may not be someone's
primary language, and that more than one dialect of English exists in the
world. Pedantic corrections, nitpicks or snarky comments will
result in the offender being blocked from the project.

Where appropriate the maintainer(s) will naturalise text used in the project
itself to British English. This is **not** considered "burdensome" in
relation to support, rather a necessary task of maintaining a project in
an international environment.

## Licensing

Terms of licences **MUST** be respected. This includes this project and
any attribution, share-alike or source code availability terms set by
its licence. Do not include any code or assets from a source where the
licence is incompatible with the licence used in this project (e.g.
bringing GPL code into a MIT-licensed project).

By submitting a contribution you agree to licence it under the terms
of the licence in its respective project, as detailed in LICENCE
or LICENCE.md, and also that it may be modified either as part of
the submission process or over time to suit the goals of the project.

## Post-amble

This code of conduct may be updated as necessary. This is not intended
to be an exhaustive ruleset - "but it's not mentioned in the code of
conduct" is not a valid defence for bad behaviour. If you conduct
youself as a decent human and respect the nature of this project you
are very unlikely to fall foul of any of this.