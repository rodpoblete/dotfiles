// Misma configuración base para Windows OS y OSX, con algunos ajustes por la fuente 😏
{
  "window.zoomLevel": -1,
  "workbench.iconTheme": "material-icon-theme",
  "workbench.colorTheme": "Cobalt2",
  "workbench.editor.tabSizing": "shrink",
  "editor.fontFamily": "Operator Mono, Menlo, Monaco, 'Courier New', monospace",
  "html.format.enable": true,
  "html.format.preserveNewLines": true,
  "files.trimTrailingWhitespace": true,
  "editor.fontSize": 17,
  "editor.lineHeight": 25,
  "editor.letterSpacing": 0.5,
  "editor.fontWeight": "400",
  "prettier.eslintIntegration": true,
  "editor.cursorStyle": "line",
  "editor.cursorWidth": 3,
  "editor.cursorBlinking": "solid",
  "editor.colorDecorators": false,
  "editor.minimap.enabled": false,
  "editor.renderWhitespace": "none",
  "editor.tabSize": 2,
  "editor.detectIndentation": false,
  "npm.enableScriptExplorer": true,
  "editor.wordWrap": "on",
  // Wes Settings
  "workbench.activityBar.visible": true,
  "workbench.sideBar.location": "left",
  //"gitlens.blame.line.enabled": false,
  "editor.rulers": [
    80,
    100,
    120
  ],
  "editor.minimap.showSlider": "always",
  "workbench.startupEditor": "newUntitledFile",
  "extensions.ignoreRecommendations": false,
  "files.exclude": {
    "**/.git": true,
    "**/.svn": true,
    "**/.hg": true,
    "**/CVS": true,
    "**/.DS_Store": true,
    "**/.next": true
  },
  "workbench.editor.tabCloseButton": "off",
  "emmet.includeLanguages": {
    "javascript": "javascriptreact"
  },
  // show snippets before any other auto completion
  "editor.snippetSuggestions": "top",
  // this lets you quickly open multiple items in a row and not have the previous ones closed on you
  "workbench.editor.enablePreviewFromQuickOpen": false,
  "window.title": "${dirty} ${activeEditorMedium}${separator}${rootName}",
  // These are all my auto-save configs
  "editor.formatOnSave": true,
  // turn it off for JS
  "[javascript]": {
    "editor.formatOnSave": false
  },
  "eslint.autoFixOnSave": true,
  "eslint.alwaysShowStatus": true,
  // Terminal Integrated Settings
  "terminal.integrated.shell.windows": "C:\\Windows\\System32\\bash.exe",
  "terminal.integrated.shellArgs.windows": [
    "-c",
    "zsh"
  ],
  "terminal.integrated.fontFamily": "Operator Mono",
  "gitlens.advanced.messages": {
    "suppressShowKeyBindingsNotice": true
  },
  "window.menuBarVisibility": "toggle",
  "cSpell.userWords": [
    "youtube"
  ],
  "cSpell.language": ",es,en",
}