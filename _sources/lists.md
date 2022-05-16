---
jupytext:
  cell_metadata_filter: -all
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.11.5
kernelspec:
  display_name: Haskell
  language: haskell
  name: haskell
---

# Lists


## Concatenation

```{code-cell} haskell
[1,2,3] ++ [4,5,6]
1 : [2,3,4,5,6]
```


## Projection

```{code-cell} haskell
"abc" !! 2
(head "abc", tail "abc", last "abc")
```


## Modification

```{code-cell} haskell
drop 3 [1..10]
take 3 [1..10]
splitAt 3 [1..10]
```

