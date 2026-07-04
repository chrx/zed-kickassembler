(
  (directive_statement
    (directive) @context
    (identifier) @name
    (block)) @item
  (#match? @context "^\\.(file)?namespace$")
)

(label_block
  (label_definition
    name: (identifier) @name)
  (block)) @item

(program
  (label_definition
    name: (identifier) @name) @item)

(block
  (label_definition
    name: (identifier) @name) @item)
