# Marci Maruli Repertorium, textus revisio

TEI XML encoded Latin text of Marci Maruli Repertorium. The base is the edition by Branimir Glavičić (Split, 1998-2000), but it is being progressively revised by comparing the text with the original autograph, today Rome, Biblioteca Nazionale Centrale Vittorio Emanuele II, MS Gesuitico 522  [Manus Online CNMD\0000249223](https://manus.iccu.sbn.it/cnmd/0000249223).

The revision is INCOMPLETE!

The *Repertorium* is Marulić's thematic collection of excerpts from a number of books; the excerpts regularly refer to a page in the edition.

## Contents ##

* The TEI XML revised text is in the [xml](/xml) directory

## License

[CC-BY](LICENSE.md)

## Encoding conventions ##

* The text is divided in excerpted books (`div/@type="knjiga"`)
* Inside each book, the headwords are encoded as `list/@ana="article"`, with headword itself as `head`
* An individual entry is encoded as `item`
* References are encoded as `ref/@type="page"` (for pages) or `ref/@type="caput"` (for chapters)
* Contemporary interventions in the codex itself are marked as `corr` or `add`, with `@resp` (`#MM` is Marko Marulić)
* Marulić's mistakes and especially strange spellings are marked as `sic/@resp="#MM"`
* Changes of ink, or hand (including Marulić's from later periods) are marked with `handShift`, usually listing ink color `@medium="atrum"` (black ink), `@medium="rubrum"` (red ink), etc.
* Marginal notes are marked as `note/@place="left"` (for the left margin, etc.)
* Abbreviations are marked as `abbr`
* Graphic signs (usually in marginal notes) are encoded as `graphic url="vitis"` (for an attention sign similar to a vine), `graphic url="manicula"` (an attention sign drawn as a hand with a pointed finger)
* TBA

## How to use ##

* The edition is INCOMPLETE, it is a work in progress!
* Download the files or clone the repository.

### Editor ###

* Neven Jovanović (nevenjovanovic), Department of Classical Philology, Faculty of Humanities and Social Sciences, University of Zagreb; [orcid.org/0000-0002-9119-399X](http://orcid.org/0000-0002-9119-399X)
