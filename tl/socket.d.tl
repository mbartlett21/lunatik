local record socket
   interface Socket
      close: function(Socket)

      send: function(Socket, msg: string, addr ?: integer, port ?: integer)
      send: function(Socket, msg: string, addr ?: string)

      receive: function(Socket, len: integer, flags ?: Msg): string
      receive: function(Socket, len: integer, flags: Msg, from: boolean): string, string|integer

      bind: function(Socket, addr: integer, port ?: integer)
      bind: function(Socket, addr: string)

      listen: function(Socket, backlog ?: integer)

      accept: function(Socket, flags ?: Sock): Socket

      connect: function(Socket, addr: integer, port ?: integer, flags ?: Sock)
      connect: function(Socket, addr: string, flags ?: Sock)

      getsockname: function(Socket): integer|string, integer
      getpeername: function(Socket): integer|string, integer
   end

   interface Msg end
   record msg
      OOB:                 Msg
      PEEK:                Msg
      DONTROUTE:           Msg
      TRYHARD:             Msg
      CTRUNC:              Msg
      PROBE:               Msg
      TRUNC:               Msg
      DONTWAIT:            Msg
      EOR:                 Msg
      WAITALL:             Msg
      FIN:                 Msg
      SYN:                 Msg
      CONFIRM:             Msg
      RST:                 Msg
      ERRQUEUE:            Msg
      NOSIGNAL:            Msg
      MORE:                Msg
      WAITFORONE:          Msg
      SENDPAGE_NOPOLICY:   Msg
      SENDPAGE_NOTLAST:    Msg
      BATCH:               Msg
      EOF:                 Msg
      NO_SHARED_FRAGS:     Msg
      SENDPAGE_DECRYPTED:  Msg
      ZEROCOPY:            Msg
      FASTOPEN:            Msg
      CMSG_CLOEXEC:        Msg
   end

   new: function(family: AddressFamily, ty: Sock, proto: IpProto): Socket

   interface AddressFamily end
   record af
      UNSPEC:     AddressFamily
      UNIX:       AddressFamily
      LOCAL:      AddressFamily
      INET:       AddressFamily
      AX25:       AddressFamily
      IPX:        AddressFamily
      APPLETALK:  AddressFamily
      NETROM:     AddressFamily
      BRIDGE:     AddressFamily
      ATMPVC:     AddressFamily
      X25:        AddressFamily
      INET6:      AddressFamily
      ROSE:       AddressFamily
      DEC:        AddressFamily
      NETBEUI:    AddressFamily
      SECURITY:   AddressFamily
      KEY:        AddressFamily
      NETLINK:    AddressFamily
      ROUTE:      AddressFamily
      PACKET:     AddressFamily
      ASH:        AddressFamily
      ECONET:     AddressFamily
      ATMSVC:     AddressFamily
      RDS:        AddressFamily
      SNA:        AddressFamily
      IRDA:       AddressFamily
      PPPOX:      AddressFamily
      WANPIPE:    AddressFamily
      LLC:        AddressFamily
      IB:         AddressFamily
      MPLS:       AddressFamily
      CAN:        AddressFamily
      TIPC:       AddressFamily
      BLUETOOTH:  AddressFamily
      IUCV:       AddressFamily
      RXRPC:      AddressFamily
      ISDN:       AddressFamily
      PHONET:     AddressFamily
      IEEE802154: AddressFamily
      CAIF:       AddressFamily
      ALG:        AddressFamily
      NFC:        AddressFamily
      VSOCK:      AddressFamily
      KCM:        AddressFamily
      QIPCRTR:    AddressFamily
      SMC:        AddressFamily
      XDP:        AddressFamily
      MCTP:       AddressFamily
      MAX:        AddressFamily
   end

   interface Sock end
   record sock
      STREAM: Sock
      DGRAM: Sock
      RAW: Sock
      RDM: Sock
      SEQPACKET: Sock
      DCCP: Sock
      PACKET: Sock
   end

   interface IpProto end
   record ipproto
      IP:        IpProto
      ICMP:      IpProto
      IGMP:      IpProto
      IPIP:      IpProto
      TCP:       IpProto
      EGP:       IpProto
      PUP:       IpProto
      UDP:       IpProto
      IDP:       IpProto
      TP:        IpProto
      DCCP:      IpProto
      IPV6:      IpProto
      RSVP:      IpProto
      GRE:       IpProto
      ESP:       IpProto
      AH:        IpProto
      MTP:       IpProto
      BEETPH:    IpProto
      ENCAP:     IpProto
      PIM:       IpProto
      COMP:      IpProto
      SCTP:      IpProto
      UDPLITE:   IpProto
      MPLS:      IpProto
      ETHERNET:  IpProto
      RAW:       IpProto
      MPTCP:     IpProto
   end
end

return socket
