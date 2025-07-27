evaluating (test 0 (p)) with an interpreter that uses applicative-order evaluation will result in an infinite loop.
. In this model, the interpreter will not evaluate the operands until their values are actually needed, returning 0 as their value.
