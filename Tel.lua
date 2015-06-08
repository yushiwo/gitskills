Tel = function(ps)
   --content
   --[[
      {head=url, name=name, samefriendscnt=number, id=userid}
   ]]

   if ps.text == nil then
      ps.text = ""
   end
   
   local text = '<a href=\'tel://' .. ps.text .. '\'>' .. ps.text .. '</a>'
   
   local params = {
      fontSize=14,
      color=rgba{0, 174, 133, 1}
   }

   for k, v in pairs(ps) do
      params[k] = v
   end
   
   params.text = text;
   
   return HTMLLabel(params)
end