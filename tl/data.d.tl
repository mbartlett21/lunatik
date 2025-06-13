local record data
   interface Data
      getnumber: function(offset: integer): integer
      setnumber: function(offset: integer, num: integer)

      getbyte: function(offset: integer): integer
      setbyte: function(offset: integer, byt: integer)

      getstring: function(offset: integer, len ?: integer): string
      setstring: function(offset: integer, s: string)

      getint8: function(offset: integer): integer
      setint8: function(offset: integer, int: integer)
      getuint8: function(offset: integer): integer
      setuint8: function(offset: integer, int: integer)

      getint16: function(offset: integer): integer
      setint16: function(offset: integer, int: integer)
      getuint16: function(offset: integer): integer
      setuint16: function(offset: integer, int: integer)

      getint32: function(offset: integer): integer
      setint32: function(offset: integer, int: integer)
      getuint32: function(offset: integer): integer
      setuint32: function(offset: integer, int: integer)

      getint64: function(offset: integer): integer
      setint64: function(offset: integer, int: integer)
   end

   new: function(size: integer): Data
end

return data
