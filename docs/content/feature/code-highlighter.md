+++
title = "Code Highlighter"
description = "Highlight code written in more than 160 languages."
categories = ["Experience"]
tags = ["color", "style", "syntax"]
features = ["snippets", "related content", "jit requests"]
+++

After Dark uses a customized version of {{< external href="https://atom.io/themes/one-dark-syntax" text="One Dark Syntax" />}} to produce print-friendly code highlighting for more than 160 languages.

<style>.card-content .inner { overflow: scroll; height: 200px; }</style>
{{< hackcss-card header="Supported Languages" text="ABNF, ANTLR, APL, ActionScript, ActionScript 3, Ada, Angular2, ApacheConf, AppleScript, Awk, BNF, Ballerina, Base Makefile, Bash, Batchfile, BlitzBasic, Brainfuck, C, C#, C++, CFEngine3, CMake, COBOL, CSS, Cap'n Proto, Ceylon, ChaiScript, Cheetah, Clojure, CoffeeScript, Common Lisp, Coq, Crystal, Cython, DTD, Dart, Diff, Django/Jinja, Docker, EBNF, Elixir, Elm, EmacsLisp, Erlang, FSharp, Factor, Fish, Forth, Fortran, GAS, GDScript, GLSL, Genshi, Genshi HTML, Genshi Text, Gnuplot, Go, Go HTML Template, Go Text Template, Groovy, HTML, HTTP, Handlebars, Haskell, Haxe, Hexdump, Hy, INI, Idris, Io, JSON, JSX, Java, JavaScript, Julia, Kotlin, LLVM, Lighttpd configuration file, Lua, Mako, Mason, Mathematica, MiniZinc, Modula-2, MorrowindScript, MySQL, Myghty, NASM, Newspeak, Nginx configuration file, Nim, Nix, OCaml, Objective-C, Octave, Org Mode, PHP, PL/pgSQL, POVRay, PacmanConf, Perl, Pig, PkgConfig, PostScript, PostgreSQL SQL dialect, PowerShell, Prolog, Protocol Buffer, Puppet, Python, Python 3, QBasic, R, Racket, Ragel, Rexx, Ruby, Rust, SCSS, SPARQL, SQL, Sass, Scala, Scheme, Scilab, Smalltalk, Smarty, Snobol, Solidity, SquidConf, Swift, TASM, TOML, Tcl, Tcsh, TeX, Termcap, Terminfo, Terraform, Thrift, Transact-SQL, Turtle, Twig, TypeScript, TypoScript, TypoScriptCssData, TypoScriptHtmlData, VHDL, VimL, WDTE, XML, Xorg, YAML, cfstatement, markdown, reStructuredText, reg, systemverilog, verilog" />}}

To activate the highlighter use the Hugo {{% external href="https://gohugo.io/content-management/syntax-highlighting/#highlight-shortcode" %}}`highlight` shortcode{{% /external %}} or indicate the {{< external href="https://gohugo.io/content-management/syntax-highlighting/#list-of-chroma-highlighting-languages" text="highlighting language" />}} in a fenced code block within your markdown:

````
```go-html-template
<div class="alert {{ with .type }}alert-{{ . }}{{ end }}">
  {{ .body }}
</div>
```
````

Resulting in the following highlighted code:

```go-html-template
<div class="alert {{ with .type }}alert-{{ . }}{{ end }}">
  {{ .body }}
</div>
```

Or combine with the {{% external href="https://gohugo.io/content-management/syntax-highlighting/#highlight-shortcode" %}}`highlight` shortcode{{% /external %}} and `include` [Snippet](../page-snippets):

```html
{{</* highlight css */>}}
{{</* include file="themes/after-dark/static/css/syntax.css" */>}}
{{</* /highlight */>}}
```

To see the CSS used to display the highlighter highlighting highlighted:

{{< highlight css >}}
{{< include type="source" file="themes/after-dark/static/css/syntax.css" >}}
{{< /highlight >}}

And if you're really enterprising why not create some executable ASCII art representing the name of the game you implemented in the language used:

```brainfuck

                           Linus Akesson presents:
                  The Game Of Life implemented in Brainfuck

       +>>++++[<++++>-]<[<++++++>-]+[<[>>>>+<<<<-]>>>>[<<<<+>>>>>>+<<-]<+
   +++[>++++++++<-]>.[-]<+++[>+++<-]>+[>>.+<<-]>>[-]<<<++[<+++++>-]<.<<[>>>>+
 <<<<-]>>>>[<<<<+>>>>>>+<<-]<<[>>>>.+<<<++++++++++[<[>>+<<-]>>[<<+>>>>>++++++++
 +++<<<-]<[>+<-]>[<+>>>>+<<<-]>>>[>>>>>>>>>>>>+>+<<     <<<<<<<<<<<-]>>>>>>>>>>
>>[-[>>>>+<<<<-]>[>>>>+<<<<-]>>>]>      >>[<<<+>>  >-    ]<<<[>>+>+<<<-]>[->[<<<
<+>>>>-]<[<<<  <+>      >>>-]<<<< ]<     ++++++  ++       +[>+++++<-]>>[<<+>>-]<
<[>---<-]>.[- ]         <<<<<<<<< <      <<<<<< <         -]++++++++++.[-]<-]>>>
>[-]<[-]+++++           +++[>++++        ++++<     -     ]>--.[-]<,----------[<+
>-]>>>>>>+<<<<< <     <[>+>>>>>+>[      -]<<<      <<   <<-]>++++++++++>>>>>[[-]
<<,<<<<<<<->>>> >    >>[<<<<+>>>>-]<<<<[>>>>+      >+<<<<<-]>>>>>----------[<<<<
<<<<+<[>>>>+<<<      <-]>>>>[<<<<+>>>>>>+<<-      ]>[>-<-]>++++++++++[>+++++++++
++<-]<<<<<<[>>>      >+<<<<-]>>>>[<<<<+>>>>>      >+<<-]>>>>[<<->>-]<<++++++++++
[>+<-]>[>>>>>>>      >>>>>+>+<<<<      <<<<<      <<<<-]>>> >>     >>>>>>>[-[>>>
>+<<<<-]>[>>>>       +<<<<-]>> >       ]>> >           [<< <        +>>>-]+<<<[>
>>-<<<-]>[->[<      <<<+>>>>-]         <[ <            < <           <+>>>>-]<<<
<]<<<<<<<<<<<, [    -]]>]>[-+++        ++               +    +++     ++[>+++++++
++++>+++++++++ +    +<<-]>[-[>>>      +<<<-      ]>>>[ <    <<+      >>>>>>>+>+<
<<<<-]>>>>[-[> >    >>+<<<<-]>[>      >>>+< <    <<-]> >    >]>      >>[<<<+>>>-
]<<<[>>+>+<<< -     ]>[->[<<<<+>      >>>-] <    [<<< <    +>>       >>-]<<<<]<<
<<<<<<[>>>+<< <     -]>>>[<<<+>>      >>>>> +    >+<< <             <<-]<<[>>+<<
-]>>[<<+>>>>>      >+>+<<<<<-]>>      >>[-[ >    >>>+ <            <<<-]>[>>>>+<
<<<-]>[>>>>+<      <<<-]>>]>>>[ -    ]<[>+< -    ]<[ -           [<<<<+>>>>-]<<<
<]<<<<<<<<]<<      <<<<<<<<++++ +    +++++  [   >+++ +    ++++++[<[>>+<<-]>>[<<+
>>>>>++++++++ +    ++<<<     -] <    [>+<- ]    >[<+ >    >>>+<<<-]>>>[<<<+>>>-]
<<<[>>>+>>>>  >    +<<<<     <<      <<-]> >    >>>>       >>>[>>+<<-]>>[<<+<+>>
>-]<<<------ -    -----[     >>      >+<<< -    ]>>>       [<<<+> > >>>>>+>+<<<<
<-]>>>>[-[>> >    >+<<<<    -] >     [>>>> +    <<<<-       ]>>> ]  >>>[<<<+>>>-
]<<<[>>+>+<< <    -]>>>     >>           > >    [<<<+               >>>-]<<<[>>>
+<<<<<+>>-                  ]>           >     >>>>>[<             <<+>>>-]<<<[>
>>+<<<<<<<                  <<+         >      >>>>>-]<          <<<<<<[->[<<<<+
>>>>-]<[<<<<+>>>>-]<<<<]>[<<<<<<    <+>>>      >>>>-]<<<<     <<<<<+++++++++++[>
>>+<<<-]>>>[<<<+>>>>>>>+>+<<<<<-]>>>>[-[>     >>>+<<<<-]>[>>>>+<<<<-]>>>]>>>[<<<
+>>>-]<<<[>>+>+<<<-]>>>>>>>[<<<+>>>-]<<<[     >>>+<<<<<+>>-]>>>>>>>[<<<+>>>-]<<<
[>>>+<<<<<<<<<+>>>>>>-]<<<<<<<[->[< <  <     <+>>>>-]<[<<<<+>>>>-]<<<<]>[<<<<<<<
+>>>>>>>-]<<<<<<<<<+++++++++++[>>> >        >>>+>+<<<<<<<<-]>>>>>>>[-[>>>>+<<<<-
]>[>>>>+<<<<-]>>>]>>>[<<<+>>>-]<<< [       >>+>+<<<-]>>>>>>>[<<<+>>>-]<<<[>>>+<<
<<<+>>-]>>>>>>>[<<<+>>>-]<<<[>>>+<        <<<<<<<<+>>>>>>-]<<<<<<<[->[<<<<+>>>>-
 ]<[<<<<+>>>>-]<<<<]>[<<<<<<<+>>>>>      >>-]<<<<<<<----[>>>>>>>+<<<<<<<+[>>>>>
 >>-<<<<<<<[-]]<<<<<<<[>>>>>>>>>>>>+>+<<<<<<<<<<<<<-][   lft@df.lth.se   ]>>>>>
   >>>>>>>[-[>>>>+<<<<-]>[>>>>+<<<<-]>[>>>>+<<<<-]>>]>>>[-]<[>+<-]<[-[<<<<+>>
       >>-]<<<<]<<<<<<[-]]<<<<<<<[-]<<<<-]<-]>>>>>>>>>>>[-]<<]<<<<<<<<<<]

       Type for instance "fg" to toggle the cell at row f and column g
                  Hit enter to calculate the next generation
                                Type q to quit

```

That really is Brainfuck.
