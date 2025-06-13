local data = require'data'

local record netfilter

   interface Ops
      pf: Family
      hooknum: Hook
      priority: Priority
      hook: function(skb: data.Data): Action
      mark: integer
   end

   register: function(ops: Ops)

   interface Family end
   record family
      UNSPEC: Family
      INET: Family
      IPV4: Family
      IPV6: Family
      ARP: Family
      NETDEV: Family
      BRIDGE: Family
   end

   interface Action end
   record action
      DROP: Action
      ACCEPT: Action
      STOLEN: Action
      QUEUE: Action
      REPEAT: Action
      STOP: Action
      CONTINUE: Action
      RETURN: Action
   end

   interface Hook end
   record inet_hooks
      PRE_ROUTING: Hook
      LOCAL_IN: Hook
      FORWARD: Hook
      LOCAL_OUT: Hook
      POST_ROUTING: Hook
   end
   record bridge_hooks
      PRE_ROUTING: Hook
      LOCAL_IN: Hook
      FORWARD: Hook
      LOCAL_OUT: Hook
      POST_ROUTING: Hook
   end
   record arp_hooks
      IN: Hook
      OUT: Hook
      FORWARD: Hook
   end
   record netdev_hooks
      INGRESS: Hook
      OUTGRESS: Hook
   end

   interface Priority end
   record ip_priority
      FIRST: Priority
      RAW_BEFORE_DEFRAG: Priority
      CONNTRACK_DEFRAG: Priority
      RAW: Priority
      SELINUX_FIRST: Priority
      CONNTRACK: Priority
      MANGLE: Priority
      NAT_DST: Priority
      FILTER: Priority
      SECURITY: Priority
      NAT_SRC: Priority
      SELINUX_LAST: Priority
      CONNTRACK_HELPER: Priority
      LAST: Priority
   end
   record bridge_priority
      FIRST: Priority
      NAT_DST_BRIDGED: Priority
      FILTER_BRIDGED: Priority
      BRNF: Priority
      NAT_DST_OTHER: Priority
      FILTER_OTHER: Priority
      NAT_SRC: Priority
      LAST: Priority
   end
end

return netfilter
