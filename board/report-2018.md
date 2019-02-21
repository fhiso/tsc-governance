---
title: Annual Report to Members for 2018
date: 21 February 2019
...

Annual Report to Members for 2018
=================================

The FHISO Board of Directors would like to take this opportunity to
update you, our members and other interested parties, on our activities
over the last year, and our plans, as well as our concerns, for the
future.  This is the first time we have prepared a report of this nature,
covering all aspects of the organisation, but we plan to do this
annually in the future.

This report is arranged in three sections: the first section
covers our technical progress drafting genealogical standards and
explains how they fit into our overall vision; the second section
discusses the organisation's governance structure and announces our
intention to hold board elections this year; and the third section
summarises FHISO's finances and explains our decision to start
collecting membership renewal fees.

Technical
---------

FHISO's mission is to develop open standards on the digital
representation, processing and exchange of data by genealogists and
family historians worldwide.  It is not our intention to create a single
standard encompassing all of genealogy: no-one has succeeded in doing
this since GEDCOM in mid-1980s, and expectations have grown considerably
since then.  Instead, our strategy is to create a series of *component
standards*, each dealing with specific area of genealogy in depth.  Our
first component standard will be an extensible framework and vocabulary
for encoding all the elements normally found in citations of
genealogical sources.  This is a significant gap in existing
technologies, and informal discussion with vendors suggests there is a
real desire for further standardisation here.

Component standards need to be usable with a variety of technologies,
and we have identified GEDCOM and GEDCOM X as the two of most important
*host languages*.  GEDCOM X is inherently extensible, so will readily
accommodate data from our component standards, but GEDCOM is not
satisfactorily extensible; it also has not been maintained in the last
20 years and is out of date.  We therefore plan to produce a
serialisation format and data model which is fully compatible with
GEDCOM, but with the addition of a structured extensibility mechanism.
It will be named the Extended Legacy Format, or ELF for short.  We will
also take the opportunity to clarify GEDCOM's ambiguities while
specifying ELF.

With both citation elements and ELF, we are working towards a suite of
standards, with each focusing on one self-contained aspect of the
subject area.  This provides greater modularity, and will allow
development of each to progress at its own pace.  To date we have issued
ten drafts of six different standards in these two areas, with several
more drafts under development.

Key to our vision is that the main parts of a component standard must
not depend on any specific host language so that new host languages can
readily be added; nor can the host language standards know about every
component standard they might host, else they would not be properly
extensible.  Instead there will be a separate lightweight standard or
*binding* explaining how the component standard is used with that host
language.  We believe this is critical to ensuring maximal
interoperability between our standards and third-party standards,
whether open or proprietary; it also helps future-proof our work.

Development of a suite of citation elements standards began in 2016 and
we released the first [public drafts](https://fhiso.org/TR/) of two
standards in June 2017.  As a result of the useful feedback we received,
we issued updated drafts of both later that year.  We currently expect
there to be three more citation elements standards: one will define a
vocabulary for identifying common citation elements, while the other two
will provide bindings for GEDCOM X and ELF.  The ELF bindings will be an
important test of ELF's extensibility mechanism, and developing that
mechanism was the major focus of our technical work in 2018 and will
continue to be in 2019.

When we began work on ELF, it rapidly became clear that, even though ELF
was not to depend on citation elements nor vice versa, there were many
low-level facilities in common between them.  We also felt it necessary
to have a clear theoretical foundation to the ELF extensibility
mechanism so that extensions can interoperate smoothly.  To achieve this
we spent the first quarter of 2018 working on three low-level
standards defining these low-level facilities and a discovery protocol
which will allow applications to obtain information on unfamiliar
extensions.  These were released as first public draft in March, and at
the same time we updated the two current citation elements drafts to
build on these facilities.

While this low-level material is not the most exciting, it serves a
crucial role in providing a solid underpinning for future work and has
allowed us to make more coherent progress on ELF.  It is unfortunate
that we were unable to engage with members and the public on this
important work, and received no feedback on it, either positive or
negative, as we rely on feedback from our members to know whether they
are content with our direction. However, even with hindsight, we are
unsure what we could have done differently to have generated public
engagement at this stage.

Since March we have focused our attention ELF.  Early on we decided to
structure the standard in two parts: one covering the serialisation
format, the other on the data model.  The new extensibility mechanism
works at the serialisation layer and maps tag names to IRIs which define
the purpose of the ELF structure.  We are calling this mapping a schema.
We are also adding a new Unicode escape mechanism, and a way of tagging
lines with the language and datatypes of their payloads.  Specification
of this is well under way, and we believe we have solved the main
technical difficulties.  We hope to release a first public draft of the
ELF serialisation standard in the coming months.

There is much new functionality that could potentially be added to ELF
data model, but for version 1.0 of ELF, we have limited our scope to
resolving ambiguities in GEDCOM and recognising where current practice
is at odds with the GEDCOM standard.  This will inevitably disappoint
some, but we do not want ELF 1.0 to be too ambitious, lest we never
complete it.  The most important part of ELF 1.0 is its extensibility
mechanism, and when that is delivered it should be easier to issue
updates to ELF data model in an interoperable manner.  A first draft of
the data model standard is largely written, but will need updating to
match the terminology used in the serialisation draft.

While drafting the ELF data model standard, it became apparent that
GEDCOM's only complex datatypes were all time-related, and that together
they formed a self-contained subsystem.  We therefore decided to move
these to a separate document which we released as a first public draft
at the end of December.  The comments we have received so far has been
helpful and positive; this feedback will be used to update the draft in
due course.

Developing ELF has been slow.  To some extent this has been due to
unforeseen technical difficulties which have taken time to discuss and
resolve, but largely it has been from lack of development resources.  
We have tried several approaches to development, starting with our call
of papers initiative, followed by open discussion on our mailing list,
and setting up technical groups made up of members to work towards
standards, but the only approach which has produced results is when the
Technical Standing Committee (TSC) has done the initial development and
released first public drafts for discussion.  This means all our
standards are currently being written by the two members of the TSC,
both of whom are volunteers with full time jobs unrelated to genealogy,
which has limited the speed of development.

We are keen to spread this workload to a small team working under the
TSC.  If you have the expertise and can spare the time to be actively
involved in writing detailed technical specifications of the various
parts of our ELF and citation element standards, do please 
[contact the TSC](mailto:tsc@fhiso.org) to discuss this, as one or two
more people contributing high-quality standard text to the project could
allow us to progress much faster.

Governance
----------

The board met electronically eight times in 2018, with meetings
normally scheduled every six weeks.  The minutes of these are publicly
available on our website.  Board meetings always include a report on how
technical work is progressing, and we often discuss our technical
objectives and longer-term vision; often there are routine
administrative or financial matters to be agreed too.  The other item of
business that has frequently been on our agenda is reform to our
governance structure.

FHISO grew out of the BetterGEDCOM initiative when it was recognised
that a more structured environment was needed for technical progress to
be made, and after some of the large vendors explained that they would
find it difficult, politically, to accept or contribute to third-party
standards unless they were developed by an organisation with a formal
legal identity of its own.  This lead to FHISO being incorporated as a
non-profit organisation in Arizona back in 2012, and even though
incorporation in Arizona involves significant on-going expense, we
believe it remains in FHISO's best interest.  

Incorporation requires us to set out our governing rules in a set of
[bylaws](https://fhiso.org/bylaws/).  With hindsight, our original
bylaws were overly complex and better suited to a much larger
organisation.  As a small team of volunteers, we found it hard to
operate within this framework, and often found ourselves diverting
effort from technical work to more bureaucratic activities.  In an
attempt to resolve this we have been steadily reviewing and simplifying
our bylaws to make FHISO a more dynamic and responsive organisation, and
this process continued in 2018.  

Although FHISO is a non-profit organisation in Arizona, it does not
currently have tax-exempt status from the US federal government.  We
believe achieving this would simplify aspects of our financial position,
and so we hope to make progress towards a 501(c)(3) application in 2019.
The first step of this is to finish updating our bylaws so that they can
be reviewed by the IRS as part of the application.

Eight people currently serve on the board of directors and we have all
been in office for between four and six years.  Four of the eight are
currently taking a break from FHISO activity due to changes in their
personal circumstances, but so far we have chosen not to seek
replacements as we believe eight directors is more than we need.
Therefore, the last major reform we are planning to our bylaws is to
give us the flexibility to reduce the size of the board.  We aim to
complete this process by the summer and then run elections for the board
of directors.  

Some of the current directors have expressed willingness to run for
re-election, but we also feel it would be beneficial to have some new
people with their own new ideas and insights on the board.  We also
believe it is important to give you, our members, the opportunity to
have your say on how the organisation is run.  To thrive, a
volunteer-run organisation like FHISO needs a diverse and enthusiastic
board who can develop a coherent and viable vision for its future.  Do
please consider whether you would like to stand for election and be part
of shaping our future.  



Finances
--------

Summary accounts for 2018 have been approved by the board and published on 
[our website](https://fhiso.org/accounts/).  Accounts for each previous
year FHISO has existed can also be found there.
The recurring cost of running FHISO currently stand at around $600 per
annum, with the majority of this being spent on a virtual mailing address
and registered agent in Arizona, as required by state law.  We believe
there is scope for reducing these costs appreciably, but this will be
more easily done after we have completed our 501(c)(3) application.
Our next largest expense is the service charge for our bank account
which totals $180 per annum.

In some years, though not in 2018, we have paid for professional advice
on aspects of our legal status and governance structure.  Regrettably,
some of this expense could have been avoided had things been done
differently in FHISO's first few years.  We anticipate further such
expense in 2019 as we progress our 501(c)(3) application.  Our current
estimate for this expense is $500, though it may overrun if there are
complications.

FHISO's income comes entirely from membership dues and donations.
When totalled over the lifetime of the organisation, donations 
exceed membership dues by a large margin.  A large majority of the
donations received have been from a small number of our members, often
given to cover specific costs.  However, relying on donations from a
small number of members is ultimately unsustainable, and risks being
undemocratic if it gives those members having greater influence over the
organisation.  

Most of our members joined in 2013 in the months after we first invited
people to become members of the organisation.  The $20 membership fee
has always been described as an annual fee, but we felt it inappropriate
to charge of membership renewals while FHISO established itself and
started technical work in earnest.  We believe FHISO is now well
established, notwithstanding the further changes we wish to make to our
governance structure, and with 
[public drafts](https://tech.fhiso.org/drafts/) of six standard now
available, technical work is well under way too.  With elections to the
board planned for this year, we feel the time has come to start charging
membership renewals on an annual basis.  

Regrettably, it has taken far longer than any of us anticipated to reach
this stage.  With hindsight, we have made mistakes along the way and
could have done things differently to have reached this point here
sooner, and for that we must apologise.  While we have been establishing
FHISO, the need for organisation which is actively engaged in the
production of open standards has grown, and we believe we are the only
organisation currently doing this.  

We hope you continue to believe in FHISO's objectives and are willing to
support our on-going development of open genealogical standards by
renewing your membership.  

