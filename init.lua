-- Terraform file detection
vim.cmd([[silent! autocmd! filetype detect BufRead,BufNewFile *.tf]])
vim.cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
vim.cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
vim.cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])

-- Ansible file detection
vim.cmd([[silent! autocmd! filetype detect BufRead,BufNewFile *.yaml.ansible]])
vim.cmd([[autocmd BufRead,BufNewFile *.yaml.ansible set filetype=yaml.ansible]])

-- Set no wrap by default; i hate that thing
vim.opt.wrap = false
