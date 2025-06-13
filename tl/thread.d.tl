local linux = require"linux"

local record thread
   interface TaskInfo
      cpu: any
      command: any
      pid: integer
      tgid: any
   end

   interface Thread
      stop: function(Thread)
      task: function(Thread): TaskInfo
   end

   run: function(runtime: linux.Runtime, name: string): Thread

   shouldstop: function(): boolean

   current: function(): Thread
end

return thread
