# Ring by Example

Content and build toolchain for [Go by Example](https://gobyexample.com),
a site that teaches Go via annotated example programs.

### Overview

The Go by Example site is built by extracting code and
comments from source files in `examples` and rendering
them using `templates` into a static `public`
directory. The programs implementing this build process
are in `tools`, along with dependencies specified in
the `go.mod`file.

The built `public` directory can be served by any
static content system. The production site uses S3 and
CloudFront, for example.

### Building


To build the site you'll need Go installed. Run:

```console
./tools/build
```

To build continuously in a loop:

```console
./tools/build-loop
```

To see the site locally:

```
go run ./tools/serve.go 
```

and open `http://127.0.0.1:8000/` in your browser.
