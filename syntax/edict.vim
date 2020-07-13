if exists("b:current_syntax")
	finish
endif

syntax keyword edictConditional if then elif else fi
highlight link edictConditional Conditional
syntax keyword edictBoolean true false
highlight link edictBoolean Boolean

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

syntax match edictDirective /\v\@\@?\h\w*>/
highlight link edictDirective PreProc

syntax match edictNumber "\v<\d+(\.\d*)?>"
highlight link edictNumber Number

syntax region edictString start=/\v"/ skip=/\v\\./ end=/\v"/ oneline
highlight link edictString String
syntax region edictRegex start=/\v\// skip=/\v\\./ end=/\v\// oneline
highlight link edictRegex String

syntax region edictBracedIdentifier start=/\v\{/ skip=/\v\\./ end=/\v\}/ oneline
highlight link edictBracedIdentifier edictIdentifier
syntax match edictBareIdentifier "\v<\h\w*>"
highlight link edictBareIdentifier edictIdentifier
highlight link edictIdentifier Identifier

syntax match edictFunction "\v<\h\w*\ze\("
highlight link edictFunction Function

let b:current_syntax = "edict"
