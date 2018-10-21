0000   C3 F0 05               JP   STARTMON   
0003   FF                     DB   0xFF   
0004   FF                     DB   0xFF   
0005   FF                     DB   0xFF   
0006   FF                     DB   0xFF   
0007   FF                     DB   0xFF   
0008   C3 20 03               JP   INVADERS   
000B   FF                     DB   0xFF   
000C   FF                     DB   0xFF   
000D   FF                     DB   0xFF   
000E   FF                     DB   0xFF   
000F   FF                     DB   0xFF   
0010   C3 E0 03               JP   NIM   
0013   FF                     DB   0xFF   
0014   FF                     DB   0xFF   
0015   FF                     DB   0xFF   
0016   FF                     DB   0xFF   
0017   FF                     DB   0xFF   
0018   C3 90 04               JP   LUNALANDER   
001B   FF                     DB   0xFF   
001C   FF                     DB   0xFF   
001D   FF                     DB   0xFF   
001E   FF                     DB   0xFF   
001F   FF                     DB   0xFF   
0020   FF                     DB   0xFF   
0021   FF                     DB   0xFF   
0022   FF                     DB   0xFF   
0023   FF                     DB   0xFF   
0024   FF                     DB   0xFF   
0025   FF                     DB   0xFF   
0026   FF                     DB   0xFF   
0027   FF                     DB   0xFF   
0028   21 30 02               LD   hl,TUNE1   
002B   C3 41 00               JP   STARTMUSIC   
002E   FF                     DB   0xFF   
002F   FF                     DB   0xFF   
0030   21 30 05               LD   hl,TUNE2   
0033   C3 41 00               JP   STARTMUSIC   
0036   FF                     DB   0xFF   
0037   FF                     DB   0xFF   
0038   C7                     RST   0x00   
0039   FF                     DB   0xFF   
003A   FF                     DB   0xFF   
003B   FF                     DB   0xFF   
003C   FF                     DB   0xFF   
003D   FF                     DB   0xFF   
003E   FF                     DB   0xFF   
003F   FF                     DB   0xFF   
0040   FF                     DB   0xFF   
0041   22 00 08     STARTMUSIC:   LD   (0x0800),hl   
0044   C3 B0 01               JP   PLAYMUSIC   
0047   FF                     DB   0xFF   
0048   FF                     DB   0xFF   
0049   FF                     DB   0xFF   
004A   FF                     DB   0xFF   
004B   FF                     DB   0xFF   
004C   FF                     DB   0xFF   
004D   FF                     DB   0xFF   
004E   FF                     DB   0xFF   
004F   FF                     DB   0xFF   
0050   FF                     DB   0xFF   
0051   FF                     DB   0xFF   
0052   FF                     DB   0xFF   
0053   FF                     DB   0xFF   
0054   FF                     DB   0xFF   
0055   FF                     DB   0xFF   
0056   FF                     DB   0xFF   
0057   FF                     DB   0xFF   
0058   FF                     DB   0xFF   
0059   FF                     DB   0xFF   
005A   FF                     DB   0xFF   
005B   FF                     DB   0xFF   
005C   FF                     DB   0xFF   
005D   FF                     DB   0xFF   
005E   FF                     DB   0xFF   
005F   FF                     DB   0xFF   
0060   FF                     DB   0xFF   
0061   FF                     DB   0xFF   
0062   FF                     DB   0xFF   
0063   FF                     DB   0xFF   
0064   FF                     DB   0xFF   
0065   FF                     DB   0xFF   
0066   DB 00        NMINT:    IN   a,(0x00)   
0068   E6 1F                  AND   0x1f   
006A   ED 47                  LD   i,a   
006C   C9                     RET   
006D   31 D0 0F               LD   sp,0x0fd0   
0070   CD 31 01               CALL   L131   
0073   CD 8E 01               CALL   L18E   
0076   3A F9 0F               LD   a,(0x0ff9)   
0079   FE 00                  CP   0x00   
007B   C2 96 00               JP   nz,0x0096   
007E   ED 57                  LD   a,i   
0080   FE 10                  CP   0x10   
0082   DA 88 00               JP   c,0x0088   
0085   C3 E3 00               JP   0x00e3   
0088   21 F7 0F               LD   hl,0x0ff7   
008B   CD 6F 01               CALL   L16F   
008E   ED 6F                  RLD   
0090   23                     INC   hl   
0091   ED 6F                  RLD   
0093   C3 DA 00               JP   0x00da   
0096   ED 57                  LD   a,i   
0098   FE 10                  CP   0x10   
009A   DA B7 00               JP   c,0x00b7   
009D   AF                     XOR   a   
009E   32 FA 0F               LD   (0x0ffa),a   
00A1   ED 57                  LD   a,i   
00A3   FE 13                  CP   0x13   
00A5   CA DA 00               JP   z,0x00da   
00A8   FE 12                  CP   0x12   
00AA   CA C2 00               JP   z,0x00c2   
00AD   FE 11                  CP   0x11   
00AF   CA C6 00               JP   z,0x00c6   
00B2   FE 10                  CP   0x10   
00B4   CA D0 00               JP   z,0x00d0   
00B7   2A F7 0F               LD   hl,(0x0ff7)   
00BA   CD 7B 01               CALL   L17B   
00BD   ED 6F                  RLD   
00BF   C3 E3 00               JP   0x00e3   
00C2   2A F7 0F               LD   hl,(0x0ff7)   
00C5   E9                     JP   (hl)   
00C6   2A F7 0F               LD   hl,(0x0ff7)   
00C9   2B                     DEC   hl   
00CA   22 F7 0F               LD   (0x0ff7),hl   
00CD   C3 E3 00               JP   0x00e3   
00D0   2A F7 0F               LD   hl,(0x0ff7)   
00D3   23                     INC   hl   
00D4   22 F7 0F               LD   (0x0ff7),hl   
00D7   C3 E3 00               JP   0x00e3   
00DA   3E 00                  LD   a,0x00   
00DC   06 04                  LD   b,0x04   
00DE   21 F3 0F               LD   hl,0x0ff3   
00E1   18 07                  JR   0x00ea   
00E3   3E 67                  LD   a,0x67   
00E5   06 02                  LD   b,0x02   
00E7   21 F1 0F               LD   hl,0x0ff1   
00EA   32 F9 0F               LD   (0x0ff9),a   
00ED   D9                     EXX   
00EE   ED 5B F7 0F  0F:       LD   de,(0x0ff7)   
00F2   CD 02 01               CALL   L102   
00F5   1A                     LD   a,(de)   
00F6   CD 0E 01               CALL   L10E   
00F9   D9                     EXX   
00FA   CB E6                  SET   4,(hl)   
00FC   23                     INC   hl   
00FD   10 FB                  DJNZ   0x00fa   
00FF   C3 6D 00               JP   0x006d   
0102   21 F3 0F     L102:     LD   hl,0x0ff3   
0105   7B                     LD   a,e   
0106   CD 15 01               CALL   L115   
0109   7A                     LD   a,d   
010A   CD 15 01               CALL   L115   
010D   C9                     RET   
010E   21 F1 0F     L10E:     LD   hl,0x0ff1   
0111   CD 15 01               CALL   L115   
0114   C9                     RET   
0115   F5           L115:     PUSH   af   
0116   CD 26 01               CALL   L126   
0119   77                     LD   (hl),a   
011A   23                     INC   hl   
011B   F1                     POP   af   
011C   0F                     RRCA   
011D   0F                     RRCA   
011E   0F                     RRCA   
011F   0F                     RRCA   
0120   CD 26 01               CALL   L126   
0123   77                     LD   (hl),a   
0124   23                     INC   hl   
0125   C9                     RET   
0126   E5           L126:     PUSH   hl   
0127   21 5F 01               LD   hl,L15F   
012A   E6 0F                  AND   0x0f   
012C   85                     ADD   a,l   
012D   6F                     LD   l,a   
012E   7E                     LD   a,(hl)   
012F   E1                     POP   hl   
0130   C9                     RET   
0131   3E FF        L131:     LD   a,0xff   
0133   ED 47                  LD   i,a   
0135   CD 40 01               CALL   L140   
0138   ED 57                  LD   a,i   
013A   FE FF                  CP   0xff   
013C   C0                     RET   nz   
013D   C3 31 01               JP   L131   
0140   DD E5        L140:     PUSH   ix   
0142   01 01 06               LD   bc,0x0601   
0145   DD 7E 00               LD   a,(ix+0)   
0148   D3 02                  OUT   (0x02),a   
014A   DD 23                  INC   ix   
014C   79                     LD   a,c   
014D   D3 01                  OUT   (0x01),a   
014F   CB 27                  SLA   a   
0151   4F                     LD   c,a   
0152   3E 0A                  LD   a,0x0a   
0154   3D                     DEC   a   
0155   C2 54 01               JP   nz,0x0154   
0158   D3 01                  OUT   (0x01),a   
015A   10 E9                  DJNZ   0x0145   
015C   DD E1                  POP   ix   
015E   C9                     RET   
015F   EB           L15F:     DB   0xEB   
0160   28 CD                  DB   0x28,0xCD   
0162   AD                     DB   0xAD   
0163   2E A7                  DB   0x2E,0xA7   
0165   E7                     DB   0xE7   
0166   29                     DB   0x29   
0167   EF                     DB   0xEF   
0168   2F                     DB   0x2F   
0169   6F                     DB   0x6F   
016A   E6 C3                  DB   0xE6,0xC3   
016C   EC C7 47               DB   0xEC,0xC7,0x47   
016F   CD 7B 01     L16F:     CALL   L17B   
0172   C0                     RET   nz   
0173   23                     INC   hl   
0174   3E 00                  LD   a,0x00   
0176   77                     LD   (hl),a   
0177   2B                     DEC   hl   
0178   ED 57                  LD   a,i   
017A   C9                     RET   
017B   ED 57        L17B:     LD   a,i   
017D   47                     LD   b,a   
017E   3A FA 0F               LD   a,(0x0ffa)   
0181   FE 00                  CP   0x00   
0183   78                     LD   a,b   
0184   C0                     RET   nz   
0185   AF                     XOR   a   
0186   77                     LD   (hl),a   
0187   3D                     DEC   a   
0188   32 FA 0F               LD   (0x0ffa),a   
018B   78                     LD   a,b   
018C   C9                     RET   
018D   00                     NOP   
018E   0E 0A        L18E:     LD   c,0x0a   
0190   21 50 00               LD   hl,0x0050   
0193   29           L193:     ADD   hl,hl   
0194   11 01 00               LD   de,0x0001   
0197   AF                     XOR   a   
0198   D3 02                  OUT   (0x02),a   
019A   3D                     DEC   a   
019B   D3 01                  OUT   (0x01),a   
019D   41                     LD   b,c   
019E   10 FE                  DJNZ   0x019e   
01A0   EE 80                  XOR   0x80   
01A2   ED 52                  SBC   hl,de   
01A4   20 F5                  JR   nz,0x019b   
01A6   C9                     RET   
01A7   FF                     DB   0xFF   
01A8   FF                     DB   0xFF   
01A9   FF                     DB   0xFF   
01AA   FF                     DB   0xFF   
01AB   FF                     DB   0xFF   
01AC   FF                     DB   0xFF   
01AD   FF                     DB   0xFF   
01AE   FF                     DB   0xFF   
01AF   FF                     DB   0xFF   
01B0   ED 5B 00 08  PLAYMUSIC:   LD   de,(0x0800)   
01B4   1A                     LD   a,(de)   
01B5   E6 1F                  AND   0x1f   
01B7   FE 1F                  CP   0x1f   
01B9   C8                     RET   z   
01BA   00                     NOP   
01BB   00                     NOP   
01BC   FE 1E                  CP   0x1e   
01BE   CA B0 01               JP   z,PLAYMUSIC   
01C1   FE 00                  CP   0x00   
01C3   CA E9 01               JP   z,0x01e9   
01C6   47                     LD   b,a   
01C7   13                     INC   de   
01C8   D5                     PUSH   de   
01C9   21 F8 01               LD   hl,0x01f8   
01CC   CD E3 01               CALL   L1E3   
01CF   F5                     PUSH   af   
01D0   78                     LD   a,b   
01D1   21 10 02               LD   hl,0x0210   
01D4   CD E3 01               CALL   L1E3   
01D7   6F                     LD   l,a   
01D8   26 00                  LD   h,0x00   
01DA   F1                     POP   af   
01DB   4F                     LD   c,a   
01DC   CD 93 01               CALL   L193   
01DF   D1                     POP   de   
01E0   C3 B4 01               JP   0x01b4   
01E3   5F           L1E3:     LD   e,a   
01E4   16 00                  LD   d,0x00   
01E6   19                     ADD   hl,de   
01E7   7E                     LD   a,(hl)   
01E8   C9                     RET   
01E9   D5                     PUSH   de   
01EA   11 00 10               LD   de,0x1000   
01ED   1B                     DEC   de   
01EE   7A                     LD   a,d   
01EF   B3                     OR   e   
01F0   C2 ED 01               JP   nz,0x01ed   
01F3   D1                     POP   de   
01F4   13                     INC   de   
01F5   C3 B4 01               JP   0x01b4   
01F8   8C                     ADC   a,h   
01F9   83                     ADD   a,e   
01FA   7C                     LD   a,h   
01FB   75                     LD   (hl),l   
01FC   70                     LD   (hl),b   
01FD   67                     LD   h,a   
01FE   62                     LD   h,d   
01FF   5C                     LD   e,h   
0200   57                     LD   d,a   
0201   52                     LD   d,d   
0202   4E                     LD   c,(hl)   
0203   48                     LD   c,b   
0204   45                     LD   b,l   
0205   41                     LD   b,c   
0206   3C                     INC   a   
0207   39                     ADD   hl,sp   
0208   36 32                  LD   (hl),0x32   
020A   2F                     CPL   
020B   2C                     INC   l   
020C   2A 27 25               LD   hl,(0x2527)   
020F   23                     INC   hl   
0210   19                     ADD   hl,de   
0211   1A                     LD   a,(de)   
0212   1C                     INC   e   
0213   1D                     DEC   e   
0214   1E 20                  LD   e,0x20   
0216   23                     INC   hl   
0217   25                     DEC   h   
0218   27                     DAA   
0219   29                     ADD   hl,hl   
021A   2C                     INC   l   
021B   2E 31                  LD   l,0x31   
021D   33                     INC   sp   
021E   37                     SCF   
021F   3A 3D 41               LD   a,(0x413d)   
0222   45                     LD   b,l   
0223   49                     LD   c,c   
0224   4D                     LD   c,l   
0225   52                     LD   d,d   
0226   57                     LD   d,a   
0227   5C                     LD   e,h   
0228   10 FF                  DJNZ   0x0229   
022A   FF                     DB   0xFF   
022B   FF                     DB   0xFF   
022C   FF                     DB   0xFF   
022D   FF                     DB   0xFF   
022E   FF                     DB   0xFF   
022F   FF                     DB   0xFF   
0230   06 06        TUNE1:    DB   0x06,0x06   
0232   0A                     DB   0x0A   
0233   0D                     DB   0x0D   
0234   06 0D                  DB   0x06,0x0D   
0236   0A                     DB   0x0A   
0237   0D                     DB   0x0D   
0238   12                     DB   0x12   
0239   16 14                  DB   0x16,0x14   
023B   12                     DB   0x12   
023C   0F                     DB   0x0F   
023D   11 12 0F               DB   0x11,0x12,0x0F   
0240   0D                     DB   0x0D   
0241   0D                     DB   0x0D   
0242   0D                     DB   0x0D   
0243   0A                     DB   0x0A   
0244   12                     DB   0x12   
0245   0F                     DB   0x0F   
0246   0D                     DB   0x0D   
0247   0A                     DB   0x0A   
0248   08                     DB   0x08   
0249   06 08                  DB   0x06,0x08   
024B   0A                     DB   0x0A   
024C   0F                     DB   0x0F   
024D   0A                     DB   0x0A   
024E   0D                     DB   0x0D   
024F   0F                     DB   0x0F   
0250   06 06                  DB   0x06,0x06   
0252   0A                     DB   0x0A   
0253   0D                     DB   0x0D   
0254   06 0D                  DB   0x06,0x0D   
0256   0A                     DB   0x0A   
0257   0D                     DB   0x0D   
0258   12                     DB   0x12   
0259   16 14                  DB   0x16,0x14   
025B   12                     DB   0x12   
025C   0F                     DB   0x0F   
025D   11 12 0F               DB   0x11,0x12,0x0F   
0260   0D                     DB   0x0D   
0261   0D                     DB   0x0D   
0262   0D                     DB   0x0D   
0263   0A                     DB   0x0A   
0264   12                     DB   0x12   
0265   0F                     DB   0x0F   
0266   0D                     DB   0x0D   
0267   0A                     DB   0x0A   
0268   08                     DB   0x08   
0269   06 08                  DB   0x06,0x08   
026B   0A                     DB   0x0A   
026C   06 12                  DB   0x06,0x12   
026E   00                     DB   0x00   
026F   1E                     DB   0x1E   
0270   FD 2A 00 08  BANNER:   LD   iy,(0x0800)   
0274   DD 21 F1 0F            LD   ix,0x0ff1   
0278   06 06                  LD   b,0x06   
027A   21 F1 0F               LD   hl,0x0ff1   
027D   36 00                  LD   (hl),0x00   
027F   23                     INC   hl   
0280   10 FB                  DJNZ   0x027d   
0282   06 06                  LD   b,0x06   
0284   11 F7 0F               LD   de,0x0ff7   
0287   21 F6 0F               LD   hl,0x0ff6   
028A   7E                     LD   a,(hl)   
028B   12                     LD   (de),a   
028C   2B                     DEC   hl   
028D   1B                     DEC   de   
028E   10 FA                  DJNZ   0x028a   
0290   FD 7E 00               LD   a,(iy+0)   
0293   FD 23                  INC   iy   
0295   E6 1F                  AND   0x1f   
0297   FE 1F                  CP   0x1f   
0299   C8                     RET   z   
029A   FE 1E                  CP   0x1e   
029C   28 D2                  JR   z,BANNER   
029E   21 B3 02               LD   hl,CHARS   
02A1   CD E3 01               CALL   L1E3   
02A4   32 F1 0F               LD   (0x0ff1),a   
02A7   3E 80                  LD   a,0x80   
02A9   F5                     PUSH   af   
02AA   CD 40 01               CALL   L140   
02AD   F1                     POP   af   
02AE   3D                     DEC   a   
02AF   20 F8                  JR   nz,0x02a9   
02B1   18 CF                  JR   0x0282   
02B3   00           CHARS:    DB   0x00   
02B4   6F                     DB   0x6F   
02B5   E6 C3                  DB   0xE6,0xC3   
02B7   EC C7 47               DB   0xEC,0xC7,0x47   
02BA   E3                     DB   0xE3   
02BB   6E                     DB   0x6E   
02BC   28 E8                  DB   0x28,0xE8   
02BE   CE C2                  DB   0xCE,0xC2   
02C0   6B                     DB   0x6B   
02C1   EB                     DB   0xEB   
02C2   4F                     DB   0x4F   
02C3   2F                     DB   0x2F   
02C4   43                     DB   0x43   
02C5   A7                     DB   0xA7   
02C6   46                     DB   0x46   
02C7   EA E0 AE               DB   0xEA,0xE0,0xAE   
02CA   CD 04 10               DB   0xCD,0x04,0x10   
02CD   18 00                  DB   0x18,0x00   
02CF   00                     DB   0x00   
02D0   00                     DB   0x00   
02D1   08                     DB   0x08   ;h
02D2   05                     DB   0x05   ;e
02D3   0C                     DB   0x0c   ;l
02D4   0C                     DB   0x0c   ;l
02D5   0E                     DB   0x0e   ;o
02D6   00                     DB   0x00   ; 
02D7   13                     DB   0x13   ;t
02D8   08                     DB   0x08   ;h
02D9   05                     DB   0x05   ;e
02DA   11                     DB   0x11   ;r
02DB   05                     DB   0x05   ;e
02DC   00                     DB   0x00   ; 
02DD   13                     DB   0x13   ;t
02DE   08                     DB   0x08   ;h
02DF   09                     DB   0x09   ;i
02E0   12                     DB   0x12   ;s
02E1   00                     DB   0x00   ; 
02E2   09                     DB   0x09   ;i
02E3   12                     DB   0x12   ;s
02E4   00                     DB   0x00   ; 
02E5   13                     DB   0x13   ;t
02E6   08                     DB   0x08   ;h
02E7   05                     DB   0x05   ;e
02E8   00                     DB   0x00   ; 
02E9   13                     DB   0x13   ;t
02EA   05                     DB   0x05   ;e
02EB   03                     DB   0x03   ;c
02EC   18                     DB   0x18   ;-
02ED   09                     DB   0x09   ;1
02EE   19                     DB   0x19   ;.
02EF   19                     DB   0x19   ;.
02F0   19                     DB   0x19   ;.
02F1   19                     DB   0x19   ;.
02F2   04                     DB   0x04   ;d
02F3   05                     DB   0x05   ;e
02F4   12                     DB   0x12   ;s
02F5   09                     DB   0x09   ;i
02F6   07                     DB   0x07   ;g
02F7   0D                     DB   0x0d   ;n
02F8   05                     DB   0x05   ;e
02F9   04                     DB   0x04   ;d
02FA   00                     DB   0x00   ; 
02FB   02                     DB   0x02   ;b
02FC   16                     DB   0x16   ;y
02FD   00                     DB   0x00   ; 
02FE   0A                     DB   0x0a   ;j
02FF   0E                     DB   0x0e   ;o
0300   08                     DB   0x08   ;h
0301   0D                     DB   0x0d   ;n
0302   00                     DB   0x00   ; 
0303   08                     DB   0x08   ;h
0304   01                     DB   0x01   ;a
0305   11                     DB   0x11   ;r
0306   04                     DB   0x04   ;d
0307   16                     DB   0x16   ;y
0308   00                     DB   0x00   ; 
0309   06                     DB   0x06   ;f
030A   0E                     DB   0x0e   ;o
030B   11                     DB   0x11   ;r
030C   00                     DB   0x00   ; 
030D   13                     DB   0x13   ;t
030E   05                     DB   0x05   ;e
030F   1A                     DB   0x1a   ;!
0310   00                     DB   0x00   ; 
0311   00                     DB   0x00   ; 
0312   00                     DB   0x00   ; 
0313   00                     DB   0x00   ; 
0314   00                     DB   0x00   ; 
0315   00                     DB   0x00   ; 
0316   1E                     DB   0x1e   ; END
0317   FF                     DB   0xff   
0318   FF                     DB   0xff   
0319   FF                     DB   0xff   
031A   FF                     DB   0xff   
031B   FF                     DB   0xff   
031C   FF                     DB   0xff   
031D   FF                     DB   0xff   
031E   FF                     DB   0xff   
031F   FF                     DB   0xff   
0320   DD 21 F1 0F  INVADERS:   LD   ix,0x0ff1   
0324   AF                     XOR   a   
0325   32 FA 0F               LD   (0x0ffa),a   
0328   32 FB 0F               LD   (0x0ffb),a   
032B   06 06                  LD   b,0x06   
032D   21 F1 0F               LD   hl,0x0ff1   
0330   36 00                  LD   (hl),0x00   
0332   23                     INC   hl   
0333   10 FB                  DJNZ   0x0330   
0335   3A F5 0F               LD   a,(0x0ff5)   
0338   FE 00                  CP   0x00   
033A   20 37                  JR   nz,0x0373   
033C   11 F5 0F               LD   de,0x0ff5   
033F   21 F4 0F               LD   hl,0x0ff4   
0342   06 04                  LD   b,0x04   
0344   7E                     LD   a,(hl)   
0345   12                     LD   (de),a   
0346   2B                     DEC   hl   
0347   1B                     DEC   de   
0348   10 FA                  DJNZ   0x0344   
034A   ED 5F                  LD   a,r   
034C   CD B5 03               CALL   INVS1   
034F   32 F1 0F               LD   (0x0ff1),a   
0352   3E 00                  LD   a,0x00   
0354   00                     NOP   
0355   F5                     PUSH   af   
0356   3E FF                  LD   a,0xff   
0358   ED 47                  LD   i,a   
035A   3A FB 0F               LD   a,(0x0ffb)   
035D   CD B5 03               CALL   INVS1   
0360   32 F6 0F               LD   (0x0ff6),a   
0363   CD 40 01               CALL   L140   
0366   ED 57                  LD   a,i   
0368   FE FF                  CP   0xff   
036A   C4 8E 03               CALL   nz,L38E   
036D   F1                     POP   af   
036E   3D                     DEC   a   
036F   20 E4                  JR   nz,0x0355   
0371   18 C2                  JR   0x0335   
0373   CD 8E 01               CALL   L18E   
0376   06 06                  LD   b,0x06   
0378   21 F1 0F               LD   hl,0x0ff1   
037B   36 00                  LD   (hl),0x00   
037D   23                     INC   hl   
037E   10 FB                  DJNZ   0x037b   
0380   3A FA 0F               LD   a,(0x0ffa)   
0383   21 F3 0F               LD   hl,0x0ff3   
0386   CD 15 01               CALL   L115   
0389   CD 31 01               CALL   L131   
038C   18 92                  JR   INVADERS   
038E   FE 10        L38E:     CP   0x10   
0390   20 08                  JR   nz,0x039a   
0392   3A FB 0F               LD   a,(0x0ffb)   
0395   3C                     INC   a   
0396   32 FB 0F               LD   (0x0ffb),a   
0399   C9                     RET   
039A   3A F6 0F               LD   a,(0x0ff6)   
039D   4F                     LD   c,a   
039E   21 F5 0F               LD   hl,0x0ff5   
03A1   06 05                  LD   b,0x05   
03A3   7E                     LD   a,(hl)   
03A4   B9                     CP   c   
03A5   20 0A                  JR   nz,0x03b1   
03A7   36 00                  LD   (hl),0x00   
03A9   3A FA 0F               LD   a,(0x0ffa)   
03AC   3C                     INC   a   
03AD   27                     DAA   
03AE   32 FA 0F               LD   (0x0ffa),a   
03B1   2B                     DEC   hl   
03B2   10 EF                  DJNZ   0x03a3   
03B4   C9                     RET   
03B5   E6 07        INVS1:    AND   0x07   
03B7   CD 26 01               CALL   L126   
03BA   C9                     RET   
03BB   16 0E        NIMLOSE:   DB   0x16,0x0E   ;y o
03BD   14                     DB   0x14   ;u
03BE   00                     DB   0x00   ; 
03BF   0C                     DB   0x0C   ;l
03C0   0E 12                  DB   0x0E,0x12   ;o s
03C2   05                     DB   0x05   ;e
03C3   00                     DB   0x00   ; 
03C4   12                     DB   0x12   ;s
03C5   13                     DB   0x13   ;t
03C6   14                     DB   0x14   ;u
03C7   0F                     DB   0x0F   ;p
03C8   09                     DB   0x09   ;i
03C9   04                     DB   0x04   ;d
03CA   1A                     DB   0x1A   ;!
03CB   1F                     DB   0x1F   ;END
03CC   0E 08        NIMWIN:   DB   0x0E,0x08   ;o h
03CE   00                     DB   0x00   ; 
03CF   0D                     DB   0x0D   ;n
03D0   0E 19                  DB   0x0E,0x19   ;o .
03D2   19                     DB   0x19   ;.
03D3   19                     DB   0x19   ;.
03D4   09                     DB   0x09   ;i
03D5   00                     DB   0x00   ; 
03D6   0C                     DB   0x0C   ;l
03D7   0E 12                  DB   0x0E,0x12   ;o s
03D9   13                     DB   0x13   ;t
03DA   1A                     DB   0x1A   ;!
03DB   1F                     DB   0x1F   ;END
03DC   FF                     DB   0xFF   
03DD   FF                     DB   0xFF   
03DE   FF                     DB   0xFF   
03DF   FF                     DB   0xFF   
03E0   DD 21 F1 0F  NIM:      LD   ix,0x0ff1   
03E4   3E 23                  LD   a,0x23   
03E6   32 FA 0F               LD   (0x0ffa),a   
03E9   21 F1 0F               LD   hl,0x0ff1   
03EC   06 06                  LD   b,0x06   
03EE   36 00                  LD   (hl),0x00   
03F0   23                     INC   hl   
03F1   10 FB                  DJNZ   0x03ee   
03F3   1E 00                  LD   e,0x00   
03F5   CD 66 04               CALL   L466   
03F8   CD 31 01               CALL   L131   
03FB   ED 57                  LD   a,i   
03FD   FE 04                  CP   0x04   
03FF   30 F4                  JR   nc,0x03f5   
0401   FE 00                  CP   0x00   
0403   28 F0                  JR   z,0x03f5   
0405   5F                     LD   e,a   
0406   3A FA 0F               LD   a,(0x0ffa)   
0409   BB                     CP   e   
040A   28 44                  JR   z,0x0450   
040C   38 42                  JR   c,0x0450   
040E   93                     SUB   e   
040F   27                     DAA   
0410   32 FA 0F               LD   (0x0ffa),a   
0413   CD 66 04               CALL   L466   
0416   21 F6 0F               LD   hl,0x0ff6   
0419   36 AE                  LD   (hl),0xae   
041B   16 00                  LD   d,0x00   
041D   CD 40 01               CALL   L140   
0420   15                     DEC   d   
0421   20 FA                  JR   nz,0x041d   
0423   3A FA 0F               LD   a,(0x0ffa)   
0426   FE 01                  CP   0x01   
0428   28 2C                  JR   z,0x0456   
042A   3D                     DEC   a   
042B   27                     DAA   
042C   D6 04                  SUB   0x04   
042E   27                     DAA   
042F   30 FB                  JR   nc,0x042c   
0431   C6 04                  ADD   a,0x04   
0433   27                     DAA   
0434   FE 00                  CP   0x00   
0436   28 10                  JR   z,0x0448   
0438   5F                     LD   e,a   
0439   3A FA 0F               LD   a,(0x0ffa)   
043C   93                     SUB   e   
043D   27                     DAA   
043E   32 FA 0F               LD   (0x0ffa),a   
0441   21 F6 0F               LD   hl,0x0ff6   
0444   36 28                  LD   (hl),0x28   
0446   18 AD                  JR   0x03f5   
0448   ED 5F                  LD   a,r   
044A   E6 03                  AND   0x03   
044C   28 28                  JR   z,0x0476   
044E   18 E8                  JR   0x0438   
0450   11 BB 03               LD   de,NIMLOSE   
0453   C3 59 04               JP   0x0459   
0456   11 CC 03               LD   de,NIMWIN   
0459   ED 53 00 08            LD   (0x0800),de   
045D   CD 70 02               CALL   BANNER   
0460   CD 31 01               CALL   L131   
0463   C3 E0 03               JP   0x03e0   
0466   21 F1 0F     L466:     LD   hl,0x0ff1   
0469   3A FA 0F               LD   a,(0x0ffa)   
046C   CD 15 01               CALL   L115   
046F   23                     INC   hl   
0470   7B                     LD   a,e   
0471   CD 26 01               CALL   L126   
0474   77                     LD   (hl),a   
0475   C9                     RET   
0476   3C                     INC   a   
0477   C3 38 04               JP   0x0438   
047A   FF                     DB   0xFF   
047B   14           LUNAS1:   DB   0x14   ;D
047C   12                     DB   0x12   ;C
047D   14                     DB   0x14   ;D
047E   17                     DB   0x17   ;F
047F   17                     DB   0x17   ;F
0480   12                     DB   0x12   ;C
0481   14                     DB   0x14   ;D
0482   10 1F                  DB   0x10,0x1F   ; A# END
0484   01 11 01     LUNAS2:   DB   0x01,0x11,0x01   ;G B G
0487   11 01 11               DB   0x11,0x01,0x11   ;B G B
048A   1F                     DB   0x1F   ;END
048B   FF                     DB   0xFF   
048C   FF                     DB   0xFF   
048D   FF                     DB   0xFF   
048E   FF                     DB   0xFF   
048F   FF                     DB   0xFF   
0490   DD 21 F1 0F  LUNALANDER:   LD   ix,0x0ff1   
0494   FD 21 00 08            LD   iy,0x0800   
0498   3E 50                  LD   a,0x50   
049A   FD 77 00               LD   (iy+0),a   
049D   3E 20                  LD   a,0x20   
049F   FD 77 01               LD   (iy+1),a   
04A2   AF                     XOR   a   
04A3   FD 77 02               LD   (iy+2),a   
04A6   21 F1 0F               LD   hl,0x0ff1   
04A9   06 06                  LD   b,0x06   
04AB   36 00                  LD   (hl),0x00   
04AD   23                     INC   hl   
04AE   10 FB                  DJNZ   0x04ab   
04B0   16 80                  LD   d,0x80   
04B2   FD 7E 01               LD   a,(iy+1)   
04B5   21 F1 0F               LD   hl,0x0ff1   
04B8   CD 15 01               CALL   L115   
04BB   23                     INC   hl   
04BC   23                     INC   hl   
04BD   FD 7E 00               LD   a,(iy+0)   
04C0   CD 15 01               CALL   L115   
04C3   3E FF                  LD   a,0xff   
04C5   ED 47                  LD   i,a   
04C7   CD 40 01               CALL   L140   
04CA   ED 57                  LD   a,i   
04CC   FE FF                  CP   0xff   
04CE   C4 F3 04               CALL   nz,L4F3   
04D1   15                     DEC   d   
04D2   C2 B2 04               JP   nz,0x04b2   
04D5   FD 7E 02               LD   a,(iy+2)   
04D8   D6 01                  SUB   0x01   
04DA   27                     DAA   
04DB   FD 77 02               LD   (iy+2),a   
04DE   47                     LD   b,a   
04DF   FD 7E 00               LD   a,(iy+0)   
04E2   80                     ADD   a,b   
04E3   27                     DAA   
04E4   FE 00                  CP   0x00   
04E6   CA 11 05               JP   z,0x0511   
04E9   FE 60                  CP   0x60   
04EB   30 1B                  JR   nc,0x0508   
04ED   FD 77 00               LD   (iy+0),a   
04F0   C3 B0 04               JP   0x04b0   
04F3   FD 7E 01     L4F3:     LD   a,(iy+1)   
04F6   FE 00                  CP   0x00   
04F8   C8                     RET   z   
04F9   3D                     DEC   a   
04FA   27                     DAA   
04FB   FD 77 01               LD   (iy+1),a   
04FE   FD 7E 02               LD   a,(iy+2)   
0501   C6 02                  ADD   a,0x02   
0503   27                     DAA   
0504   FD 77 02               LD   (iy+2),a   
0507   C9                     RET   
0508   11 84 04               LD   de,LUNAS2   
050B   DD 21 00 00            LD   ix,0x0000   
050F   18 03                  JR   0x0514   
0511   11 7B 04               LD   de,LUNAS1   
0514   ED 53 00 08            LD   (0x0800),de   
0518   CD B0 01               CALL   PLAYMUSIC   
051B   CD 31 01               CALL   L131   
051E   C3 90 04               JP   0x0490   
0521   FF                     DB   0xFF   
0522   FF                     DB   0xFF   
0523   FF                     DB   0xFF   
0524   FF                     DB   0xFF   
0525   FF                     DB   0xFF   
0526   FF                     DB   0xFF   
0527   FF                     DB   0xFF   
0528   FF                     DB   0xFF   
0529   FF                     DB   0xFF   
052A   FF                     DB   0xFF   
052B   FF                     DB   0xFF   
052C   FF                     DB   0xFF   
052D   FF                     DB   0xFF   
052E   FF                     DB   0xFF   
052F   FF                     DB   0xFF   
0530   0B           TUNE2:    DB   0x0B   
0531   0A                     DB   0x0A   
0532   08                     DB   0x08   
0533   0A                     DB   0x0A   
0534   0A                     DB   0x0A   
0535   0A                     DB   0x0A   
0536   06 06                  DB   0x06,0x06   
0538   06 0B                  DB   0x06,0x0B   
053A   0A                     DB   0x0A   
053B   08                     DB   0x08   
053C   0A                     DB   0x0A   
053D   0A                     DB   0x0A   
053E   0A                     DB   0x0A   
053F   0A                     DB   0x0A   
0540   0A                     DB   0x0A   
0541   0A                     DB   0x0A   
0542   0B                     DB   0x0B   
0543   0A                     DB   0x0A   
0544   08                     DB   0x08   
0545   0A                     DB   0x0A   
0546   0A                     DB   0x0A   
0547   0A                     DB   0x0A   
0548   06 06                  DB   0x06,0x06   
054A   06 0A                  DB   0x06,0x0A   
054C   08                     DB   0x08   
054D   0A                     DB   0x0A   
054E   0D                     DB   0x0D   
054F   0D                     DB   0x0D   
0550   0D                     DB   0x0D   
0551   0D                     DB   0x0D   
0552   0D                     DB   0x0D   
0553   00                     DB   0x00   
0554   0D                     DB   0x0D   
0555   05                     DB   0x05   
0556   08                     DB   0x08   
0557   0B                     DB   0x0B   
0558   0B                     DB   0x0B   
0559   0B                     DB   0x0B   
055A   06 06                  DB   0x06,0x06   
055C   06 0B                  DB   0x06,0x0B   
055E   0A                     DB   0x0A   
055F   08                     DB   0x08   
0560   0A                     DB   0x0A   
0561   0A                     DB   0x0A   
0562   0A                     DB   0x0A   
0563   06 06                  DB   0x06,0x06   
0565   06 0B                  DB   0x06,0x0B   
0567   0A                     DB   0x0A   
0568   06 08                  DB   0x06,0x08   
056A   08                     DB   0x08   
056B   08                     DB   0x08   
056C   08                     DB   0x08   
056D   08                     DB   0x08   
056E   0A                     DB   0x0A   
056F   0B                     DB   0x0B   
0570   0A                     DB   0x0A   
0571   08                     DB   0x08   
0572   06 06                  DB   0x06,0x06   
0574   06 06                  DB   0x06,0x06   
0576   06 06                  DB   0x06,0x06   
0578   00                     DB   0x00   
0579   00                     DB   0x00   
057A   00                     DB   0x00   
057B   1E FF                  DB   0x1E,0xFF   
057D   FF                     DB   0xFF   
057E   FF                     DB   0xFF   
057F   FF                     DB   0xFF   
0580   21 00 08     L580:     LD   hl,0x0800   
0583   31 D0 0F               LD   sp,0x0fd0   
0586   DD 21 F1 0F            LD   ix,0x0ff1   
058A   22 F7 0F               LD   (0x0ff7),hl   
058D   AF                     XOR   a   
058E   32 F9 0F               LD   (0x0ff9),a   
0591   32 FA 0F               LD   (0x0ffa),a   
0594   0E 0A                  LD   c,0x0a   
0596   21 50 00               LD   hl,0x0050   
0599   CD 93 01               CALL   L193   
059C   0E 20                  LD   c,0x20   
059E   21 30 00               LD   hl,0x0030   
05A1   CD 93 01               CALL   L193   
05A4   C3 E3 00               JP   0x00e3   
05A7   FF                     DB   0xFF   
05A8   FF                     DB   0xFF   
05A9   FF                     DB   0xFF   
05AA   FF                     DB   0xFF   
05AB   FF                     DB   0xFF   
05AC   FF                     DB   0xFF   
05AD   FF                     DB   0xFF   
05AE   FF                     DB   0xFF   
05AF   FF                     DB   0xFF   
05B0   21 00 08               LD   hl,0x0800   
05B3   11 00 0B               LD   de,0x0b00   
05B6   7E           L5B6:     LD   a,(hl)   
05B7   FE FF                  CP   0xff   
05B9   C2 C2 05               JP   nz,0x05c2   
05BC   21 00 08               LD   hl,0x0800   
05BF   C3 B6 05               JP   L5B6   
05C2   D3 03                  OUT   (0x03),a   
05C4   1A                     LD   a,(de)   
05C5   FE FF                  CP   0xff   
05C7   C2 D0 05               JP   nz,0x05d0   
05CA   11 00 0B               LD   de,0x0b00   
05CD   C3 C4 05               JP   0x05c4   
05D0   D3 04                  OUT   (0x04),a   
05D2   CD E1 05               CALL   L5E1   
05D5   13                     INC   de   
05D6   1A                     LD   a,(de)   
05D7   D3 04                  OUT   (0x04),a   
05D9   CD E1 05               CALL   L5E1   
05DC   13                     INC   de   
05DD   23                     INC   hl   
05DE   C3 B6 05               JP   L5B6   
05E1   01 FF 03     L5E1:     LD   bc,0x03ff   
05E4   0B                     DEC   bc   
05E5   78                     LD   a,b   
05E6   B1                     OR   c   
05E7   C2 E4 05               JP   nz,0x05e4   
05EA   C9                     RET   
05EB   FF                     DB   0xFF   
05EC   FF                     DB   0xFF   
05ED   FF                     DB   0xFF   
05EE   FF                     DB   0xFF   
05EF   FF                     DB   0xFF   
05F0   ED 73 D8 0F  STARTMON:   LD   (0x0fd8),sp   
05F4   31 F0 0F               LD   sp,0x0ff0   
05F7   F5                     PUSH   af   
05F8   C5                     PUSH   bc   
05F9   D5                     PUSH   de   
05FA   E5                     PUSH   hl   
05FB   DD E5                  PUSH   ix   
05FD   FD E5                  PUSH   iy   
05FF   08                     EX   af,af'   
0600   D9                     EXX   
0601   F5                     PUSH   af   
0602   C5                     PUSH   bc   
0603   D5                     PUSH   de   
0604   E5                     PUSH   hl   
0605   ED 57                  LD   a,i   
0607   F5                     PUSH   af   
0608   C3 80 05               JP   L580   
060B   FF                     DB   0xFF   
060C   FF                     DB   0xFF   
060D   FF                     DB   0xFF   
060E   FF                     DB   0xFF   
060F   FF                     DB   0xFF   
0610   FF                     DB   0xFF   
0611   FF                     DB   0xFF   
0612   FF                     DB   0xFF   
0613   FF                     DB   0xFF   
0614   FF                     DB   0xFF   
0615   FF                     DB   0xFF   
0616   FF                     DB   0xFF   
0617   FF                     DB   0xFF   
0618   FF                     DB   0xFF   
0619   FF                     DB   0xFF   
061A   FF                     DB   0xFF   
061B   FF                     DB   0xFF   
061C   FF                     DB   0xFF   
061D   FF                     DB   0xFF   
061E   FF                     DB   0xFF   
061F   FF                     DB   0xFF   
0620   FF                     DB   0xFF   
0621   FF                     DB   0xFF   
0622   FF                     DB   0xFF   
0623   FF                     DB   0xFF   
0624   FF                     DB   0xFF   
0625   FF                     DB   0xFF   
0626   FF                     DB   0xFF   
0627   FF                     DB   0xFF   
0628   FF                     DB   0xFF   
0629   FF                     DB   0xFF   
062A   FF                     DB   0xFF   
062B   FF                     DB   0xFF   
062C   FF                     DB   0xFF   
062D   FF                     DB   0xFF   
062E   FF                     DB   0xFF   
062F   FF                     DB   0xFF   
0630   FF                     DB   0xFF   
0631   FF                     DB   0xFF   
0632   FF                     DB   0xFF   
0633   FF                     DB   0xFF   
0634   FF                     DB   0xFF   
0635   FF                     DB   0xFF   
0636   FF                     DB   0xFF   
0637   FF                     DB   0xFF   
0638   FF                     DB   0xFF   
0639   FF                     DB   0xFF   
063A   FF                     DB   0xFF   
063B   FF                     DB   0xFF   
063C   FF                     DB   0xFF   
063D   FF                     DB   0xFF   
063E   FF                     DB   0xFF   
063F   FF                     DB   0xFF   
0640   FF                     DB   0xFF   
0641   FF                     DB   0xFF   
0642   FF                     DB   0xFF   
0643   FF                     DB   0xFF   
0644   FF                     DB   0xFF   
0645   FF                     DB   0xFF   
0646   FF                     DB   0xFF   
0647   FF                     DB   0xFF   
0648   FF                     DB   0xFF   
0649   FF                     DB   0xFF   
064A   FF                     DB   0xFF   
064B   FF                     DB   0xFF   
064C   FF                     DB   0xFF   
064D   FF                     DB   0xFF   
064E   FF                     DB   0xFF   
064F   FF                     DB   0xFF   
0650   FF                     DB   0xFF   
0651   FF                     DB   0xFF   
0652   FF                     DB   0xFF   
0653   FF                     DB   0xFF   
0654   FF                     DB   0xFF   
0655   FF                     DB   0xFF   
0656   FF                     DB   0xFF   
0657   FF                     DB   0xFF   
0658   FF                     DB   0xFF   
0659   FF                     DB   0xFF   
065A   FF                     DB   0xFF   
065B   FF                     DB   0xFF   
065C   FF                     DB   0xFF   
065D   FF                     DB   0xFF   
065E   FF                     DB   0xFF   
065F   FF                     DB   0xFF   
0660   FF                     DB   0xFF   
0661   FF                     DB   0xFF   
0662   FF                     DB   0xFF   
0663   FF                     DB   0xFF   
0664   FF                     DB   0xFF   
0665   FF                     DB   0xFF   
0666   FF                     DB   0xFF   
0667   FF                     DB   0xFF   
0668   FF                     DB   0xFF   
0669   FF                     DB   0xFF   
066A   FF                     DB   0xFF   
066B   FF                     DB   0xFF   
066C   FF                     DB   0xFF   
066D   FF                     DB   0xFF   
066E   FF                     DB   0xFF   
066F   FF                     DB   0xFF   
0670   FF                     DB   0xFF   
0671   FF                     DB   0xFF   
0672   FF                     DB   0xFF   
0673   FF                     DB   0xFF   
0674   FF                     DB   0xFF   
0675   FF                     DB   0xFF   
0676   FF                     DB   0xFF   
0677   FF                     DB   0xFF   
0678   FF                     DB   0xFF   
0679   FF                     DB   0xFF   
067A   FF                     DB   0xFF   
067B   FF                     DB   0xFF   
067C   FF                     DB   0xFF   
067D   FF                     DB   0xFF   
067E   FF                     DB   0xFF   
067F   FF                     DB   0xFF   
0680   FF                     DB   0xFF   
0681   FF                     DB   0xFF   
0682   FF                     DB   0xFF   
0683   FF                     DB   0xFF   
0684   FF                     DB   0xFF   
0685   FF                     DB   0xFF   
0686   FF                     DB   0xFF   
0687   FF                     DB   0xFF   
0688   FF                     DB   0xFF   
0689   FF                     DB   0xFF   
068A   FF                     DB   0xFF   
068B   FF                     DB   0xFF   
068C   FF                     DB   0xFF   
068D   FF                     DB   0xFF   
068E   FF                     DB   0xFF   
068F   FF                     DB   0xFF   
0690   FF                     DB   0xFF   
0691   FF                     DB   0xFF   
0692   FF                     DB   0xFF   
0693   FF                     DB   0xFF   
0694   FF                     DB   0xFF   
0695   FF                     DB   0xFF   
0696   FF                     DB   0xFF   
0697   FF                     DB   0xFF   
0698   FF                     DB   0xFF   
0699   FF                     DB   0xFF   
069A   FF                     DB   0xFF   
069B   FF                     DB   0xFF   
069C   FF                     DB   0xFF   
069D   FF                     DB   0xFF   
069E   FF                     DB   0xFF   
069F   FF                     DB   0xFF   
06A0   FF                     DB   0xFF   
06A1   FF                     DB   0xFF   
06A2   FF                     DB   0xFF   
06A3   FF                     DB   0xFF   
06A4   FF                     DB   0xFF   
06A5   FF                     DB   0xFF   
06A6   FF                     DB   0xFF   
06A7   FF                     DB   0xFF   
06A8   FF                     DB   0xFF   
06A9   FF                     DB   0xFF   
06AA   FF                     DB   0xFF   
06AB   FF                     DB   0xFF   
06AC   FF                     DB   0xFF   
06AD   FF                     DB   0xFF   
06AE   FF                     DB   0xFF   
06AF   FF                     DB   0xFF   
06B0   FF                     DB   0xFF   
06B1   FF                     DB   0xFF   
06B2   FF                     DB   0xFF   
06B3   FF                     DB   0xFF   
06B4   FF                     DB   0xFF   
06B5   FF                     DB   0xFF   
06B6   FF                     DB   0xFF   
06B7   FF                     DB   0xFF   
06B8   FF                     DB   0xFF   
06B9   FF                     DB   0xFF   
06BA   FF                     DB   0xFF   
06BB   FF                     DB   0xFF   
06BC   FF                     DB   0xFF   
06BD   FF                     DB   0xFF   
06BE   FF                     DB   0xFF   
06BF   FF                     DB   0xFF   
06C0   FF                     DB   0xFF   
06C1   FF                     DB   0xFF   
06C2   FF                     DB   0xFF   
06C3   FF                     DB   0xFF   
06C4   FF                     DB   0xFF   
06C5   FF                     DB   0xFF   
06C6   FF                     DB   0xFF   
06C7   FF                     DB   0xFF   
06C8   FF                     DB   0xFF   
06C9   FF                     DB   0xFF   
06CA   FF                     DB   0xFF   
06CB   FF                     DB   0xFF   
06CC   FF                     DB   0xFF   
06CD   FF                     DB   0xFF   
06CE   FF                     DB   0xFF   
06CF   FF                     DB   0xFF   
06D0   FF                     DB   0xFF   
06D1   FF                     DB   0xFF   
06D2   FF                     DB   0xFF   
06D3   FF                     DB   0xFF   
06D4   FF                     DB   0xFF   
06D5   FF                     DB   0xFF   
06D6   FF                     DB   0xFF   
06D7   FF                     DB   0xFF   
06D8   FF                     DB   0xFF   
06D9   FF                     DB   0xFF   
06DA   FF                     DB   0xFF   
06DB   FF                     DB   0xFF   
06DC   FF                     DB   0xFF   
06DD   FF                     DB   0xFF   
06DE   FF                     DB   0xFF   
06DF   FF                     DB   0xFF   
06E0   FF                     DB   0xFF   
06E1   FF                     DB   0xFF   
06E2   FF                     DB   0xFF   
06E3   FF                     DB   0xFF   
06E4   FF                     DB   0xFF   
06E5   FF                     DB   0xFF   
06E6   FF                     DB   0xFF   
06E7   FF                     DB   0xFF   
06E8   FF                     DB   0xFF   
06E9   FF                     DB   0xFF   
06EA   FF                     DB   0xFF   
06EB   FF                     DB   0xFF   
06EC   FF                     DB   0xFF   
06ED   FF                     DB   0xFF   
06EE   FF                     DB   0xFF   
06EF   FF                     DB   0xFF   
06F0   FF                     DB   0xFF   
06F1   FF                     DB   0xFF   
06F2   FF                     DB   0xFF   
06F3   FF                     DB   0xFF   
06F4   FF                     DB   0xFF   
06F5   FF                     DB   0xFF   
06F6   FF                     DB   0xFF   
06F7   FF                     DB   0xFF   
06F8   FF                     DB   0xFF   
06F9   FF                     DB   0xFF   
06FA   FF                     DB   0xFF   
06FB   FF                     DB   0xFF   
06FC   FF                     DB   0xFF   
06FD   FF                     DB   0xFF   
06FE   FF                     DB   0xFF   
06FF   FF                     DB   0xFF   
0700   FF                     DB   0xFF   
0701   FF                     DB   0xFF   
0702   FF                     DB   0xFF   
0703   FF                     DB   0xFF   
0704   FF                     DB   0xFF   
0705   FF                     DB   0xFF   
0706   FF                     DB   0xFF   
0707   FF                     DB   0xFF   
0708   FF                     DB   0xFF   
0709   FF                     DB   0xFF   
070A   FF                     DB   0xFF   
070B   FF                     DB   0xFF   
070C   FF                     DB   0xFF   
070D   FF                     DB   0xFF   
070E   FF                     DB   0xFF   
070F   FF                     DB   0xFF   
0710   FF                     DB   0xFF   
0711   FF                     DB   0xFF   
0712   FF                     DB   0xFF   
0713   FF                     DB   0xFF   
0714   FF                     DB   0xFF   
0715   FF                     DB   0xFF   
0716   FF                     DB   0xFF   
0717   FF                     DB   0xFF   
0718   FF                     DB   0xFF   
0719   FF                     DB   0xFF   
071A   FF                     DB   0xFF   
071B   FF                     DB   0xFF   
071C   FF                     DB   0xFF   
071D   FF                     DB   0xFF   
071E   FF                     DB   0xFF   
071F   FF                     DB   0xFF   
0720   FF                     DB   0xFF   
0721   FF                     DB   0xFF   
0722   FF                     DB   0xFF   
0723   FF                     DB   0xFF   
0724   FF                     DB   0xFF   
0725   FF                     DB   0xFF   
0726   FF                     DB   0xFF   
0727   FF                     DB   0xFF   
0728   FF                     DB   0xFF   
0729   FF                     DB   0xFF   
072A   FF                     DB   0xFF   
072B   FF                     DB   0xFF   
072C   FF                     DB   0xFF   
072D   FF                     DB   0xFF   
072E   FF                     DB   0xFF   
072F   FF                     DB   0xFF   
0730   FF                     DB   0xFF   
0731   FF                     DB   0xFF   
0732   FF                     DB   0xFF   
0733   FF                     DB   0xFF   
0734   FF                     DB   0xFF   
0735   FF                     DB   0xFF   
0736   FF                     DB   0xFF   
0737   FF                     DB   0xFF   
0738   FF                     DB   0xFF   
0739   FF                     DB   0xFF   
073A   FF                     DB   0xFF   
073B   FF                     DB   0xFF   
073C   FF                     DB   0xFF   
073D   FF                     DB   0xFF   
073E   FF                     DB   0xFF   
073F   FF                     DB   0xFF   
0740   FF                     DB   0xFF   
0741   FF                     DB   0xFF   
0742   FF                     DB   0xFF   
0743   FF                     DB   0xFF   
0744   FF                     DB   0xFF   
0745   FF                     DB   0xFF   
0746   FF                     DB   0xFF   
0747   FF                     DB   0xFF   
0748   FF                     DB   0xFF   
0749   FF                     DB   0xFF   
074A   FF                     DB   0xFF   
074B   FF                     DB   0xFF   
074C   FF                     DB   0xFF   
074D   FF                     DB   0xFF   
074E   FF                     DB   0xFF   
074F   FF                     DB   0xFF   
0750   FF                     DB   0xFF   
0751   FF                     DB   0xFF   
0752   FF                     DB   0xFF   
0753   FF                     DB   0xFF   
0754   FF                     DB   0xFF   
0755   FF                     DB   0xFF   
0756   FF                     DB   0xFF   
0757   FF                     DB   0xFF   
0758   FF                     DB   0xFF   
0759   FF                     DB   0xFF   
075A   FF                     DB   0xFF   
075B   FF                     DB   0xFF   
075C   FF                     DB   0xFF   
075D   FF                     DB   0xFF   
075E   FF                     DB   0xFF   
075F   FF                     DB   0xFF   
0760   FF                     DB   0xFF   
0761   FF                     DB   0xFF   
0762   FF                     DB   0xFF   
0763   FF                     DB   0xFF   
0764   FF                     DB   0xFF   
0765   FF                     DB   0xFF   
0766   FF                     DB   0xFF   
0767   FF                     DB   0xFF   
0768   FF                     DB   0xFF   
0769   FF                     DB   0xFF   
076A   FF                     DB   0xFF   
076B   FF                     DB   0xFF   
076C   FF                     DB   0xFF   
076D   FF                     DB   0xFF   
076E   FF                     DB   0xFF   
076F   FF                     DB   0xFF   
0770   FF                     DB   0xFF   
0771   FF                     DB   0xFF   
0772   FF                     DB   0xFF   
0773   FF                     DB   0xFF   
0774   FF                     DB   0xFF   
0775   FF                     DB   0xFF   
0776   FF                     DB   0xFF   
0777   FF                     DB   0xFF   
0778   FF                     DB   0xFF   
0779   FF                     DB   0xFF   
077A   FF                     DB   0xFF   
077B   FF                     DB   0xFF   
077C   FF                     DB   0xFF   
077D   FF                     DB   0xFF   
077E   FF                     DB   0xFF   
077F   FF                     DB   0xFF   
0780   FF                     DB   0xFF   
0781   FF                     DB   0xFF   
0782   FF                     DB   0xFF   
0783   FF                     DB   0xFF   
0784   FF                     DB   0xFF   
0785   FF                     DB   0xFF   
0786   FF                     DB   0xFF   
0787   FF                     DB   0xFF   
0788   FF                     DB   0xFF   
0789   FF                     DB   0xFF   
078A   FF                     DB   0xFF   
078B   FF                     DB   0xFF   
078C   FF                     DB   0xFF   
078D   FF                     DB   0xFF   
078E   FF                     DB   0xFF   
078F   FF                     DB   0xFF   
0790   FF                     DB   0xFF   
0791   FF                     DB   0xFF   
0792   FF                     DB   0xFF   
0793   FF                     DB   0xFF   
0794   FF                     DB   0xFF   
0795   FF                     DB   0xFF   
0796   FF                     DB   0xFF   
0797   FF                     DB   0xFF   
0798   FF                     DB   0xFF   
0799   FF                     DB   0xFF   
079A   FF                     DB   0xFF   
079B   FF                     DB   0xFF   
079C   FF                     DB   0xFF   
079D   FF                     DB   0xFF   
079E   FF                     DB   0xFF   
079F   FF                     DB   0xFF   
07A0   FF                     DB   0xFF   
07A1   FF                     DB   0xFF   
07A2   FF                     DB   0xFF   
07A3   FF                     DB   0xFF   
07A4   FF                     DB   0xFF   
07A5   FF                     DB   0xFF   
07A6   FF                     DB   0xFF   
07A7   FF                     DB   0xFF   
07A8   FF                     DB   0xFF   
07A9   FF                     DB   0xFF   
07AA   FF                     DB   0xFF   
07AB   FF                     DB   0xFF   
07AC   FF                     DB   0xFF   
07AD   FF                     DB   0xFF   
07AE   FF                     DB   0xFF   
07AF   FF                     DB   0xFF   
07B0   FF                     DB   0xFF   
07B1   FF                     DB   0xFF   
07B2   FF                     DB   0xFF   
07B3   FF                     DB   0xFF   
07B4   FF                     DB   0xFF   
07B5   FF                     DB   0xFF   
07B6   FF                     DB   0xFF   
07B7   FF                     DB   0xFF   
07B8   FF                     DB   0xFF   
07B9   FF                     DB   0xFF   
07BA   FF                     DB   0xFF   
07BB   FF                     DB   0xFF   
07BC   FF                     DB   0xFF   
07BD   FF                     DB   0xFF   
07BE   FF                     DB   0xFF   
07BF   FF                     DB   0xFF   
07C0   FF                     DB   0xFF   
07C1   FF                     DB   0xFF   
07C2   FF                     DB   0xFF   
07C3   FF                     DB   0xFF   
07C4   FF                     DB   0xFF   
07C5   FF                     DB   0xFF   
07C6   FF                     DB   0xFF   
07C7   FF                     DB   0xFF   
07C8   FF                     DB   0xFF   
07C9   FF                     DB   0xFF   
07CA   FF                     DB   0xFF   
07CB   FF                     DB   0xFF   
07CC   FF                     DB   0xFF   
07CD   FF                     DB   0xFF   
07CE   FF                     DB   0xFF   
07CF   FF                     DB   0xFF   
07D0   FF                     DB   0xFF   
07D1   FF                     DB   0xFF   
07D2   FF                     DB   0xFF   
07D3   FF                     DB   0xFF   
07D4   FF                     DB   0xFF   
07D5   FF                     DB   0xFF   
07D6   FF                     DB   0xFF   
07D7   FF                     DB   0xFF   
07D8   FF                     DB   0xFF   
07D9   FF                     DB   0xFF   
07DA   FF                     DB   0xFF   
07DB   FF                     DB   0xFF   
07DC   FF                     DB   0xFF   
07DD   FF                     DB   0xFF   
07DE   FF                     DB   0xFF   
07DF   FF                     DB   0xFF   
07E0   FF                     DB   0xFF   
07E1   FF                     DB   0xFF   
07E2   6A                     LD   l,d   
07E3   C7                     RST   0x00   
07E4   FB                     EI   
07E5   C7                     RST   0x00   
07E6   50                     LD   d,b   
07E7   0A                     LD   a,(bc)   
07E8   93                     SUB   e   
07E9   C7                     RST   0x00   
07EA   FB                     EI   
07EB   C7                     RST   0x00   
07EC   8D                     ADC   a,l   
07ED   C6 BF                  ADD   a,0xbf   
07EF   0D                     DEC   c   
07F0   B1                     OR   c   
07F1   C6 43                  ADD   a,0x43   
07F3   01 0B BC               LD   bc,0xbc0b   
07F6   00                     NOP   
07F7   0F                     RRCA   
07F8   E0                     RET   po   
07F9   0F                     RRCA   
07FA   6D                     LD   l,l   
07FB   01 43 01               LD   bc,0x0143   
07FE   6E                     LD   l,(hl)   
07FF   08                     EX   af,af'   


STARTMUSIC:         0041 DEFINED AT LINE 50
                    > USED AT LINE 34
                    > USED AT LINE 38
NMINT:              0066 DEFINED AT LINE 83
0F:                 00EE DEFINED AT LINE 140
L102:               0102 DEFINED AT LINE 149
                    > USED AT LINE 141
L10E:               010E DEFINED AT LINE 155
                    > USED AT LINE 143
L115:               0115 DEFINED AT LINE 158
                    > USED AT LINE 151
                    > USED AT LINE 153
                    > USED AT LINE 156
                    > USED AT LINE 575
                    > USED AT LINE 698
                    > USED AT LINE 739
                    > USED AT LINE 743
L126:               0126 DEFINED AT LINE 171
                    > USED AT LINE 159
                    > USED AT LINE 167
                    > USED AT LINE 600
                    > USED AT LINE 701
L131:               0131 DEFINED AT LINE 179
                    > USED AT LINE 88
                    > USED AT LINE 185
                    > USED AT LINE 576
                    > USED AT LINE 644
                    > USED AT LINE 694
                    > USED AT LINE 783
L140:               0140 DEFINED AT LINE 186
                    > USED AT LINE 181
                    > USED AT LINE 424
                    > USED AT LINE 559
                    > USED AT LINE 662
                    > USED AT LINE 746
L15F:               015F DEFINED AT LINE 202
                    > USED AT LINE 172
L16F:               016F DEFINED AT LINE 213
                    > USED AT LINE 98
L17B:               017B DEFINED AT LINE 221
                    > USED AT LINE 118
                    > USED AT LINE 213
L18E:               018E DEFINED AT LINE 234
                    > USED AT LINE 89
                    > USED AT LINE 567
L193:               0193 DEFINED AT LINE 236
                    > USED AT LINE 281
                    > USED AT LINE 876
                    > USED AT LINE 879
PLAYMUSIC:          01B0 DEFINED AT LINE 257
                    > USED AT LINE 51
                    > USED AT LINE 265
                    > USED AT LINE 782
L1E3:               01E3 DEFINED AT LINE 284
                    > USED AT LINE 272
                    > USED AT LINE 276
                    > USED AT LINE 420
TUNE1:              0230 DEFINED AT LINE 346
                    > USED AT LINE 33
BANNER:             0270 DEFINED AT LINE 397
                    > USED AT LINE 418
                    > USED AT LINE 693
CHARS:              02B3 DEFINED AT LINE 429
                    > USED AT LINE 419
INVADERS:           0320 DEFINED AT LINE 528
                    > USED AT LINE 7
                    > USED AT LINE 577
L38E:               038E DEFINED AT LINE 578
                    > USED AT LINE 562
INVS1:              03B5 DEFINED AT LINE 599
                    > USED AT LINE 549
                    > USED AT LINE 557
NIMLOSE:            03BB DEFINED AT LINE 602
                    > USED AT LINE 689
NIMWIN:             03CC DEFINED AT LINE 617
                    > USED AT LINE 691
NIM:                03E0 DEFINED AT LINE 634
                    > USED AT LINE 13
L466:               0466 DEFINED AT LINE 696
                    > USED AT LINE 643
                    > USED AT LINE 658
LUNAS1:             047B DEFINED AT LINE 707
                    > USED AT LINE 780
LUNAS2:             0484 DEFINED AT LINE 715
                    > USED AT LINE 777
LUNALANDER:         0490 DEFINED AT LINE 723
                    > USED AT LINE 19
L4F3:               04F3 DEFINED AT LINE 766
                    > USED AT LINE 749
TUNE2:              0530 DEFINED AT LINE 800
                    > USED AT LINE 37
L580:               0580 DEFINED AT LINE 867
                    > USED AT LINE 939
L5B6:               05B6 DEFINED AT LINE 892
                    > USED AT LINE 896
                    > USED AT LINE 911
L5E1:               05E1 DEFINED AT LINE 912
                    > USED AT LINE 904
                    > USED AT LINE 908
STARTMON:           05F0 DEFINED AT LINE 923
                    > USED AT LINE 1
