local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()



local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")
local util = require("lspconfig.util")


-- Python LSP
lspconfig.pylsp.setup{
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = {
                        'W293', -- Blank line contains whitespace
                        'E226', -- Missing whitespace around arithmetic operator
                        'E731', -- Do not assign a lambda expression, use a def
                    },
                    maxLineLength = 100
                }
            }
        }
    }
}


