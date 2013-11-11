// Global configs
// Operations
// Layouts
// Binds

S.bnda ({
        "f:shift;alt" : S.op("move", { "x" : "screenOriginX", "y" : "screenOriginY", "width" : "screenSizeX", "height" : "screenSizeY"}),
        "left:alt;shift" : S.op("resize", { "width" : "-10%", "height" : "+0" }),
        "right:alt;shift" : S.op("resize", { "width" : "+10%", "height" : "+0" }),
        "up:alt;shift" : S.op("resize", { "width" : "+0", "height" : "-10%" }),
        "down:alt;shift" : S.op("resize", { "width" : "+0", "height" : "+10%" }),

        // Push Bindings
        // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
        "right:shift;cmd" : S.op("push", { "direction" : "right", "style" : "bar-resize:screenSizeX/2" }),
        "left:shift;cmd" : S.op("push", { "direction" : "left", "style" : "bar-resize:screenSizeX/2" }),
        "up:shift;cmd" : S.op("push", { "direction" : "up", "style" : "bar-resize:screenSizeY/2" }),
        "down:shift;cmd" : S.op("push", { "direction" : "down", "style" : "bar-resize:screenSizeY/2" }),
       
        // Move bindings 
        // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
        "right:ctrl;alt" : S.op("nudge", { "x" : "+10%", "y" : "+0" }),
        "left:ctrl;alt" : S.op("nudge", { "x" : "-10%", "y" : "+0" }),
        "up:ctrl;alt" : S.op("nudge", { "x" : "+0", "y" : "-10%" }),
        "down:ctrl;alt" : S.op("nudge", { "x" : "+0", "y" : "+10%" }),


        // Focus Bindings
        // NOTE: some of these may *not* work if you have not removed the expose/spaces/mission control bindings
        "l:shift;alt" : S.op("focus", { "direction" : "right" }),
        "h:shift;alt" : S.op("focus", { "direction" : "left" }),
        "k:shift;alt" : S.op("focus", { "direction" : "up" }),
        "j:shift;alt" : S.op("focus", { "direction" : "down" }),
        "i:shift;alt" : S.op("focus", { "direction" : "behind" }),

        // Window Hints
        "esc:cmd" : S.op("hint"),

        // Grid
        "esc:alt" : S.op("grid")
});

