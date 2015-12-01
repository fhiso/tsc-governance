This document is a pre-alpha draft that has not been reviewed internally or approved by any group


# Preferred nature of vocabularies

This draft is in response to the recommendation from the FHISO Board meeting 2015-11-27; as noted in [the minutes](/minutes), the board and TSC recommended 

> that the TSC should draft a general policy on the preferred nature of vocabularies, such as the use of URIs.

To this end, we define **vocabulary** be a set of *term*s paired with their well-defined meanings, and a **term** to be one such element of a vocabulary.  These words are intended to evoke the idea of [controlled vocablary](https://en.wikipedia.org/wiki/Controlled_vocabulary) without specifying a closed or controlled character.

We recommend the following as pertains to *term*s.


## Official definition as URI

Any FHISO technical document or data in FHISO-approved format that contains a *term* should provide unambiguous definition of how each such *term* can be resolved to a valid URI.

> (Luther 2015-11-30) Should we pick URI ([IETF RFC 3986](http://tools.ietf.org/html/rfc3986) or IRI ([IETF RFC 3987](http://tools.ietf.org/html/rfc3987))?  The latter allows UCS, which is international-friendly, but the former (restricted to ASCII) may be both (a) sufficient for the task at hand and (b) easier to implement

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

- scheme `http`
- authority with just the host `fhiso.org`
- a path constructed by the following, in order:
    1. `/term`
    2. optionally, the name of a vocabulary, such as `/sc`
    3. a version identifier, either `/draft` or a version string matching the regular expression `/v[0-9]+([.][0-9]+(.[0-9]+)?)?`.  `/draft` versions may change without notice; other versions should not change once posted.
    4. a solidus `/` and then the *term* being defined
- no query
- no fragment
    
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

> (Luther 2015-11-30) Should we include the defacto MIME type `text/markdown; charset=UTF-8`?  Or the [draft IETF proposal](https://datatracker.ietf.org/doc/draft-ietf-appsawg-text-markdown/?include_text=1) `text/markdown; charset=UTF-8; variant=Original`?

> (Richard 2015-12-01) Should we allow the `ASCII` encoding?  Should we
> disallow UCS encodings other than `UTF-8`?  Should we just reference
> our [style guide](/style)?

Future FHISO policy may permit [HTTP content
negotiation](http://tools.ietf.org/html/rfc7231#section-5.3) to be used
so that the same URL can additionally provide a
machine-readable version of the *term's* definition and/or metadata on its
correct usage.  
