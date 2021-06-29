---
title: Kiln
---

[Kiln](https://git.sr.ht/~adnano/kiln) is a simple static site generator aimed at Gemini use foremost, but it can be configured to support HTML and potentially Gopher. It supports using external tools as pre/post processors, allowing you to manipulate any file format int something it can use.

## Documentation

[Kiln Man Page](https://git.sr.ht/~adnano/kiln/tree/master/item/docs/kiln.1.scd)
[Introduction](https://kiln.adnano.co)
[kiln-discuss mailing list](https://lists.sr.ht/~adnano/kiln-discuss)

## Iterating Subfolders on Templates

Not described too much in the documentation, but you can use the `.Dirs` value passed to index templates to iterate down into the folders and list pages within the folders. 

```
{{ range .Dirs }}## {{.Title }}
{{ range .Pages }}=>  {{ .Permalink }} {{ if not .Date.IsZero -}}
{{.Date.Format "2006-01-02"}} {{end}}{{.Title}}
{{ end }}
{{ end -}}
```

Produces

```
## Logs
=> /~nikdoof/logs/2021/06/29/first-post/ 2021-06-29 First Post

## Notes
=> /~nikdoof/notes/kiln/ Kiln
```

## Handling Markdown

Adding `preprocess.md` value to your tasks and adding `.md` to the input formats allows you to use Markdown files for generating out Gemini. 

```
[[tasks]]
input = [".gmi", ".md"]
output = ".gmi"
template = ".gmi"
static_dir = "static"
output_dir = "public"
preprocess.md = "md2gmn"
```