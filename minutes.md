Minutes of the Technical Standing Committee
===========================================

**2017-12-12**  The TSC reported to the Board that the next batch of public
drafts was still some way off due to unforeseen complexities with the
ELF Serialisation extensibility mechanism.  It was agreed that the TSC
should aim to release public drafts in late January of the 
[Basic Concepts](/TR/basic-concepts),
[Triples Discovery](/TR/triples-discovery),
[CEV Concepts](/TR/cev-concepts) and (if there are enough changes to
warrant its inclusion) [CEV RDFa Bindings](/TR/cev-rdfa-bindings)
standards which have seen significant development since the last round
of public drafts in September.

**2017-10-31**  Held a TSC meeting by Google Hangout during which we
discussed details of the extensibility mechanism for 
[ELF Serialisation](/TR/elf-serialisation) and the patterns used for
datatypes in [Basic Concepts](/TR/basic-concepts).

**2017-09-12**  Held a TSC meeting by Google Hangout to discuss our next
priorities.  It was agreed:

*  that we would prioritise ELF over GEDCOM X, with
   the aim of including first public drafts of 
   [ELF Serialisation](/drafts/elf-serialisation) and
   [ELF Data Model](/drafts/elf-data-model) in the next batch of
   standards to be released;
*  that we would produce a low-level standard refactoring material on
   strings, characters and terms from
   [Citation Elements: General Concepts](/TR/cev-concepts-20170911), and
   including further material from our 
   [vocabularies policy](/policies/vocabularies);
*  that we would explore the possibility of a lightweight discovery
   mechanism using 
   [Canonical N-Triples](https://www.w3.org/TR/n-triples/#canonical-ntriples)
   accessed over HTTP; and 
*  that we define a regular expression dialect for use in datatype
   patterns.

**2017-09-11** 
[Announced](/pipermail/tsc-announce_fhiso.org/2017-September/000011.html)
second public drafts of the 
[Citation Elements: General Concepts](/TR/cev-concepts-20170911) and 
[Citation Elements: RDFa bindings](/TR/cev-rdfa-bindings-20170911) 
standards for public review.  Major changes included

*  removing the notion of a layer identifier and defer consideration of
   metadata support for the time being;
*  changing all our `http:` IRIs to `https:` due to security and privacy 
   concerns; and
*  expanding the notion of a translation set into a more general 
   localisation set to allow a combination of structured and
   unstructured values.

**2017-07-10** Approved the folowing classes of document as suitable 
to be referenced normatively by FHISO standards:

*  any other FHISO standard;
*  any ISO standard;
*  any IETF RFC that is categorised as Standards Track or Best Current
   Practice;
*  any W3C recommendation;
*  the Unicode Standard, including any Unicode Standard Annex;
*  the US ASCII standard (ANSI X3.4-1986); and
*  the withdrawn ANSEL standard (ANSI/NISO Z39.47-1993), for the
   purposes of our ELF standards only.

**2017-07-04** Agreed that we would not continuously edit the drafts on
the website, but will batch up changes and issue revised drafts from
time to time.

**2017-06-29** 
[Announced](/pipermail/tsc-announce_fhiso.org/2017-June/000010.html)
first public drafts of the 
[Citation Elements: General Concepts](/TR/cev-concepts-20170626) and 
[Citation Elements: RDFa bindings](/TR/cev-rdfa-bindings-20170626) 
standards for public review.

**2017-06-29** Agreed in discussion with the Board that standards and
draft standards will have stable URLs beginning `http://fhiso.org/TR/`,
and configured the webservers accordingly.

**2017-06-13** Held a TSC meeting by Google Hangout.  Discussion focused
on certain details of the [ELF Serialization](/drafts/elf-serialization)
draft, which now includes an extensibility mechanism.  It was agreed:

*  that the order of tags should not be significant except where GEDCOM
   attaches significance to them so that a GEDCOM parser can read, edit
   and write ELF;
*  that we should have a consistent definition of a string throughout
   our standards;
*  that applications must be flexible about whitespace when reading ELF,
   but strict when writing it;
*  that there should be a general escape mechanism for escaping
   characters in ELF; and
*  that payloads must not be whitespace normalised at the serialisation
   layer.

**2017-06-13** Noted from the 
[13 June Board meeting](/fhiso-board/minutes/2017-06-13/):

*  that the Board agrees it is not necessary to announce formally the creation
   of the [Technical Project Team](/governance/tpt);
*  that the TSC should release first drafts of standards for public
   comment as and when they became ready, rather than waiting and
   releasing a large batch all together.

**2017-06-08** Approved [vocabularies policy](/policies/vocabularies) as
a FHISO technical policy, and an updated [priorities](/priorities)
document as a non-binding indication of the TSC's current direction.
Also approved the creation of a [Technical Project
Team](/governance/tpt) as a formal means of allowing the current
exploratory work to continue into the project development phase in a
"committee of the whole".

**2017-05-29** Noted that Luther had produced first exploratory drafts
of an [ELF: Serialization Format](/drafts/elf-serialization) and [ELF:
Data Model](/drafts/elf-data-model).  These did not currently include an
extensibility mechanism.

**2017-05-25** Noted that Richard had produced a first exploratory draft
of a [Citation Elements: General Concepts and Basic 
Framework](/drafts/cev-concepts) standard, and had closed the
`dev-2017-01` branch.  The draft does not currently support layered
citations.

**2017-05-22** Noted that Richard had produced a first exploratory draft
of a [Citation Elements: RDFa bindings](/drafts/cev-rdfa-bindings)
standard.

**2017-05-19** Noted that Richard had made available a first exploratory
draft of a [Citation Elements: GEDCOM X
bindings](/drafts/cev-gedcomx-bindings) standard.  Further work is
required before becoming a public draft as this draft is based on an
earlier version of the data model without translation sets.

**2017-05-17** Held a TSC meeting by Google Hangout.  During a
productive conversation about the serialisation of citation elements it
was recognised that users may be reluctant to discard formatted citation
in favour of citation element sets due to the work that goes into
producing professional formatted citations.  Could we allow elements to
be tagged in a formatted citation?  It was agreed to explore the use of
RDFa attributes in HTML as a possible means of doing this.

**2017-03-16** Noted from the 
[16 March Board meeting](/fhiso-board/minutes/2017-03-16/) that it was
agreed that standards produced by FHISO would be licensed under the
[Creative Commons Attribution
Licence](https://creativecommons.org/licenses/by/4.0/). 

**2017-02-16** Held a TSC meeting by Google Hangout.  

*  Agreed that the scope of our initial ELF standards should be limited
   to clarifying ambiguities in GEDCOM, codifying current practice,
   updating its presentation, and adding an extension mechanism; other
   extensions and changes would be out of scope.  
*  Agreed that the ELF spec should be split in two with the abstract
   syntax and the genealogical tag list being separate standards.  
*  Noted that Richard had made some progress on citation elements on the
   `dev-2017-01` branch in Github, and had introduced the concept of a
   translation set to resolve problems in the data model with citation
   elements that were both translatable and multi-valued.

**2017-01-31** Noted that Luther than produced a first exploratory draft
of an ELF standard.

**2016-12-27** Identified our current technical priorities to be: 

1.  a core citation element vocabulary (CEV) standard; 
2.  a less technical primer or overview to the CEV and its bindings; 
3.  CEV bindings for GEDCOM X; 
4.  CEV bindings for ELF; and 
5.  an ELF extensibility mechanism.

**2016-12-26** Proposed that FHISO develop a serialisation format that
is backwards compatibility with current GEDCOM, but that supports an
extensibility mechanism that would prevent different vendors' extensions
from conflicting.  After informal discussion with the Board, the working
name ELF (Extended Legacy Format) has been chosen for this work to avoid
any intellectual property issues that might arise by calling it a
version of GEDCOM.

**2016-12-15** Instigated discussion with the Board regarding the how
FHISO's present proposed technical work would fit into the wider
genealogical ecosystem, and why vendors might choose to adopt our work.

**2016-11-11** Held a phone meeting to try to kick-start development
again, and to remind ourselves where we had reached.

**2016-05-09**
[Announced](/pipermail/tsc-public_fhiso.org/2016-May/005022.html)
a first exploratory draft of the introduction to the Citation Element
Vocabulary standard, giving details of the data model.

**2016-04-19** Proposed and had passed
[a motion](/fhiso-board/minutes/2016-04-19/#MotionE) at the Board
Meeting to add by-laws material regarding the ratification of standards
(which was previously in the O&PM but should not be within the scope of
the TSC to change).

**2016-04-19** Proposed and had passed
[a motion](/fhiso-board/minutes/2016-04-19/#MotionD) at the Board
Meeting to remove reference to details of technical governance, such as
the O&PM and Project Teams.

**2016-03-22** Suspended the [S&CEG](/egs#sources) in order to focus on
our [priorities](/priorities) in a "committee of the whole" per our 
[interim governance structure](/governance).

**2016-02-17**
[Announced](/pipermail/tsc-public_fhiso.org/2016-February/002113.html)
our [interim governance structure](/governance) which will apply as 
we work towards our new [priorities](/priorities).

**2016-02-16** Approved our [priorities](/priorities) and [technical
strategy](/strategy) documents as non-binding statements of TSC guidance.
Approved [vocabularies policy](/policies/vocabularies) as a draft for 
wider comment on tsc-public.

**2016-01-19** Presented our draft [priorities](/priorities), [technical
strategy](/strategy), and [vocabularies policy](/policies/vocabularies)
at the [19 January Board meeting](/fhiso-board/minutes/2015-11-27/), where it
was agreed that we should make any final changes and release them to
[tsc-public](/tsc-public) for further discussion.

**2016-01-07** Produced a short draft document listing [our immediate
priorities](/priorities), and a longer draft [technical strategy
paper](/strategy).

**2015-12-07** Published a draft policy on the [prefered use of
vocabularies](/policies/vocabularies), and amended the [style
guide](/policies/style) to say that "FHISO standards will normally be
made available in both HTML and PDF formats".

**2015-11-27** Noted that the [27 November Board
meeting](/fhiso-board/minutes/2015-11-27/), in consultation
with the TSC, recommended: 

*  that the TSC should produce a short high-level strategy paper; 
*  that technical work should focus on narrow citations standards
   covering vocabularies for textual citation elements and, less
   pressingly, describing source derivation; 
*  that the TSC should draft a general policy on the preferred nature of
   vocabularies, such as the use of URIs; and 
*  that these TSC minutes should be made public.

**2015-11-22** Deployed the new [technical
website](http://tech.fhiso.org/).

**2015-11-21** Thanked the Board for approving the updated [Operations &
Policy Manual](/opm).

**2015-11-20** Proposed some minor modifications to the [Operations &
Policy Manual](/opm) to the Board for approval.

**2015-08-21** Produced the first draft of a [new technical
website](http://tech.fhiso.org/) for the TSC, automatically updating its
content from Github repositories.

**2015-08-17**
[Suggested](/pipermail/sources-citations_fhiso.org/2015-August/000289.html)
to the S&CEG that FHISO's general policy should be to use URIs as
metadata identifiers.

**2015-06-19** Suspended the [CCEG](/egs#core) in order to
prioritise the work of the [S&CEG](/egs#sources); the CCEG mailing
list had been silent for three months, they have no Coordinator, and
none of its members have been active recently.

**2015-06-15** Reported to the [S&CEG](/egs#sources) on a [possible
opportunity to work with
FamilySearch](/pipermail/sources-citations_fhiso.org/2015-June/000194.html)
on a representation of source metadata.

**2015-04-10**
[Announced](/pipermail/tsc-announce_fhiso.org/2015-April/000004.html)
the creation of the [Sources & Citations EG](/egs#sources), and
approved their [directives](/sceg-directives).

**2015-02-27** Accepted with regret the resignation of Justin York to be
Coordinator of the [CCEG](/egs#core). Without a Coordinator or any
active members, the CCEG is effectively dormant.

**2015-01-14** Appointed Sue Adams to be Coordinator of the [Sources &
Citations EG](/egs#sources).

**2015-01-14** Agreed on [a suggested prioritisation of CCEG
work](/pipermail/core-concepts_fhiso.org/2015-January/000254.html).

**2015-01-06** Noted that the Board, in consultation with the TSC, have
recommended the prioritisation of three areas of technical work: 

1. further standardisation of GEDCOM and/or GEDCOM-X; 
2. a new sources and citations standard; 
3. a new research transfer format. 

**2014-11-26** Noted a commitment from Nick Hall to work on the [Sources
& Citations EG](/egs#sources).

**2014-10-16** Resolved that the collection of use cases and user
stories and the recommendation of functional requirements in a
particular subject area shall ordinarily be considered exploratory work,
per section 1.2 of the Operations & Policy Manual, and conducted by the
specific technical group or groups tasked with work in that area.

**2014-10-08** Noted a commitment from Diane Rogers to work on the
[Sources & Citations EG](/egs#sources).

**2014-10-08** Noted a commitment from Richard Tallent to work on the
[Core Concepts EG](/egs#core) as an associate member.

**2014-10-08** Noted a commitment from Richard Tallent to work on the
[Sources & Citations EG](/egs#sources) as an associate member.

**2014-10-04**
[Announced](/pipermail/tsc-announce_fhiso.org/2014-October/000003.html)
the creation of the [Lexicon EG](/egs#lex) and the informal [FHISO
bibliography](https://github.com/fhiso/bibliography).

**2014-10-02** Approved the [LexEG](/egs#lex)'s
[directives](/sceg-directives).

**2014-09-30** Appointed Tony Proctor to be Coordinator of the
[LexEG](/egs#lex) 

**2014-09-26** Produced [draft
directives](https://github.com/fhiso/tsc-governance/blob/master/LexEG/directives.md)
for review by the initial LexEG members.

**2014-09-25** Noted a commitment from Elizabeth Shown Mills to work on
the [Lexicon EG](/egs#lex).

**2014-09-23**
[Announced](/pipermail/tsc-public_fhiso.org/2014-September/000598.html)
the creation of the [Core Concepts EG](/egs#core), and approved its
[directives](/cceg-directives).

**2014-09-20** Noted a commitment from Jan Murphy to work on the
[CCEG](/egs#core).

**2014-09-16** Approved a proposal by Tony Proctor to start an informal
[FHISO bibliography](https://github.com/fhiso/bibliography) and
appointed Tony its editor.

**2014-09-16** Selected [GitHub](https://github.com/fhiso) as our
preferred collaboration platform for producing technical documents on
the recommendation of the CCEG Coordinator.

**2014-09-12** Appointed Justin York to be Coordinator of the
[CCEG](/egs#core).

**2014-09-09** Noted a commitment from Constance Horne to work on the
[CCEG](/egs#core) as an associate member.

**2014-09-09** Produced a policy on [document
formats](http://fhiso.org/technical-style-guide/) produced by EGs.

**2014-09-08** Noted the resignation of Thomas Wetmore from the
[CCEG](/egs#core).

**2014-09-05** Produced
[guidelines](/pipermail/tsc-public_fhiso.org/2014-September/000296.html)
on the use of the [tsc-public](/mailman/listinfo/tsc-public_fhiso.org)
list. 

**2014-09-01** Produced [draft
directives](/pipermail/core-concepts_fhiso.org/2014-September/000000.html)
for review by the initial CCEG members. 

**2014-08-29** Noted a commitment from John Tracy Cunningham to work on
the [Lexicon EG](/egs#lex). 

**2014-08-28** Thanked the Board for approving the [Operations & Policy
Manual](/opm) with minor changes, and made it public on the website.

**2014-08-26** Accepted and
[announced](/pipermail/tsc-announce_fhiso.org/2014-August/000001.html) a
proposal from Tony Proctor for a [Lexicon EG](/egs#lex).

**2014-08-26** Noted a commitment from Thomas Wetmore to work on the
[Core Concepts EG](/egs#core).

**2014-08-26** Submitted the [Operations & Policy Manual](/opm) to the
Board for approval.

**2014-08-26** Noted a commitment from Sue Adams to work on the [Sources
& Citations EG](/egs#sources). 

**2014-08-25** Noted a commitment from Justin York to work on the [Core
Concepts EG](/egs#core).

**2014-08-20** Resolved that [CFPS](/call-for-papers/) papers need to be
stand-alone documents, that any links or citations need to be supporting
information but not the meat of the paper.

**2014-08-16** Noted a proposal from Tony Proctor to split the [Core
Concepts EG](/egs#core) in two, one part to produce a lexicon of terms,
the other to determine the project scope. Suggested further discussion
should occur on the [tsc-public](/mailman/listinfo/tsc-public_fhiso.org)
list.

**2014-08-16** Noted a commitment from Nick Matthews to work on the
[Core Concepts EG](/egs#core). 

**2014-08-15**
[Announced](/pipermail/tsc-announce_fhiso.org/2014-August/000000.html)
the [start of technical
work](http://fhiso.org/2014/08/technical-work-begins-at-fhiso/).

**2014-08-15** Proposed four initial [exploratory groups](/egs):
Core Concepts, Modularity, Data Formalism, and Sources & Citations

**2014-08-15** Thanked the Board for approving the [TSC
Charter](/charter).
