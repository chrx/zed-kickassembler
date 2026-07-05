; Brace-backed labels behave like routines/sections in Kick Assembler code.
(label_block
  (block) @function.inside) @function.around

; Namespace blocks are the closest analogue to class/module scopes.
(
  (directive_statement
    (directive) @_directive
    (identifier)
    (block) @class.inside) @class.around
  (#match? @_directive "^\\.(file)?namespace$")
)

(comment) @comment.around
