package main

import "shared:odin-binding-generator/bindgen"

main :: proc() {
    options: bindgen.GeneratorOptions
    options.mode = "odin"

    options.definePrefixes = []string{"GODOT_", "GDNATIVE_"}
    options.defineCase = .Camel

    options.pseudoTypePrefixes = []string{"godot_"}
    options.pseudoTypeCase = .Pascal;

    options.functionPrefixes = []string{"godot_"};
    options.functionCase = .Snake;

    options.enumValuePrefixes = []string{"GODOT_"}
    options.enumValueCase = .Pascal;
    options.enumValueNameRemove = true;

    options.parserOptions.ignoredTokens = []string{"GDAPI", "GDCALLINGCONV"}

    bindgen.generate(
        "gd",
        "gdnative",
        "gdnative.odin",
        []string{"./gdnative_preprocessed.h"},
        options,
    )
}
