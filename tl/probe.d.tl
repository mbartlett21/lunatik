local syscall = require'syscall'

local record probe
   interface CpuAndStack
      -- todo
   end

   interface Handlers<S>
      pre: function(symbol: S, clos: function(): CpuAndStack)
      post: function(symbol: S, clos: function(): CpuAndStack)
   end

   interface Probe
      stop: function(Probe)
      enable: function(Probe, enable: boolean)
   end

   new: function(symbol: string, handler: Handlers<string>): Probe
   new: function(symbol: syscall.Address, handler: Handlers<syscall.Address>): Probe
end

return probe
