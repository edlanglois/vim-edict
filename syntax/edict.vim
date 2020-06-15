if exists("b:current_syntax")
	finish
endif

syntax keyword edictConditional if then elif else fi
highlight link edictConditional Conditional
syntax keyword edictBoolean true false
highlight link edictBoolean Boolean

syntax keyword edictFunction read_date
syntax keyword edictFunction num
highlight link edictFunction Function

syntax match edictComment "\v#.*$"
highlight link edictComment Comment

syntax match edictOperator "\v\+"
syntax match edictOperator "\v-"
syntax match edictOperator "\v\*"
syntax match edictOperator "\v/"
syntax match edictOperator "\v\%"
syntax match edictOperator "\v\~"
syntax match edictOperator "\v\&"
syntax match edictOperator "\v\|"
syntax match edictOperator "\v\="
syntax match edictOperator "\v\<"
syntax match edictOperator "\v\>"
syntax match edictOperator "\v\=\="
syntax match edictOperator "\v\!\="
syntax match edictOperator "\v\<\="
syntax match edictOperator "\v\>\="
highlight link edictOperator Operator

syntax match edictHeaderFunction /^@\h\w*\>/
highlight link edictHeaderFunction PreProc

syntax match edictNumber "\v<\d+(\.\d*)?>"
highlight link edictNumber Number

syntax region edictString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link edictString String
syntax region edictRegex start=/\v\// skip=/\v\\./ end=/\v\//
highlight link edictRegex String

syntax region edictBracedIdentifier start=/\v\{/ skip=/\v\\./ end=/\v\}/
highlight link edictBracedIdentifier edictIdentifier
syntax match edictBareIdentifier "\v<\h\w*>"
highlight link edictBareIdentifier edictIdentifier
highlight link edictIdentifier Identifier

let b:current_syntax = "edict"
