*This document is a draft approved by the TSC for wider comment on 
16 February 2016.  Comments should be directed to the 
[tsc-public mailing list](/tsc-public).*

**About examples**  The examples presented in this draft are intended to illustrate their immediate topics only; this document does not define any actual *vocabularies*.  As actual *vocablaries* are defined the examples herein may be updated to reflect them.

# Preferred nature of vocabularies

This draft is in response to the resolution at the [FHISO Board meeting
2015-11-27](//fhiso.org/aboutfhiso/fhiso-board/minutes/2015-11-27/) 

> the TSC will draft and release &hellip; a general policy on
> vocabularies.

To this end, we define **vocabulary** be a set of *term*s paired with their well-defined meanings, and a **term** to be one such element of a vocabulary.  These words are intended to evoke the idea of [controlled vocabulary](https://en.wikipedia.org/wiki/Controlled_vocabulary) without specifying a closed or controlled character.

> (Tony 2016-01-20) This introduction specifically talks about 'Controlled Vocabularies' but fails to mention the important notion of 'Partially Controlled Vocabularies' (i.e. extensible sets). Not all vocabularies will be extensible (same in STEMMA) but some absolutely must be. Maybe I read this section incorrectly but I would certainly want assurance, as a potential user of the standard, that extensibility of vocabularies is designed for.

> (Luther 2016-02-01) The intent of the phrase "without specifying a closed or controlled character" was to imply that the vocabularies are not closed (i.e., are extensible).  We should look for better wording if that message was not clear.  On a related note, is there a case where we want a closed-set vocabulary?  I had assumed all vocabularies would be only partially specified...

We recommend the following as pertains to *term*s.


## Official definition as URI

Any FHISO technical document or data in FHISO-approved format that contains a *term* should provide unambiguous definition of how each such *term* can be resolved to a valid URI.

> (Luther 2015-11-30) Should we pick URI ([IETF RFC 3986](http://tools.ietf.org/html/rfc3986)) or IRI ([IETF RFC 3987](http://tools.ietf.org/html/rfc3987))?  The latter allows UCS, which is international-friendly, but the former (restricted to ASCII) may be both (a) sufficient for the task at hand and (b) easier to implement

As outlined in [CFPS 37](/cfps/files/cfps37.pdf), the form of the *term* used in a document or data stream need not be the full URI, provided there is a well-defined unambiguous process for translating to the URI form.  This process should not depend on anything external to the document and/or data.  The use of namespace URIs is recommended as the preferred way to shorten URIs.

## Guidelines for selecting URIs for *term*s

FHISO standards may define new *terms*, and may use *terms* defined in
third-party standards.

Where possible all *terms* used in FHISO standards should:

- be defined in an [open standard](/opm#openness);

- have a scheme of `http` or `https`; and

- be a URL which, when visited, provides a human- or machine-readable
  description of the meaning of the vocabulary *term* in a common, open
  format.

Terms defined in FHISO standards and proposed standards should use the
following URI patterns:

- A scheme of `http`.
- An authority with just the host `fhiso.org`.
- A path constructed from the following slash-separated path segments
  in order: 
    1. the literal string `term`;
    2. optionally, the name of a vocabulary, such as `sources`;
    3. the name of the *term* being defined, which shall match the
       [NCName production](http://www.w3.org/TR/xml-names/#NT-NCName) in
       the "Namespaces in XML 1.0" specification. 
- No query.
- No fragment.
    
For example, we might have a URI like `http://fhiso.org/term/meta/vocabulary` to define the term "vocabulary", part of FHISO's "meta" vocabulary.

> (Richard 2015-12-01) The use of [slash URIs instead of hash
> URIs](http://www.w3.org/wiki/HashVsSlash) gives greater flexibility
> for redirecting several terms to a single document of definitions or
> serving separate definitions as is convenient.  But is this sufficient
> reason to prohibit hash URIs?

> (Richard 2015-12-06)  A standard might define several vocabularies:
> as a hypothetical example, an events standard might define a
> vocabulary for types of events and a separate vocabulary for roles in
> events.  Should they both be in `http://fhiso.org/term/events/`?  

> (Luther 2015-12-07)  Multiple vocabularies is just one example of the ever-present problem of trying to fit a world of messy cross-links into a simple hierarchy.  We could go flat (i.e., all FHISO terms fit into one vocabulary), single-level bucketing described above (there may be an `events` vocabulary and a `roles` vocabulary but not an `events/roles` vocabulary), or arbitrary nesting (essentially allowing sub-vocabularies like `events/roles`).  I'd rather err on the side of fewer vocabulary buckets provided we can do so without namespace collisions.

> (Tony 2016-01-20) While I agree that FHISO-defined vocabularies should follow specific patterns, such as using a scheme of http:, I would hope that the actual usage of namespaces would be more open where vocabularies are partially controlled, such as allowing other schemes, or fragments. 

> (Luther 2016-02-01)  I agree, Tony; that was the intent of having two sections, one about all terms and the other about FHISO-defined terms.

Once standardised, the definitions of terms should only be change in a
backwards-compatible way.  


## URI resolution

URIs of *terms* defined by FHISO should do a
[303 redirect](http://linkeddatabook.com/editions/1.0/#sec:303Redirects)
to a document containing a human-readable definition of the *term*.  Per 
[W3C policy on vocabulary
URIs](https://lists.w3.org/Archives/Public/www-tag/2005Jun/0039.html),
*term* URIs must not result in a 200 response unless the *term* actually
denotes the document being retrieved rather than a concept defined in
it.  This document should have a `text/plain` or `text/html`
content-type and should explicitly use a UCS encoding such as UTF-8.

> (Luther 2015-11-30) Should we include the de facto MIME type `text/markdown; charset=UTF-8`?  Or the [draft IETF proposal](https://datatracker.ietf.org/doc/draft-ietf-appsawg-text-markdown/?include_text=1) `text/markdown; charset=UTF-8; variant=Original`?

> (Richard 2015-12-01) Should we allow the `ASCII` encoding?  Should we
> disallow UCS encodings other than `UTF-8`?  Should we just reference
> our [style guide](style)?

Future FHISO policy may permit [HTTP content
negotiation](http://tools.ietf.org/html/rfc7231#section-5.3) to be used
so that the same URL can additionally provide a
machine-readable version of the *term's* definition and/or metadata on its
correct usage.

## Uses of *terms*

A **class** is a *term* used to denote the set of values or entities
that may be used in some particular context.  Example *classes* might
be `http://fhiso.org/term/indi/Individual` or
`http://fhiso.org/term/indi/EventType`.

A **property** is a *term* used to identify a particular attribute
of an entity which has an associated value.  Some examples of
*properties* might be `http://fhiso.org/term/indi/occupation` or
`http://fhiso.org/term/indi/religion`.

Any FHISO standard that defines a *property* should also define:

- its **domain** &mdash; the context in which it is to be used,
  perhaps by specifying the *class* of entity on which it may be use; 

- its **cardinality** &mdash; whether it can appear multiple times on the same
  entity, and if so whether any meaning is ascribed to their order; and
  
- its **range** &mdash; the expected form of the *property*'s value, such as
  whether it is free-form text, an integer or date, another *term* (of a
  particular *class*), or another entity of some form.

> (Richard 2015-12-06)  Should we allow meaning to be ascribed to the
> order of multiple properties of the same name?  Several significant
> data models models (e.g. [RDF](http://www.w3.org/RDF/) graphs or XML
> attributes) do not necessarily preserve order.

*Properties* shall not have default values, and no information shall be
assumed from the absence of a *property*.

When the expected value of a *property* is another *term*, a *class*
shall be given which identifies the *terms* that are acceptable values
for the property.  For example, a standard might define a
`http://fhiso.org/term/indi/sex` *property* whose *range* is the
`http://fhiso.org/term/indi/Sex`, which *class* might include the
*terms* `http://fhiso.org/term/indi/Male` and
`http://fhiso.org/term/indi/Female`.

> (From conversation between Tony, Richard, and Luther 2016-02-17) 
>
> Q: Does a vocabulary or a class correspond to a namespace?
>
> A: Neither.  A vocabulary is a set of terms, which (if namespace is taken to mean the pre-term-name part of a URI) may be from one or several namespaces.
>
> Q: How are vocabulary and class different?
>
> A: Vocabulary = set of terms.  Class = term that defines a a datatype.
> Some datatypes have, as their set of values, the elements of a vocabulary
> so it is possible that a class could be a vocabulary (e.g., the class Sex), 
> but not not all classes will be vocabularies (e.g., the class Integer).
>
> Some other specifications call classes that are also vocabularies *enumerations*.
> We have avoided that terminology because enumeration has several other meanings as well.

A FHISO standard that defines a *class* of *terms* shall state whether
or not it is **extensible**: that is, whether or not third parties should be
permitted to define additional *terms* of that *class*.  Due to the
widely variable nature of genealogical data, the default should be to
make *classes* extensible unless there are compelling reasons to
the contrary.

