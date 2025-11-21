package std.ast
import std.collection.ArrayList

public import std.collection.ArrayList

/**
 * @description Compares two sets of tokens for equality.
 * @param tokens1 The first set of tokens.
 * @param tokens2 The second set of tokens.
 * @returns `true` if the tokens are equal, `false` otherwise.
 */
@!APILevel[
    since: "22"
]
public func compareTokens(tokens1: Tokens, tokens2: Tokens): Bool

/**
 * @description Represents a declaration in the AST. This is a base class for various specific declarations.
 */
@!APILevel[
    since: "22"
]
public open class Decl <: Node {
    /**
     * @description The identifier token of the declaration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut open prop identifier: Token

    /**
     * @description The keyword token of the declaration (e.g., 'class', 'func').
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keyword: Token

    /**
     * @description A list of annotations applied to this declaration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop annotations: ArrayList<Annotation>

    /**
     * @description A list of modifiers for this declaration (e.g., 'public', 'open').
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop modifiers: ArrayList<Modifier>

    /**
     * @description The generic parameter of the declaration, if it exists.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop genericParam: GenericParam

    /**
     * @description A list of generic constraints for this declaration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop genericConstraint: ArrayList<GenericConstraint>

    /**
     * @description The comma tokens used in the generic constraint list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop constraintCommas: Tokens

    /**
     * @description Checks if the declaration has a specific attribute.
     * @param attr The name of the attribute to check.
     * @returns `true` if the attribute exists, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func hasAttr(attr: String): Bool

    /**
     * @description Gets all attribute tokens associated with this declaration.
     * @returns A `Tokens` object containing the attributes.
     */
    @!APILevel[
        since: "22"
    ]
    public func getAttrs(): Tokens

    /**
     * @description Indicates whether this is a generic declaration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop isGenericDecl: Bool

    /**
     * @description Converts the declaration node to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public open func toTokens(): Tokens

    /**
     * @description Traverses this declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public open func traverse(v: Visitor): Unit
}

/**
 * @description Represents a class declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class ClassDecl <: Decl {
    /**
     * @description Initializes a `ClassDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ClassDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The upper bound token for generic type constraints.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop upperBound: Token

    /**
     * @description A list of super types that this class inherits from.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop superTypes: ArrayList<TypeNode>

    /**
     * @description The bitwise AND tokens used in the super type list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop superTypeBitAnds: Tokens

    /**
     * @description The body of the class declaration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop body: Body

    /**
     * @description Converts the class declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this class declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a struct declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class StructDecl <: Decl {
    /**
     * @description Initializes a `StructDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `StructDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The upper bound token for generic type constraints.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop upperBound: Token

    /**
     * @description A list of super types that this struct implements.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop superTypes: ArrayList<TypeNode>

    /**
     * @description The bitwise AND tokens used in the super type list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop superTypeBitAnds: Tokens

    /**
     * @description The body of the struct declaration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop body: Body

    /**
     * @description Converts the struct declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this struct declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an interface declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class InterfaceDecl <: Decl {
    /**
     * @description Initializes an `InterfaceDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `InterfaceDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The upper bound token for generic type constraints.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop upperBound: Token

    /**
     * @description A list of super types that this interface extends.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop superTypes: ArrayList<TypeNode>

    /**
     * @description The bitwise AND tokens used in the super type list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop superTypeBitAnds: Tokens

    /**
     * @description The body of the interface declaration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop body: Body

    /**
     * @description Converts the interface declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this interface declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an enum declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class EnumDecl <: Decl {
    /**
     * @description Initializes an `EnumDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `EnumDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The upper bound token for generic type constraints.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop upperBound: Token

    /**
     * @description A list of super types that this enum implements.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop superTypes: ArrayList<TypeNode>

    /**
     * @description The bitwise AND tokens used in the super type list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop superTypeBitAnds: Tokens

    /**
     * @description The opening brace token of the enum body.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lBrace: Token

    /**
     * @description A list of constructors (cases) for this enum.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop constructors: ArrayList<Constructor>

    /**
     * @description A list of member declarations within the enum.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop decls: ArrayList<Decl>

    /**
     * @description The closing brace token of the enum body.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rBrace: Token

    /**
     * @description The ellipsis token, if present.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop ellipsis: Token

    /**
     * @description Converts the enum declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this enum declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an extend declaration in the AST, used for extending existing types.
 */
@!APILevel[
    since: "22"
]
public class ExtendDecl <: Decl {
    /**
     * @description Initializes an `ExtendDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ExtendDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The identifier of the extension, which is overridden.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut override prop identifier: Token

    /**
     * @description The type being extended.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop extendType: TypeNode

    /**
     * @description The upper bound token for generic type constraints.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop upperBound: Token

    /**
     * @description A list of super types that this extension conforms to.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop superTypes: ArrayList<TypeNode>

    /**
     * @description The bitwise AND tokens used in the super type list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop superTypeBitAnds: Tokens

    /**
     * @description The body of the extension.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop body: Body

    /**
     * @description Converts the extend declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this extend declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a function declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class FuncDecl <: Decl {
    /**
     * @description Initializes a `FuncDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `FuncDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Tokens representing an operator overload, if any.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop overloadOp: Tokens

    /**
     * @description The opening parenthesis of the parameter list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of function parameters.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop funcParams: ArrayList<FuncParam>

    /**
     * @description The closing parenthesis of the parameter list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The colon token separating the parameter list from the return type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The return type of the function.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop declType: TypeNode

    /**
     * @description The body of the function as a block of code.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description Checks if the function is declared as constant.
     * @returns `true` if the function is constant, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isConst(): Bool

    /**
     * @description Converts the function declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this function declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents the main function declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class MainDecl <: Decl {
    /**
     * @description Initializes a `MainDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `MainDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening parenthesis of the parameter list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of function parameters.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop funcParams: ArrayList<FuncParam>

    /**
     * @description The closing parenthesis of the parameter list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The colon token separating the parameter list from the return type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The return type of the main function.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop declType: TypeNode

    /**
     * @description The body of the main function as a block of code.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description Converts the main function declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this main function declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a macro declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class MacroDecl <: Decl {
    /**
     * @description Initializes a `MacroDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `MacroDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening parenthesis of the parameter list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of macro parameters.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop funcParams: ArrayList<FuncParam>

    /**
     * @description The closing parenthesis of the parameter list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The colon token separating the parameter list from the return type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The return type of the macro.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop declType: TypeNode

    /**
     * @description The body of the macro as a block of code.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description Converts the macro declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this macro declaration node with a visitor.
     * @param v The visitor to use for traversal.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a primary constructor declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class PrimaryCtorDecl <: Decl {
    /**
     * @description Initializes a `PrimaryCtorDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `PrimaryCtorDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening parenthesis of the parameter list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of constructor parameters.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop funcParams: ArrayList<FuncParam>

    /**
     * @description The closing parenthesis of the parameter list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The body of the constructor as a block of code.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description Checks if the constructor is declared as constant.
     * @returns `true` if the constructor is constant, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isConst(): Bool

    /**
     * @description Converts the primary constructor declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this primary constructor declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a variable declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class VarDecl <: Decl {
    /**
     * @description Initializes a `VarDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `VarDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The pattern used in the variable declaration (e.g., for destructuring).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop pattern: Pattern

    /**
     * @description The colon token separating the pattern from the type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The declared type of the variable.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop declType: TypeNode

    /**
     * @description The assignment token (`=`).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop assign: Token

    /**
     * @description The initialization expression for the variable.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop expr: Expr

    /**
     * @description Checks if the variable is declared as constant (`let`).
     * @returns `true` if the variable is constant, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isConst(): Bool

    /**
     * @description Converts the variable declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this variable declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a function parameter in the AST.
 */
@!APILevel[
    since: "22"
]
public open class FuncParam <: Decl {
    /**
     * @description Initializes a `FuncParam` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `FuncParam`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `not` token, if present.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop not: Token

    /**
     * @description The colon token separating the parameter name from its type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The type of the parameter.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop paramType: TypeNode

    /**
     * @description The assignment token (`=`) for a default value.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop assign: Token

    /**
     * @description The default value expression for the parameter.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop expr: Expr

    /**
     * @description Checks if this is a member parameter (e.g., `prop` or `mut prop`).
     * @returns `true` if it is a member parameter, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isMemberParam(): Bool

    /**
     * @description Converts the function parameter to its token representation.
     * @returns A `Tokens` object representing this parameter.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public open func toTokens(): Tokens

    /**
     * @description Traverses this function parameter node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public open func traverse(v: Visitor): Unit
}

/**
 * @description Represents a property declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class PropDecl <: Decl {
    /**
     * @description Initializes a `PropDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `PropDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The colon token separating the property name from its type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The type of the property.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop declType: TypeNode

    /**
     * @description The opening brace for the getter/setter block.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lBrace: Token

    /**
     * @description The getter function declaration for the property.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop getter: FuncDecl

    /**
     * @description The setter function declaration for the property.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop setter: FuncDecl

    /**
     * @description The closing brace for the getter/setter block.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rBrace: Token

    /**
     * @description Converts the property declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this property declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a type alias declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class TypeAliasDecl <: Decl {
    /**
     * @description Initializes a `TypeAliasDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `TypeAliasDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The assignment token (`=`).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop assign: Token

    /**
     * @description The type that is being aliased.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop aliasType: TypeNode

    /**
     * @description Converts the type alias declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this type alias declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a macro expansion used as a declaration in the AST.
 */
@!APILevel[
    since: "22"
]
public class MacroExpandDecl <: Decl {
    /**
     * @description Initializes a `MacroExpandDecl` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `MacroExpandDecl`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The full identifier of the macro being expanded.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop fullIdentifier: Token

    /**
     * @description The opening square bracket `[` for macro attributes.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lSquare: Token

    /**
     * @description The attributes passed to the macro.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop macroAttrs: Tokens

    /**
     * @description The closing square bracket `]` for macro attributes.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rSquare: Token

    /**
     * @description The opening parenthesis `(` for macro inputs.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The input tokens passed to the macro.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop macroInputs: Tokens

    /**
     * @description The closing parenthesis `)` for macro inputs.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The declaration generated from the macro input.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop macroInputDecl: Decl

    /**
     * @description Converts the macro expansion declaration to its token representation.
     * @returns A `Tokens` object representing this declaration.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this macro expansion declaration node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a macro expansion used as a function parameter in the AST.
 */
@!APILevel[
    since: "22"
]
public class MacroExpandParam <: FuncParam {
    /**
     * @description Initializes an empty `MacroExpandParam`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The full identifier of the macro being expanded.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop fullIdentifier: Token

    /**
     * @description The opening square bracket `[` for macro attributes.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lSquare: Token

    /**
     * @description The attributes passed to the macro.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop macroAttrs: Tokens

    /**
     * @description The closing square bracket `]` for macro attributes.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rSquare: Token

    /**
     * @description The opening parenthesis `(` for macro inputs.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The input tokens passed to the macro.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop macroInputs: Tokens

    /**
     * @description The closing parenthesis `)` for macro inputs.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The declaration generated from the macro input.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop macroInputDecl: Decl

    /**
     * @description Converts the macro expansion parameter to its token representation.
     * @returns A `Tokens` object representing this parameter.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this macro expansion parameter node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents the severity level for a diagnostic report.
 */
@!APILevel[
    since: "22"
]
public enum DiagReportLevel {
    /**
     * @description Represents an error-level diagnostic.
     */
    @!APILevel[
        since: "22"
    ]
    ERROR |
    /**
     * @description Represents a warning-level diagnostic.
     */
    @!APILevel[
        since: "22"
    ]
    WARNING
    /**
     * @description Gets the integer value of the report level.
     * @returns The integer representation of the level.
     */
    @!APILevel[
        since: "22"
    ]
    public func level(): Int32
}

/**
 * @description Reports a diagnostic message (error or warning).
 * @param level The severity level of the diagnostic.
 * @param tokens The tokens associated with the diagnostic.
 * @param message The main diagnostic message.
 * @param hint An optional hint for resolving the issue.
 * @throws ASTException if there is an AST-related error.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func diagReport(level: DiagReportLevel, tokens: Tokens, message: String, hint: String): Unit

/**
 * @description An exception thrown for errors related to the Abstract Syntax Tree (AST).
 */
@!APILevel[
    since: "22"
]
public class ASTException <: Exception {
    /**
     * @description Initializes a new `ASTException`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a new `ASTException` with a specified message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description An exception thrown for errors that occur during AST parsing.
 */
@!APILevel[
    since: "22"
]
public class ParseASTException <: Exception {
    /**
     * @description Initializes a new `ParseASTException`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a new `ParseASTException` with a specified message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Represents an expression in the AST. This is a base class for all expression types.
 */
@!APILevel[
    since: "22"
]
public open class Expr <: Node {
    /**
     * @description Converts the expression node to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public open func toTokens(): Tokens

    /**
     * @description Traverses this expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public open func traverse(v: Visitor): Unit
}

/**
 * @description Represents a block of code (a sequence of statements enclosed in braces) in the AST.
 */
@!APILevel[
    since: "22"
]
public class Block <: Expr {
    /**
     * @description Initializes an empty `Block`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening brace token of the block.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lBrace: Token

    /**
     * @description A list of nodes (statements and declarations) within the block.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop nodes: ArrayList<Node>

    /**
     * @description The closing brace token of the block.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rBrace: Token

    /**
     * @description Converts the block to its token representation.
     * @returns A `Tokens` object representing this block.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this block node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}


/**
 * @description Represents a binary expression in the AST, such as `a + b`.
 */
@!APILevel[
    since: "22"
]
public class BinaryExpr <: Expr {
    /**
     * @description Initializes a `BinaryExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `BinaryExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The left-hand side expression.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop leftExpr: Expr

    /**
     * @description The binary operator token.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop op: Token

    /**
     * @description The right-hand side expression.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop rightExpr: Expr

    /**
     * @description Converts the binary expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this binary expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a unary expression in the AST, such as `-a` or `!b`.
 */
@!APILevel[
    since: "22"
]
public class UnaryExpr <: Expr {
    /**
     * @description Initializes a `UnaryExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `UnaryExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The unary operator token.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop op: Token

    /**
     * @description The expression the operator is applied to.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description Converts the unary expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this unary expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a type checking `is` expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class IsExpr <: Expr {
    /**
     * @description Initializes an `IsExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `IsExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The expression to be type-checked.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description The `is` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The type to check against.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop shiftType: TypeNode

    /**
     * @description Converts the `is` expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this `is` expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a type casting `as` expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class AsExpr <: Expr {
    /**
     * @description Initializes an `AsExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `AsExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The expression to be cast.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description The `as` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The type to cast to.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop shiftType: TypeNode

    /**
     * @description Converts the `as` expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this `as` expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a parenthesized expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class ParenExpr <: Expr {
    /**
     * @description Initializes a `ParenExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ParenExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening parenthesis token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The expression enclosed in parentheses.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop parenthesizedExpr: Expr

    /**
     * @description The closing parenthesis token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the parenthesized expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this parenthesized expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a literal constant expression in the AST (e.g., numbers, strings).
 */
@!APILevel[
    since: "22"
]
public class LitConstExpr <: Expr {
    /**
     * @description Initializes a `LitConstExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `LitConstExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The token representing the literal value.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop literal: Token

    /**
     * @description Converts the literal constant expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this literal constant expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a reference expression (e.g., a variable or function name) in the AST.
 */
@!APILevel[
    since: "22"
]
public class RefExpr <: Expr {
    /**
     * @description Initializes a `RefExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `RefExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The identifier token of the reference.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop identifier: Token

    /**
     * @description The opening angle bracket for generic type arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lAngle: Token

    /**
     * @description A list of type arguments for a generic reference.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop typeArguments: ArrayList<TypeNode>

    /**
     * @description The comma tokens used in the type argument list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop commas: Tokens

    /**
     * @description The closing angle bracket for generic type arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rAngle: Token

    /**
     * @description Converts the reference expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this reference expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `return` expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class ReturnExpr <: Expr {
    /**
     * @description Initializes a `ReturnExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ReturnExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `return` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The expression to be returned, if any.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop expr: Expr

    /**
     * @description Converts the return expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this return expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `throw` expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class ThrowExpr <: Expr {
    /**
     * @description Initializes a `ThrowExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ThrowExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `throw` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The expression to be thrown.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description Converts the throw expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this throw expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `perform` expression in the AST, used with effects.
 */
@!APILevel[
    since: "22"
]
public class PerformExpr <: Expr {
    /**
     * @description Initializes a `PerformExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `PerformExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `perform` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The expression to be performed.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description Converts the perform expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this perform expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `resume` expression in the AST, used with effects.
 */
@!APILevel[
    since: "22"
]
public class ResumeExpr <: Expr {
    /**
     * @description Initializes a `ResumeExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ResumeExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `resume` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordR : Token

    /**
     * @description The optional `with` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordW : Option<Token>

    /**
     * @description The optional expression to resume with.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop withExpr: Option<Expr>

    /**
     * @description The optional `throwing` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordT : Option<Token>

    /**
     * @description The optional expression to resume by throwing.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop throwingExpr: Option<Expr>

    /**
     * @description Converts the resume expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this resume expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an assignment expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class AssignExpr <: Expr {
    /**
     * @description Initializes an `AssignExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `AssignExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The assignment operator token (e.g., `=`, `+=`).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop assign: Token

    /**
     * @description The left-hand side expression (the target of the assignment).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop leftExpr: Expr

    /**
     * @description The right-hand side expression (the value to assign).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop rightExpr: Expr

    /**
     * @description Converts the assignment expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this assignment expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a function or method call expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class CallExpr <: Expr {
    /**
     * @description Initializes a `CallExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `CallExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The expression that evaluates to the function being called.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop callFunc: Expr

    /**
     * @description The opening parenthesis of the argument list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of arguments passed to the function.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop arguments: ArrayList<Argument>

    /**
     * @description The closing parenthesis of the argument list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the call expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this call expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a member access expression (e.g., `object.field`) in the AST.
 */
@!APILevel[
    since: "22"
]
public class MemberAccess <: Expr {
    /**
     * @description Initializes a `MemberAccess` expression from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `MemberAccess` expression.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The base expression from which the member is accessed.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop baseExpr: Expr

    /**
     * @description The dot token used for member access.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop dot: Token

    /**
     * @description The token representing the name of the member being accessed.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop field: Token

    /**
     * @description The opening angle bracket for generic type arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lAngle: Token

    /**
     * @description A list of type arguments for a generic member access.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop typeArguments: ArrayList<TypeNode>

    /**
     * @description The comma tokens used in the type argument list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop commas: Tokens

    /**
     * @description The closing angle bracket for generic type arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rAngle: Token

    /**
     * @description Converts the member access expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this member access expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an `if-else` expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class IfExpr <: Expr {
    /**
     * @description Initializes an `IfExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `IfExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `if` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordI: Token

    /**
     * @description The opening parenthesis for the condition.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The condition expression.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop condition: Expr

    /**
     * @description The closing parenthesis for the condition.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The block of code to execute if the condition is true.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop ifBlock: Block

    /**
     * @description The `else` keyword token, if present.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordE: Token

    /**
     * @description The expression or block to execute if the condition is false.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop elseExpr: Expr

    /**
     * @description Converts the if-else expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this if-else expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `let` pattern matching expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class LetPatternExpr <: Expr {
    /**
     * @description Initializes a `LetPatternExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `LetPatternExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `let` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The pattern to match against.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop pattern: Pattern

    /**
     * @description The back arrow token (`<-`).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop backArrow: Token

    /**
     * @description The expression to match the pattern against.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description Converts the let-pattern expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this let-pattern expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `match` expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class MatchExpr <: Expr {
    /**
     * @description Initializes a `MatchExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `MatchExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `match` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The opening parenthesis for the selector.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The expression being matched.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop selector: Expr

    /**
     * @description The closing parenthesis for the selector.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The opening brace for the match cases.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lBrace: Token

    /**
     * @description A list of cases for the match expression.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop matchCases: ArrayList<MatchCase>

    /**
     * @description The closing brace for the match cases.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rBrace: Token

    /**
     * @description Converts the match expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this match expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `while` loop expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class WhileExpr <: Expr {
    /**
     * @description Initializes a `WhileExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `WhileExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `while` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The opening parenthesis for the condition.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The loop condition expression.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop condition: Expr

    /**
     * @description The closing parenthesis for the condition.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The body of the loop as a block of code.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description Converts the while expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this while expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `do-while` loop expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class DoWhileExpr <: Expr {
    /**
     * @description Initializes a `DoWhileExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `DoWhileExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `do` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordD: Token

    /**
     * @description The body of the loop as a block of code.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description The `while` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordW: Token

    /**
     * @description The opening parenthesis for the condition.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The loop condition expression.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop condition: Expr

    /**
     * @description The closing parenthesis for the condition.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the do-while expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this do-while expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a lambda expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class LambdaExpr <: Expr {
    /**
     * @description Initializes a `LambdaExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `LambdaExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening brace of the lambda body.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lBrace: Token

    /**
     * @description A list of parameters for the lambda.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop funcParams: ArrayList<FuncParam>

    /**
     * @description The double arrow token (`=>`) separating parameters from the body.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop doubleArrow: Token

    /**
     * @description A list of nodes (statements) in the lambda body.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop nodes: ArrayList<Node>

    /**
     * @description The closing brace of the lambda body.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rBrace: Token

    /**
     * @description Converts the lambda expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this lambda expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `spawn` expression in the AST, used for creating concurrent tasks.
 */
@!APILevel[
    since: "22"
]
public class SpawnExpr <: Expr {
    /**
     * @description Initializes a `SpawnExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `SpawnExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `spawn` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The opening parenthesis for the thread context.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The thread context expression.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop threadContext: Expr

    /**
     * @description The closing parenthesis for the thread context.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The lambda expression representing the task to be spawned.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop lambdaExpr: LambdaExpr

    /**
     * @description Converts the spawn expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this spawn expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `synchronized` expression in the AST for mutual exclusion.
 */
@!APILevel[
    since: "22"
]
public class SynchronizedExpr <: Expr {
    /**
     * @description Initializes a `SynchronizedExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `SynchronizedExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `synchronized` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The opening parenthesis for the lock object.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The expression for the structured mutex (lock object).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop structuredMutex: Expr

    /**
     * @description The closing parenthesis for the lock object.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The block of code to be executed under the lock.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description Converts the synchronized expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this synchronized expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a trailing closure expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class TrailingClosureExpr <: Expr {
    /**
     * @description Initializes a `TrailingClosureExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `TrailingClosureExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The main expression (e.g., the function call) to which the closure is attached.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description The lambda expression that forms the trailing closure.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop lambdaExpr: LambdaExpr

    /**
     * @description Converts the trailing closure expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this trailing closure expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a primitive type conversion expression in the AST, e.g., `Int(x)`.
 */
@!APILevel[
    since: "22"
]
public class TypeConvExpr <: Expr {
    /**
     * @description Initializes a `TypeConvExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `TypeConvExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The target primitive type for the conversion.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop targetType: PrimitiveType

    /**
     * @description The opening parenthesis token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The expression to be converted.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description The closing parenthesis token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the type conversion expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this type conversion expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a `for-in` loop expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class ForInExpr <: Expr {
    /**
     * @description Initializes a `ForInExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ForInExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `for` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordF: Token

    /**
     * @description The opening parenthesis token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The pattern to bind variables for each iteration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop pattern: Pattern

    /**
     * @description The `in` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordI: Token

    /**
     * @description The expression to iterate over.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description The `where` keyword token for a pattern guard.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keywordW: Token

    /**
     * @description The optional guard expression (`where` clause).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop patternGuard: Expr

    /**
     * @description The closing parenthesis token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The body of the loop.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description Converts the for-in expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this for-in expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a primitive type keyword as an expression (e.g., `Int`, `String`).
 */
@!APILevel[
    since: "22"
]
public class PrimitiveTypeExpr <: Expr {
    /**
     * @description Initializes a `PrimitiveTypeExpr` from a set of tokens.
     * @param kind The tokens representing the primitive type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(kind: Tokens)

    /**
     * @description Initializes an empty `PrimitiveTypeExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The token representing the primitive type keyword.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description Converts the primitive type expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this primitive type expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an array literal expression in the AST, e.g., `[1, 2, 3]`.
 */
@!APILevel[
    since: "22"
]
public class ArrayLiteral <: Expr {
    /**
     * @description Initializes an `ArrayLiteral` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ArrayLiteral`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening square bracket `[` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lSquare: Token

    /**
     * @description A list of expressions for the array elements.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop elements: ArrayList<Expr>

    /**
     * @description The closing square bracket `]` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rSquare: Token

    /**
     * @description Converts the array literal to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this array literal node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a tuple literal expression in the AST, e.g., `(1, "a")`.
 */
@!APILevel[
    since: "22"
]
public class TupleLiteral <: Expr {
    /**
     * @description Initializes a `TupleLiteral` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `TupleLiteral`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening parenthesis `(` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of expressions for the tuple elements.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop elements: ArrayList<Expr>

    /**
     * @description The closing parenthesis `)` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the tuple literal to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this tuple literal node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a range expression in the AST, e.g., `1..10` or `1...10`.
 */
@!APILevel[
    since: "22"
]
public class RangeExpr <: Expr {
    /**
     * @description Initializes a `RangeExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `RangeExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The start expression of the range.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop start: Expr

    /**
     * @description The range operator token (`..` or `...`).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop op: Token

    /**
     * @description The end expression of the range.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop end: Expr

    /**
     * @description The colon token `:` for specifying a step.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The step expression for the range.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop step: Expr

    /**
     * @description Converts the range expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this range expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a subscript expression for accessing elements of a collection, e.g., `array[i]`.
 */
@!APILevel[
    since: "22"
]
public class SubscriptExpr <: Expr {
    /**
     * @description Initializes a `SubscriptExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `SubscriptExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The base expression being subscripted (e.g., the array or dictionary).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop baseExpr: Expr

    /**
     * @description The opening square bracket `[` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lSquare: Token

    /**
     * @description A list of index expressions.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop indexList: ArrayList<Expr>

    /**
     * @description The closing square bracket `]` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rSquare: Token

    /**
     * @description Converts the subscript expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this subscript expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a jump expression like `break` or `continue`.
 */
@!APILevel[
    since: "22"
]
public class JumpExpr <: Expr {
    /**
     * @description Initializes a `JumpExpr` from a set of tokens.
     * @param kind The tokens representing the jump keyword.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(kind: Tokens)

    /**
     * @description Initializes an empty `JumpExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The keyword token (`break` or `continue`).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description Converts the jump expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this jump expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a pre-increment, pre-decrement, post-increment, or post-decrement expression.
 */
@!APILevel[
    since: "22"
]
public class IncOrDecExpr <: Expr {
    /**
     * @description Initializes an `IncOrDecExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `IncOrDecExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The increment (`++`) or decrement (`--`) operator token.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop op: Token

    /**
     * @description The expression being incremented or decremented.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description Converts the increment/decrement expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this increment/decrement expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a handler in a `try-handle` expression.
 */
@!APILevel[
    since: "22"
]
public class Handler {
}

/**
 * @description Represents a `try-catch-finally` or `try-handle` expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class TryExpr <: Expr {
    /**
     * @description Initializes a `TryExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `TryExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `try` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordT: Token

    /**
     * @description A list of resource specifications for try-with-resources.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop resourceSpec: ArrayList<VarDecl>

    /**
     * @description The main block of code to be executed.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop tryBlock: Block

    /**
     * @description The `catch` keyword tokens.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordsC: Tokens

    /**
     * @description A list of patterns for the `catch` blocks.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop catchPatterns: ArrayList<Pattern>

    /**
     * @description A list of blocks corresponding to the `catch` patterns.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop catchBlocks: ArrayList<Block>

    /**
     * @description A list of handlers for `try-handle` expressions.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop handlers: ArrayList<Handler>

    /**
     * @description The `finally` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordF: Token

    /**
     * @description The `finally` block, which is always executed.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop finallyBlock: Block

    /**
     * @description Converts the try expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this try expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an optional chaining expression (`?.`).
 */
@!APILevel[
    since: "22"
]
public class OptionalExpr <: Expr {
    /**
     * @description Initializes an empty `OptionalExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes an `OptionalExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description The base expression that is optional.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop baseExpr: Expr

    /**
     * @description The question mark `?` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop quest: Token

    /**
     * @description Converts the optional expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this optional expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a quoted token sequence within a macro.
 */
@!APILevel[
    since: "22"
]
public class QuoteToken <: Expr {
    /**
     * @description The sequence of tokens being quoted.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop tokens: Tokens

    /**
     * @description Converts the quoted tokens to their token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this quoted token node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a quote expression in the AST, used for metaprogramming.
 */
@!APILevel[
    since: "22"
]
public class QuoteExpr <: Expr {
    /**
     * @description Initializes a `QuoteExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `QuoteExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `quote` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The opening parenthesis `(` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of expressions being quoted.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop exprs: ArrayList<Expr>

    /**
     * @description The closing parenthesis `)` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the quote expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this quote expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a wildcard expression `_` in the AST, typically used in patterns.
 */
@!APILevel[
    since: "22"
]
public class WildcardExpr <: Expr {
    /**
     * @description Initializes a `WildcardExpr` from a set of tokens.
     * @param keyword The tokens representing the wildcard.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(keyword: Tokens)

    /**
     * @description Initializes an empty `WildcardExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The wildcard `_` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description Converts the wildcard expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this wildcard expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a SIMD vector array expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class VArrayExpr <: Expr {
    /**
     * @description Initializes a `VArrayExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `VArrayExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The SIMD vector array type.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop vArrayType: VArrayType

    /**
     * @description The opening parenthesis `(` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of arguments for the vector array constructor.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop arguments: ArrayList<Argument>

    /**
     * @description The closing parenthesis `)` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the SIMD vector array expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this SIMD vector array expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a macro expansion expression in the AST, e.g., `@myMacro[...] (...)`.
 */
@!APILevel[
    since: "22"
]
public class MacroExpandExpr <: Expr {
    /**
     * @description Initializes a `MacroExpandExpr` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `MacroExpandExpr`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The at `@` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop at: Token

    /**
     * @description The identifier token of the macro being expanded.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop identifier: Token

    /**
     * @description The opening square bracket `[` for macro attributes.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lSquare: Token

    /**
     * @description The attributes passed to the macro.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop macroAttrs: Tokens

    /**
     * @description The closing square bracket `]` for macro attributes.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rSquare: Token

    /**
     * @description The opening parenthesis `(` for macro inputs.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The inputs passed to the macro.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop macroInputs: Tokens

    /**
     * @description The closing parenthesis `)` for macro inputs.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the macro expansion expression to its token representation.
     * @returns A `Tokens` object representing this expression.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this macro expansion expression node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Performs lexical analysis on a string of Cangjie code, converting it into a sequence of tokens.
 * @param code The source code string to tokenize.
 * @returns A `Tokens` object containing the sequence of lexical tokens.
 * @throws IllegalArgumentException if an argument is invalid.
 * @throws IllegalMemoryException if a memory allocation fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func cangjieLex(code: String): Tokens

/**
 * @description Performs lexical analysis on a string of Cangjie code, with an option for truncated input.
 * @param code The source code string to tokenize.
 * @param truncated A boolean indicating if the code is a truncated snippet.
 * @returns A `Tokens` object containing the sequence of lexical tokens.
 * @throws IllegalArgumentException if an argument is invalid.
 * @throws IllegalMemoryException if a memory allocation fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func cangjieLex(code: String, truncated: Bool): Tokens

/**
 * @description An exception thrown for errors related to macro context.
 */
@!APILevel[
    since: "22"
]
public class MacroContextException <: Exception {
    /**
     * @description Initializes a new `MacroContextException`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a new `MacroContextException` with a specified error message.
     * @param message The detail message.
     */
    @!APILevel[
        since: "22"
    ]
    public init(message: String)
}

/**
 * @description Asserts that the current macro is being expanded within the context of a specified parent macro.
 * @param parentMacroName The name of the expected parent macro.
 * @throws IllegalMemoryException if a memory allocation fails.
 * @throws MacroContextException if the assertion fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func assertParentContext(parentMacroName: String): Unit

/**
 * @description Checks if the current macro is being expanded within the context of a specified parent macro.
 * @param parentMacroName The name of the parent macro to check for.
 * @returns `true` if inside the parent context, `false` otherwise.
 * @throws IllegalMemoryException if a memory allocation fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func insideParentContext(parentMacroName: String): Bool

/**
 * @description Sets a string value in the macro context, associated with a key.
 * @param key The key to associate the value with.
 * @param value The string value to set.
 * @throws IllegalArgumentException if an argument is invalid.
 * @throws IllegalMemoryException if a memory allocation fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func setItem(key: String, value: String): Unit

/**
 * @description Sets an Int64 value in the macro context, associated with a key.
 * @param key The key to associate the value with.
 * @param value The Int64 value to set.
 * @throws IllegalArgumentException if an argument is invalid.
 * @throws IllegalMemoryException if a memory allocation fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func setItem(key: String, value: Int64): Unit

/**
 * @description Sets a boolean value in the macro context, associated with a key.
 * @param key The key to associate the value with.
 * @param value The boolean value to set.
 * @throws IllegalArgumentException if an argument is invalid.
 * @throws IllegalMemoryException if a memory allocation fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func setItem(key: String, value: Bool): Unit

/**
 * @description Sets a `Tokens` value in the macro context, associated with a key.
 * @param key The key to associate the value with.
 * @param value The `Tokens` value to set.
 * @throws IllegalArgumentException if an argument is invalid.
 * @throws IllegalMemoryException if a memory allocation fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func setItem(key: String, value: Tokens): Unit

/**
 * @description Represents a message passed between macros, containing key-value data.
 */
@!APILevel[
    since: "22"
]
public class MacroMessage {
    /**
     * @description Checks if the message contains a value for the specified key.
     * @param key The key to check.
     * @returns `true` if the key exists, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func hasItem(key: String): Bool

    /**
     * @description Retrieves a string value from the message by its key.
     * @param key The key of the value to retrieve.
     * @returns The string value associated with the key.
     * @throws Exception if the key is not found or the value is not a string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getString(key: String): String

    /**
     * @description Retrieves an Int64 value from the message by its key.
     * @param key The key of the value to retrieve.
     * @returns The Int64 value associated with the key.
     * @throws Exception if the key is not found or the value is not a string.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getInt64(key: String): Int64

    /**
     * @description Retrieves a boolean value from the message by its key.
     * @param key The key of the value to retrieve.
     * @returns The boolean value associated with the key.
     * @throws Exception if the key is not found or the value is not a boolean.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getBool(key: String): Bool

    /**
     * @description Retrieves a `Tokens` value from the message by its key.
     * @param key The key of the value to retrieve.
     * @returns The `Tokens` value associated with the key.
     * @throws Exception if the key is not found or the value is not `Tokens`.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func getTokens(key: String): Tokens
}

/**
 * @description Retrieves messages from child macros with a specific name.
 * @param children The name of the child macros to get messages from.
 * @returns An `ArrayList` of `MacroMessage` objects from the specified children.
 * @throws IllegalMemoryException if a memory allocation fails
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func getChildMessages(children: String): ArrayList<MacroMessage>

/**
 * @description The base class for all nodes in the Abstract Syntax Tree (AST).
 */
@!APILevel[
    since: "22"
]
abstract sealed class Node <: ToTokens {
    /**
     * @description The starting position of this node in the source code.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop beginPos: Position

    /**
     * @description The ending position of this node in the source code.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop endPos: Position

    /**
     * @description Converts the AST node back into its token representation.
     * @returns A `Tokens` object representing this node.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this AST node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit

    /**
     * @description Dumps a debug representation of the AST node to standard output.
     */
    @!APILevel[
        since: "22"
    ]
    public func dump(): Unit
}

/**
 * @description Represents an annotation in the AST, e.g., `@Override`.
 */
@!APILevel[
    since: "22"
]
public class Annotation <: Node {
    /**
     * @description Initializes an `Annotation` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `Annotation`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The at `@` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop at: Token

    /**
     * @description The identifier token of the annotation.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop identifier: Token

    /**
     * @description A list of arguments passed to the annotation.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop arguments: ArrayList<Argument>

    /**
     * @description The attributes of the annotation.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop attributes: Tokens

    /**
     * @description The optional condition expression for the annotation.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop condition: Expr

    /**
     * @description Converts the annotation to its token representation.
     * @returns A `Tokens` object representing this annotation.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this annotation node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a modifier keyword in the AST, such as `public`, `static`, etc.
 */
@!APILevel[
    since: "22"
]
public class Modifier <: Node {
    /**
     * @description Initializes a `Modifier` with a keyword token.
     * @param keyword The token representing the modifier.
     */
    @!APILevel[
        since: "22"
    ]
    public init(keyword: Token)

    /**
     * @description Initializes an empty `Modifier`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The token representing the modifier keyword.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keyword: Token

    /**
     * @description Converts the modifier to its token representation.
     * @returns A `Tokens` object representing this modifier.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this modifier node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a generic parameter declaration in the AST, e.g., `<T: Any>`.
 */
@!APILevel[
    since: "22"
]
public class GenericParam <: Node {
    /**
     * @description Initializes a `GenericParam` from a set of tokens.
     * @param parameters The tokens representing the generic parameters.
     */
    @!APILevel[
        since: "22"
    ]
    public init(parameters: Tokens)

    /**
     * @description Initializes an empty `GenericParam`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening angle bracket `<` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lAngle: Token

    /**
     * @description The tokens representing the generic parameters.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop parameters: Tokens

    /**
     * @description The closing angle bracket `>` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rAngle: Token

    /**
     * @description Converts the generic parameter to its token representation.
     * @returns A `Tokens` object representing this generic parameter.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this generic parameter node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a trailing closure expression in the AST.
 */
@!APILevel[
    since: "22"
]
public class GenericConstraint <: Node {
    /**
     * @description Initializes an empty `GenericConstraint`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `where` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description The type argument being constrained (e.g., `T`).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop typeArgument: TypeNode

    /**
     * @description The colon token `:` indicating an upper bound.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop upperBound: Token

    /**
     * @description A list of types that form the upper bounds of the constraint.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop upperBounds: ArrayList<TypeNode>

    /**
     * @description The bitwise AND `&` tokens used to separate multiple upper bounds.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop bitAnds: Tokens

    /**
     * @description Converts the generic constraint to its token representation.
     * @returns A `Tokens` object representing this constraint.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this generic constraint node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a body of a class, interface, or extension, containing declarations.
 */
@!APILevel[
    since: "22"
]
public class Body <: Node {
    /**
     * @description Initializes a `Body` with a list of declarations.
     * @param decls The list of declarations within the body.
     */
    @!APILevel[
        since: "22"
    ]
    public init(decls: ArrayList<Decl>)

    /**
     * @description Initializes an empty `Body`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening brace `{` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lBrace: Token

    /**
     * @description The list of declarations within the body.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop decls: ArrayList<Decl>

    /**
     * @description The closing brace `}` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rBrace: Token

    /**
     * @description Converts the body to its token representation.
     * @returns A `Tokens` object representing this body.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this body node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an argument in a function call, which can be named or positional.
 */
@!APILevel[
    since: "22"
]
public class Argument <: Node {
    /**
     * @description Initializes an empty `Argument`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The keyword token for the argument (e.g., `inout`).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keyword: Token

    /**
     * @description The identifier for a named argument.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop identifier: Token

    /**
     * @description The colon token `:` separating a named argument's identifier from its value.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The expression providing the value of the argument.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop expr: Expr

    /**
     * @description Converts the argument to its token representation.
     * @returns A `Tokens` object representing this argument.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this argument node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a single case in a `match` expression.
 */
@!APILevel[
    since: "22"
]
public class MatchCase <: Node {
    /**
     * @description Initializes an empty `MatchCase`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `case` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordC: Token

    /**
     * @description The expression for a `case` that matches a specific value.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop expr: Expr

    /**
     * @description A list of patterns for this case. Multiple patterns can be separated by `|`.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop patterns: ArrayList<Pattern>

    /**
     * @description The bitwise OR `|` tokens used to separate multiple patterns.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop bitOrs: Tokens

    /**
     * @description The `where` keyword token for a pattern guard.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordW: Token

    /**
     * @description The optional guard expression (`where` clause).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop patternGuard: Expr

    /**
     * @description The arrow token `->` separating the pattern from the case body.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop arrow: Token

    /**
     * @description The block of code to execute for this case.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop block: Block

    /**
     * @description Converts the match case to its token representation.
     * @returns A `Tokens` object representing this match case.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this match case node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents the root of a Cangjie source file, containing package info, imports, and declarations.
 */
@!APILevel[
    since: "22"
]
public class Program <: Node {
    /**
     * @description Initializes a `Program` from a set of tokens, parsing the entire source file.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `Program`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The package header declaration.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop packageHeader: PackageHeader

    /**
     * @description A list of import statements.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop importLists: ArrayList<ImportList>

    /**
     * @description A list of top-level declarations in the program.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop decls: ArrayList<Decl>

    /**
     * @description Converts the program to its token representation.
     * @returns A `Tokens` object representing this program.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this program node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents the package header at the beginning of a source file.
 */
@!APILevel[
    since: "22"
]
public class PackageHeader <: Node {
    /**
     * @description Initializes a `PackageHeader` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `PackageHeader`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The accessibility modifier token (e.g., `public`).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop accessible: Token

    /**
     * @description The `module` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordM: Token

    /**
     * @description The `package` keyword token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keywordP: Token

    /**
     * @description The path components of the package name.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop prefixPaths: Tokens

    /**
     * @description The dot `.` tokens separating package path components.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop prefixDots: Tokens

    /**
     * @description The final identifier of the package name.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop packageIdentifier: Token

    /**
     * @description Converts the package header to its token representation.
     * @returns A `Tokens` object representing this package header.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this package header node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description An enumeration of the different kinds of import statements.
 */
@!APILevel[
    since: "22"
]
public enum ImportKind <: ToString {
    /**
     * @description A single, specific import, e.g., `import std.io.File`.
     */
    @!APILevel[
        since: "22"
    ]
    Single |
    /**
     * @description An import with an alias, e.g., `import std.io.File as MyFile`.
     */
    @!APILevel[
        since: "22"
    ]
    Alias |
    /**
     * @description A wildcard import, e.g., `import std.io.*`.
     */
    @!APILevel[
        since: "22"
    ]
    All |
    /**
     * @description An import of multiple items from the same package, e.g., `import std.io.{File, Dir}`.
     */
    @!APILevel[
        since: "22"
    ]
    Multi
    /**
     * @description Converts the enum value to its string representation.
     * @returns The string name of the enum value.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Represents the content of an import statement, detailing what is being imported.
 */
@!APILevel[
    since: "22"
]
public class ImportContent <: Node {
    /**
     * @description Initializes an empty `ImportContent`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The kind of import (e.g., Single, Alias, All, Multi).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop importKind: ImportKind

    /**
     * @description The path components of the import.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop prefixPaths: Tokens

    /**
     * @description The dot `.` tokens separating the import path components.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop prefixDots: Tokens

    /**
     * @description The identifier being imported.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop identifier: Token

    /**
     * @description The alias for the import, if any.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop importAlias: Tokens

    /**
     * @description The opening brace `{` for a multi-import.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lBrace: Token

    /**
     * @description A list of nested import content items for a multi-import.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop items: ArrayList<ImportContent>

    /**
     * @description The comma tokens separating items in a multi-import.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop commas: Tokens

    /**
     * @description The closing brace `}` for a multi-import.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rBrace: Token

    /**
     * @description Checks if this is an import with an alias.
     * @returns `true` if it is an alias import, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isImportAlias(): Bool

    /**
     * @description Checks if this is a wildcard import.
     * @returns `true` if it is a wildcard import, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isImportAll(): Bool

    /**
     * @description Checks if this is a multi-item import.
     * @returns `true` if it is a multi-item import, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isImportMulti(): Bool

    /**
     * @description Checks if this is a single-item import.
     * @returns `true` if it is a single-item import, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isImportSingle(): Bool

    /**
     * @description Converts the import content to its token representation.
     * @returns A `Tokens` object representing this import content.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this import content node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a full import statement, including modifiers and content.
 */
@!APILevel[
    since: "22"
]
public class ImportList <: Node {
    /**
     * @description Initializes an `ImportList` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ImportList`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The modifier token for the import (e.g., `public`).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop modifier: Token

    /**
     * @description The `import` keyword token.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keywordI: Token

    /**
     * @description The content of the import statement.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop content: ImportContent

    /**
     * @description Checks if this is a multi-item import.
     * @returns `true` if it is a multi-item import, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isImportMulti(): Bool

    /**
     * @description Converts the import list to its token representation.
     * @returns A `Tokens` object representing this import list.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this import list node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a constructor call within an enum pattern.
 */
@!APILevel[
    since: "22"
]
public class Constructor <: Node {
    /**
     * @description Initializes an empty `Constructor`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description A list of annotations on the constructor.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop annotations: ArrayList<Annotation>

    /**
     * @description The identifier token of the constructor.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop identifier: Token

    /**
     * @description The opening parenthesis `(` for type arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of type arguments for a generic constructor.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop typeArguments: ArrayList<TypeNode>

    /**
     * @description The closing parenthesis `)` for type arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the constructor to its token representation.
     * @returns A `Tokens` object representing this constructor.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this constructor node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

extend<T> ArrayList<T> <: ToTokens {
    /**
     * @description Converts the `ArrayList` of AST nodes to its token representation.
     * @returns A `Tokens` object representing the contents of the list.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func toTokens(): Tokens
}

extend<T> Array<T> <: ToTokens {
    /**
     * @description Converts the `Array` of AST nodes to its token representation.
     * @returns A `Tokens` object representing the contents of the array.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

/**
 * @description Parses a sequence of tokens into a single top-level declaration.
 * @param input The tokens to parse.
 * @param astKind An optional string specifying the expected kind of declaration.
 * @returns The parsed `Decl` node.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parseDecl(input: Tokens, astKind!: String = ""): Decl

/**
 * @description Parses a fragment of tokens into a single declaration, returning the declaration and the number of tokens consumed.
 * @param input The tokens to parse.
 * @param startFrom The index to start parsing from.
 * @returns A tuple containing the parsed `Decl` node and the number of tokens consumed.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parseDeclFragment(input: Tokens, startFrom!: Int64 = 0): (Decl, Int64)

/**
 * @description Parses a sequence of tokens into a single expression.
 * @param input The tokens to parse.
 * @returns The parsed `Expr` node.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parseExpr(input: Tokens): Expr

/**
 * @description Parses a fragment of tokens into a single expression, returning the expression and the number of tokens consumed.
 * @param input The tokens to parse.
 * @param startFrom The index to start parsing from.
 * @returns A tuple containing the parsed `Expr` node and the number of tokens consumed.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parseExprFragment(input: Tokens, startFrom!: Int64 = 0): (Expr, Int64)

/**
 * @description Parses a sequence of tokens into a full program AST.
 * @param input The tokens representing the entire source file.
 * @returns The parsed `Program` node.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parseProgram(input: Tokens): Program

/**
 * @description Parses a sequence of tokens into a single pattern.
 * @param input The tokens to parse.
 * @returns The parsed `Pattern` node.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parsePattern(input: Tokens): Pattern

/**
 * @description Parses a fragment of tokens into a single pattern, returning the pattern and the number of tokens consumed.
 * @param input The tokens to parse.
 * @param startFrom The index to start parsing from.
 * @returns A tuple containing the parsed `Pattern` node and the number of tokens consumed.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parsePatternFragment(input: Tokens, startFrom!: Int64 = 0): (Pattern, Int64)

/**
 * @description Parses a sequence of tokens into a single type node.
 * @param input The tokens to parse.
 * @returns The parsed `TypeNode`.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parseType(input: Tokens): TypeNode

/**
 * @description Parses a fragment of tokens into a single type node, returning the type and the number of tokens consumed.
 * @param input The tokens to parse.
 * @param startFrom The index to start parsing from.
 * @returns A tuple containing the parsed `TypeNode` and the number of tokens consumed.
 * @throws ParseASTException if parsing fails.
 */
@!APILevel[
    since: "22",
    throwexception: true
]
public func parseTypeFragment(input: Tokens, startFrom!: Int64 = 0): (TypeNode, Int64)

/**
 * @description The base class for all pattern nodes in the AST.
 */
@!APILevel[
    since: "22"
]
public open class Pattern <: Node {
    /**
     * @description Converts the pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public open func toTokens(): Tokens

    /**
     * @description Traverses this pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public open func traverse(v: Visitor): Unit
}

/**
 * @description Represents a constant pattern, matching a literal value.
 */
@!APILevel[
    since: "22"
]
public class ConstPattern <: Pattern {
    /**
     * @description Initializes a `ConstPattern` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ConstPattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The literal constant expression to match.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop litConstExpr: LitConstExpr

    /**
     * @description Converts the constant pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this constant pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a wildcard pattern `_`, which matches any value.
 */
@!APILevel[
    since: "22"
]
public class WildcardPattern <: Pattern {
    /**
     * @description Initializes a `WildcardPattern` from a token.
     * @param keyword The token representing the wildcard.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(keyword: Tokens)

    /**
     * @description Initializes an empty `WildcardPattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The wildcard `_` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop wildcard: Token

    /**
     * @description Converts the wildcard pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this wildcard pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a variable pattern, which binds a matched value to a new variable.
 */
@!APILevel[
    since: "22"
]
public class VarPattern <: Pattern {
    /**
     * @description Initializes a `VarPattern` with an identifier token.
     * @param identifier The token for the variable name.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(identifier: Token)

    /**
     * @description Initializes an empty `VarPattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The identifier token for the variable.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop identifier: Token

    /**
     * @description Converts the variable pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this variable pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a pattern that could be either a variable or an enum case.
 */
@!APILevel[
    since: "22"
]
public class VarOrEnumPattern <: Pattern {
    /**
     * @description Initializes a `VarOrEnumPattern` with an identifier token.
     * @param identifier The token for the identifier.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(identifier: Token)

    /**
     * @description Initializes an empty `VarOrEnumPattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The identifier token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop identifier: Token

    /**
     * @description Converts the pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a pattern with an explicit exception type constraint.
 */
@!APILevel[
    since: "22"
]
public class ExceptTypePattern <: Pattern {
    /**
     * @description Initializes an empty `ExceptTypePattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes an `ExceptTypePattern` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description The inner pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop pattern: Pattern

    /**
     * @description The colon token `:`.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description A list of exception types for the constraint.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop types: ArrayList<TypeNode>

    /**
     * @description Converts the pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a pattern with a command type constraint.
 */
@!APILevel[
    since: "22"
]
public class CommandTypePattern <: Pattern {
    /**
     * @description Initializes an empty `CommandTypePattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a `CommandTypePattern` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description The inner pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop pattern: Pattern

    /**
     * @description The colon token `:`.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description A list of command types for the constraint.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop types: ArrayList<TypeNode>

    /**
     * @description Converts the pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a pattern with an explicit type annotation, e.g., `x: Int`.
 */
@!APILevel[
    since: "22"
]
public class TypePattern <: Pattern {
    /**
     * @description Initializes an empty `TypePattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a `TypePattern` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description The inner pattern being typed.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop pattern: Pattern

    /**
     * @description The colon token `:`.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description The type being annotated on the pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop patternType: TypeNode

    /**
     * @description Converts the type pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this type pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents an enum pattern, used for matching enum cases and their associated values.
 */
@!APILevel[
    since: "22"
]
public class EnumPattern <: Pattern {
    /**
     * @description Initializes an empty `EnumPattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes an `EnumPattern` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description The constructor expression for the enum case.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop constructor: Expr

    /**
     * @description The opening parenthesis `(` for associated value patterns.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of patterns for the associated values of the enum case.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop patterns: ArrayList<Pattern>

    /**
     * @description The comma tokens separating associated value patterns.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop commas: Tokens

    /**
     * @description The closing parenthesis `)` for associated value patterns.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the enum pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this enum pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a tuple pattern, used for destructuring tuple values.
 */
@!APILevel[
    since: "22"
]
public class TuplePattern <: Pattern {
    /**
     * @description Initializes an empty `TuplePattern`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a `TuplePattern` from a set of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description The opening parenthesis `(` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of patterns for the elements of the tuple.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop patterns: ArrayList<Pattern>

    /**
     * @description The comma tokens separating the element patterns.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop commas: Tokens

    /**
     * @description The closing parenthesis `)` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the tuple pattern to its token representation.
     * @returns A `Tokens` object representing this pattern.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this tuple pattern node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a position in a source file, including file ID, line, and column.
 */
@!APILevel[
    since: "22"
]
public struct Position <: ToBytes {
    /**
     * @description The ID of the source file.
     */
    @!APILevel[
        since: "22"
    ]
    public let fileID: UInt32

    /**
     * @description The line number in the source file (1-based).
     */
    @!APILevel[
        since: "22"
    ]
    public let line: Int32

    /**
     * @description The column number in the source file (1-based).
     */
    @!APILevel[
        since: "22"
    ]
    public let column: Int32

    /**
     * @description Initializes an empty `Position` (typically with zero values).
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a `Position` with a file ID, line, and column.
     * @param fileID The ID of the source file.
     * @param line The line number.
     * @param column The column number.
     */
    @!APILevel[
        since: "22"
    ]
    public init(fileID: UInt32, line: Int32, column: Int32)

    /**
     * @description Checks if the position is empty (uninitialized).
     * @returns `true` if the position is empty, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func isEmpty(): Bool

    /**
     * @description Compares this position with another for equality.
     * @param r The other `Position` to compare with.
     * @returns `true` if both positions are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: Position): Bool

    /**
     * @description Compares this position with another for inequality.
     * @param r The other `Position` to compare with.
     * @returns `true` if the positions are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: Position): Bool

    /**
     * @description Dumps a debug representation of the position to standard output.
     */
    @!APILevel[
        since: "22"
    ]
    public func dump(): Unit

    /**
     * @description Converts the position to a byte array representation.
     * @returns An `Array<UInt8>` representing the position.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBytes(): Array<UInt8>
}

/**
 * @description An interface for objects that can be converted to a byte array.
 */
@!APILevel[
    since: "22"
]
public interface ToBytes {
    /**
     * @description Converts the object to a byte array representation.
     * @returns An `Array<UInt8>` representing the object.
     */
    @!APILevel[
        since: "22"
    ]
    func toBytes(): Array<UInt8>
}
/**
 * @description Represents a single lexical token in the source code, with a kind, value, and position.
 */
@!APILevel[
    since: "22"
]
public struct Token <: ToBytes {
    /**
     * @description The kind of the token (e.g., `IDENTIFIER`, `LPAREN`).
     */
    @!APILevel[
        since: "22"
    ]
    public let kind: TokenKind

    /**
     * @description The string value of the token (e.g., the variable name for an `IDENTIFIER`).
     */
    @!APILevel[
        since: "22"
    ]
    public let value: String

    /**
     * @description The position of the token in the source file.
     */
    @!APILevel[
        since: "22"
    ]
    public let pos: Position

    /**
     * @description The number of delimiters.
     */
    @!APILevel[
        since: "22"
    ]
    public var delimiterNum: UInt16 = 1

    /**
     * @description Initializes an empty `Token`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a `Token` with a specific kind.
     * @param kind The kind of the token.
     */
    @!APILevel[
        since: "22"
    ]
    public init(kind: TokenKind)

    /**
     * @description Initializes a `Token` with a kind and a value.
     * @param kind The kind of the token.
     * @param value The string value of the token.
     * @throws IllegalArgumentException if the input kind does not match the value.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(kind: TokenKind, value: String)

    /**
     * @description Creates a new token with an updated source position.
     * @param fileID The ID of the source file.
     * @param line The line number.
     * @param colum The column number.
     * @returns A new `Token` with the specified position.
     */
    @!APILevel[
        since: "22"
    ]
    public func addPosition(fileID: UInt32, line: Int32, colum: Int32): Token

    /**
     * @description Compares this token with another for equality.
     * @param r The other `Token` to compare with.
     * @returns `true` if both tokens are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(r: Token): Bool

    /**
     * @description Compares this token with another for inequality.
     * @param r The other `Token` to compare with.
     * @returns `true` if the tokens are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(r: Token): Bool

    /**
     * @description Concatenates this token with a `Tokens` object.
     * @param r The `Tokens` object to append.
     * @returns A new `Tokens` object containing this token followed by the contents of `r`.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(r: Tokens): Tokens

    /**
     * @description Concatenates this token with another token.
     * @param r The `Token` to append.
     * @returns A new `Tokens` object containing both tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(r: Token): Tokens

    /**
     * @description Dumps a debug representation of the token to standard output.
     */
    @!APILevel[
        since: "22"
    ]
    public func dump(): Unit

    /**
     * @description Converts the token to a byte array representation.
     * @returns An `Array<UInt8>` representing the token.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBytes(): Array<UInt8>
}

/**
 * @description An enumeration of all possible kinds of tokens in the Cangjie language.
 */
@!APILevel[
    since: "22"
]
public enum TokenKind <: ToString {
    /**
     * @description The `.` token.
     */
    @!APILevel[
        since: "22"
    ]
    DOT |
    /**
     * @description The `,` token.
     */
    @!APILevel[
        since: "22"
    ]
    COMMA |
    /**
     * @description The `(` token.
     */
    @!APILevel[
        since: "22"
    ]
    LPAREN |
    /**
     * @description The `)` token.
     */
    @!APILevel[
        since: "22"
    ]
    RPAREN |
    /**
     * @description The `[` token.
     */
    @!APILevel[
        since: "22"
    ]
    LSQUARE |
    /**
     * @description The `]` token.
     */
    @!APILevel[
        since: "22"
    ]
    RSQUARE |
    /**
     * @description The `{` token.
     */
    @!APILevel[
        since: "22"
    ]
    LCURL |
    /**
     * @description The `}` token.
     */
    @!APILevel[
        since: "22"
    ]
    RCURL |
    /**
     * @description The `**` token for exponentiation.
     */
    @!APILevel[
        since: "22"
    ]
    EXP |
    /**
     * @description The `*` token for multiplication.
     */
    @!APILevel[
        since: "22"
    ]
    MUL |
    /**
     * @description The `%` token for modulo.
     */
    @!APILevel[
        since: "22"
    ]
    MOD |
    /**
     * @description The `/` token for division.
     */
    @!APILevel[
        since: "22"
    ]
    DIV |
    /**
     * @description The `+` token for addition.
     */
    @!APILevel[
        since: "22"
    ]
    ADD |
    /**
     * @description The `-` token for subtraction.
     */
    @!APILevel[
        since: "22"
    ]
    SUB |
    /**
     * @description The `++` token for increment.
     */
    @!APILevel[
        since: "22"
    ]
    INCR |
    /**
     * @description The `--` token for decrement.
     */
    @!APILevel[
        since: "22"
    ]
    DECR |
    /**
     * @description The `&&` token for logical AND.
     */
    @!APILevel[
        since: "22"
    ]
    AND |
    /**
     * @description The `||` token for logical OR.
     */
    @!APILevel[
        since: "22"
    ]
    OR |
    /**
     * @description The `??` token for null coalescing.
     */
    @!APILevel[
        since: "22"
    ]
    COALESCING |
    /**
     * @description The `|>` token for pipeline.
     */
    @!APILevel[
        since: "22"
    ]
    PIPELINE |
    /**
     * @description The `<|` token for composition.
     */
    @!APILevel[
        since: "22"
    ]
    COMPOSITION |
    /**
     * @description The `!` token for logical NOT.
     */
    @!APILevel[
        since: "22"
    ]
    NOT |
    /**
     * @description The `&` token for bitwise AND.
     */
    @!APILevel[
        since: "22"
    ]
    BITAND |
    /**
     * @description The `|` token for bitwise OR.
     */
    @!APILevel[
        since: "22"
    ]
    BITOR |
    /**
     * @description The `^` token for bitwise XOR.
     */
    @!APILevel[
        since: "22"
    ]
    BITXOR |
    /**
     * @description The `~` token for bitwise NOT.
     */
    @!APILevel[
        since: "22"
    ]
    BITNOT |
    /**
     * @description The `<<` token for left shift.
     */
    @!APILevel[
        since: "22"
    ]
    LSHIFT |
    /**
     * @description The `>>` token for right shift.
     */
    @!APILevel[
        since: "22"
    ]
    RSHIFT |
    /**
     * @description The `:` token.
     */
    @!APILevel[
        since: "22"
    ]
    COLON |
    /**
     * @description The `;` token.
     */
    @!APILevel[
        since: "22"
    ]
    SEMI |
    /**
     * @description The `=` token for assignment.
     */
    @!APILevel[
        since: "22"
    ]
    ASSIGN |
    /**
     * @description The `+=` token.
     */
    @!APILevel[
        since: "22"
    ]
    ADD_ASSIGN |
    /**
     * @description The `-=` token.
     */
    @!APILevel[
        since: "22"
    ]
    SUB_ASSIGN |
    /**
     * @description The `*=` token.
     */
    @!APILevel[
        since: "22"
    ]
    MUL_ASSIGN |
    /**
     * @description The `**=` token.
     */
    @!APILevel[
        since: "22"
    ]
    EXP_ASSIGN |
    /**
     * @description The `/=` token.
     */
    @!APILevel[
        since: "22"
    ]
    DIV_ASSIGN |
    /**
     * @description The `%=` token.
     */
    @!APILevel[
        since: "22"
    ]
    MOD_ASSIGN |
    /**
     * @description The `&&=` token.
     */
    @!APILevel[
        since: "22"
    ]
    AND_ASSIGN |
    /**
     * @description The `||=` token.
     */
    @!APILevel[
        since: "22"
    ]
    OR_ASSIGN |
    /**
     * @description The `&=` token.
     */
    @!APILevel[
        since: "22"
    ]
    BITAND_ASSIGN |
    /**
     * @description The `|=` token.
     */
    @!APILevel[
        since: "22"
    ]
    BITOR_ASSIGN |
    /**
     * @description The `^=` token.
     */
    @!APILevel[
        since: "22"
    ]
    BITXOR_ASSIGN |
    /**
     * @description The `<<=` token.
     */
    @!APILevel[
        since: "22"
    ]
    LSHIFT_ASSIGN |
    /**
     * @description The `>>=` token.
     */
    @!APILevel[
        since: "22"
    ]
    RSHIFT_ASSIGN |
    /**
     * @description The `->` token.
     */
    @!APILevel[
        since: "22"
    ]
    ARROW |
    /**
     * @description The `<-` token.
     */
    @!APILevel[
        since: "22"
    ]
    BACKARROW |
    /**
     * @description The `=>` token.
     */
    @!APILevel[
        since: "22"
    ]
    DOUBLE_ARROW |
    /**
     * @description The `..<` token for half-open range.
     */
    @!APILevel[
        since: "22"
    ]
    RANGEOP |
    /**
     * @description The `...` token for closed range.
     */
    @!APILevel[
        since: "22"
    ]
    CLOSEDRANGEOP |
    /**
     * @description The `...` token for variadic arguments.
     */
    @!APILevel[
        since: "22"
    ]
    ELLIPSIS |
    /**
     * @description The `#` token.
     */
    @!APILevel[
        since: "22"
    ]
    HASH |
    /**
     * @description The `@` token.
     */
    @!APILevel[
        since: "22"
    ]
    AT |
    /**
     * @description The `?` token.
     */
    @!APILevel[
        since: "22"
    ]
    QUEST |
    /**
     * @description The `<` token for less than.
     */
    @!APILevel[
        since: "22"
    ]
    LT |
    /**
     * @description The `>` token for greater than.
     */
    @!APILevel[
        since: "22"
    ]
    GT |
    /**
     * @description The `<=` token for less than or equal.
     */
    @!APILevel[
        since: "22"
    ]
    LE |
    /**
     * @description The `>=` token for greater than or equal.
     */
    @!APILevel[
        since: "22"
    ]
    GE |
    /**
     * @description The `is` keyword token.
     */
    @!APILevel[
        since: "22"
    ]
    IS |
    /**
     * @description The `as` keyword token.
     */
    @!APILevel[
        since: "22"
    ]
    AS |
    /**
     * @description The `!=` token for not equal.
     */
    @!APILevel[
        since: "22"
    ]
    NOTEQ |
    /**
     * @description The `==` token for equal.
     */
    @!APILevel[
        since: "22"
    ]
    EQUAL |
    /**
     * @description The `_` token for wildcard.
     */
    @!APILevel[
        since: "22"
    ]
    WILDCARD |
    /**
     * @description The `Int8` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    INT8 |
    /**
     * @description The `Int16` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    INT16 |
    /**
     * @description The `Int32` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    INT32 |
    /**
     * @description The `Int64` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    INT64 |
    /**
     * @description The `IntNative` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    INTNATIVE |
    /**
     * @description The `UInt8` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    UINT8 |
    /**
     * @description The `UInt16` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    UINT16 |
    /**
     * @description The `UInt32` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    UINT32 |
    /**
     * @description The `UInt64` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    UINT64 |
    /**
     * @description The `UIntNative` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    UINTNATIVE |
    /**
     * @description The `Float16` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    FLOAT16 |
    /**
     * @description The `Float32` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    FLOAT32 |
    /**
     * @description The `Float64` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    FLOAT64 |
    /**
     * @description The `Rune` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    RUNE |
    /**
     * @description The `Boolean` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    BOOLEAN |
    /**
     * @description The `Nothing` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    NOTHING |
    /**
     * @description The `Unit` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    UNIT |
    /**
     * @description The `struct` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    STRUCT |
    /**
     * @description The `enum` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    ENUM |
    /**
     * @description The `varray` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    VARRAY |
    /**
     * @description The `This` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    THISTYPE |
    /**
     * @description The `package` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    PACKAGE |
    /**
     * @description The `import` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    IMPORT |
    /**
     * @description The `class` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    CLASS |
    /**
     * @description The `interface` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    INTERFACE |
    /**
     * @description The `func` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    FUNC |
    /**
     * @description The `macro` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    MACRO |
    /**
     * @description The `quote` keyword for quasi-quoting.
     */
    @!APILevel[
        since: "22"
    ]
    QUOTE |
    /**
     * @description The `$` token for macro unquoting.
     */
    @!APILevel[
        since: "22"
    ]
    DOLLAR |
    /**
     * @description The `let` keyword for immutable bindings.
     */
    @!APILevel[
        since: "22"
    ]
    LET |
    /**
     * @description The `var` keyword for mutable bindings.
     */
    @!APILevel[
        since: "22"
    ]
    VAR |
    /**
     * @description The `const` keyword for compile-time constants.
     */
    @!APILevel[
        since: "22"
    ]
    CONST |
    /**
     * @description The `type` keyword for type aliases.
     */
    @!APILevel[
        since: "22"
    ]
    TYPE |
    /**
     * @description The `init` keyword for constructors.
     */
    @!APILevel[
        since: "22"
    ]
    INIT |
    /**
     * @description The `this` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    THIS |
    /**
     * @description The `super` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    SUPER |
    /**
     * @description The `if` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    IF |
    /**
     * @description The `else` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    ELSE |
    /**
     * @description The `case` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    CASE |
    /**
     * @description The `try` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    TRY |
    /**
     * @description The `catch` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    CATCH |
    /**
     * @description The `finally` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    FINALLY |
    /**
     * @description The `for` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    FOR |
    /**
     * @description The `do` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    DO |
    /**
     * @description The `while` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    WHILE |
    /**
     * @description The `throw` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    THROW |
    /**
     * @description The `return` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    RETURN |
    /**
     * @description The `continue` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    CONTINUE |
    /**
     * @description The `break` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    BREAK |
    /**
     * @description The `in` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    IN |
    /**
     * @description The `!in` operator.
     */
    @!APILevel[
        since: "22"
    ]
    NOT_IN |
    /**
     * @description The `match` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    MATCH |
    /**
     * @description The `where` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    WHERE |
    /**
     * @description The `extend` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    EXTEND |
    /**
     * @description The `with` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    WITH |
    /**
     * @description The `prop` keyword for properties.
     */
    @!APILevel[
        since: "22"
    ]
    PROP |
    /**
     * @description The `static` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    STATIC |
    /**
     * @description The `public` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    PUBLIC |
    /**
     * @description The `private` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    PRIVATE |
    /**
     * @description The `internal` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    INTERNAL |
    /**
     * @description The `protected` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    PROTECTED |
    /**
     * @description The `override` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    OVERRIDE |
    /**
     * @description The `redef` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    REDEF |
    /**
     * @description The `abstract` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    ABSTRACT |
    /**
     * @description The `sealed` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    SEALED |
    /**
     * @description The `open` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    OPEN |
    /**
     * @description The `foreign` modifier.
     */
    @!APILevel[
        since: "22"
    ]
    FOREIGN |
    /**
     * @description The `inout` parameter modifier.
     */
    @!APILevel[
        since: "22"
    ]
    INOUT |
    /**
     * @description The `mut` modifier for mutable variables.
     */
    @!APILevel[
        since: "22"
    ]
    MUT |
    /**
     * @description The `unsafe` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    UNSAFE |
    /**
     * @description The `operator` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    OPERATOR |
    /**
     * @description The `spawn` keyword for concurrency.
     */
    @!APILevel[
        since: "22"
    ]
    SPAWN |
    /**
     * @description The `synchronized` keyword.
     */
    @!APILevel[
        since: "22"
    ]
    SYNCHRONIZED |
    /**
     * @description The `UpperBound` type keyword.
     */
    @!APILevel[
        since: "22"
    ]
    UPPERBOUND |
    /**
     * @description The `main` function identifier.
     */
    @!APILevel[
        since: "22"
    ]
    MAIN |
    /**
     * @description A general identifier.
     */
    @!APILevel[
        since: "22"
    ]
    IDENTIFIER |
    /**
     * @description A package identifier.
     */
    @!APILevel[
        since: "22"
    ]
    PACKAGE_IDENTIFIER |
    /**
     * @description An integer literal.
     */
    @!APILevel[
        since: "22"
    ]
    INTEGER_LITERAL |
    /**
     * @description A rune byte literal.
     */
    @!APILevel[
        since: "22"
    ]
    RUNE_BYTE_LITERAL |
    /**
     * @description A floating-point literal.
     */
    @!APILevel[
        since: "22"
    ]
    FLOAT_LITERAL |
    /**
     * @description A comment.
     */
    @!APILevel[
        since: "22"
    ]
    COMMENT |
    /**
     * @description A newline character.
     */
    @!APILevel[
        since: "22"
    ]
    NL |
    /**
     * @description The end-of-file marker.
     */
    @!APILevel[
        since: "22"
    ]
    END |
    /**
     * @description A sentinel token, used internally by the parser.
     */
    @!APILevel[
        since: "22"
    ]
    SENTINEL |
    /**
     * @description A rune literal.
     */
    @!APILevel[
        since: "22"
    ]
    RUNE_LITERAL |
    /**
     * @description A double-quoted string literal.
     */
    @!APILevel[
        since: "22"
    ]
    STRING_LITERAL |
    /**
     * @description A single-quoted string literal.
     */
    @!APILevel[
        since: "22"
    ]
    SINGLE_QUOTED_STRING_LITERAL |
    /**
     * @description A J-string literal for interoperability.
     */
    @!APILevel[
        since: "22"
    ]
    JSTRING_LITERAL |
    /**
     * @description A multi-line string literal.
     */
    @!APILevel[
        since: "22"
    ]
    MULTILINE_STRING |
    /**
     * @description A multi-line raw string literal.
     */
    @!APILevel[
        since: "22"
    ]
    MULTILINE_RAW_STRING |
    /**
     * @description A boolean literal (`true` or `false`).
     */
    @!APILevel[
        since: "22"
    ]
    BOOL_LITERAL |
    /**
     * @description A unit literal `()`.
     */
    @!APILevel[
        since: "22"
    ]
    UNIT_LITERAL |
    /**
     * @description An identifier prefixed with `$`, used in macros.
     */
    @!APILevel[
        since: "22"
    ]
    DOLLAR_IDENTIFIER |
    /**
     * @description An annotation.
     */
    @!APILevel[
        since: "22"
    ]
    ANNOTATION |
    /**
     * @description The `@!` token for special annotations.
     */
    @!APILevel[
        since: "22"
    ]
    AT_EXCL |
    /**
     * @description An illegal or unrecognized token.
     */
    @!APILevel[
        since: "22"
    ]
    ILLEGAL |
    /**
     * @description The `handle` keyword for effect handlers.
     */
    @!APILevel[
        since: "22"
    ]
    HANDLE |
    /**
     * @description The `perform` keyword for effects.
     */
    @!APILevel[
        since: "22"
    ]
    PERFORM |
    /**
     * @description The `resume` keyword for effect handlers.
     */
    @!APILevel[
        since: "22"
    ]
    RESUME |
    /**
     * @description The `throwing` keyword for effect handlers.
     */
    @!APILevel[
        since: "22"
    ]
    THROWING |
    ...

    /**
     * @description Compares this token kind with another for equality.
     * @param right The other `TokenKind` to compare with.
     * @returns `true` if both kinds are equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func ==(right: TokenKind): Bool

    /**
     * @description Compares this token kind with another for inequality.
     * @param right The other `TokenKind` to compare with.
     * @returns `true` if the kinds are not equal, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func !=(right: TokenKind): Bool

    /**
     * @description Converts the token kind to its string representation.
     * @returns The string name of the token kind.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String
}

/**
 * @description Gets the `TokenKind` corresponding to a numeric identifier.
 * @param no The numeric ID of the token kind.
 * @returns The corresponding `TokenKind`.
 */
@!APILevel[
    since: "22"
]
public func getTokenKind(no: UInt16): TokenKind

/**
 * @description An iterator for a sequence of `Token` objects.
 */
@!APILevel[
    since: "22"
]
public class TokensIterator <: Iterator<Token> {
    /**
     * @description Initializes a `TokensIterator` for a given `Tokens` object.
     * @param tokens The `Tokens` object to iterate over.
     */
    @!APILevel[
        since: "22"
    ]
    public init(tokens: Tokens)

    /**
     * @description Looks at the next token without consuming it.
     * @returns An `Option<Token>` containing the next token, or `None` if at the end.
     */
    @!APILevel[
        since: "22"
    ]
    public func peek(): Option<Token>

    /**
     * @description Checks if the next token is of a specific kind.
     * @param kind The `TokenKind` to check for.
     * @returns `true` if the next token has the specified kind, `false` otherwise.
     */
    @!APILevel[
        since: "22"
    ]
    public func seeing(kind: TokenKind): Bool

    /**
     * @description Consumes and returns the next token in the sequence.
     * @returns An `Option<Token>` containing the next token, or `None` if at the end.
     */
    @!APILevel[
        since: "22"
    ]
    public func next(): Option<Token>
}

/**
 * @description Represents a token in AST
 */
@!APILevel[
    since: "22"
]
public open class Tokens <: ToString & Iterable<Token> & ToBytes {
    /**
     * @description Initializes an empty `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a `Tokens` object from an array of `Token`.
     * @param tokArray The array of tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public init(tokArray: Array<Token>)

    /**
     * @description Initializes a `Tokens` object from an `ArrayList` of `Token`.
     * @param tokArrayList The `ArrayList` of tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public init(tokArrayList: ArrayList<Token>)

    /**
     * @description The number of tokens in the sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public open prop size: Int64

    /**
     * @description Retrieves the token at the specified index.
     * @param index The index of the token to retrieve.
     * @returns The `Token` at the given index.
     * @throws IndexOutOfBoundsException if the index is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public open func get(index: Int64): Token

    /**
     * @description Returns an iterator over the tokens in the sequence.
     * @returns A `TokensIterator` for this sequence.
     */
    @!APILevel[
        since: "22"
    ]
    public func iterator(): TokensIterator

    /**
     * @description Concatenates this `Tokens` object with another.
     * @param tokens The `Tokens` object to concatenate.
     * @returns A new `Tokens` object containing the combined tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public func concat(tokens: Tokens): Tokens

    /**
     * @description Retrieves the token at the specified index using array-like syntax.
     * @param index The index of the token to retrieve.
     * @returns The `Token` at the given index.
     * @throws IndexOutOfBoundsException if the index is out of range.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public operator func [](index: Int64): Token

    /**
     * @description Retrieves a sub-sequence of tokens using a range.
     * @param range The range of indices to retrieve.
     * @returns A new `Tokens` object representing the sub-sequence.
     * @throws IndexOutOfBoundsException if the range is out of bounds.
     * @throws IllegalArgumentException if the range is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public open operator func [](range: Range<Int64>): Tokens

    /**
     * @description Concatenates this `Tokens` object with another using the `+` operator.
     * @param r The `Tokens` object to append.
     * @returns A new `Tokens` object containing the combined tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(r: Tokens): Tokens

    /**
     * @description Concatenates this `Tokens` object with a single `Token` using the `+` operator.
     * @param r The `Token` to append.
     * @returns A new `Tokens` object with the token appended.
     */
    @!APILevel[
        since: "22"
    ]
    public operator func +(r: Token): Tokens

    /**
     * @description Appends another `Tokens` object to this one.
     * @param tokens The `Tokens` object to append.
     * @returns A new `Tokens` object with the appended tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public open func append(tokens: Tokens): Tokens

    /**
     * @description Appends a single `Token` to this `Tokens` object.
     * @param token The `Token` to append.
     * @returns A new `Tokens` object with the appended token.
     */
    @!APILevel[
        since: "22"
    ]
    public open func append(token: Token): Tokens

    /**
     * @description Appends the token representation of an AST `Node` to this `Tokens` object.
     * @param node The `Node` to convert to tokens and append.
     * @returns A new `Tokens` object with the appended tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public func append(node: Node): Tokens

    /**
     * @description Removes the token at the specified index.
     * @param index The index of the token to remove.
     * @returns A new `Tokens` object with the token removed.
     * @throws IllegalArgumentException if an argument is invalid.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public func remove(index: Int64): Tokens

    /**
     * @description Dumps a debug representation of the tokens to standard output.
     */
    @!APILevel[
        since: "22"
    ]
    public func dump(): Unit

    /**
     * @description Converts the sequence of tokens to its string representation.
     * @returns A `String` representing the tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public func toString(): String

    /**
     * @description Converts the sequence of tokens to a byte array.
     * @returns An `Array<UInt8>` representing the tokens.
     */
    @!APILevel[
        since: "22"
    ]
    public func toBytes(): Array<UInt8>
}

/**
 * @description An interface for objects that can be converted into a `Tokens` sequence.
 */
@!APILevel[
    since: "22"
]
public interface ToTokens {
    /**
     * @description Converts the object to its `Tokens` representation.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    func toTokens(): Tokens
}

extend Token <: ToTokens {
    /**
     * @description Converts a single `Token` into a `Tokens` sequence containing just that token.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Tokens <: ToTokens {
    /**
     * @description Returns the `Tokens` object itself.
     * @returns The `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Int64 <: ToTokens {
    /**
     * @description Converts an `Int64` into a `Tokens` sequence representing it as an integer literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Int32 <: ToTokens {
    /**
     * @description Converts an `Int32` into a `Tokens` sequence representing it as an integer literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Int16 <: ToTokens {
    /**
     * @description Converts an `Int16` into a `Tokens` sequence representing it as an integer literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Int8 <: ToTokens {
    /**
     * @description Converts an `Int8` into a `Tokens` sequence representing it as an integer literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend UInt64 <: ToTokens {
    /**
     * @description Converts a `UInt64` into a `Tokens` sequence representing it as an integer literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend UInt32 <: ToTokens {
    /**
     * @description Converts a `UInt32` into a `Tokens` sequence representing it as an integer literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend UInt16 <: ToTokens {
    /**
     * @description Converts a `UInt16` into a `Tokens` sequence representing it as an integer literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend UInt8 <: ToTokens {
    /**
     * @description Converts a `UInt8` into a `Tokens` sequence representing it as an integer literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Float64 <: ToTokens {
    /**
     * @description Converts a `Float64` into a `Tokens` sequence representing it as a float literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Float32 <: ToTokens {
    /**
     * @description Converts a `Float32` into a `Tokens` sequence representing it as a float literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Float16 <: ToTokens {
    /**
     * @description Converts a `Float16` into a `Tokens` sequence representing it as a float literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Bool <: ToTokens {
    /**
     * @description Converts a `Bool` into a `Tokens` sequence representing it as a boolean literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend Rune <: ToTokens {
    /**
     * @description Converts a `Rune` into a `Tokens` sequence representing it as a rune literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

extend String <: ToTokens {
    /**
     * @description Converts a `String` into a `Tokens` sequence representing it as a string literal.
     * @returns A `Tokens` object.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens
}

/**
 * @description The base class for all type nodes in the AST.
 */
@!APILevel[
    since: "22"
]
public open class TypeNode <: Node {
    /**
     * @description The name of the type parameter, if this type is used as a parameter label (e.g., `label: Type`).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop typeParameterName: Token

    /**
     * @description The colon token `:` separating a parameter name from its type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop colon: Token

    /**
     * @description Converts the type node to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public open func toTokens(): Tokens

    /**
     * @description Traverses this type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public open func traverse(v: Visitor): Unit
}

/**
 * @description Represents a primitive type (e.g., `Int32`, `Bool`).
 */
@!APILevel[
    since: "22"
]
public class PrimitiveType <: TypeNode {
    /**
     * @description Initializes a `PrimitiveType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `PrimitiveType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The keyword token representing the primitive type (e.g., `INT32`).
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop keyword: Token

    /**
     * @description Converts the primitive type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this primitive type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a reference type, which can have generic arguments (e.g., `ArrayList<String>`).
 */
@!APILevel[
    since: "22"
]
public class RefType <: TypeNode {
    /**
     * @description Initializes a `RefType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `RefType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The identifier token for the type name.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop identifier: Token

    /**
     * @description The opening angle bracket `<` for generic arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lAngle: Token

    /**
     * @description A list of type nodes for the generic arguments.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop typeArguments: ArrayList<TypeNode>

    /**
     * @description The comma tokens separating generic arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop commas: Tokens

    /**
     * @description The closing angle bracket `>` for generic arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rAngle: Token

    /**
     * @description Converts the reference type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this reference type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a qualified type, accessed through a base type (e.g., `Outer.Inner`).
 */
@!APILevel[
    since: "22"
]
public class QualifiedType <: TypeNode {
    /**
     * @description Initializes a `QualifiedType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `QualifiedType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The base type from which the member type is accessed.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop baseType: TypeNode

    /**
     * @description The dot `.` token used for qualification.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop dot: Token

    /**
     * @description The identifier of the member type.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop identifier: Token

    /**
     * @description The opening angle bracket `<` for generic arguments of the member type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lAngle: Token

    /**
     * @description A list of type nodes for the generic arguments.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop typeArguments: ArrayList<TypeNode>

    /**
     * @description The comma tokens separating generic arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop commas: Tokens

    /**
     * @description The closing angle bracket `>` for generic arguments.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rAngle: Token

    /**
     * @description Converts the qualified type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this qualified type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a type enclosed in parentheses.
 */
@!APILevel[
    since: "22"
]
public class ParenType <: TypeNode {
    /**
     * @description Initializes an empty `ParenType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description Initializes a `ParenType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description The opening parenthesis `(` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description The type node enclosed within the parentheses.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop parenthesizedType: TypeNode

    /**
     * @description The closing parenthesis `)` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the parenthesized type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this parenthesized type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a tuple type, composed of a sequence of other types (e.g., `(Int, String)`).
 */
@!APILevel[
    since: "22"
]
public class TupleType <: TypeNode {
    /**
     * @description Initializes a `TupleType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `TupleType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The opening parenthesis `(` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of type nodes for the elements of the tuple.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop types: ArrayList<TypeNode>

    /**
     * @description The closing parenthesis `)` token.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description Converts the tuple type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this tuple type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents the `This` type, referring to the type of the current instance.
 */
@!APILevel[
    since: "22"
]
public class ThisType <: TypeNode {
    /**
     * @description Initializes a `ThisType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `ThisType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `This` keyword token.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keyword: Token

    /**
     * @description Converts the `This` type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this `This` type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a type with one or more prefix operators (e.g., `&mut String`).
 */
@!APILevel[
    since: "22"
]
public class PrefixType <: TypeNode {
    /**
     * @description Initializes a `PrefixType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `PrefixType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The prefix operator tokens (e.g., `&`, `mut`).
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop prefixOps: Tokens

    /**
     * @description The base type that the prefixes apply to.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop baseType: TypeNode

    /**
     * @description Converts the prefix type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this prefix type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a function type (e.g., `func(Int) -> String`).
 */
@!APILevel[
    since: "22"
]
public class FuncType <: TypeNode {
    /**
     * @description Initializes a `FuncType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `FuncType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `func` keyword token.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keyword: Token

    /**
     * @description The opening parenthesis `(` for parameter types.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lParen: Token

    /**
     * @description A list of type nodes for the function's parameters.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop types: ArrayList<TypeNode>

    /**
     * @description The comma tokens separating parameter types.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop commas: Tokens

    /**
     * @description The closing parenthesis `)` for parameter types.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rParen: Token

    /**
     * @description The arrow `->` token indicating the return type.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop arrow: Token

    /**
     * @description The return type of the function.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop returnType: TypeNode

    /**
     * @description Converts the function type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this function type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description Represents a variable-size array type (`varray`).
 */
@!APILevel[
    since: "22"
]
public class VArrayType <: TypeNode {
    /**
     * @description Initializes a `VArrayType` from a sequence of tokens.
     * @param inputs The tokens to parse.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public init(inputs: Tokens)

    /**
     * @description Initializes an empty `VArrayType`.
     */
    @!APILevel[
        since: "22"
    ]
    public init()

    /**
     * @description The `varray` keyword token.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop keyword: Token

    /**
     * @description The opening angle bracket `<`.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop lAngle: Token

    /**
     * @description The element type of the array.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop elementTy: TypeNode

    /**
     * @description The dollar sign `$` token separating the element type from the size.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop dollar: Token

    /**
     * @description The token representing the size of the array.
     */
    @!APILevel[
        since: "22"
    ]
    public mut prop size: Token

    /**
     * @description The closing angle bracket `>`.
     * @throws ASTException if there is an AST-related error.
     */
    @!APILevel[
        since: "22",
        throwexception: true
    ]
    public mut prop rAngle: Token

    /**
     * @description Converts the `varray` type to its token representation.
     * @returns A `Tokens` object representing this type.
     */
    @!APILevel[
        since: "22"
    ]
    public func toTokens(): Tokens

    /**
     * @description Traverses this `varray` type node with a visitor.
     * @param v The visitor to use for traversal.
     */
    @!APILevel[
        since: "22"
    ]
    public func traverse(v: Visitor): Unit
}

/**
 * @description An abstract base class for visitors that traverse the AST.
 */
@!APILevel[
    since: "22"
]
public abstract class Visitor {
    /**
     * @description Halts the traversal process.
     */
    @!APILevel[
        since: "22"
    ]
    public func breakTraverse(): Unit
}

