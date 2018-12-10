local json = require("cjson")
local x = require "luaxpath"
local lom = require "lxp.lom"
local xmlTest =
[[
<?xml version="1.0" encoding="ISO-8859-1"?>
<root>
	<element id="1" name="element1">text of the first element</element>
        <element id="2" name="element2">
		<subelement>text of the second element</subelement>
        </element>
</root>
]]

function init()
    local root = lom.parse(xmlTest)
    -- get all elements
    local result=x.selectNodes(root,'//element')
    ngx.say(json.encode(result))
end

return init