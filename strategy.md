*Approved by the TSC on 16 February 2016.*

# Technical Strategy

This draft is in response to the recommendation made at the FHISO [Board
meeting on 2015-11-27](/aboutfhiso/fhiso-board/minutes/2015-11-27/) that

> the [TSC](/tsc) will draft and release a short high-level strategy
> paper to communicate the TSC's vision for FHISO.

This document gives an overview of how the TSC envisages technical work
progressing, both in the short-term, and how that short-term work fits
into the longer-term vision.  It is not intended to be binding, and the
TSC may publish future versions of this roadmap that differ from this
one, perhaps substantially.

## Background

According to [by-law](/by-laws) 3.3,

> The scope of FHISO's work encompasses all aspects of technical
> standards and guidelines used to manage information in genealogy and
> family history.

This couild be paraphrased as "whatever genealogical matters our members
are interested in".  It is intended to give FHISO the flexibility to
carry out work on any aspect of genealogy in which there is sufficient
interest; it allows the production of multiple standards, and also the
generation of less formal guidelines.

FHISO grew out of the [BetterGEDCOM
project](http://bettergedcom.wikispaces.com/), a project whose goal was 

> to develop a standard for genealogy data archiving and
> transfer that would be accepted internationally.

A major new standard of that nature, one more modern than GEDCOM and
that removes many of GEDCOM's limitations, remains a major long-term
objective.  But the TSC believe it is unrealistic to produce an
all-encompassing standard with the resources at FHISO's disposal, and
were such a standard to be produced, it runs the risk of being ignored,
much as other attempts at a new standard such as the [GenTech Data
Model](http://www.ngsgenealogy.org/cs/GenTech_Projects) have been.

Instead, the TSC plan to develop a series of standards each covering a
narrow area.  Over time, these will fit together to form FHISO's new
data model, but at first they are likely to be used in existing data
models, in particular [GEDCOM](https://en.wikipedia.org/wiki/GEDCOM) and
[GEDCOM X](http://gedcomx.org/), which the FHISO Board have identified
as the two dominant non-proprietary data models at present.  

## First steps

The FHISO Board, on the TSC's recommendation, [have
decided](/aboutfhiso/fhiso-board/minutes/2015-11-27/) that FHISO should
initially

> work on a focused standard for a citation elements vocabulary and, if
> resources permit, a vocabulary for describing source derivation.

These specific areas have been selected because they are relatively
small and self-contained vocabularies that we believe can be developed
relatively quickly and can slot into existing data models.  Our contacts
in the industry suggest that a citation elements vocabulary would fill
an important niche in today's standards, while the source derivation
vocabulary fills a small but significant gap identified by our
[exploratory work into sources & citations](/egs/sceg).  These two
vocabularies are not intended to be all of FHISO's work on sources and
citations &mdash; just the first priorities.

### Vocabularies

As our two first projects involve designing vocabularies, at the Board's
request the TSC have drafted a [policy on the preferred nature of
vocabularies](/policies/vocabularies).  A general policy on vocabularies
is desirable so that all FHISO vocabularies share a common style, and
that this is not simply based on the requirements of the first
vocabulary to be designed.  This policy is based on ideas discussed by
the [Sources & Citations Explorary Group](/egs/sceg) as well as industry
best practice.  

The TSC welcome feedback on this draft policy, and suggest that
such discussion is best directed to the [`tsc-public` mailing
list](/tsc-public).

### Citation Elements Vocabulary

For the purpose of this standard-development activity, a citation element is a piece of data
about a source that might reasonably be included in a formatted
citation.  Examples might include the author and title of a book, page
numbers, the name and address of an archive, the date an online source
was accessed, and the reference number of a manuscript.  Normally they
are language-neutral, for example Settipani's well-known book is called
*Les Ancêtres de Charlemagne* regardless of whether one is writing in
English or French; but not always: an English work would rarely cite the
Confucius Genealogy Compilation Committee as 《孔子世家谱续修工作协会》.

Citation elements are not intended to provide an exhaustive description
of sources, and it is anticipated that applications may store
information about sources beyond a simple collection of citation
elements.  Discursive notes, although sometimes included in a citation,
are not considered to be citation elements for our purpose; nor is
information about if and how one source derives from another.  

In producing this standard vocabulary, we will need to seek out examples
of citations in different styles and languages.  Most of all, we need
citations to a wide range of sources types: not just the usual censuses
and parish registers, but also books, journals and manuscripts,
paintings and photographs, monuments, statues and stained-glass windows,
websites and television programmes.  How are they cited?  And what
elements do these citations contain?

Identifying the citations elements required is just part of the problem.
Terms needs careful definition to remove ambiguity over their use.  The
standard should identify what range of values an element is expected to
have: perhaps the value will be a term from another vocabulary; or
perhaps it will be a boolean, an integer, a date, or an unstructured
piece of text.  If the element is a date, what requirements are placed
on the date format used?  Designing a date format is not part of this
project, and it is possible that this vocabulary will be used in
multiple data models with distinct date types; but any essential
requirements for the particular use should be noted.

The aim is that applications should be able to produce properly-formed
citations in the vendor's preferred style using the data found in
the citation elements.  Ideally this should be possible using standard
templating technology such as [XSLT](http://www.w3.org/Style/XSL/) or
[BibTeX](https://www.ctan.org/pkg/bibtex?lang=en).  It is not FHISO's
job to produce such a formatter, but as the standard develops, we
should be considering whether data in the citation elements can be
converted algorithmically to forms used in real-world citations.  For
example, some citation styles for books put the author's surname first,
followed by first names or initials; other styles put the name in its
conventional order.  How should this be supported?

Full systems for representing names and addresses are outwith the scope
of this project.  But it may be that a lightweight microformat may be
appropriate, such as GEDCOM's use of `/` to delimit surnames.  In other
cases it may be useful to document a convention on a field's use, for
example that addresses components are separated by commas and written
from the smallest to the largest unit.

The conceptual requirement for algorithmic formatting of citations with
standard templating technology places more tangible restrictions on the
implementation.  Citation elements may not contain sub-elements, though
they may still have structure in the form of typed data or through a
microformats; nor may they be pointers or references to other
structures.  Elements may be multi-valued where appropriate: that is, a
source may have multiple citation elements of the same type.  Meaning
should only be associated with the order of values if it is tolerable
for the information encoded by the order to lost.  For example it might
be acceptable to use the order of several 'author' elements to denote
the order in which the authors are conventionally listed.  No meaning
should be associated with the order of different types of elements.

### Source Derivation Vocabulary

Our [Sources & Citations Exploratory Group](/egs/sceg) (S&CEG) spent a
considerable time looking at [layered
citations](/egs/lexeg/snapshot#layered citation.md) &mdash; citations of
sources which are derivatives of another source, for example a
transcription made from a microfilm of a parish register.  Such
derivation information is beyond the initial scope of our citation
element vocabulary, but we do plan to address it separately.  

The S&CEG identified several forms of derivation with different degrees
of faithfulness, ranging from high-quality photographic reproductions
through to translated abstracts of sources, and secondary sources that
paraphrase the original.   A source derivation vocabulary will describe
these various types of derivation.

There are likely to be situations when an application needs to flatten a
sequence of derivations to a single one.  In the example of a transcript
of a microfilm of a register, house style might dictate that only
source consulted and its ultimate source should be mentioned: that the
transcript derives from the register.  A rule will be needed that says
how to describe the combination of several derivations; if the
derivation types can be ordered by faithfulness, this may be as simple
as selecting the least faithful step.

## Follow-up citations work

When these two vocabularies are complete, there are several options for
related follow-up work.  

An obvious and fairly straightforward task is to define extensions to
GEDCOM and GEDCOM X to allow these vocabularies to be used.  GEDCOM
entirely lacks a way of recording source derivation, while GEDCOM X
allows a link but lacks any means of describing the derivation; both
languages would benefit from the addition of such a facility based on
our source derivation vocabulary.  Neither GEDCOM nor GEDCOM X have good
facilities for recording everything about sources that is found in real
citations; in particular neither has adequate facility for recording
page numbers, it being entirely absent from GEDCOM X, while the format
of GEDCOM's `PAGE` tag's values is poorly standardised.

Another facet of FHISO's early citation work could be to look at which
citation elements make sense for which types of source.  Clearly a
'journal name' field makes little sense for a tombstone: should it be
prohibited?  Indeed, a vocabulary of source types might be a useful
further development.  GEDCOM's list of source types lacks many obvious
types, such as journals, paintings, websites, databases and CD-ROMs,
which GEDCOM X only offers a coarser-grained division into physical and
digital artefacts.

The system of citation elements being developed does not cope with
layered citations, but can be readily extended to include them.  Another
possible extension is to document properly the model for turning
multi-layer citation elements into a formatted piece of text.  This
might writing include a basic, proof of concept templating engine.

