#lang scribble/manual

@title[#:tag-prefix '(lib "test-tag-prefix/scribblings/sub.scrbl")]{sub}

@(require scribble/struct
          scribble/decode)

@(make-toc-element #f
                   (list (elemtag '(prefixable "foo") "foo-tag"))
                   (list (make-link-element #f
                                            (decode-content (list "foo-ref-in-toc"))
                                            `(elem (prefixable "(lib test-tag-prefix/scribblings/test-tag-prefix.scrbl)"
                                                               "(lib test-tag-prefix/scribblings/sub.scrbl)"
                                                               "foo")))))

@(elemref '(prefixable "foo") "foo-ref-in-part")