-- [nfnl] Compiled from fnl/config/plugins/projectionist.fnl by https://github.com/Olical/nfnl, do not edit.
local function setup()
  vim.g.projectionist_heuristics = {["deps.edn|project.clj"] = {["src/*.clj"] = {alternate = "test/{}_test.clj"}, ["test/*test.clj"] = {alternate = "src/{}.clj"}}, ["package.json"] = {["*.js"] = {alternate = "{}.test.js"}, ["*.ts"] = {alternate = "{}.test.ts"}, ["*.jsx"] = {alternate = "{}.test.jsx"}, ["*.tsx"] = {alternate = "{}.test.tsx"}, ["*.test.js"] = {alternate = "{}.js"}, ["*.test.ts"] = {alternate = "{}.ts"}, ["*.test.jsx"] = {alternate = "{}.jsx"}, ["*.test.tsx"] = {alternate = "{}.tsx"}}}
  return nil
end
return {setup = setup}
