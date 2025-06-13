local linux = require'linux'

local record device
   interface Driver
      -- name of the device. (appears under /dev/<name>)
      name: string

      -- initialise the device
      open: function(Driver)

      -- read from the device
      --
      -- returns the read data as well as a new offset.
      -- note that if the length is longer than requested, it will be trimmed
      -- If you want this different, you can implement a layer in Lua
      read: function(Driver, req_len: integer, offset: integer): string, integer

      -- write to the device
      --
      -- returns the amount of data written as well as a new offset.
      -- note that if it says that more data was written than requested, it ignores that
      write: function(Driver, req_dat: string, offset: integer): integer, integer

      -- release the device.
      release: function(Driver)

      mode: linux.Stat
   end

   interface Device
      stop: function(self)
   end

   new: function(Driver): Device

   stop: function(Device)
end

return device
