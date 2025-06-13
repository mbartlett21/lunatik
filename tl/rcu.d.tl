local record rcu
   interface Table--[[<V>]]
      is {string:--[[V]]any}
   end

   table: function--[[<V>]](size ?: integer): Table--[[<V>]]
   map: function--[[<V>]](Table--[[<V>]], f: function(string))
end

return rcu
