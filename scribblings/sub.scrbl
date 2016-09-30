#lang scribble/manual

@title[#:tag-prefix '(lib "test-tag-prefix/scribblings/sub.scrbl")]{sub}

@(require scribble/struct)

@(make-toc-element #f
                   (list (elemtag '(prefixable "foo") "foo-tag"))
                   (list (elemref '(prefixable "foo") "foo-ref-in-toc")))

@(elemref '(prefixable "foo") "foo-ref-in-part")