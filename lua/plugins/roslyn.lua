return {
    'seblyng/roslyn.nvim',
    init = function()
        local config = require 'roslyn'
        config.setup({
            filetypes = { 'cs' },
            on_attach = function()
                vim.notify("Roslyn attached!")
                -- vim.cmd [[
                --     augroup document_highlight
                --         autocmd! * <buffer>
                --         autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
                --         autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
                --     augroup END
                -- ]]
            end,
            settings = {
                ["csharp|background_analysis"] = {
                    dotnet_analyzer_diagnostics_scope = 'fullSolution',
                    dotnet_compiler_diagnostics_scope = 'fullSolution',
                },
                ["csharp|inlay_hints"] = {
                    csharp_enable_inlay_hints_for_implicit_object_creation = true,
                    csharp_enable_inlay_hints_for_implicit_variable_types = true,
                    csharp_enable_inlay_hints_for_lambda_parameter_types = true,
                    csharp_enable_inlay_hints_for_types = true,
                    dotnet_enable_inlay_hints_for_indexer_parameters = true,
                    dotnet_enable_inlay_hints_for_literal_parameters = true,
                    dotnet_enable_inlay_hints_for_object_creation_parameters = true,
                    dotnet_enable_inlay_hints_for_other_parameters = true,
                    dotnet_enable_inlay_hints_for_parameters = true,

                },
                ["csharp|code_lens"] = {
                    dotnet_enable_references_code_lens = true,
                    dotnet_enable_tests_code_lens = true,
                },
                ["csharp|completion"] = {
                    dotnet_provide_regex_completions = true,
                    dotnet_show_completion_items_from_unimported_namespaces = true,
                    dotnet_show_name_completion_suggestions = true,
                },
                ["csharp|symbol_search"] = {
                    dotnet_search_reference_assemblies = true,
                },
                ["csharp|formatting"] = {
                    dotnet_organize_imports_on_format = true,
                },
                ["csharp|type_members"] = {
                    dotnet_member_insertion_location = true,
                    dotnet_property_generation_behavior = true,
                },
                ["csharp|quick_info"] = {
                    dotnet_show_remarks_in_quick_info = true,
                },
                filetypes = { 'cs' },
                cmd = { 'roslyn' },
                codeLens = { enable = true }
            },
        })
    end
}
-- vim.lsp.enable('roslyn')
-- vim.lsp.config('roslyn', config)
-- require('roslyn').setup(config)
-- vim.lsp.inlay_hint.enable()
