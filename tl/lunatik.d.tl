local record lunatik
   interface Runtime
      -- Stop this runtime and clear its reference
      stop: function(Runtime)

      -- Resumes the script returned from the initial runtime script
      --
      -- (presumably the initial script should return a function to work with this)
      resume: function(Runtime, ...: any)
   end

   -- Create a new runtime environment and run /lib/modules/lua/<script_filename>.lua
   --
   -- sleep defines whether it will use sleeping or spinning for locking
   -- (defaults to true)
   runtime: function(script_filename: string, sleep ?: boolean): Runtime
end

return lunatik
