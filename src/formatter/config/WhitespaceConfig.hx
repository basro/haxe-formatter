package formatter.config;

typedef WhitespaceConfig = {
	/**
		"("
	**/
	@:default(NoneAfter) @:optional var openingParenPolicy:WhitespacePolicy;

	/**
		")"
	**/
	@:default(OnlyAfter) @:optional var closingParenPolicy:WhitespacePolicy;

	/**
		"["
	**/
	@:default(NoneAfter) @:optional var openingBracketPolicy:WhitespacePolicy;

	/**
		"]"
	**/
	@:default(None) @:optional var closingBracketPolicy:WhitespacePolicy;

	/**
		"{" except object literals
	**/
	@:default(Before) @:optional var openingBracePolicy:WhitespacePolicy;

	/**
		"}" except object literals
	**/
	@:default(After) @:optional var closingBracePolicy:WhitespacePolicy;

	/**
		"{" in object literal
	**/
	@:default(OnlyBefore) @:optional var objectOpeningBracePolicy:WhitespacePolicy;

	/**
		"}" in object literal
	**/
	@:default(OnlyAfter) @:optional var objectClosingBracePolicy:WhitespacePolicy;

	/**
		"<"
	**/
	@:default(None) @:optional var typeParamOpenPolicy:WhitespacePolicy;

	/**
		">"
	**/
	@:default(None) @:optional var typeParamClosePolicy:WhitespacePolicy;
	@:default(After) @:optional var typeExtensionPolicy:WhitespacePolicy;
	@:default(OnlyAfter) @:optional var commaPolicy:WhitespacePolicy;
	@:default(None) @:optional var dotPolicy:WhitespacePolicy;
	@:default(None) @:optional var colonPolicy:WhitespacePolicy;
	@:default(OnlyAfter) @:optional var caseColonPolicy:WhitespacePolicy;
	@:default(After) @:optional var objectFieldColonPolicy:WhitespacePolicy;
	@:default(None) @:optional var typeHintColonPolicy:WhitespacePolicy;
	@:default(Around) @:optional var typeCheckColonPolicy:WhitespacePolicy;
	@:default(Around) @:optional var ternaryPolicy:WhitespacePolicy;
	@:default(OnlyAfter) @:optional var semicolonPolicy:WhitespacePolicy;
	@:default(After) @:optional var ifPolicy:WhitespacePolicy;
	@:default(After) @:optional var doPolicy:WhitespacePolicy;
	@:default(After) @:optional var whilePolicy:WhitespacePolicy;
	@:default(After) @:optional var forPolicy:WhitespacePolicy;
	@:default(After) @:optional var switchPolicy:WhitespacePolicy;
	@:default(After) @:optional var tryPolicy:WhitespacePolicy;
	@:default(After) @:optional var catchPolicy:WhitespacePolicy;
	@:default(Around) @:optional var binopPolicy:WhitespacePolicy;
	@:default(None) @:optional var intervalPolicy:WhitespacePolicy;
	@:default(Around) @:optional var arrowFunctionsPolicy:WhitespacePolicy;
	@:default(None) @:optional var functionTypeHaxe3Policy:WhitespacePolicy;
	@:default(Around) @:optional var functionTypeHaxe4Policy:WhitespacePolicy;

	/**
		should formatter compress spaces for successive parenthesis `( [ {` vs. `([{`
	**/
	@:default(true) @:optional var compressSuccessiveParenthesis:Bool;

	/**
		should formatter try to format string interpolation expressions (e.g. '${x+3}' -> '${x + 3}')
		only applies spaces, no newlines or wrapping
	**/
	@:default(true) @:optional var formatStringInterpolation:Bool;
}
