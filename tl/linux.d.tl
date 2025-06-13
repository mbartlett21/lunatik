local record linux
   -- read and write permissions
   interface Stat end

   record stat
      IRWXUGO: Stat
      IRUGO: Stat
      IWUGO: Stat
      IXUGO: Stat
   end

   -- task state
   interface Task end

   record task
      RUNNING: Task
      INTERRUPTIBLE: Task
      UNINTERRUPTIBLE: Task
      KILLABLE: Task
      IDLE: Task
   end

   -- math.random() -> random integer (all bits)
   -- math.random(m) -> = math.random(1, m)
   -- math.random(m, n) -> random integer in the range [m, n] (inclusive)
   random: function(m ?: integer, n ?: integer): integer

   -- set the current task state and timeout
   schedule: function(timeout ?: integer, state ?: Task)

   -- get the current time in nanoseconds since epoch
   time: function(): integer

   interface ErrNo end

   enum ErrNoEnum
      "PERM"
      "NOENT"
      "SRCH"
      "INTR"
      "IO"
      "NXIO"
      "2BIG"
      "NOEXEC"
      "BADF"
      "CHILD"
      "AGAIN"
      "NOMEM"
      "ACCES"
      "FAULT"
      "NOTBLK"
      "BUSY"
      "EXIST"
      "XDEV"
      "NODEV"
      "NOTDIR"
      "ISDIR"
      "INVAL"
      "NFILE"
      "MFILE"
      "NOTTY"
      "TXTBSY"
      "FBIG"
      "NOSPC"
      "SPIPE"
      "ROFS"
      "MLINK"
      "PIPE"
      "DOM"
      "RANGE"
   end

   errno: {ErrNoEnum:ErrNo}

   -- host to network byte order
   hton16:  function(integer): integer
   hton32:  function(integer): integer
   hton64:  function(integer): integer
   -- network to host byte order
   ntoh16:  function(integer): integer
   ntoh32:  function(integer): integer
   ntoh64:  function(integer): integer
   -- host to big endian
   htobe16: function(integer): integer
   htobe32: function(integer): integer
   htobe64: function(integer): integer
   -- big endian to host
   be16toh: function(integer): integer
   be32toh: function(integer): integer
   be64toh: function(integer): integer
   -- host to little endian
   htole16: function(integer): integer
   htole32: function(integer): integer
   htole64: function(integer): integer
   -- little endian to host
   le16toh: function(integer): integer
   le32toh: function(integer): integer
   le64toh: function(integer): integer
end

return linux
