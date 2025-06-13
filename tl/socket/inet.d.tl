local socket = require'socket'

local record inet
   interface Tcp
      close: function(Tcp)

      send: function(Tcp, msg: string, addr ?: string, port ?: integer)

      receive: function(Tcp, len: integer, flags ?: Msg): string
      receive: function(Tcp, len: integer, flags: Msg, from: boolean): string, string

      bind: function(Tcp, addr: string, port ?: integer)

      listen: function(Tcp, backlog ?: integer)

      accept: function(Tcp, flags ?: Sock): Tcp

      connect: function(Tcp, addr: string, port ?: integer, flags ?: Sock)
      connect: function(Tcp, addr: string, flags ?: Sock)

      getsockname: function(Tcp): integer|string, integer
      getpeername: function(Tcp): integer|string, integer
   end
   interface Udp
      close: function(Udp)

      send: function(Udp, msg: string, addr ?: string, port ?: integer)

      receive: function(Udp, len: integer, flags ?: Msg): string
      receive: function(Udp, len: integer, flags: Msg, from: boolean): string, string

      bind: function(Udp, addr: string, port ?: integer)

      listen: function(Udp, backlog ?: integer)

      accept: function(Udp, flags ?: Sock): Udp

      connect: function(Udp, addr: string, port ?: integer, flags ?: Sock)
      connect: function(Udp, addr: string, flags ?: Sock)

      getsockname: function(Udp): integer|string, integer
      getpeername: function(Udp): integer|string, integer

      -- extra methods
      receivefrom: function(Udp, len: integer, flags ?: Msg): string, string
   end
   tcp: function(): Tcp
   udp: function(): Udp
end

return inet
