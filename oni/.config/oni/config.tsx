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

  "ui.colorscheme": "Monokai",
  "oni.bookmarks": ["~/source/repos"],
  "oni.loadInitVim": true,
  "oni.useDefaultConfig": false,

  // UI customizations
  "oni.hideMenu": true,
  "ui.animations.enabled": true,
  "ui.fontSmoothing": "auto",
  "editor.fontSize": "16px",
  "editor.fontWeight": "normal",
  "editor.fontFamily": "Source Code Pro",
  "sidebar.enabled": false

  // Language servers
  "language.bash.languageServer.command": "bash-language-server",
  "language.bash.languageServer.arguments": ["start"],

  "language.vue.languageServer.command": "vls",
  "language.vue.languageServer.arguments": ["--stdio"],


  // Prettier
  "oni.plugins.prettier": {
    "settings": {
      "semi": true,
      "tabWidth": 2,
      "useTabs": false,
      "singleQuote": false,
      "trailingComma": "none",
      "bracketSpacing": true,
      "jsxBracketSameLine": false,
      "arrowParens": "avoid",
      "printWidth": 80
      
    }
  }
}
