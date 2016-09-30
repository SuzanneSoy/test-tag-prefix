#lang scribble/manual

@title[#:tag-prefix '(lib "test-tag-prefix/scribblings/sub.scrbl")]{sub}

@(require scribble/struct
          scribble/decode)

@(make-toc-element #f
                   (list (elemtag '(prefixable "foo") "foo-tag"))
                   (list (elemref '(prefixable "foo") "foo-ref-in-toc")))

@(make-toc-element #f
                   (list (elemtag '(prefixable "bar") "bar-tag"))
                   (list (make-link-element #f
                                            (decode-content (list "bar-ref-in-toc"))
                                            `(elem (prefixable "(lib test-tag-prefix/scribblings/test-tag-prefix.scrbl)"
                                                               "(lib test-tag-prefix/scribblings/sub.scrbl)"
                                                               "bar")))))

@(elemref '(prefixable "foo") "foo-ref-in-part")

@(elemref '(prefixable "bar") "bar-ref-in-part")