local record notifier
   interface Kbd end
   record kbd
      KEYCODE: Kbd
      UNBOUND_KEYCODE: Kbd
      UNICODE: Kbd
      KEYSYM: Kbd
      POST_KEYSYM: Kbd
   end

   interface Notifier
      -- remove the notifier
      delete: function(Notifier)
   end

   -- listen for keyboard events. key is a keycode or keysym, depending
   -- on the event
   type KeyboardCallback = function(event: Kbd, down: boolean, shift: boolean, key: integer): Notify
   keyboard: function(KeyboardCallback): Notifier

   -- listen for netdevice events (i.e. network interface conn/disconnect)
   type NetDeviceCallback = function(event: NetDev, name: string): Notify
   netdevice: function(NetDeviceCallback): Notifier

   -- listen for virtual terminal events
   type VTermCallback = function(event: Vt, c: string, vc_num: integer): Notify
   vterm: function(VTermCallback): Notifier

   interface NetDev end
   enum NetDevEnum
      "NETDEV_UP"                            --  1
      "NETDEV_DOWN"                          --  2
      "NETDEV_REBOOT"                        --  3
      "NETDEV_CHANGE"                        --  4
      "NETDEV_REGISTER"                      --  5
      "NETDEV_UNREGISTER"                    --  6
      "NETDEV_CHANGEMTU"                     --  7
      "NETDEV_CHANGEADDR"                    --  8
      "NETDEV_PRE_CHANGEADDR"                --  9
      "NETDEV_GOING_DOWN"                    -- 10
      "NETDEV_CHANGENAME"                    -- 11
      "NETDEV_FEAT_CHANGE"                   -- 12
      "NETDEV_BONDING_FAILOVER"              -- 13
      "NETDEV_PRE_UP"                        -- 14
      "NETDEV_PRE_TYPE_CHANGE"               -- 15
      "NETDEV_POST_TYPE_CHANGE"              -- 16
      "NETDEV_POST_INIT"                     -- 17
      "NETDEV_PRE_UNINIT"                    -- 18
      "NETDEV_RELEASE"                       -- 19
      "NETDEV_NOTIFY_PEERS"                  -- 20
      "NETDEV_JOIN"                          -- 21
      "NETDEV_CHANGEUPPER"                   -- 22
      "NETDEV_RESEND_IGMP"                   -- 23
      "NETDEV_PRECHANGEMTU"                  -- 24
      "NETDEV_CHANGEINFODATA"                -- 25
      "NETDEV_BONDING_INFO"                  -- 26
      "NETDEV_PRECHANGEUPPER"                -- 27
      "NETDEV_CHANGELOWERSTATE"              -- 28
      "NETDEV_UDP_TUNNEL_PUSH_INFO"          -- 29
      "NETDEV_UDP_TUNNEL_DROP_INFO"          -- 30
      "NETDEV_CHANGE_TX_QUEUE_LEN"           -- 31
      "NETDEV_CVLAN_FILTER_PUSH_INFO"        -- 32
      "NETDEV_CVLAN_FILTER_DROP_INFO"        -- 33
      "NETDEV_SVLAN_FILTER_PUSH_INFO"        -- 34
      "NETDEV_SVLAN_FILTER_DROP_INFO"        -- 35
      "NETDEV_OFFLOAD_XSTATS_ENABLE"         -- 36
      "NETDEV_OFFLOAD_XSTATS_DISABLE"        -- 37
      "NETDEV_OFFLOAD_XSTATS_REPORT_USED"    -- 38
      "NETDEV_OFFLOAD_XSTATS_REPORT_DELTA"   -- 39
      "NETDEV_XDP_FEAT_CHANGE"               -- 40
   end
   netdev: {NetDevEnum:NetDev}

   interface Vt end
   record vt
      VT_ALLOCATE: Vt
      VT_DEALLOCATE: Vt
      VT_WRITE: Vt
      VT_UPDATE: Vt
      VT_PREWRITE: Vt
   end

   interface Notify end
   record notify
      DONE: Notify
      OK: Notify
      BAD: Notify
      STOP: Notify
   end
end

return notifier
