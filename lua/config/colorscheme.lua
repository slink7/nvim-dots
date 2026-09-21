local save_file = vim.fn.stdpath("config").."/lua/config/scheme_save"

local schemes = {
	"habamax", "lunaperche", "slate", "sorbet", "unokai"
}

local function save_scheme(scheme)
	local file = io.open(save_file, "w")
	if not file then return end
	file:write(scheme)
	file:close()
end

local function load_scheme()
	local file = io.open(save_file, "r")
	if not file then return nil end
	local out = file:read("*all")
	file:close()
	return out
end

for k, v in ipairs(schemes) do
	vim.keymap.set("n", "<leader>cs"..k, function()
		vim.cmd("colorscheme "..v)
		save_scheme(v)
		print("Selected colorscheme: "..v)
	end, { desc = "Set colorscheme "..v })
end

local selected_scheme = load_scheme()

if not selected_scheme or type(selected_scheme) ~= "string" or selected_scheme == "" then
	selected_scheme = schemes[1]
	save_scheme(selected_scheme)
end

vim.cmd("colorscheme "..selected_scheme)
