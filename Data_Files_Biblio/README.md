---
title: Data Files for Citations and Reference Lists
author: Samuel A. Chambers
---

This directory contains a few files in JSON or YAML format containing a bibliography of a larger portion of texts on time and politics. This is nothing close to a definitive list, just a random selection.

Students wishing to use these files can:
1. Import the JSON file directly into a stock installation of [Zotero](https://www.zotero.org/).
2. Import the YAML file into an installation of Zotero with the [Better BibTex plugin](https://github.com/retorquere/zotero-better-bibtex/releases/tag/v9.0.64).[^bbt]
3. Use pandoc to convert directly to working bibliographies.[^pan]






[^bbt]: BBT makes everything about zotero better, and is essential if you want to create citekeys for your zotero entries (which you can then use with pandoc or other software).

[^pan]: That looks something like the following: ```pandoc -s -f csljson -t UP.json -C -M reference-section-title=References -V template=BibOnly.typ -o MyBib.typ``` Ask me for a detailed explanation.