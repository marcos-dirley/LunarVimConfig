vim.opt.relativenumber = true;
vim.opt.cursorline = true;
vim.opt.cursorcolumn = false;
vim.opt.expandtab = true
-- Sets tab size to 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true;
vim.opt.termguicolors = true;
vim.opt.ignorecase = true;

-- code folding
vim.opt.foldcolumn = '1';
vim.opt.foldlevel = 99;
vim.opt.foldlevelstart = 99;
vim.opt.foldenable = true;

lvim.log.level = "warn";
lvim.format_on_save = true;

lvim.builtin.project.detection_methods = { "lsp", "pattern" };
lvim.builtin.project.patterns = {
    ".git",
    "package-lock.json",
    "yarn.lock",
    "package.json",
    "requirements.txt",
}
