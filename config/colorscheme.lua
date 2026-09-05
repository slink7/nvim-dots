local save_file = "scheme_save"

local schemes = {
	"habamax", "lunaperche", "slate", "sorbet", "unokai"
}

for k, v in ipairs(schemes) do
	vim.keymap.set("n", "<leader>cs"..k, function()
		vim.cmd("colorscheme "..v)
		local file = io.open(save_file..".lua", "w")
		if file then
			file:write("return \""..v.."\"")
			file:close()
		else
			print("Couldn't open colorscheme.lua")
		end
		print("Selected colorscheme: "..v)
	end, { desc = "Set colorscheme "..v })
end

local selected_scheme = require(save_file)

if not selected_scheme or type(selected_scheme) ~= "string" then
	selected_scheme = schemes[1]
	print("Selected default")
else
	print("Found "..selected_scheme)
end

vim.cmd("colorscheme "..selected_scheme)
