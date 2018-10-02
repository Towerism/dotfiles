
import * as React from "react"
import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log("config activated")

    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
    console.log("config deactivated")
}

export const configuration = {
    //add custom config here, such as

    "ui.colorscheme": "nord",

    //"oni.useDefaultConfig": true,
    //"oni.bookmarks": ["~/Documents"],
    "oni.loadInitVim": true,
    //"editor.fontSize": "12px",
    //"editor.fontFamily": "Monaco",

    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",
    "editor.fontSize": "13px",
    "editor.fontWeight": "normal",
    "editor.fontFamily": "Source Code Pro",

    // Language servers
    "language.bash.languageServer.command": "bash-language-server",
    "language.bash.languageServer.arguments": ["start"],

    "language.dockerfile.languageServer.command": "docker-langserver",
    "language.dockerfile.languageServer.arguments": ["--stdio"]
}
