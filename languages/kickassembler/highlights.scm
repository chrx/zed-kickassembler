[
  (directive)
  (preprocessor_directive)
] @keyword

(opcode) @keyword
(else_keyword) @keyword
(control_keyword) @keyword

[
  (builtin_function)
  (macro_name)
] @function

(type_identifier) @type

[
  (colour_constant)
  (opcode_constant)
  (file_type_constant)
  (addressing_mode_constant)
  (cpu_constant)
  (math_constant)
  (boolean)
  (null)
] @constant

(number) @number

[
  (string)
  (char)
] @string

(escape_sequence) @string.escape

(comment) @comment

(label_definition name: (_) @label)
(argument_label name: (_) @label)
(multi_label_reference) @label

(assignment_statement left: (identifier) @variable)
(directive_statement (identifier) @variable)
(instruction_statement (identifier) @variable)
(macro_call_statement (identifier) @variable)
(expression_statement (identifier) @variable)
(immediate_unary_expression (identifier) @variable)
(immediate_identifier) @variable

(directive_statement
  (directive) @_directive
  .
  (identifier) @constant
  (#match? @_directive "^\\.const$"))

(directive_statement
  (directive) @_directive
  .
  (identifier) @variable
  (#match? @_directive "^\\.(var|label)$"))

(directive_statement
  (directive) @_directive
  .
  (identifier) @function
  (#match? @_directive "^\\.(macro|function|pseudocommand)$"))

(directive_statement
  (directive) @_directive
  (identifier)
  (punctuation) @_parameter_separator
  (identifier) @variable.parameter
  (#match? @_directive "^\\.(macro|function|pseudocommand)$")
  (#match? @_parameter_separator "^[,(]$"))

(macro_call_statement
  [
    (identifier)
    (immediate_identifier)
  ] @variable.parameter)

(register) @variable.special
(operator) @operator

[
  "{"
  "}"
] @punctuation.bracket

((punctuation) @punctuation.bracket
  (#match? @punctuation.bracket "^[()\\[\\]]$"))

((punctuation) @punctuation.delimiter
  (#match? @punctuation.delimiter "^[,;:]$"))
