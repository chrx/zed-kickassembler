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

[
  (number)
] @number

[
  (string)
  (char)
] @string

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

(register) @variable.special
(operator) @operator
(punctuation) @punctuation.delimiter
