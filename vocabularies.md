*This document is a pre-alpha draft posted for internal comment only.
Comments should be directed to the [tsc-public mailing list](/tsc-public).*


# Preferred nature of vocabularies

This draft is in response to the recommendation from the FHISO Board meeting 2015-11-27; as noted in [the minutes](/minutes), the board and TSC recommended 

> that the TSC should draft a general policy on the preferred nature of vocabularies, such as the use of URIs.

To this end, we define **vocabulary** be a set of *term*s paired with their well-defined meanings, and a **term** to be one such element of a vocabulary.  These words are intended to evoke the idea of [controlled vocablary](https://en.wikipedia.org/wiki/Controlled_vocabulary) without specifying a closed or controlled character.

> (Tony 2016-01-20) This introduction specifically talks about 'Controlled Vocabularies' but fails to mention the important notion of 'Partially Controlled Vocabularies' (i.e. extensible sets). Not all vocabularies will be extensible (same in STEMMA) but some absolutely must be. Maybe I read this section incorrectly but I would certainly want assurance, as a potential user of the standard, that extensibility of vocabularies is designed for.

> (Luther 2016-02-01) The intent of the phrase "without specifying a closed or controlled character" was to imply that the vocabularies are not closed (i.e., are extensible).  We should look for better wording if that message was not clear.  On a related note, is there a case where we want a closed-set vocabulary?  I had assumed all vocabularies would be only partially specified...

> (Richard 2016-02-15) I with Tony that it is important to include
> partially controlled vocabularies, but agree with Luther that the
> current wording does so, and later when discussing enumerations we say
> so explicitly.  I would be content to assume unless and until a
> good counterexample comes along that all vocabularies will be
> extensible.

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
    2. optionally, the name of a vocabulary, such as `sc`;
    3. a version identifier, either `draft` or a version string matching
       the regular expression `v[0-9]+([.][0-9]+([.][0-9]+)?)?`;
    4. the name of the *term* being defined, which shall match the
       [NCName production](http://www.w3.org/TR/xml-names/#NT-NCName) in
       the "Namespaces in XML 1.0" specification. 
- No query.
- No fragment.
    
For example, we might have a URI like `http://fhiso.org/term/meta/v0/vocabulary` to define a versioned pre-release definition of the term "vocabulary", part of FHISO's "meta" vocabulary.

> (Luther 2015-11-30) The above describes the version-before-term scheme used by GEDCOM-X, suggesting that the version belongs to the vocabulary, not to the terms it contains.  An alternative would be to have the version come after a term, perhaps as the query or fragment, suggesting that terms are versioned independently.  If versions are queries or fragments, we'd need to consider what a term with several versions means if no version is specified.

> (Richard 2015-12-01) Should we allow versioning at all?  Many
> vocabularies in common use have frozen with a version of `1.0` (or
> worse, a pre-release version number), despite being considerably more
> mature.  They have been unable to update the version number without
> major disruption to data consumers and providers.

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


> (Richard 2015-12-06)  Is `sc` (for sources & citations) overly
> abbreviated?

> (Luther 2015-12-07)  I assume picking a name for a vocabulary would be part of the standarisation process.  I don't know that we need a level-of-abbreviation guideline.

> (Tony 2016-01-20) While I agree that FHISO-defined vocabularies should follow specific patterns, such as using a scheme of http:, I would hope that the actual usage of namespaces would be more open where vocabularies are partially controlled, such as allowing other schemes, or fragments. 

> (Luther 2016-02-01)  I agree, Tony; that was the intent of having two sections, one about all terms and the other about FHISO-defined terms.

Draft terms (i.e. those with a version of `draft`) may change without
notice; other versions should only be change in a backwards-compatible way
once posted.  


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

One use of a *term* is as the name of a property of some entity, to
which a value is assigned; such *terms* are known as **property names**.
Any FHISO standard that defines a *property name* should also define:

- the context in which it is to be used, perhaps by specifying the type
  of entity or entities on which it is to be used; 

- whether it is valid for an entity to have multiple properties with the
  same *property name*, and if so whether any meaning is ascribed to
  their order; and
  
- the expected form the property's value, such as whether it is
  free-form text, an integer or date, another *term*, or another entity
  of some form.

> (Richard 2015-12-06)  Should we allow meaning to be ascribed to the
> order of multiple properties of the same name?  Several significant
> data models models (e.g. [RDF](http://www.w3.org/RDF/) graphs or XML
> attributes) do not necessarily preserve order.

Properties shall not have default values, and no information shall be
assumed from the absence of a property.

When the value of a property is another *term*, a *term* shall be
provided to serve as the name of the class of acceptable values.  Such a
*term* is known as an **enumerated type**, and the valid values for the
property are known as its **enumerated values**.  For example, standard
might define a `http://fhiso.org/term/indi/v1/sex` property whose
value is an enumerated type `http://fhiso.org/term/indi/v1/Sex`
with defined enumerated values that include
`http://fhiso.org/term/indi/v1/Male` and
`http://fhiso.org/term/indi/v1/Female`.

> (Tony 2016-01-20) One minor niggle over the "Gender" terminology: The correct term is 'sex' (male/female) rather than 'gender' (masculine/feminine). This is a potential pitfall as there are several subdivisions of each, and some should be modelled via events rather than birth attributes: <http://parallax-viewpoint.blogspot.com/2014/05/no-sex-please-were-genealogists.html>.

> (Richard 2016-02-15) I agree and have replaced 'gender' with 'sex',
> and have made it clearer that male and female may not be exhaustive.
> It wasn't my intention to get into a detailed discussion of that here.

> (Richard 2015-12-06)  Are we content with this nomenclature?  Formal
> treatments of data models rarely have the notion of an enumeration,
> and would simply say that `Male` is an object which is an
> instance of the `GenderType` class.  However it seems useful, at least
> informally, to distinguish types (e.g. `GenderType`) that will have a
> few well-known values, from those (e.g. `Individual`) with a vast
> number of locally defined instances.

> (Tony 2016-01-20) I have to disagree with Richard over the 'enumeration' nomenclature. I use this approach extensively in STEMMA, and hence the application of namespaces both to values and to tags.

> (Richard 2016-02-15)  Can you elborate what it is you disagree with,
> Tony?  If your objection is simply to the word "enumerated", e.g.
> because you think that implies not being extensible, I'm happy to drop
> the word and leave the above as a definition of the word *type*.

A FHISO standard that defines an *enumerated type* shall state whether
or not it is extensible: that is, whether or not third parties should be
permitted to define additional *enumerated values* of that type.  Due to
the widely variable nature of genealogical data, the default should be
to make enumerated types extensibile unless there are specific
compelling reasons to the contrary.

