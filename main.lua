local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local FlatIdent_76979 = 0 - 0;
	local result;
	while true do
		if (FlatIdent_76979 == 1) then
			return obf_tableconcat(result);
		end
		if (FlatIdent_76979 == (0 - 0)) then
			result = {};
			for i = 1, #LUAOBFUSACTOR_STR do
				obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + (1 - 0))), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, (2 - 1) + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % (875 - (555 + 64))));
			end
			FlatIdent_76979 = 1;
		end
	end
end
local StrToNumber = tonumber;
local Byte = string.byte;
local Char = string.char;
local Sub = string.sub;
local Subg = string.gsub;
local Rep = string.rep;
local Concat = table.concat;
local Insert = table.insert;
local LDExp = math.ldexp;
local GetFEnv = getfenv or function()
	return _ENV;
end;
local Setmetatable = setmetatable;
local PCall = pcall;
local Select = select;
local Unpack = unpack or table.unpack;
local ToNumber = tonumber;
local function VMCall(ByteString, vmenv, ...)
	local DIP = 1;
	local repeatNext;
	ByteString = Subg(Sub(ByteString, 5), LUAOBFUSACTOR_DECRYPT_STR_0("\159\141", "\126\177\163\187\69\134\219\167"), function(byte)
		if (Byte(byte, 933 - (857 + 74)) == 81) then
			local FlatIdent_24A02 = 0;
			while true do
				if (FlatIdent_24A02 == (568 - (367 + 201))) then
					repeatNext = StrToNumber(Sub(byte, 928 - (214 + 713), 1));
					return "";
				end
			end
		else
			local FlatIdent_7126A = 0;
			local a;
			while true do
				if (FlatIdent_7126A == (0 + 0)) then
					a = Char(StrToNumber(byte, 3 + 13));
					if repeatNext then
						local FlatIdent_12703 = 0;
						local b;
						while true do
							if (FlatIdent_12703 == 0) then
								b = Rep(a, repeatNext);
								repeatNext = nil;
								FlatIdent_12703 = 878 - (282 + 595);
							end
							if (FlatIdent_12703 == (1638 - (1523 + 114))) then
								return b;
							end
						end
					else
						return a;
					end
					break;
				end
			end
		end
	end);
	local function gBit(Bit, Start, End)
		if End then
			local FlatIdent_475BC = 0;
			local Res;
			while true do
				if (FlatIdent_475BC == (0 + 0)) then
					Res = (Bit / (2 ^ (Start - 1))) % ((2 - 0) ^ (((End - (1066 - (68 + 997))) - (Start - (1271 - (226 + 1044)))) + 1));
					return Res - (Res % 1);
				end
			end
		else
			local FlatIdent_60EA1 = 0 - 0;
			local Plc;
			while true do
				if (FlatIdent_60EA1 == 0) then
					Plc = 2 ^ (Start - (118 - (32 + 85)));
					return (((Bit % (Plc + Plc)) >= Plc) and (1 + 0)) or (0 + 0);
				end
			end
		end
	end
	local function gBits8()
		local FlatIdent_31A5A = 0;
		local a;
		while true do
			if (FlatIdent_31A5A == 1) then
				return a;
			end
			if (FlatIdent_31A5A == 0) then
				a = Byte(ByteString, DIP, DIP);
				DIP = DIP + 1;
				FlatIdent_31A5A = 1;
			end
		end
	end
	local function gBits16()
		local FlatIdent_622B0 = 0;
		local a;
		local b;
		while true do
			if (FlatIdent_622B0 == (957 - (892 + 65))) then
				a, b = Byte(ByteString, DIP, DIP + (4 - 2));
				DIP = DIP + (3 - 1);
				FlatIdent_622B0 = 1;
			end
			if (FlatIdent_622B0 == (1 - 0)) then
				return (b * (606 - (87 + 263))) + a;
			end
		end
	end
	local function gBits32()
		local FlatIdent_31905 = 0;
		local a;
		local b;
		local c;
		local d;
		while true do
			if (FlatIdent_31905 == 1) then
				return (d * 16777216) + (c * 65536) + (b * (436 - (67 + 113))) + a;
			end
			if (0 == FlatIdent_31905) then
				a, b, c, d = Byte(ByteString, DIP, DIP + 3 + 0);
				DIP = DIP + 4;
				FlatIdent_31905 = 2 - 1;
			end
		end
	end
	local function gFloat()
		local FlatIdent_61B23 = 0;
		local Left;
		local Right;
		local IsNormal;
		local Mantissa;
		local Exponent;
		local Sign;
		while true do
			if ((2 + 0) == FlatIdent_61B23) then
				Exponent = gBit(Right, 21, 123 - 92);
				Sign = ((gBit(Right, 32) == (953 - (802 + 150))) and -1) or (2 - 1);
				FlatIdent_61B23 = 5 - 2;
			end
			if (FlatIdent_61B23 == (3 + 0)) then
				if (Exponent == 0) then
					if (Mantissa == 0) then
						return Sign * (997 - (915 + 82));
					else
						local FlatIdent_2FD19 = 0;
						while true do
							if (FlatIdent_2FD19 == (0 - 0)) then
								Exponent = 1 + 0;
								IsNormal = 0 - 0;
								break;
							end
						end
					end
				elseif (Exponent == (3234 - (1069 + 118))) then
					return ((Mantissa == 0) and (Sign * ((2 - 1) / (0 - 0)))) or (Sign * NaN);
				end
				return LDExp(Sign, Exponent - 1023) * (IsNormal + (Mantissa / (2 ^ 52)));
			end
			if (FlatIdent_61B23 == (0 + 0)) then
				Left = gBits32();
				Right = gBits32();
				FlatIdent_61B23 = 1;
			end
			if (FlatIdent_61B23 == (1 - 0)) then
				IsNormal = 1 + 0;
				Mantissa = (gBit(Right, 1, 20) * (2 ^ (823 - (368 + 423)))) + Left;
				FlatIdent_61B23 = 2;
			end
		end
	end
	local function gString(Len)
		local FlatIdent_22A5C = 0 - 0;
		local Str;
		local FStr;
		while true do
			if (FlatIdent_22A5C == (19 - (10 + 8))) then
				Str = Sub(ByteString, DIP, (DIP + Len) - (3 - 2));
				DIP = DIP + Len;
				FlatIdent_22A5C = 444 - (416 + 26);
			end
			if (FlatIdent_22A5C == (6 - 4)) then
				FStr = {};
				for Idx = 1, #Str do
					FStr[Idx] = Char(Byte(Sub(Str, Idx, Idx)));
				end
				FlatIdent_22A5C = 2 + 1;
			end
			if ((0 - 0) == FlatIdent_22A5C) then
				Str = nil;
				if not Len then
					local FlatIdent_2C7C4 = 0;
					while true do
						if (FlatIdent_2C7C4 == 0) then
							Len = gBits32();
							if (Len == 0) then
								return "";
							end
							break;
						end
					end
				end
				FlatIdent_22A5C = 1;
			end
			if (FlatIdent_22A5C == 3) then
				return Concat(FStr);
			end
		end
	end
	local gInt = gBits32;
	local function _R(...)
		return {...}, Select("#", ...);
	end
	local function Deserialize()
		local FlatIdent_79536 = 438 - (145 + 293);
		local Instrs;
		local Functions;
		local Lines;
		local Chunk;
		local ConstCount;
		local Consts;
		while true do
			if (FlatIdent_79536 == 1) then
				ConstCount = gBits32();
				Consts = {};
				for Idx = 431 - (44 + 386), ConstCount do
					local FlatIdent_2D2B8 = 0;
					local Type;
					local Cons;
					while true do
						if (FlatIdent_2D2B8 == (1487 - (998 + 488))) then
							if (Type == 1) then
								Cons = gBits8() ~= (0 + 0);
							elseif (Type == (2 + 0)) then
								Cons = gFloat();
							elseif (Type == (775 - (201 + 571))) then
								Cons = gString();
							end
							Consts[Idx] = Cons;
							break;
						end
						if (FlatIdent_2D2B8 == (1138 - (116 + 1022))) then
							Type = gBits8();
							Cons = nil;
							FlatIdent_2D2B8 = 1;
						end
					end
				end
				Chunk[12 - 9] = gBits8();
				FlatIdent_79536 = 2 + 0;
			end
			if (FlatIdent_79536 == (0 - 0)) then
				Instrs = {};
				Functions = {};
				Lines = {};
				Chunk = {Instrs,Functions,nil,Lines};
				FlatIdent_79536 = 3 - 2;
			end
			if (FlatIdent_79536 == 2) then
				for Idx = 1, gBits32() do
					local FlatIdent_29B3D = 0;
					local Descriptor;
					while true do
						if (FlatIdent_29B3D == 0) then
							Descriptor = gBits8();
							if (gBit(Descriptor, 860 - (814 + 45), 1) == 0) then
								local FlatIdent_3EEE1 = 0 - 0;
								local Type;
								local Mask;
								local Inst;
								while true do
									if (FlatIdent_3EEE1 == 1) then
										Inst = {gBits16(),gBits16(),nil,nil};
										if (Type == (0 - 0)) then
											Inst[1083 - (1020 + 60)] = gBits16();
											Inst[4] = gBits16();
										elseif (Type == 1) then
											Inst[3] = gBits32();
										elseif (Type == 2) then
											Inst[1426 - (630 + 793)] = gBits32() - ((6 - 4) ^ 16);
										elseif (Type == 3) then
											local FlatIdent_52551 = 0;
											while true do
												if (FlatIdent_52551 == 0) then
													Inst[14 - 11] = gBits32() - (2 ^ (7 + 9));
													Inst[4] = gBits16();
													break;
												end
											end
										end
										FlatIdent_3EEE1 = 2;
									end
									if (FlatIdent_3EEE1 == (0 - 0)) then
										Type = gBit(Descriptor, 1749 - (760 + 987), 3);
										Mask = gBit(Descriptor, 1917 - (1789 + 124), 772 - (745 + 21));
										FlatIdent_3EEE1 = 1;
									end
									if (FlatIdent_3EEE1 == 2) then
										if (gBit(Mask, 1, 1) == 1) then
											Inst[1 + 1] = Consts[Inst[2]];
										end
										if (gBit(Mask, 2, 5 - 3) == (3 - 2)) then
											Inst[3] = Consts[Inst[1 + 2]];
										end
										FlatIdent_3EEE1 = 3;
									end
									if (FlatIdent_3EEE1 == (3 + 0)) then
										if (gBit(Mask, 3, 3) == (1056 - (87 + 968))) then
											Inst[17 - 13] = Consts[Inst[4 + 0]];
										end
										Instrs[Idx] = Inst;
										break;
									end
								end
							end
							break;
						end
					end
				end
				for Idx = 1, gBits32() do
					Functions[Idx - 1] = Deserialize();
				end
				return Chunk;
			end
		end
	end
	local function Wrap(Chunk, Upvalues, Env)
		local Instr = Chunk[1];
		local Proto = Chunk[2];
		local Params = Chunk[6 - 3];
		return function(...)
			local Instr = Instr;
			local Proto = Proto;
			local Params = Params;
			local _R = _R;
			local VIP = 1;
			local Top = -(1414 - (447 + 966));
			local Vararg = {};
			local Args = {...};
			local PCount = Select("#", ...) - (1818 - (1703 + 114));
			local Lupvals = {};
			local Stk = {};
			for Idx = 701 - (376 + 325), PCount do
				if (Idx >= Params) then
					Vararg[Idx - Params] = Args[Idx + (1 - 0)];
				else
					Stk[Idx] = Args[Idx + (2 - 1)];
				end
			end
			local Varargsz = (PCount - Params) + 1 + 0;
			local Inst;
			local Enum;
			while true do
				local FlatIdent_7C57C = 0 - 0;
				while true do
					if (FlatIdent_7C57C == 1) then
						if (Enum <= 68) then
							if (Enum <= 33) then
								if (Enum <= 16) then
									if (Enum <= (21 - (9 + 5))) then
										if (Enum <= 3) then
											if (Enum <= 1) then
												if (Enum == 0) then
													if Stk[Inst[378 - (85 + 291)]] then
														VIP = VIP + 1;
													else
														VIP = Inst[3];
													end
												else
													Stk[Inst[1267 - (243 + 1022)]] = Stk[Inst[3]] - Stk[Inst[4]];
												end
											elseif (Enum == 2) then
												local FlatIdent_74B46 = 0 - 0;
												local B;
												while true do
													if (FlatIdent_74B46 == 0) then
														B = Stk[Inst[4]];
														if not B then
															VIP = VIP + 1 + 0;
														else
															local FlatIdent_207CC = 1180 - (1123 + 57);
															while true do
																if (FlatIdent_207CC == (0 + 0)) then
																	Stk[Inst[256 - (163 + 91)]] = B;
																	VIP = Inst[1933 - (1869 + 61)];
																	break;
																end
															end
														end
														break;
													end
												end
											else
												for Idx = Inst[1 + 1], Inst[3] do
													Stk[Idx] = nil;
												end
											end
										elseif (Enum <= (17 - 12)) then
											if (Enum == 4) then
												local FlatIdent_8CB90 = 0 - 0;
												local A;
												while true do
													if (FlatIdent_8CB90 == (0 + 0)) then
														A = Inst[2 - 0];
														Stk[A](Stk[A + 1 + 0]);
														break;
													end
												end
											else
												local FlatIdent_6DC53 = 1474 - (1329 + 145);
												local A;
												while true do
													if (0 == FlatIdent_6DC53) then
														A = Inst[973 - (140 + 831)];
														Stk[A] = Stk[A](Stk[A + 1]);
														break;
													end
												end
											end
										elseif (Enum == (1856 - (1409 + 441))) then
											local FlatIdent_61EE = 0;
											local A;
											local Results;
											local Edx;
											while true do
												if (0 == FlatIdent_61EE) then
													A = Inst[720 - (15 + 703)];
													Results = {Stk[A](Stk[A + 1])};
													FlatIdent_61EE = 1 + 0;
												end
												if (1 == FlatIdent_61EE) then
													Edx = 0;
													for Idx = A, Inst[442 - (262 + 176)] do
														local FlatIdent_6C033 = 0;
														while true do
															if ((1721 - (345 + 1376)) == FlatIdent_6C033) then
																Edx = Edx + (689 - (198 + 490));
																Stk[Idx] = Results[Edx];
																break;
															end
														end
													end
													break;
												end
											end
										else
											local FlatIdent_5C408 = 0 - 0;
											local A;
											local T;
											local B;
											while true do
												if (FlatIdent_5C408 == (0 - 0)) then
													A = Inst[2];
													T = Stk[A];
													FlatIdent_5C408 = 1207 - (696 + 510);
												end
												if ((1 - 0) == FlatIdent_5C408) then
													B = Inst[1265 - (1091 + 171)];
													for Idx = 1 + 0, B do
														T[Idx] = Stk[A + Idx];
													end
													break;
												end
											end
										end
									elseif (Enum <= (34 - 23)) then
										if (Enum <= 9) then
											if (Enum > 8) then
												if (Stk[Inst[2]] ~= Inst[4]) then
													VIP = VIP + (3 - 2);
												else
													VIP = Inst[377 - (123 + 251)];
												end
											else
												local FlatIdent_73F66 = 0;
												local A;
												while true do
													if (FlatIdent_73F66 == (0 - 0)) then
														A = Inst[700 - (208 + 490)];
														Stk[A](Stk[A + 1]);
														break;
													end
												end
											end
										elseif (Enum > (1 + 9)) then
											do
												return Stk[Inst[2]];
											end
										elseif (Stk[Inst[1 + 1]] ~= Stk[Inst[4]]) then
											VIP = VIP + (837 - (660 + 176));
										else
											VIP = Inst[3];
										end
									elseif (Enum <= 13) then
										if (Enum > (2 + 10)) then
											if (Stk[Inst[2]] == Inst[4]) then
												VIP = VIP + 1;
											else
												VIP = Inst[3];
											end
										else
											local A = Inst[2];
											local Results, Limit = _R(Stk[A](Stk[A + 1]));
											Top = (Limit + A) - 1;
											local Edx = 0;
											for Idx = A, Top do
												local FlatIdent_5B2CE = 202 - (14 + 188);
												while true do
													if (FlatIdent_5B2CE == (675 - (534 + 141))) then
														Edx = Edx + 1;
														Stk[Idx] = Results[Edx];
														break;
													end
												end
											end
										end
									elseif (Enum <= 14) then
										local FlatIdent_2E9CB = 0 + 0;
										local A;
										while true do
											if (FlatIdent_2E9CB == 0) then
												A = Inst[2 + 0];
												Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
												break;
											end
										end
									elseif (Enum == 15) then
										Stk[Inst[2 + 0]] = Env[Inst[3]];
									else
										local FlatIdent_1D5FF = 0 - 0;
										local A;
										while true do
											if (FlatIdent_1D5FF == 0) then
												A = Inst[2];
												Stk[A](Unpack(Stk, A + (1 - 0), Inst[8 - 5]));
												break;
											end
										end
									end
								elseif (Enum <= (13 + 11)) then
									if (Enum <= (13 + 7)) then
										if (Enum <= (414 - (115 + 281))) then
											if (Enum == 17) then
												local FlatIdent_29E69 = 0;
												local B;
												while true do
													if (FlatIdent_29E69 == 0) then
														B = Stk[Inst[9 - 5]];
														if B then
															VIP = VIP + 1 + 0;
														else
															Stk[Inst[4 - 2]] = B;
															VIP = Inst[10 - 7];
														end
														break;
													end
												end
											elseif (Inst[869 - (550 + 317)] < Stk[Inst[5 - 1]]) then
												VIP = VIP + 1;
											else
												VIP = Inst[3 - 0];
											end
										elseif (Enum > 19) then
											local FlatIdent_2C453 = 0 - 0;
											local A;
											local Results;
											local Edx;
											while true do
												if (FlatIdent_2C453 == (286 - (134 + 151))) then
													Edx = 0;
													for Idx = A, Inst[4] do
														local FlatIdent_466B2 = 1665 - (970 + 695);
														while true do
															if (FlatIdent_466B2 == 0) then
																Edx = Edx + 1;
																Stk[Idx] = Results[Edx];
																break;
															end
														end
													end
													break;
												end
												if (FlatIdent_2C453 == (0 - 0)) then
													A = Inst[2];
													Results = {Stk[A](Unpack(Stk, A + (1991 - (582 + 1408)), Top))};
													FlatIdent_2C453 = 1;
												end
											end
										else
											Stk[Inst[2]] = Stk[Inst[3]] * Inst[13 - 9];
										end
									elseif (Enum <= 22) then
										if (Enum == 21) then
											if (Stk[Inst[2 - 0]] == Inst[15 - 11]) then
												VIP = VIP + (1825 - (1195 + 629));
											else
												VIP = Inst[3];
											end
										else
											local A = Inst[2 - 0];
											local Results = {Stk[A](Unpack(Stk, A + (781 - (162 + 618)), Top))};
											local Edx = 0 + 0;
											for Idx = A, Inst[4] do
												local FlatIdent_1A54 = 0 + 0;
												while true do
													if ((0 - 0) == FlatIdent_1A54) then
														Edx = Edx + 1;
														Stk[Idx] = Results[Edx];
														break;
													end
												end
											end
										end
									elseif (Enum > 23) then
										if (Stk[Inst[2]] < Stk[Inst[6 - 2]]) then
											VIP = VIP + 1;
										else
											VIP = Inst[1 + 2];
										end
									else
										local A = Inst[2];
										do
											return Unpack(Stk, A, Top);
										end
									end
								elseif (Enum <= 28) then
									if (Enum <= 26) then
										if (Enum > (1661 - (1373 + 263))) then
											Stk[Inst[2]] = Stk[Inst[1003 - (451 + 549)]][Inst[2 + 2]];
										else
											Stk[Inst[2 - 0]] = Wrap(Proto[Inst[4 - 1]], nil, Env);
										end
									elseif (Enum > (1411 - (746 + 638))) then
										Stk[Inst[1 + 1]] = Stk[Inst[3]] + Stk[Inst[4]];
									else
										Stk[Inst[2]] = Inst[4 - 1];
									end
								elseif (Enum <= 30) then
									if (Enum > (370 - (218 + 123))) then
										Stk[Inst[1583 - (1535 + 46)]] = Inst[3 + 0];
									else
										local FlatIdent_61800 = 0 + 0;
										local A;
										while true do
											if (FlatIdent_61800 == (560 - (306 + 254))) then
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Top));
												break;
											end
										end
									end
								elseif (Enum <= (2 + 29)) then
									local FlatIdent_280F1 = 0 - 0;
									local A;
									local Results;
									local Limit;
									local Edx;
									while true do
										if (FlatIdent_280F1 == (1467 - (899 + 568))) then
											A = Inst[2 + 0];
											Results = {Stk[A]()};
											FlatIdent_280F1 = 604 - (268 + 335);
										end
										if (FlatIdent_280F1 == (291 - (60 + 230))) then
											Limit = Inst[576 - (426 + 146)];
											Edx = 0 + 0;
											FlatIdent_280F1 = 1458 - (282 + 1174);
										end
										if (FlatIdent_280F1 == (813 - (569 + 242))) then
											for Idx = A, Limit do
												local FlatIdent_90A41 = 0;
												while true do
													if (FlatIdent_90A41 == 0) then
														Edx = Edx + (2 - 1);
														Stk[Idx] = Results[Edx];
														break;
													end
												end
											end
											break;
										end
									end
								elseif (Enum > (2 + 30)) then
									Stk[Inst[2]] = Inst[3] ~= (1024 - (706 + 318));
								else
									Stk[Inst[1253 - (721 + 530)]] = {};
								end
							elseif (Enum <= (1321 - (945 + 326))) then
								if (Enum <= 41) then
									if (Enum <= (91 - 54)) then
										if (Enum <= (32 + 3)) then
											if (Enum == (734 - (271 + 429))) then
												Stk[Inst[2 + 0]] = Stk[Inst[3]][Inst[1504 - (1408 + 92)]];
											else
												local A = Inst[2];
												local C = Inst[4];
												local CB = A + (1088 - (461 + 625));
												local Result = {Stk[A](Stk[A + 1], Stk[CB])};
												for Idx = 1289 - (993 + 295), C do
													Stk[CB + Idx] = Result[Idx];
												end
												local R = Result[1];
												if R then
													local FlatIdent_480B4 = 0 + 0;
													while true do
														if (FlatIdent_480B4 == (1171 - (418 + 753))) then
															Stk[CB] = R;
															VIP = Inst[3];
															break;
														end
													end
												else
													VIP = VIP + 1;
												end
											end
										elseif (Enum > 36) then
											Stk[Inst[1 + 1]] = Stk[Inst[3]] / Inst[4];
										elseif (Stk[Inst[2]] == Stk[Inst[1 + 3]]) then
											VIP = VIP + 1 + 0;
										else
											VIP = Inst[1 + 2];
										end
									elseif (Enum <= 39) then
										if (Enum > 38) then
											Stk[Inst[531 - (406 + 123)]] = Inst[3] - Stk[Inst[1773 - (1749 + 20)]];
										else
											for Idx = Inst[1 + 1], Inst[1325 - (1249 + 73)] do
												Stk[Idx] = nil;
											end
										end
									elseif (Enum == 40) then
										local FlatIdent_28014 = 0 + 0;
										local A;
										local Results;
										local Edx;
										while true do
											if (FlatIdent_28014 == (1146 - (466 + 679))) then
												Edx = 0;
												for Idx = A, Inst[9 - 5] do
													Edx = Edx + 1;
													Stk[Idx] = Results[Edx];
												end
												break;
											end
											if (FlatIdent_28014 == (0 - 0)) then
												A = Inst[2];
												Results = {Stk[A](Stk[A + 1])};
												FlatIdent_28014 = 1 + 0;
											end
										end
									elseif (Stk[Inst[1 + 1]] > Stk[Inst[11 - 7]]) then
										VIP = VIP + (2 - 1);
									else
										VIP = VIP + Inst[3];
									end
								elseif (Enum <= 45) then
									if (Enum <= 43) then
										if (Enum > 42) then
											if not Stk[Inst[2]] then
												VIP = VIP + (115 - (4 + 110));
											else
												VIP = Inst[587 - (57 + 527)];
											end
										else
											local FlatIdent_72421 = 0;
											local A;
											local Results;
											local Limit;
											local Edx;
											while true do
												if (FlatIdent_72421 == (1429 - (41 + 1386))) then
													for Idx = A, Top do
														local FlatIdent_82AB4 = 0;
														while true do
															if (FlatIdent_82AB4 == (103 - (17 + 86))) then
																Edx = Edx + 1 + 0;
																Stk[Idx] = Results[Edx];
																break;
															end
														end
													end
													break;
												end
												if (FlatIdent_72421 == (0 - 0)) then
													A = Inst[2];
													Results, Limit = _R(Stk[A](Stk[A + 1]));
													FlatIdent_72421 = 2 - 1;
												end
												if (FlatIdent_72421 == 1) then
													Top = (Limit + A) - (167 - (122 + 44));
													Edx = 0;
													FlatIdent_72421 = 2 - 0;
												end
											end
										end
									elseif (Enum > (145 - 101)) then
										Stk[Inst[2 + 0]][Inst[1 + 2]] = Stk[Inst[4]];
									else
										Stk[Inst[3 - 1]] = Stk[Inst[3]] / Stk[Inst[69 - (30 + 35)]];
									end
								elseif (Enum <= (33 + 14)) then
									if (Enum == (1303 - (1043 + 214))) then
										Stk[Inst[7 - 5]] = #Stk[Inst[1215 - (323 + 889)]];
									else
										local FlatIdent_97E60 = 0;
										local A;
										while true do
											if ((0 - 0) == FlatIdent_97E60) then
												A = Inst[2];
												Stk[A](Unpack(Stk, A + 1, Top));
												break;
											end
										end
									end
								elseif (Enum <= 48) then
									Stk[Inst[582 - (361 + 219)]]();
								elseif (Enum == (369 - (53 + 267))) then
									Stk[Inst[1 + 1]][Stk[Inst[3]]] = Inst[4];
								else
									do
										return Stk[Inst[2]];
									end
								end
							elseif (Enum <= 59) then
								if (Enum <= 54) then
									if (Enum <= (465 - (15 + 398))) then
										if (Enum > (1033 - (18 + 964))) then
											Stk[Inst[7 - 5]][Inst[2 + 1]] = Inst[4];
										else
											Stk[Inst[2 + 0]] = Stk[Inst[853 - (20 + 830)]] * Inst[4];
										end
									elseif (Enum == (42 + 11)) then
										local FlatIdent_93FA5 = 0;
										local A;
										local Results;
										local Limit;
										local Edx;
										while true do
											if ((126 - (116 + 10)) == FlatIdent_93FA5) then
												A = Inst[1 + 1];
												Results, Limit = _R(Stk[A]());
												FlatIdent_93FA5 = 1;
											end
											if (FlatIdent_93FA5 == (739 - (542 + 196))) then
												Top = (Limit + A) - 1;
												Edx = 0 - 0;
												FlatIdent_93FA5 = 2;
											end
											if (FlatIdent_93FA5 == (1 + 1)) then
												for Idx = A, Top do
													local FlatIdent_578E3 = 0 + 0;
													while true do
														if (FlatIdent_578E3 == (0 + 0)) then
															Edx = Edx + 1;
															Stk[Idx] = Results[Edx];
															break;
														end
													end
												end
												break;
											end
										end
									else
										local FlatIdent_5431F = 0;
										local NewProto;
										local NewUvals;
										local Indexes;
										while true do
											if (FlatIdent_5431F == 0) then
												NewProto = Proto[Inst[3]];
												NewUvals = nil;
												FlatIdent_5431F = 1;
											end
											if (FlatIdent_5431F == (2 - 1)) then
												Indexes = {};
												NewUvals = Setmetatable({}, {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\242\35\203\248\38\213", "\156\67\173\74\165")]=function(_, Key)
													local FlatIdent_2458 = 0;
													local Val;
													while true do
														if (FlatIdent_2458 == (0 - 0)) then
															Val = Indexes[Key];
															return Val[1][Val[1553 - (1126 + 425)]];
														end
													end
												end,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\136\71\19\171\47\72\48\178\81", "\38\84\215\41\118\220\70")]=function(_, Key, Value)
													local FlatIdent_2A9F7 = 405 - (118 + 287);
													local Val;
													while true do
														if (FlatIdent_2A9F7 == 0) then
															Val = Indexes[Key];
															Val[1][Val[2]] = Value;
															break;
														end
													end
												end});
												FlatIdent_5431F = 2;
											end
											if (FlatIdent_5431F == (7 - 5)) then
												for Idx = 1122 - (118 + 1003), Inst[4] do
													VIP = VIP + 1;
													local Mvm = Instr[VIP];
													if (Mvm[2 - 1] == 82) then
														Indexes[Idx - 1] = {Stk,Mvm[3]};
													else
														Indexes[Idx - 1] = {Upvalues,Mvm[1 + 2]};
													end
													Lupvals[#Lupvals + (978 - (553 + 424))] = Indexes;
												end
												Stk[Inst[3 - 1]] = Wrap(NewProto, NewUvals, Env);
												break;
											end
										end
									end
								elseif (Enum <= 56) then
									if (Enum == 55) then
										local A = Inst[2];
										local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
										Top = (Limit + A) - 1;
										local Edx = 0;
										for Idx = A, Top do
											Edx = Edx + 1 + 0;
											Stk[Idx] = Results[Edx];
										end
									else
										Stk[Inst[2 + 0]] = Stk[Inst[3]] + Inst[4];
									end
								elseif (Enum <= (34 + 23)) then
									Stk[Inst[1 + 1]][Stk[Inst[3]]] = Stk[Inst[4]];
								elseif (Enum > 58) then
									local FlatIdent_2EAC6 = 0;
									local A;
									local Results;
									local Limit;
									local Edx;
									while true do
										if (FlatIdent_2EAC6 == (1 + 0)) then
											Top = (Limit + A) - 1;
											Edx = 0;
											FlatIdent_2EAC6 = 4 - 2;
										end
										if (FlatIdent_2EAC6 == 0) then
											A = Inst[2];
											Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Top)));
											FlatIdent_2EAC6 = 2 - 1;
										end
										if (FlatIdent_2EAC6 == (4 - 2)) then
											for Idx = A, Top do
												Edx = Edx + 1;
												Stk[Idx] = Results[Edx];
											end
											break;
										end
									end
								elseif (Stk[Inst[2]] < Stk[Inst[2 + 2]]) then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							elseif (Enum <= (304 - 241)) then
								if (Enum <= (814 - (239 + 514))) then
									if (Enum == 60) then
										local A = Inst[1 + 1];
										Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
									else
										local FlatIdent_91B54 = 0;
										local A;
										while true do
											if (FlatIdent_91B54 == 1) then
												for Idx = A, Top do
													local FlatIdent_1BD19 = 1329 - (797 + 532);
													local VA;
													while true do
														if (FlatIdent_1BD19 == 0) then
															VA = Vararg[Idx - A];
															Stk[Idx] = VA;
															break;
														end
													end
												end
												break;
											end
											if (FlatIdent_91B54 == (0 + 0)) then
												A = Inst[1 + 1];
												Top = (A + Varargsz) - (2 - 1);
												FlatIdent_91B54 = 1;
											end
										end
									end
								elseif (Enum == 62) then
									if (Stk[Inst[2]] <= Inst[4]) then
										VIP = VIP + (1203 - (373 + 829));
									else
										VIP = Inst[734 - (476 + 255)];
									end
								else
									Stk[Inst[1132 - (369 + 761)]] = Stk[Inst[2 + 1]] * Stk[Inst[4]];
								end
							elseif (Enum <= (118 - 53)) then
								if (Enum == 64) then
									local FlatIdent_5E109 = 0 - 0;
									local B;
									while true do
										if (FlatIdent_5E109 == (238 - (64 + 174))) then
											B = Stk[Inst[1 + 3]];
											if not B then
												VIP = VIP + 1;
											else
												Stk[Inst[2 - 0]] = B;
												VIP = Inst[339 - (144 + 192)];
											end
											break;
										end
									end
								else
									Stk[Inst[218 - (42 + 174)]]();
								end
							elseif (Enum <= (50 + 16)) then
								Stk[Inst[2 + 0]] = Upvalues[Inst[2 + 1]];
							elseif (Enum > (1571 - (363 + 1141))) then
								Stk[Inst[1582 - (1183 + 397)]][Stk[Inst[3]]] = Inst[11 - 7];
							else
								local FlatIdent_2DA99 = 0 + 0;
								local A;
								local B;
								while true do
									if (FlatIdent_2DA99 == (1 + 0)) then
										Stk[A + (1976 - (1913 + 62))] = B;
										Stk[A] = B[Inst[4]];
										break;
									end
									if (FlatIdent_2DA99 == 0) then
										A = Inst[2 + 0];
										B = Stk[Inst[7 - 4]];
										FlatIdent_2DA99 = 1;
									end
								end
							end
						elseif (Enum <= (2036 - (565 + 1368))) then
							if (Enum <= (319 - 234)) then
								if (Enum <= (1737 - (1477 + 184))) then
									if (Enum <= (97 - 25)) then
										if (Enum <= (66 + 4)) then
											if (Enum == 69) then
												local FlatIdent_7DB9E = 856 - (564 + 292);
												local A;
												local Results;
												local Limit;
												local Edx;
												while true do
													if (FlatIdent_7DB9E == (1 - 0)) then
														Top = (Limit + A) - (2 - 1);
														Edx = 0;
														FlatIdent_7DB9E = 2;
													end
													if (FlatIdent_7DB9E == (304 - (244 + 60))) then
														A = Inst[2];
														Results, Limit = _R(Stk[A](Unpack(Stk, A + 1 + 0, Top)));
														FlatIdent_7DB9E = 477 - (41 + 435);
													end
													if (FlatIdent_7DB9E == 2) then
														for Idx = A, Top do
															local FlatIdent_1F33B = 0;
															while true do
																if (FlatIdent_1F33B == (1001 - (938 + 63))) then
																	Edx = Edx + 1 + 0;
																	Stk[Idx] = Results[Edx];
																	break;
																end
															end
														end
														break;
													end
												end
											else
												Stk[Inst[1127 - (936 + 189)]] = Stk[Inst[3]][Stk[Inst[2 + 2]]];
											end
										elseif (Enum > 71) then
											local A = Inst[2];
											Stk[A] = Stk[A](Unpack(Stk, A + (1614 - (1565 + 48)), Inst[2 + 1]));
										else
											local A = Inst[1140 - (782 + 356)];
											local C = Inst[4];
											local CB = A + (269 - (176 + 91));
											local Result = {Stk[A](Stk[A + 1], Stk[CB])};
											for Idx = 2 - 1, C do
												Stk[CB + Idx] = Result[Idx];
											end
											local R = Result[1 - 0];
											if R then
												local FlatIdent_5724B = 0;
												while true do
													if ((1092 - (975 + 117)) == FlatIdent_5724B) then
														Stk[CB] = R;
														VIP = Inst[3];
														break;
													end
												end
											else
												VIP = VIP + (1876 - (157 + 1718));
											end
										end
									elseif (Enum <= (61 + 13)) then
										if (Enum == (259 - 186)) then
											Stk[Inst[6 - 4]] = Wrap(Proto[Inst[3]], nil, Env);
										else
											Stk[Inst[2]] = Stk[Inst[3]] * Stk[Inst[1022 - (697 + 321)]];
										end
									elseif (Enum > 75) then
										if (Stk[Inst[2]] ~= Stk[Inst[4]]) then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
									else
										local A = Inst[2];
										do
											return Stk[A](Unpack(Stk, A + (2 - 1), Inst[5 - 2]));
										end
									end
								elseif (Enum <= (184 - 104)) then
									if (Enum <= (31 + 47)) then
										if (Enum > 77) then
											local FlatIdent_8E5B4 = 0;
											local A;
											local Cls;
											while true do
												if (FlatIdent_8E5B4 == 1) then
													for Idx = 1 - 0, #Lupvals do
														local List = Lupvals[Idx];
														for Idz = 0, #List do
															local FlatIdent_7063 = 0 - 0;
															local Upv;
															local NStk;
															local DIP;
															while true do
																if (FlatIdent_7063 == (1227 - (322 + 905))) then
																	Upv = List[Idz];
																	NStk = Upv[1];
																	FlatIdent_7063 = 612 - (602 + 9);
																end
																if (FlatIdent_7063 == (1190 - (449 + 740))) then
																	DIP = Upv[2];
																	if ((NStk == Stk) and (DIP >= A)) then
																		local FlatIdent_5D0DC = 0;
																		while true do
																			if (FlatIdent_5D0DC == (872 - (826 + 46))) then
																				Cls[DIP] = NStk[DIP];
																				Upv[1] = Cls;
																				break;
																			end
																		end
																	end
																	break;
																end
															end
														end
													end
													break;
												end
												if (FlatIdent_8E5B4 == (947 - (245 + 702))) then
													A = Inst[6 - 4];
													Cls = {};
													FlatIdent_8E5B4 = 1;
												end
											end
										else
											VIP = Inst[3];
										end
									elseif (Enum == 79) then
										if (Stk[Inst[1 + 1]] < Inst[1902 - (260 + 1638)]) then
											VIP = VIP + (441 - (382 + 58));
										else
											VIP = Inst[3];
										end
									else
										local A = Inst[2];
										Stk[A] = Stk[A](Stk[A + 1]);
									end
								elseif (Enum <= (262 - 180)) then
									if (Enum == (68 + 13)) then
										VIP = Inst[5 - 2];
									else
										Stk[Inst[5 - 3]] = Stk[Inst[1208 - (902 + 303)]];
									end
								elseif (Enum <= (181 - 98)) then
									local FlatIdent_3B08E = 0 - 0;
									local A;
									while true do
										if (FlatIdent_3B08E == (0 + 0)) then
											A = Inst[2];
											do
												return Unpack(Stk, A, A + Inst[1693 - (1121 + 569)]);
											end
											break;
										end
									end
								elseif (Enum == (298 - (22 + 192))) then
									Stk[Inst[685 - (483 + 200)]] = Stk[Inst[3]] + Stk[Inst[1467 - (1404 + 59)]];
								else
									Stk[Inst[2]] = Env[Inst[8 - 5]];
								end
							elseif (Enum <= (125 - 31)) then
								if (Enum <= 89) then
									if (Enum <= 87) then
										if (Enum > (851 - (468 + 297))) then
											local FlatIdent_54124 = 562 - (334 + 228);
											local B;
											local K;
											while true do
												if (FlatIdent_54124 == (0 - 0)) then
													B = Inst[3];
													K = Stk[B];
													FlatIdent_54124 = 2 - 1;
												end
												if (FlatIdent_54124 == 1) then
													for Idx = B + 1, Inst[6 - 2] do
														K = K .. Stk[Idx];
													end
													Stk[Inst[1 + 1]] = K;
													break;
												end
											end
										else
											Stk[Inst[238 - (141 + 95)]] = Stk[Inst[3 + 0]];
										end
									elseif (Enum == (226 - 138)) then
										Stk[Inst[2]][Inst[6 - 3]] = Inst[1 + 3];
									else
										Stk[Inst[2]] = {};
									end
								elseif (Enum <= 91) then
									if (Enum == 90) then
										Stk[Inst[2]] = Inst[8 - 5] ~= 0;
										VIP = VIP + 1 + 0;
									else
										local NewProto = Proto[Inst[3]];
										local NewUvals;
										local Indexes = {};
										NewUvals = Setmetatable({}, {[LUAOBFUSACTOR_DECRYPT_STR_0("\111\41\43\28\250\85\14", "\158\48\118\66\114")]=function(_, Key)
											local FlatIdent_285D = 0 + 0;
											local Val;
											while true do
												if (FlatIdent_285D == (0 - 0)) then
													Val = Indexes[Key];
													return Val[1 + 0][Val[165 - (92 + 71)]];
												end
											end
										end,[LUAOBFUSACTOR_DECRYPT_STR_0("\148\27\30\51\100\172\245\175\33\8", "\155\203\68\112\86\19\197")]=function(_, Key, Value)
											local FlatIdent_94AF7 = 0 + 0;
											local Val;
											while true do
												if (FlatIdent_94AF7 == (0 - 0)) then
													Val = Indexes[Key];
													Val[766 - (574 + 191)][Val[2]] = Value;
													break;
												end
											end
										end});
										for Idx = 1 + 0, Inst[4] do
											local FlatIdent_7126B = 0 - 0;
											local Mvm;
											while true do
												if (0 == FlatIdent_7126B) then
													VIP = VIP + 1 + 0;
													Mvm = Instr[VIP];
													FlatIdent_7126B = 850 - (254 + 595);
												end
												if (FlatIdent_7126B == 1) then
													if (Mvm[127 - (55 + 71)] == 82) then
														Indexes[Idx - 1] = {Stk,Mvm[8 - 5]};
													else
														Indexes[Idx - 1] = {Upvalues,Mvm[4 - 1]};
													end
													Lupvals[#Lupvals + (940 - (714 + 225))] = Indexes;
													break;
												end
											end
										end
										Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
									end
								elseif (Enum <= (268 - 176)) then
									local A = Inst[2 - 0];
									Stk[A] = Stk[A]();
								elseif (Enum > (11 + 82)) then
									if not Stk[Inst[2]] then
										VIP = VIP + 1;
									else
										VIP = Inst[3 - 0];
									end
								else
									local B = Inst[809 - (118 + 688)];
									local K = Stk[B];
									for Idx = B + 1, Inst[4] do
										K = K .. Stk[Idx];
									end
									Stk[Inst[50 - (25 + 23)]] = K;
								end
							elseif (Enum <= 98) then
								if (Enum <= 96) then
									if (Enum == 95) then
										Stk[Inst[1 + 1]][Inst[1889 - (927 + 959)]] = Stk[Inst[4]];
									else
										Stk[Inst[2]] = Inst[3] ~= 0;
									end
								elseif (Enum > 97) then
									local FlatIdent_28E8A = 0 - 0;
									local A;
									local T;
									local B;
									while true do
										if (1 == FlatIdent_28E8A) then
											B = Inst[3];
											for Idx = 1, B do
												T[Idx] = Stk[A + Idx];
											end
											break;
										end
										if (FlatIdent_28E8A == (732 - (16 + 716))) then
											A = Inst[3 - 1];
											T = Stk[A];
											FlatIdent_28E8A = 1;
										end
									end
								else
									do
										return;
									end
								end
							elseif (Enum <= 100) then
								if (Enum > 99) then
									local FlatIdent_1E39B = 97 - (11 + 86);
									local A;
									while true do
										if (FlatIdent_1E39B == (0 - 0)) then
											A = Inst[2];
											do
												return Unpack(Stk, A, Top);
											end
											break;
										end
									end
								else
									Stk[Inst[2]][Stk[Inst[288 - (175 + 110)]]] = Stk[Inst[4]];
								end
							elseif (Enum <= (254 - 153)) then
								Upvalues[Inst[14 - 11]] = Stk[Inst[2]];
							elseif (Enum > (1898 - (503 + 1293))) then
								local A = Inst[5 - 3];
								do
									return Stk[A](Unpack(Stk, A + 1 + 0, Top));
								end
							else
								do
									return;
								end
							end
						elseif (Enum <= (1181 - (810 + 251))) then
							if (Enum <= 111) then
								if (Enum <= 107) then
									if (Enum <= 105) then
										if (Enum == (73 + 31)) then
											if (Stk[Inst[2]] < Stk[Inst[2 + 2]]) then
												VIP = Inst[3];
											else
												VIP = VIP + 1 + 0;
											end
										else
											local FlatIdent_21CA5 = 0;
											local A;
											local Results;
											local Limit;
											local Edx;
											while true do
												if (FlatIdent_21CA5 == 1) then
													Limit = Inst[4];
													Edx = 0;
													FlatIdent_21CA5 = 535 - (43 + 490);
												end
												if (FlatIdent_21CA5 == (733 - (711 + 22))) then
													A = Inst[2];
													Results = {Stk[A]()};
													FlatIdent_21CA5 = 1;
												end
												if ((861 - (240 + 619)) == FlatIdent_21CA5) then
													for Idx = A, Limit do
														local FlatIdent_8A1DB = 0 + 0;
														while true do
															if ((0 - 0) == FlatIdent_8A1DB) then
																Edx = Edx + 1 + 0;
																Stk[Idx] = Results[Edx];
																break;
															end
														end
													end
													break;
												end
											end
										end
									elseif (Enum == (1850 - (1344 + 400))) then
										local FlatIdent_89562 = 405 - (255 + 150);
										local A;
										local Results;
										local Limit;
										local Edx;
										while true do
											if (FlatIdent_89562 == 1) then
												Top = (Limit + A) - 1;
												Edx = 0;
												FlatIdent_89562 = 2;
											end
											if (FlatIdent_89562 == (0 + 0)) then
												A = Inst[2 + 0];
												Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[12 - 9])));
												FlatIdent_89562 = 1;
											end
											if (FlatIdent_89562 == 2) then
												for Idx = A, Top do
													Edx = Edx + 1;
													Stk[Idx] = Results[Edx];
												end
												break;
											end
										end
									else
										do
											return Stk[Inst[6 - 4]]();
										end
									end
								elseif (Enum <= (1848 - (404 + 1335))) then
									if (Enum > (514 - (183 + 223))) then
										local FlatIdent_7268B = 0;
										local A;
										while true do
											if (FlatIdent_7268B == (0 - 0)) then
												A = Inst[2 + 0];
												do
													return Stk[A](Unpack(Stk, A + 1 + 0, Top));
												end
												break;
											end
										end
									else
										Stk[Inst[2]] = Inst[340 - (10 + 327)] - Stk[Inst[3 + 1]];
									end
								elseif (Enum == (448 - (118 + 220))) then
									local FlatIdent_2F8E7 = 0 + 0;
									local A;
									local B;
									while true do
										if (FlatIdent_2F8E7 == (450 - (108 + 341))) then
											Stk[A + 1 + 0] = B;
											Stk[A] = B[Inst[4]];
											break;
										end
										if (FlatIdent_2F8E7 == (0 - 0)) then
											A = Inst[2];
											B = Stk[Inst[3]];
											FlatIdent_2F8E7 = 1494 - (711 + 782);
										end
									end
								else
									local FlatIdent_D6BD = 0;
									local B;
									while true do
										if (FlatIdent_D6BD == 0) then
											B = Stk[Inst[7 - 3]];
											if B then
												VIP = VIP + 1;
											else
												local FlatIdent_835BC = 0;
												while true do
													if ((469 - (270 + 199)) == FlatIdent_835BC) then
														Stk[Inst[1 + 1]] = B;
														VIP = Inst[3];
														break;
													end
												end
											end
											break;
										end
									end
								end
							elseif (Enum <= (1934 - (580 + 1239))) then
								if (Enum <= (335 - 222)) then
									if (Enum == 112) then
										if (Stk[Inst[2 + 0]] == Stk[Inst[4]]) then
											VIP = VIP + 1;
										else
											VIP = Inst[3];
										end
									elseif Stk[Inst[2]] then
										VIP = VIP + 1 + 0;
									else
										VIP = Inst[3];
									end
								elseif (Enum > (50 + 64)) then
									local FlatIdent_2C2F3 = 0 - 0;
									local A;
									local Results;
									local Limit;
									local Edx;
									while true do
										if (FlatIdent_2C2F3 == 1) then
											Top = (Limit + A) - 1;
											Edx = 0;
											FlatIdent_2C2F3 = 2 + 0;
										end
										if (FlatIdent_2C2F3 == (1167 - (645 + 522))) then
											A = Inst[1792 - (1010 + 780)];
											Results, Limit = _R(Stk[A]());
											FlatIdent_2C2F3 = 1;
										end
										if (FlatIdent_2C2F3 == 2) then
											for Idx = A, Top do
												local FlatIdent_145D2 = 0;
												while true do
													if (FlatIdent_145D2 == 0) then
														Edx = Edx + 1;
														Stk[Idx] = Results[Edx];
														break;
													end
												end
											end
											break;
										end
									end
								else
									Stk[Inst[2]] = Stk[Inst[3]] / Stk[Inst[4]];
								end
							elseif (Enum <= (117 + 0)) then
								if (Enum > (552 - 436)) then
									if (Stk[Inst[2]] <= Inst[11 - 7]) then
										VIP = VIP + 1;
									else
										VIP = Inst[1839 - (1045 + 791)];
									end
								else
									do
										return Stk[Inst[4 - 2]]();
									end
								end
							elseif (Enum <= 118) then
								if (Stk[Inst[2]] ~= Inst[5 - 1]) then
									VIP = VIP + (506 - (351 + 154));
								else
									VIP = Inst[1577 - (1281 + 293)];
								end
							elseif (Enum > (385 - (28 + 238))) then
								local FlatIdent_37395 = 0;
								while true do
									if (FlatIdent_37395 == (0 - 0)) then
										Stk[Inst[1561 - (1381 + 178)]] = Inst[3 + 0] ~= (0 + 0);
										VIP = VIP + 1 + 0;
										break;
									end
								end
							elseif (Inst[6 - 4] < Stk[Inst[4]]) then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 129) then
							if (Enum <= 124) then
								if (Enum <= (64 + 58)) then
									if (Enum > 121) then
										Stk[Inst[2]] = Stk[Inst[3]][Stk[Inst[4]]];
									else
										Stk[Inst[472 - (381 + 89)]] = #Stk[Inst[3]];
									end
								elseif (Enum > (110 + 13)) then
									Stk[Inst[2]] = Upvalues[Inst[3 + 0]];
								else
									local A = Inst[2 - 0];
									do
										return Stk[A](Unpack(Stk, A + 1, Inst[1159 - (1074 + 82)]));
									end
								end
							elseif (Enum <= (275 - 149)) then
								if (Enum == 125) then
									local A = Inst[2];
									do
										return Unpack(Stk, A, A + Inst[1787 - (214 + 1570)]);
									end
								elseif (Stk[Inst[2]] < Inst[4]) then
									VIP = VIP + (1456 - (990 + 465));
								else
									VIP = Inst[3];
								end
							elseif (Enum <= 127) then
								Upvalues[Inst[3]] = Stk[Inst[1 + 1]];
							elseif (Enum > 128) then
								local FlatIdent_6D884 = 0;
								local A;
								while true do
									if ((0 + 0) == FlatIdent_6D884) then
										A = Inst[2];
										Stk[A] = Stk[A]();
										break;
									end
								end
							else
								local FlatIdent_5AA23 = 0;
								local A;
								local Cls;
								while true do
									if (FlatIdent_5AA23 == (0 + 0)) then
										A = Inst[7 - 5];
										Cls = {};
										FlatIdent_5AA23 = 1727 - (1668 + 58);
									end
									if (FlatIdent_5AA23 == (627 - (512 + 114))) then
										for Idx = 1, #Lupvals do
											local List = Lupvals[Idx];
											for Idz = 0 - 0, #List do
												local Upv = List[Idz];
												local NStk = Upv[1];
												local DIP = Upv[2];
												if ((NStk == Stk) and (DIP >= A)) then
													local FlatIdent_3F15E = 0 - 0;
													while true do
														if (FlatIdent_3F15E == 0) then
															Cls[DIP] = NStk[DIP];
															Upv[1] = Cls;
															break;
														end
													end
												end
											end
										end
										break;
									end
								end
							end
						elseif (Enum <= (462 - 329)) then
							if (Enum <= 131) then
								if (Enum > (61 + 69)) then
									Stk[Inst[1 + 1]] = Stk[Inst[3 + 0]] / Inst[4];
								else
									local FlatIdent_56F59 = 0;
									local A;
									while true do
										if (FlatIdent_56F59 == (0 - 0)) then
											A = Inst[1996 - (109 + 1885)];
											Stk[A](Unpack(Stk, A + 1, Inst[3]));
											break;
										end
									end
								end
							elseif (Enum == 132) then
								Stk[Inst[1471 - (1269 + 200)]] = Stk[Inst[5 - 2]] + Inst[4];
							else
								local A = Inst[2];
								local T = Stk[A];
								for Idx = A + 1, Inst[818 - (98 + 717)] do
									Insert(T, Stk[Idx]);
								end
							end
						elseif (Enum <= (961 - (802 + 24))) then
							if (Enum == (230 - 96)) then
								if (Stk[Inst[2 - 0]] < Stk[Inst[4]]) then
									VIP = Inst[1 + 2];
								else
									VIP = VIP + 1;
								end
							else
								Stk[Inst[2]] = Stk[Inst[3]] - Stk[Inst[4]];
							end
						elseif (Enum <= (105 + 31)) then
							local FlatIdent_5B0A0 = 0;
							local A;
							while true do
								if (FlatIdent_5B0A0 == (1 + 0)) then
									for Idx = A, Top do
										local VA = Vararg[Idx - A];
										Stk[Idx] = VA;
									end
									break;
								end
								if (FlatIdent_5B0A0 == 0) then
									A = Inst[1 + 1];
									Top = (A + Varargsz) - 1;
									FlatIdent_5B0A0 = 2 - 1;
								end
							end
						elseif (Enum > 137) then
							if (Stk[Inst[2]] > Stk[Inst[4]]) then
								VIP = VIP + 1;
							else
								VIP = VIP + Inst[3];
							end
						else
							local FlatIdent_3121 = 0 - 0;
							local A;
							while true do
								if (FlatIdent_3121 == 0) then
									A = Inst[1 + 1];
									Stk[A] = Stk[A](Unpack(Stk, A + 1 + 0, Inst[3 + 0]));
									break;
								end
							end
						end
						VIP = VIP + 1 + 0;
						break;
					end
					if (FlatIdent_7C57C == (0 + 0)) then
						Inst = Instr[VIP];
						Enum = Inst[1434 - (797 + 636)];
						FlatIdent_7C57C = 1;
					end
				end
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
return VMCall("LOL!513Q0003023Q005F47030E3Q004D656E74654C6F737446726F6E7403043Q0067616D65030A3Q004765745365727669636503073Q00506C6179657273030A3Q0052756E5365727669636503093Q00576F726B737061636503053Q005465616D73030B3Q004C6F63616C506C61796572030B3Q00506C61796572412Q64656403043Q0057616974030D3Q0043752Q72656E7443616D65726103063Q0041696D626F7401002Q033Q0045535003093Q00416E74694368656174030A3Q00536D2Q6F74686E652Q73027B14AE47E17AD43F03073Q0041696D5061727403043Q0048656164028Q00030B3Q004D656E74654C465F41696D029A5Q99C93F025Q00708740026Q001240026Q005740030F3Q0031333934352Q31303837353135373203193Q007262787468756D623A2Q2F747970653D412Q7365742669643D030C3Q0026773D31353026683D31353003063Q00436F6C6F723303073Q0066726F6D524742025Q00E06F4003083Q00496E7374616E63652Q033Q006E657703063Q00466F6C64657203043Q004E616D65030F3Q004D656E74654C465F56697375616C7303063Q00506172656E7403053Q007461626C6503063Q00696E73657274030E3Q00506C6179657252656D6F76696E6703073Q00436F2Q6E65637403063Q00697061697273030A3Q00476574506C6179657273030E3Q00436861726163746572412Q64656403093Q0043686172616374657203043Q007461736B03053Q00737061776E02B81E85EB51B8BE3F03093Q0048656172746265617403053Q007063612Q6C03043Q007479706503043Q007761726E031D3Q005B4D656E74655D2057696E645549206661696C656420746F206C6F616403173Q005B4D656E74655D2057696E646F77206661696C65643A2003083Q00746F737472696E672Q012Q033Q0054616203053Q005469746C6503063Q00436F6D62617403043Q0049636F6E03063Q0074617267657403063Q00546F2Q676C6503093Q0063726F2Q736861697203043Q005479706503053Q0056616C756503083Q0043612Q6C6261636B03063Q00536C6964657203123Q00D09FD0BBD0B0D0B2D0BDD0BED181D182D18C03043Q0053746570026Q00F03F2Q033Q004D696E026Q0014402Q033Q004D6178026Q00444003073Q0044656661756C74026Q002C4003093Q00456E656D79204553502Q033Q00657965030A3Q00416E74692D436865617403063Q00736869656C6400A0012Q00120F3Q00013Q0020225Q000200064Q000500013Q00044D3Q000500012Q00663Q00013Q00120F3Q00033Q0020435Q000400121B000200054Q00893Q0002000200120F000100033Q00204300010001000400121B000300064Q008900010003000200120F000200033Q00204300020002000400121B000400074Q008900020004000200120F000300033Q00204300030003000400121B000500084Q008900030005000200202200043Q000900065E0004001D0001000100044D3Q001D000100202200053Q000A00204300050005000B2Q000800050002000100202200043Q000900044D3Q0016000100202200050002000C2Q005900063Q00050030580006000D000E0030580006000F000E00305800060010000E0030580006001100120030580006001300142Q005900076Q005900086Q005900095Q00121B000A00154Q0060000B6Q0060000C6Q0026000D00103Q00121B001100163Q00121B001200173Q00121B001300183Q00121B001400193Q00121B0015001A3Q00121B0016001B3Q00121B0017001C4Q0056001800163Q00121B0019001D4Q005700170017001900120F0018001E3Q00202200180018001F00121B001900203Q00121B001A00203Q00121B001B00204Q00890018001B000200120F0019001E3Q00202200190019001F00121B001A00203Q00121B001B00153Q00121B001C00154Q00890019001C00022Q0056001A00183Q000219001B5Q00065B001C0001000100012Q00523Q00043Q00120F001D00213Q002022001D001D002200121B001E00234Q0005001D00020002003058001D002400252Q0056001E001C4Q005C001E0001000200102D001D0026001E00065B001E0002000100012Q00523Q00023Q000219001F00033Q00065B00200004000100022Q00523Q001E4Q00523Q001F3Q00065B00210005000100012Q00523Q00063Q00065B00220006000100012Q00523Q00063Q000219002300073Q00065B00240008000100012Q00523Q00233Q00065B00250009000100012Q00523Q00023Q00065B0026000A000100022Q00523Q001E4Q00523Q00253Q00065B0027000B000100072Q00523Q00044Q00523Q00204Q00523Q001E4Q00523Q00244Q00523Q00264Q00523Q00024Q00523Q00033Q00065B0028000C000100082Q00523Q000A4Q00523Q00124Q00528Q00523Q00044Q00523Q00244Q00523Q001E4Q00523Q00274Q00523Q00093Q00065B0029000D000100022Q00523Q00284Q00523Q00093Q000219002A000E3Q00065B002B000F000100022Q00523Q00134Q00523Q00023Q00065B002C0010000100072Q00523Q00054Q00523Q00024Q00523Q001E4Q00523Q00044Q00523Q002A4Q00523Q001D4Q00523Q002B3Q00065B002D0011000100032Q00523Q00054Q00523Q00024Q00523Q00153Q00065B002E0012000100012Q00523Q00073Q00065B002F0013000100012Q00523Q00073Q00065B00300014000100092Q00523Q00064Q00523Q00294Q00523Q002E4Q00523Q001E4Q00523Q00214Q00523Q00074Q00523Q00194Q00523Q001A4Q00523Q001D3Q00065B003100150001000A2Q00523Q00294Q00523Q001E4Q00523Q00214Q00523Q00224Q00523Q00054Q00523Q00134Q00523Q00144Q00523Q002C4Q00523Q002D4Q00523Q000D3Q00065B00320016000100072Q00523Q00054Q00523Q00024Q00523Q000D4Q00523Q00314Q00523Q001E4Q00523Q00044Q00527Q00065B00330017000100062Q00523Q00064Q00523Q000D4Q00523Q000E4Q00523Q00054Q00523Q00024Q00523Q00323Q00065B00340018000100042Q00523Q000B4Q00523Q00014Q00523Q00114Q00523Q00333Q00065B00350019000100052Q00523Q000B4Q00523Q00014Q00523Q00114Q00523Q000D4Q00523Q000E3Q0002190036001A3Q00065B0037001B000100052Q00523Q000C4Q00523Q001D4Q00523Q00044Q00523Q00064Q00523Q00363Q00065B0038001C000100072Q00523Q001B4Q00523Q00064Q00523Q00354Q00523Q002F4Q00523Q00084Q00523Q001D4Q00523Q00103Q00120F003900273Q0020220039003900282Q0056003A00083Q002022003B3Q0029002043003B003B002A00065B003D001D000100032Q00523Q002E4Q00523Q000D4Q00523Q000E4Q0037003B003D4Q002F00393Q000100120F0039002B3Q002043003A3Q002C2Q002A003A003B4Q001400393Q003B00044D3Q00ED000100060A003D00EC0001000400044D3Q00EC000100120F003E00273Q002022003E003E00282Q0056003F00083Q0020220040003D002D00204300400040002A00065B0042001E000100032Q00523Q00064Q00523Q00304Q00523Q003D4Q0037004000424Q002F003E3Q0001002022003E003D002E00062Q003E00EC00013Q00044D3Q00EC000100120F003E002F3Q002022003E003E003000065B003F001F000100032Q00523Q00064Q00523Q00304Q00523Q003D4Q0008003E000200012Q004E003C5Q000647003900D50001000200044D3Q00D5000100120F003900273Q0020220039003900282Q0056003A00083Q002022003B3Q000A002043003B003B002A00065B003D0020000100032Q00523Q00084Q00523Q00064Q00523Q00304Q0037003B003D4Q002F00393Q000100121B003900153Q00121B003A00313Q00120F003B00273Q002022003B003B00282Q0056003C00083Q002022003D00010032002043003D003D002A00065B003F0021000100092Q00523Q00064Q00523Q00394Q00523Q003A4Q00528Q00523Q00044Q00523Q00304Q00523Q00074Q00523Q00294Q00523Q002E4Q0037003D003F4Q002F003B3Q000100120F003B00333Q000219003C00224Q0006003B0002003C00062Q003B00172Q013Q00044D3Q00172Q0100120F003D00344Q0056003E003C4Q0005003D00020002002609003D00212Q01002700044D3Q00212Q012Q0056003D001B4Q0041003D0001000100120F003D00333Q00065B003E0023000100012Q00523Q001D4Q0008003D0002000100120F003D00353Q00121B003E00364Q0008003D000200012Q00663Q00014Q0056000F003C3Q00120F003D00333Q00065B003E0024000100012Q00523Q000F4Q0008003D0002000100120F003D00333Q00065B003E0025000100032Q00523Q000F4Q00523Q00174Q00523Q00184Q0006003D0002003E00062Q003D00302Q013Q00044D3Q00302Q0100065E003E003E2Q01000100044D3Q003E2Q012Q0056003F001B4Q0041003F0001000100120F003F00333Q00065B00400026000100012Q00523Q001D4Q0008003F0002000100120F003F00353Q00121B004000373Q00120F004100384Q00560042003E4Q00050041000200022Q00570040004000412Q0008003F000200012Q00663Q00014Q00560010003E3Q00120F003F00013Q003058003F0002003900120F003F002F3Q002022003F003F003000065B00400027000100022Q00523Q001C4Q00523Q00384Q0008003F00020001002043003F0010003A2Q005900413Q00020030580041003B003C0030580041003D003E2Q0089003F0041000200120F004000333Q00065B00410028000100012Q00523Q003F4Q00080040000200010020430040003F003F2Q005900423Q00050030580042003B000D0030580042003D004000305800420041003F00305800420042000E00065B00430029000100032Q00523Q00064Q00523Q00344Q00523Q00353Q00102D0042004300432Q008200400042000100120F004000333Q00065B0041002A000100042Q00523Q003F4Q00523Q00064Q00523Q000D4Q00523Q000E4Q00080040000200010020430040003F00442Q005900423Q00040030580042003B00450030580042004600472Q005900433Q00030030580043004800490030580043004A004B0030580043004C004D00102D00420042004300065B0043002B000100012Q00523Q00063Q00102D0042004300432Q008200400042000100120F004000333Q00065B0041002C000100012Q00523Q003F4Q00080040000200010020430040003F003F2Q005900423Q00050030580042003B004E0030580042003D004F00305800420041003F00305800420042000E00065B0043002D000100022Q00523Q00064Q00523Q002F3Q00102D0042004300432Q008200400042000100204300400010003A2Q005900423Q00020030580042003B00500030580042003D00512Q008900400042000200120F004100333Q00065B0042002E000100012Q00523Q00404Q000800410002000100204300410040003F2Q005900433Q00050030580043003B00500030580043003D005100305800430041003F00305800430042000E00065B0044002F000100022Q00523Q00064Q00523Q00373Q00102D0043004300442Q008200410043000100120F004100333Q00065B00420030000100012Q00523Q003F4Q000800410002000100120F004100333Q00065B00420031000100012Q00523Q00104Q000800410002000100120F004100333Q00065B00420032000100012Q00523Q00104Q00080041000200012Q00663Q00013Q00333Q00033Q0003023Q005F47030E3Q004D656E74654C6F737446726F6E742Q00033Q00120F3Q00013Q0030583Q000200032Q00663Q00017Q00033Q0003053Q007063612Q6C030C3Q0057616974466F724368696C6403093Q00506C6179657247756900163Q00120F3Q00013Q00021900016Q00063Q0002000100064Q000800013Q00044D3Q0008000100062Q0001000800013Q00044D3Q000800012Q000B000100023Q00120F000200013Q000219000300014Q000600020002000300062Q0002001000013Q00044D3Q0010000100062Q0003001000013Q00044D3Q001000012Q000B000300024Q007C00045Q00204300040004000200121B000600034Q004B000400064Q001700046Q00663Q00013Q00023Q00013Q0003063Q0067657468756900043Q00120F3Q00014Q006B3Q00014Q00178Q00663Q00017Q00033Q0003043Q0067616D65030A3Q004765745365727669636503073Q00436F726547756900063Q00120F3Q00013Q0020435Q000200121B000200034Q004B3Q00024Q00178Q00663Q00017Q00023Q0003093Q00436861726163746572030E3Q00497344657363656E64616E744F6601103Q00065E3Q00040001000100044D3Q000400012Q0026000100014Q000B000100023Q00202200013Q000100062Q0001000D00013Q00044D3Q000D00010020430002000100022Q007C00046Q008900020004000200062Q0002000D00013Q00044D3Q000D00012Q000B000100024Q0026000200024Q000B000200024Q00663Q00017Q00023Q0003153Q0046696E6446697273744368696C644F66436C612Q7303083Q0048756D616E6F696401093Q00065E3Q00040001000100044D3Q000400012Q0026000100014Q000B000100023Q00204300013Q000100121B000300024Q004B000100034Q001700016Q00663Q00017Q00023Q0003063Q004865616C7468028Q0001144Q007C00016Q005600026Q000500010002000200065E000100070001000100044D3Q000700012Q006000026Q000B000200024Q007C000200014Q0056000300014Q000500020002000200062Q0002001100013Q00044D3Q0011000100202200030002000100263E000300110001000200044D3Q001100012Q006000036Q000B000300024Q0060000300014Q000B000300024Q00663Q00017Q000F3Q0003073Q0041696D5061727403053Q004368657374030E3Q0046696E6446697273744368696C64030A3Q00552Q706572546F72736F03053Q00546F72736F03103Q0048756D616E6F6964522Q6F7450617274030B3Q005072696D6172795061727403163Q0046696E6446697273744368696C64576869636849734103083Q00426173655061727403043Q004C656773030A3Q004C6F776572546F72736F03083Q004C656674462Q6F7403093Q005269676874462Q6F7403083Q004C656674204C656703043Q004865616401533Q00065E3Q00040001000100044D3Q000400012Q0026000100014Q000B000100024Q007C00015Q00202200010001000100260D0001001F0001000200044D3Q001F000100204300023Q000300121B000400044Q008900020004000200065E0002001D0001000100044D3Q001D000100204300023Q000300121B000400054Q008900020004000200065E0002001D0001000100044D3Q001D000100204300023Q000300121B000400064Q008900020004000200065E0002001D0001000100044D3Q001D000100202200023Q000700065E0002001D0001000100044D3Q001D000100204300023Q000800121B000400094Q00890002000400022Q000B000200023Q00044D3Q0041000100260D000100410001000A00044D3Q0041000100204300023Q000300121B0004000B4Q008900020004000200065E000200400001000100044D3Q0040000100204300023Q000300121B0004000C4Q008900020004000200065E000200400001000100044D3Q0040000100204300023Q000300121B0004000D4Q008900020004000200065E000200400001000100044D3Q0040000100204300023Q000300121B0004000E4Q008900020004000200065E000200400001000100044D3Q0040000100204300023Q000300121B000400064Q008900020004000200065E000200400001000100044D3Q0040000100202200023Q000700065E000200400001000100044D3Q0040000100204300023Q000800121B000400094Q00890002000400022Q000B000200023Q00204300023Q000300121B0004000F4Q008900020004000200065E000200510001000100044D3Q0051000100204300023Q000300121B000400064Q008900020004000200065E000200510001000100044D3Q0051000100202200023Q000700065E000200510001000100044D3Q0051000100204300023Q000800121B000400094Q00890002000400022Q000B000200024Q00663Q00017Q000E3Q0003073Q0041696D5061727403043Q004C65677303043Q004E616D6503083Q004C656674462Q6F7403093Q005269676874462Q6F7403083Q004C656674204C656703083Q00506F736974696F6E03073Q00566563746F72332Q033Q006E6577028Q00026Q33014003053Q00436865737403103Q0048756D616E6F6964522Q6F7450617274026Q66D63F012D3Q00065E3Q00040001000100044D3Q000400012Q0026000100014Q000B000100024Q007C00015Q00202200010001000100260D0001001A0001000200044D3Q001A000100202200013Q00030026090001001A0001000400044D3Q001A000100202200013Q00030026090001001A0001000500044D3Q001A000100202200013Q00030026090001001A0001000600044D3Q001A000100202200013Q000700120F000200083Q00202200020002000900121B0003000A3Q00121B0004000B3Q00121B0005000A4Q00890002000500022Q00010001000100022Q000B000100024Q007C00015Q00202200010001000100260D0001002A0001000C00044D3Q002A000100202200013Q000300260D0001002A0001000D00044D3Q002A000100202200013Q000700120F000200083Q00202200020002000900121B0003000A3Q00121B0004000E3Q00121B0005000A4Q00890002000500022Q001C0001000100022Q000B000100023Q00202200013Q00072Q000B000100024Q00663Q00017Q00073Q0003063Q00747970656F6603063Q00436F6C6F723303013Q004702CD5QCCDC3F03013Q0052027B14AE47E17AB43F03013Q004201183Q00120F000100014Q005600026Q0005000100020002002609000100070001000200044D3Q000700012Q006000016Q000B000100023Q00202200013Q0003000E12000400140001000100044D3Q0014000100202200013Q000300202200023Q000500203800020002000600063A000200140001000100044D3Q0014000100202200013Q000300202200023Q0007002038000200020006000686000200150001000100044D3Q001500012Q005A00016Q0060000100014Q000B000100024Q00663Q00017Q00023Q0003053Q007063612Q6C3Q01113Q00065E3Q00040001000100044D3Q000400012Q006000016Q000B000100023Q00120F000100013Q00065B00023Q000100022Q00528Q00428Q000600010002000200066F0003000F0001000100044D3Q000F00010026090002000E0001000200044D3Q000E00012Q005A00036Q0060000300014Q000B000300024Q00663Q00013Q00013Q00083Q0003063Q00697061697273030E3Q0047657444657363656E64616E74732Q033Q0049734103093Q00486967686C6967687403043Q004E616D6503083Q004D656E7465455350030C3Q004F75746C696E65436F6C6F7203093Q0046692Q6C436F6C6F72001F3Q00120F3Q00014Q007C00015Q0020430001000100022Q002A000100024Q00145Q000200044D3Q001A000100204300050004000300121B000700044Q008900050007000200062Q0005001A00013Q00044D3Q001A00010020220005000400050026090005001A0001000600044D3Q001A00012Q007C000500013Q0020220006000400072Q000500050002000200065E000500180001000100044D3Q001800012Q007C000500013Q0020220006000400082Q000500050002000200062Q0005001A00013Q00044D3Q001A00012Q0060000500014Q000B000500023Q0006473Q00060001000200044D3Q000600012Q00608Q000B3Q00024Q00663Q00017Q00073Q0003063Q00506172656E7403063Q00737472696E6703053Q006C6F77657203043Q004E616D6503093Q00776F726B7370616365030A3Q006368617261637465727303073Q00706C617965727301233Q00065E3Q00040001000100044D3Q000400012Q0026000100014Q000B000100023Q00202200013Q000100062Q0001000A00013Q00044D3Q000A00012Q007C00025Q0006240001000C0001000200044D3Q000C00012Q0026000200024Q000B000200023Q00120F000200023Q0020220002000200030020220003000100042Q0005000200020002002609000200160001000500044D3Q00160001002609000200160001000600044D3Q0016000100260D000200200001000700044D3Q0020000100202200030001000100062Q0003001E00013Q00044D3Q001E00012Q007C00045Q00060A0003001E0001000400044D3Q001E00010020220004000300042Q000B000400024Q0026000400044Q000B000400023Q0020220003000100042Q000B000300024Q00663Q00017Q00183Q0003043Q005465616D03043Q004E616D6503053Q007465616D3A03093Q005465616D436F6C6F72030A3Q00427269636B436F6C6F722Q033Q006E657703053Q00576869746503113Q004D656469756D2073746F6E65206772657903063Q00636F6C6F723A030C3Q00476574412Q7472696275746503043Q007465616D03073Q0046616374696F6E03043Q00536964650003053Q00612Q74723A03083Q00746F737472696E67030E3Q0046696E6446697273744368696C642Q033Q00497341030B3Q00537472696E6756616C756503083Q00496E7456616C7565030B3Q004E756D62657256616C756503063Q0076616C75653A03053Q0056616C756503073Q00666F6C6465723A01723Q00065E3Q00040001000100044D3Q000400012Q0026000100014Q000B000100023Q00202200013Q000100062Q0001001000013Q00044D3Q0010000100202200013Q000100202200010001000200062Q0001001000013Q00044D3Q0010000100121B000100033Q00202200023Q00010020220002000200022Q00570001000100022Q000B000100023Q00202200013Q000400062Q0001002300013Q00044D3Q0023000100120F000200053Q00202200020002000600121B000300074Q000500020002000200060A000100230001000200044D3Q0023000100120F000200053Q00202200020002000600121B000300084Q000500020002000200060A000100230001000200044D3Q0023000100121B000200093Q0020220003000100022Q00570002000200032Q000B000200024Q007C00026Q005600036Q000500020002000200062Q0002006F00013Q00044D3Q006F000100204300030002000A00121B000500014Q008900030005000200065E0003003A0001000100044D3Q003A000100204300030002000A00121B0005000B4Q008900030005000200065E0003003A0001000100044D3Q003A000100204300030002000A00121B0005000C4Q008900030005000200065E0003003A0001000100044D3Q003A000100204300030002000A00121B0005000D4Q0089000300050002002609000300420001000E00044D3Q0042000100121B0004000F3Q00120F000500104Q0056000600034Q00050005000200022Q00570004000400052Q000B000400023Q00204300040002001100121B000600014Q008900040006000200065E0004004F0001000100044D3Q004F000100204300040002001100121B0006000B4Q008900040006000200065E0004004F0001000100044D3Q004F000100204300040002001100121B0006000C4Q008900040006000200062Q0004006600013Q00044D3Q0066000100204300050004001200121B000700134Q008900050007000200065E000500600001000100044D3Q0060000100204300050004001200121B000700144Q008900050007000200065E000500600001000100044D3Q0060000100204300050004001200121B000700154Q008900050007000200062Q0005006600013Q00044D3Q0066000100121B000500163Q00120F000600103Q0020220007000400172Q00050006000200022Q00570005000500062Q000B000500024Q007C000500014Q0056000600024Q000500050002000200062Q0005006F00013Q00044D3Q006F000100121B000600184Q0056000700054Q00570006000600072Q000B000600024Q0026000300034Q000B000300024Q00663Q00017Q00043Q0003063Q00506172656E7403083Q004765745465616D73028Q0003043Q005465616D025E3Q00064Q000500013Q00044D3Q000500012Q007C00025Q0006243Q00070001000200044D3Q000700012Q006000026Q000B000200024Q007C000200014Q005600036Q000500020002000200065E0002000E0001000100044D3Q000E00012Q006000026Q000B000200024Q007C000200024Q005600036Q00050002000200022Q007C000300034Q0056000400024Q000500030002000200062Q0003001800013Q00044D3Q001800012Q006000036Q000B000300024Q007C000300044Q007C00046Q00050003000200022Q007C000400044Q005600056Q000500040002000200062Q0003002700013Q00044D3Q0027000100062Q0004002700013Q00044D3Q00270001000624000300250001000400044D3Q002500012Q005A00056Q0060000500014Q000B000500024Q007C000500024Q007C00066Q000500050002000200062Q0005003F00013Q00044D3Q003F000100062Q0002003F00013Q00044D3Q003F000100202200060005000100202200070002000100062Q0006003F00013Q00044D3Q003F000100062Q0007003F00013Q00044D3Q003F00012Q007C000800053Q00060A0006003F0001000800044D3Q003F00012Q007C000800053Q00060A0007003F0001000800044D3Q003F00010006240006003D0001000700044D3Q003D00012Q005A00086Q0060000800014Q000B000800024Q007C000600063Q00062Q0006005700013Q00044D3Q005700012Q007C000600063Q0020430006000600022Q00050006000200022Q0079000600063Q000E12000300570001000600044D3Q005700012Q007C00065Q00202200060006000400062Q0006005700013Q00044D3Q0057000100202200063Q000400062Q0006005700013Q00044D3Q005700012Q007C00065Q00202200060006000400202200073Q0004000624000600550001000700044D3Q005500012Q005A00066Q0060000600014Q000B000600023Q00062Q0001005B00013Q00044D3Q005B00012Q0060000600014Q000B000600024Q006000066Q000B000600024Q00663Q00017Q00043Q0003023Q006F7303053Q00636C6F636B03063Q00697061697273030A3Q00476574506C617965727300323Q00120F3Q00013Q0020225Q00022Q005C3Q000100022Q007C00016Q000100013Q00012Q007C000200013Q00063A000100090001000200044D3Q000900012Q00663Q00014Q00658Q006000015Q00120F000200034Q007C000300023Q0020430003000300042Q002A000300044Q001400023Q000400044D3Q001D00012Q007C000700033Q00060A0006001D0001000700044D3Q001D00012Q007C000700044Q007C000800054Q0056000900064Q002A000800094Q003C00073Q000200062Q0007001D00013Q00044D3Q001D00012Q0060000100013Q00044D3Q001F0001000647000200110001000200044D3Q001100012Q005900025Q00120F000300034Q007C000400023Q0020430004000400042Q002A000400054Q001400033Q000500044D3Q002E00012Q007C000800033Q00060A0007002E0001000800044D3Q002E00012Q007C000800064Q0056000900074Q0056000A00014Q00890008000A00022Q0039000200070008000647000300260001000200044D3Q002600012Q0065000200074Q00663Q00017Q00013Q003Q010A4Q007C00016Q00410001000100012Q007C000100014Q0046000100013Q002609000100070001000100044D3Q000700012Q005A00016Q0060000100014Q000B000100024Q00663Q00017Q00093Q00030E3Q0046696E6446697273744368696C6403043Q004865616403083Q00506F736974696F6E03103Q0048756D616E6F6964522Q6F7450617274030B3Q005072696D6172795061727403073Q00566563746F72332Q033Q006E6577028Q00026Q66F63F021C3Q00064Q001A00013Q00044D3Q001A000100204300023Q000100121B000400024Q008900020004000200062Q0002000900013Q00044D3Q000900010020220003000200032Q000B000300023Q00204300033Q000100121B000500044Q008900030005000200065E0003000F0001000100044D3Q000F000100202200033Q000500062Q0003001A00013Q00044D3Q001A000100202200040003000300120F000500063Q00202200050005000700121B000600083Q00121B000700093Q00121B000800084Q00890005000800022Q001C0004000400052Q000B000400024Q000B000100024Q00663Q00017Q000D3Q0003093Q004D61676E6974756465027Q0040030D3Q0052617963617374506172616D732Q033Q006E6577030A3Q0046696C7465725479706503043Q00456E756D03113Q005261796361737446696C7465725479706503073Q004578636C756465031A3Q0046696C74657244657363656E64616E7473496E7374616E636573030B3Q0049676E6F726557617465722Q0103073Q00526179636173740003204Q0001000300013Q00202200040003000100264F000400060001000200044D3Q000600012Q0060000500014Q000B000500024Q007C00055Q00063A0005000B0001000400044D3Q000B00012Q006000056Q000B000500023Q00120F000500033Q0020220005000500042Q005C00050001000200120F000600063Q00202200060006000700202200060006000800102D00050005000600102D0005000900020030580005000A000B2Q007C000600013Q00204300060006000C2Q005600086Q0056000900034Q0056000A00054Q00890006000A00020026090006001D0001000D00044D3Q001D00012Q005A00076Q0060000700014Q000B000700024Q00663Q00017Q00053Q00030D3Q0043752Q72656E7443616D65726103063Q00434672616D6503083Q00506F736974696F6E03053Q007461626C6503063Q00696E73657274023E4Q007C000200013Q0020220002000200012Q006500026Q007C00025Q00062Q0002000A00013Q00044D3Q000A000100064Q000A00013Q00044D3Q000A000100065E0001000C0001000100044D3Q000C00012Q006000026Q000B000200024Q007C000200024Q007C000300034Q00050002000200022Q007C000300044Q0056000400024Q007C00055Q0020220005000500020020220005000500032Q00890003000500022Q007C00045Q0020220004000400020020220004000400032Q0059000500014Q007C000600054Q006200050001000100062Q0002002200013Q00044D3Q0022000100120F000600043Q0020220006000600052Q0056000700054Q0056000800024Q008200060008000100120F000600043Q0020220006000600052Q0056000700054Q005600086Q00820006000800012Q007C000600064Q0056000700044Q0056000800014Q0056000900054Q008900060009000200065E000600330001000100044D3Q003300012Q007C000600064Q0056000700034Q0056000800014Q0056000900054Q008900060009000200065E000600370001000100044D3Q003700012Q006000076Q000B000700024Q007C000700064Q0056000800014Q0056000900034Q0056000A00054Q004B0007000A4Q001700076Q00663Q00017Q000E3Q00030D3Q0043752Q72656E7443616D65726103063Q00434672616D6503083Q00506F736974696F6E03093Q004D61676E697475646502FCA9F1D24D62503F03043Q006D6174682Q033Q0064656703043Q0061636F7303053Q00636C616D70030A3Q004C2Q6F6B566563746F722Q033Q00446F7403043Q00556E6974026Q00F0BF026Q00F03F012B4Q007C000100013Q0020220001000100012Q006500016Q007C00015Q00062Q0001000800013Q00044D3Q0008000100065E3Q000A0001000100044D3Q000A00012Q006000016Q000B000100024Q007C00015Q0020220001000100020020220001000100032Q000100013Q000100202200020001000400264F000200130001000500044D3Q001300012Q0060000200014Q000B000200023Q00120F000200063Q00202200020002000700120F000300063Q00202200030003000800120F000400063Q0020220004000400092Q007C00055Q00202200050005000200202200050005000A00204300050005000B00202200070001000C2Q008900050007000200121B0006000D3Q00121B0007000E4Q0037000400074Q004500036Q003C00023Q00022Q007C000300023Q000629000200020001000300044D3Q002800012Q005A00036Q0060000300014Q000B000300024Q00663Q00017Q00023Q0003053Q007063612Q6C00010B4Q007C00016Q0046000100013Q00062Q0001000A00013Q00044D3Q000A000100120F000200013Q00065B00033Q000100012Q00523Q00014Q00080002000200012Q007C00025Q00203100023Q00022Q00663Q00013Q00013Q00013Q0003073Q0044657374726F7900044Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00017Q00033Q0003053Q00706169727303053Q007063612Q6C2Q000E3Q00120F3Q00014Q007C00016Q00063Q0002000200044D3Q000B000100120F000500023Q00065B00063Q000100012Q00523Q00044Q00080005000200012Q007C00055Q0020310005000300032Q004E00035Q0006473Q00040001000200044D3Q000400012Q00663Q00013Q00013Q00013Q0003073Q0044657374726F7900044Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00017Q00153Q002Q033Q0045535003063Q00506172656E740003083Q00496E7374616E63652Q033Q006E657703093Q00486967686C6967687403043Q004E616D6503083Q004D656E746545535003093Q0046692Q6C436F6C6F7203103Q0046692Q6C5472616E73706172656E637902CD5QCCDC3F030C3Q004F75746C696E65436F6C6F7203133Q004F75746C696E655472616E73706172656E6379028Q0003093Q0044657074684D6F646503043Q00456E756D03123Q00486967686C6967687444657074684D6F6465030B3Q00416C776179734F6E546F7003073Q0041646F726E2Q6503073Q00456E61626C65643Q01394Q007C00015Q00202200010001000100062Q0001000900013Q00044D3Q000900012Q007C000100014Q005600026Q000500010002000200065E0001000D0001000100044D3Q000D00012Q007C000100024Q005600026Q00080001000200012Q00663Q00014Q007C000100034Q005600026Q00050001000200022Q007C000200044Q0056000300014Q000500020002000200062Q0001001700013Q00044D3Q0017000100065E0002001B0001000100044D3Q001B00012Q007C000300024Q005600046Q00080003000200012Q00663Q00014Q007C000300054Q0046000300033Q00062Q0003002200013Q00044D3Q0022000100202200040003000200260D000400360001000300044D3Q0036000100120F000400043Q00202200040004000500121B000500064Q00050004000200022Q0056000300043Q0030580003000700082Q007C000400063Q00102D0003000900040030580003000A000B2Q007C000400073Q00102D0003000C00040030580003000D000E00120F000400103Q00202200040004001100202200040004001200102D0003000F00042Q007C000400083Q00102D0003000200042Q007C000400054Q003900043Q000300102D0003001300010030580003001400152Q00663Q00017Q00033Q0003063Q00434672616D6503083Q00506F736974696F6E03093Q004D61676E697475646501474Q007C00016Q005600026Q000500010002000200065E000100080001000100044D3Q000800012Q006000016Q0026000200034Q007D000100024Q007C000100014Q005600026Q00050001000200022Q007C000200024Q0056000300014Q00050002000200022Q007C000300034Q0056000400024Q000500030002000200062Q0001001700013Q00044D3Q0017000100062Q0002001700013Q00044D3Q0017000100065E0003001A0001000100044D3Q001A00012Q006000046Q0026000500064Q007D000400024Q007C000400043Q00062Q0004002200013Q00044D3Q002200012Q007C000400043Q00202200040004000100202200040004000200065E000400230001000100044D3Q002300012Q0056000400034Q00010005000300040020220005000500032Q007C000600053Q0006860006002B0001000500044D3Q002B00012Q007C000600063Q00063A0005002E0001000600044D3Q002E00012Q006000066Q0026000700084Q007D000600024Q007C000600074Q0056000700014Q0056000800034Q008900060008000200065E000600370001000100044D3Q003700012Q006000066Q0026000700084Q007D000600024Q007C000600084Q0056000700034Q000500060002000200065E000600420001000100044D3Q004200012Q007C000600093Q00060A3Q00420001000600044D3Q004200012Q006000066Q0026000700084Q007D000600024Q0060000600014Q0056000700024Q0056000800034Q007D000600024Q00663Q00017Q000B3Q00030D3Q0043752Q72656E7443616D657261030E3Q0046696E6446697273744368696C6403103Q0048756D616E6F6964522Q6F7450617274030B3Q005072696D6172795061727403083Q00506F736974696F6E03063Q00434672616D6503043Q006D61746803043Q006875676503063Q00697061697273030A3Q00476574506C617965727303093Q004D61676E697475646500494Q007C3Q00013Q0020225Q00012Q00658Q007C7Q00065E3Q000A0001000100044D3Q000A00012Q00268Q00653Q00024Q00263Q00024Q007D3Q00024Q007C3Q00023Q00064Q001800013Q00044D3Q001800012Q007C3Q00034Q007C000100024Q00063Q0002000200064Q001600013Q00044D3Q001600012Q007C000300024Q0056000400014Q0056000500024Q007D000300024Q0026000300034Q0065000300024Q00268Q007C000100044Q007C000200054Q000500010002000200066F000200240001000100044D3Q0024000100204300020001000200121B000400034Q008900020004000200065E000200240001000100044D3Q0024000100202200020001000400062Q0002002800013Q00044D3Q002800010020223Q0002000500044D3Q002B00012Q007C00035Q0020220003000300060020223Q000300052Q0026000300053Q00120F000600073Q00202200060006000800120F000700094Q007C000800063Q00204300080008000A2Q002A000800094Q001400073Q000900044D3Q004100012Q007C000C00034Q0056000D000B4Q0006000C0002000E00062Q000C004100013Q00044D3Q004100012Q0001000F000E3Q002022000F000F000B00063A000F00410001000600044D3Q004100012Q00560006000F4Q00560003000B4Q00560004000D4Q00560005000E3Q000647000700340001000200044D3Q003400012Q0065000300024Q0056000700034Q0056000800044Q0056000900054Q007D000700024Q00663Q00017Q001D3Q0003063Q0041696D626F74030D3Q0043752Q72656E7443616D65726103043Q004C65727003043Q006D61746803053Q00636C616D70026Q003040029A5Q99C93F026Q00F03F03063Q00434672616D6503083Q00506F736974696F6E03093Q004D61676E697475646503053Q007063612Q6C2Q033Q006E6577030A3Q004C2Q6F6B566563746F722Q033Q00446F74026Q00F0BF03043Q0061636F732Q033Q00726164026Q002C40028Q00029A5Q99A93F026Q004E40023Q00E0E2361A3F027B14AE47E17AB43F030A3Q00536D2Q6F74686E652Q7302B81E85EB51B8BE3F2Q033Q006D696E026Q003640029A5Q99F53F01894Q007C00015Q00202200010001000100065E000100090001000100044D3Q000900012Q0026000100014Q0065000100014Q0026000100014Q0065000100024Q00663Q00014Q007C000100043Q0020220001000100022Q0065000100034Q007C000100033Q00065E000100100001000100044D3Q001000012Q00663Q00014Q007C000100054Q001F00010001000300065E000300170001000100044D3Q001700012Q0026000400044Q0065000400024Q00663Q00014Q007C000400023Q00062Q0004002600013Q00044D3Q002600012Q007C000400023Q0020430004000400032Q0056000600033Q00120F000700043Q00202200070007000500201300083Q000600121B000900073Q00121B000A00084Q00370007000A4Q003C00043Q00022Q0065000400023Q00044D3Q002700012Q0065000300024Q007C000400033Q00202200040004000900202200040004000A2Q007C000500024Q000100050005000400202200060005000B00264F000600300001000700044D3Q003000012Q00663Q00013Q00120F0006000C3Q00065B00073Q000100022Q00523Q00044Q00423Q00024Q000600060002000700062Q0006003900013Q00044D3Q0039000100065E0007003F0001000100044D3Q003F000100120F000800093Q00202200080008000D2Q0056000900044Q007C000A00024Q00890008000A00022Q0056000700084Q007C000800033Q00202200080008000900120F000900043Q002022000900090005002022000A0008000E002043000A000A000F002022000C0007000E2Q0089000A000C000200121B000B00103Q00121B000C00084Q00890009000C000200120F000A00043Q002022000A000A00112Q0056000B00094Q0005000A0002000200120F000B00043Q002022000B000B001200121B000C00134Q0005000B0002000200120F000C00043Q002022000C000C00052Q0056000D5Q00121B000E00143Q00121B000F00154Q0089000C000F00022Q004A000B000B000C002013000B000B001600121B000C00083Q000E12001700640001000A00044D3Q0064000100120F000D00043Q002022000D000D00052Q002C000E000B000A00121B000F00183Q00121B001000084Q0089000D001000022Q0056000C000D3Q00120F000D00043Q002022000D000D00052Q007C000E5Q002022000E000E001900120F000F00043Q002022000F000F00052Q005600105Q00121B001100143Q00121B001200154Q0089000F001200022Q004A000E000E000F002013000E000E001600121B000F001A3Q00121B001000084Q0089000D0010000200120F000E00043Q002022000E000E001B2Q0056000F000D4Q00560010000C4Q0089000E00100002002022000F0005000B00264F000F00820001001C00044D3Q0082000100120F000F00043Q002022000F000F00050020130010000E001D00121B001100073Q00121B001200084Q0089000F001200022Q0056000E000F4Q007C000F00033Q0020430010000800032Q0056001200074Q00560013000E4Q008900100013000200102D000F000900102Q00663Q00013Q00013Q00043Q0003063Q00434672616D6503063Q006C2Q6F6B417403073Q00566563746F723303053Q00794178697300093Q00120F3Q00013Q0020225Q00022Q007C00016Q007C000200013Q00120F000300033Q0020220003000300042Q004B3Q00034Q00178Q00663Q00017Q00073Q0003053Q007063612Q6C03103Q0042696E64546F52656E6465725374657003043Q00456E756D030E3Q0052656E6465725072696F7269747903063Q0043616D65726103053Q0056616C7565026Q00F03F00164Q007C7Q00064Q000400013Q00044D3Q000400012Q00663Q00013Q00120F3Q00013Q00065B00013Q000100022Q00423Q00014Q00423Q00024Q00083Q000200012Q007C3Q00013Q0020435Q00022Q007C000200023Q00120F000300033Q0020220003000300040020220003000300050020220003000300060020380003000300072Q007C000400034Q00823Q000400012Q00603Q00014Q00658Q00663Q00013Q00013Q00013Q0003143Q00556E62696E6446726F6D52656E6465725374657000054Q007C7Q0020435Q00012Q007C000200014Q00823Q000200012Q00663Q00017Q00013Q0003053Q007063612Q6C00104Q007C7Q00065E3Q00040001000100044D3Q000400012Q00663Q00013Q00120F3Q00013Q00065B00013Q000100022Q00423Q00014Q00423Q00024Q00083Q000200012Q00608Q00658Q00268Q00653Q00034Q00268Q00653Q00044Q00663Q00013Q00013Q00013Q0003143Q00556E62696E6446726F6D52656E6465725374657000054Q007C7Q0020435Q00012Q007C000200014Q00823Q000200012Q00663Q00017Q000D3Q0003063Q00747970656F6603083Q00496E7374616E636503063Q00737472696E6703053Q006C6F77657203043Q004E616D6503043Q0066696E6403043Q006B69636B026Q00F03F2Q033Q0062616E03063Q0070756E69736803093Q00616E74696368656174030A3Q00616E74692D636865617403063Q0064657465637401483Q00120F000100014Q005600026Q0005000100020002002609000100070001000200044D3Q000700012Q006000016Q000B000100023Q00120F000100033Q00202200010001000400202200023Q00052Q000500010002000200120F000200033Q0020220002000200062Q0056000300013Q00121B000400073Q00121B000500084Q0060000600014Q008900020006000200065E000200260001000100044D3Q0026000100120F000200033Q0020220002000200062Q0056000300013Q00121B000400093Q00121B000500084Q0060000600014Q008900020006000200065E000200260001000100044D3Q0026000100120F000200033Q0020220002000200062Q0056000300013Q00121B0004000A3Q00121B000500084Q0060000600014Q008900020006000200062Q0002002800013Q00044D3Q002800012Q0060000200014Q000B000200023Q00120F000200033Q0020220002000200062Q0056000300013Q00121B0004000B3Q00121B000500084Q0060000600014Q008900020006000200065E000200430001000100044D3Q0043000100120F000200033Q0020220002000200062Q0056000300013Q00121B0004000C3Q00121B000500084Q0060000600014Q008900020006000200065E000200430001000100044D3Q0043000100120F000200033Q0020220002000200062Q0056000300013Q00121B0004000D3Q00121B000500084Q0060000600014Q008900020006000200062Q0002004500013Q00044D3Q004500012Q0060000200014Q000B000200024Q006000026Q000B000200024Q00663Q00017Q00013Q0003053Q007063612Q6C00194Q007C7Q00064Q000400013Q00044D3Q000400012Q00663Q00014Q00603Q00014Q00657Q00120F3Q00013Q00065B00013Q000100012Q00423Q00014Q00083Q0002000100120F3Q00013Q00065B00010001000100012Q00423Q00024Q00083Q0002000100120F3Q00013Q00065B00010002000100032Q00423Q00034Q00423Q00024Q00423Q00044Q00083Q0002000100120F3Q00013Q00065B00010003000100012Q00423Q00024Q00083Q000200012Q00663Q00013Q00043Q00073Q0003043Q004E616D6503043Q00436F726503083Q00746F737472696E6703043Q006D61746803063Q0072616E646F6D025Q0088C340024Q00F069F840000C4Q007C7Q00121B000100023Q00120F000200033Q00120F000300043Q00202200030003000500121B000400063Q00121B000500074Q0037000300054Q003C00023Q00022Q005700010001000200102D3Q000100012Q00663Q00017Q00013Q0003043Q004B69636B00084Q007C7Q0020225Q000100064Q000700013Q00044D3Q000700012Q007C7Q00021900015Q00102D3Q000100012Q00663Q00013Q00018Q00024Q00663Q00014Q00663Q00017Q00063Q0003063Q00747970656F66030E3Q00682Q6F6B6D6574616D6574686F6403083Q0066756E6374696F6E03113Q006765746E616D6563612Q6C6D6574686F6403043Q0067616D65030A3Q002Q5F6E616D6563612Q6C00173Q00120F3Q00013Q00120F000100024Q00053Q0002000200260D3Q00160001000300044D3Q0016000100120F3Q00013Q00120F000100044Q00053Q0002000200260D3Q00160001000300044D3Q001600012Q00267Q00120F000100023Q00120F000200053Q00121B000300063Q00065B00043Q000100042Q00428Q00423Q00014Q00423Q00024Q00528Q00890001000400022Q00563Q00014Q004E8Q00663Q00013Q00013Q00083Q0003093Q00416E7469436865617403083Q00746F737472696E6703113Q006765746E616D6563612Q6C6D6574686F6403063Q00737472696E6703053Q006C6F77657203043Q006B69636B030A3Q0066697265736572766572030C3Q00696E766F6B6573657276657201224Q007C00025Q00202200020002000100062Q0002001C00013Q00044D3Q001C000100120F000200023Q00120F000300034Q0073000300014Q003C00023Q000200120F000300043Q0020220003000300052Q0056000400024Q00050003000200022Q007C000400013Q0006243Q00120001000400044D3Q0012000100260D000300120001000600044D3Q001200012Q00663Q00013Q002609000300160001000700044D3Q0016000100260D0003001C0001000800044D3Q001C00012Q007C000400024Q005600056Q000500040002000200062Q0004001C00013Q00044D3Q001C00012Q00663Q00014Q007C000200034Q005600036Q008800046Q006D00026Q001700026Q00663Q00017Q00043Q0003063Q00747970656F66030C3Q00682Q6F6B66756E6374696F6E03083Q0066756E6374696F6E03043Q004B69636B000F3Q00120F3Q00013Q00120F000100024Q00053Q0002000200260D3Q000E0001000300044D3Q000E00012Q007C7Q0020225Q000400064Q000E00013Q00044D3Q000E000100120F3Q00024Q007C00015Q00202200010001000400021900026Q00823Q000200012Q00663Q00013Q00018Q00024Q00663Q00014Q00663Q00017Q000A3Q0003023Q005F47030E3Q004D656E74654C6F737446726F6E7403063Q0041696D626F7401002Q033Q0045535003063Q0069706169727303053Q007063612Q6C03043Q007461736B03053Q0064656C6179029A5Q99C93F00253Q00120F3Q00013Q0020225Q000200065E3Q00050001000100044D3Q000500012Q00663Q00014Q007C8Q00413Q000100012Q007C3Q00013Q0030583Q000300042Q007C3Q00013Q0030583Q000500042Q007C3Q00024Q00413Q000100012Q007C3Q00034Q00413Q0001000100120F3Q00064Q007C000100044Q00063Q0002000200044D3Q0018000100120F000500073Q00065B00063Q000100012Q00523Q00044Q00080005000200012Q004E00035Q0006473Q00130001000200044D3Q0013000100120F3Q00073Q00065B00010001000100012Q00423Q00054Q00083Q0002000100120F3Q00083Q0020225Q000900121B0001000A3Q00065B00020002000100012Q00423Q00064Q00823Q000200012Q00663Q00013Q00033Q00013Q00030A3Q00446973636F2Q6E65637400044Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00017Q00013Q0003073Q0044657374726F7900044Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00017Q00013Q0003053Q007063612Q6C00053Q00120F3Q00013Q00065B00013Q000100012Q00428Q00083Q000200012Q00663Q00013Q00013Q00013Q0003073Q0044657374726F7900074Q007C7Q00064Q000600013Q00044D3Q000600012Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00019Q002Q00010B4Q007C00016Q005600026Q00080001000200012Q007C000100013Q0006243Q000A0001000100044D3Q000A00012Q0026000100014Q0065000100014Q0026000100014Q0065000100024Q00663Q00017Q00043Q0003043Q007461736B03043Q0077616974029A5Q99C93F2Q033Q00455350000C3Q00120F3Q00013Q0020225Q000200121B000100034Q00083Q000200012Q007C7Q0020225Q000400064Q000B00013Q00044D3Q000B00012Q007C3Q00014Q007C000100024Q00083Q000200012Q00663Q00017Q00013Q002Q033Q0045535000084Q007C7Q0020225Q000100064Q000700013Q00044D3Q000700012Q007C3Q00014Q007C000100024Q00083Q000200012Q00663Q00017Q00043Q0003053Q007461626C6503063Q00696E73657274030E3Q00436861726163746572412Q64656403073Q00436F2Q6E656374010C3Q00120F000100013Q0020220001000100022Q007C00025Q00202200033Q000300204300030003000400065B00053Q000100032Q00423Q00014Q00423Q00024Q00528Q0037000300054Q002F00013Q00012Q00663Q00013Q00013Q00043Q0003043Q007461736B03043Q0077616974029A5Q99C93F2Q033Q00455350000C3Q00120F3Q00013Q0020225Q000200121B000100034Q00083Q000200012Q007C7Q0020225Q000400064Q000B00013Q00044D3Q000B00012Q007C3Q00014Q007C000100024Q00083Q000200012Q00663Q00017Q00073Q002Q033Q0045535003023Q006F7303053Q00636C6F636B03063Q00697061697273030A3Q00476574506C617965727303053Q00706169727303063Q00506172656E74002F4Q007C7Q0020225Q000100065E3Q00050001000100044D3Q000500012Q00663Q00013Q00120F3Q00023Q0020225Q00032Q005C3Q000100022Q007C000100014Q000100013Q00012Q007C000200023Q00063A0001000E0001000200044D3Q000E00012Q00663Q00014Q00653Q00013Q00120F000100044Q007C000200033Q0020430002000200052Q002A000200034Q001400013Q000300044D3Q001B00012Q007C000600043Q00060A0005001B0001000600044D3Q001B00012Q007C000600054Q0056000700054Q0008000600020001000647000100150001000200044D3Q0015000100120F000100064Q007C000200064Q000600010002000300044D3Q002C000100202200050004000700062Q0005002900013Q00044D3Q002900012Q007C000500074Q0056000600044Q000500050002000200065E0005002C0001000100044D3Q002C00012Q007C000500084Q0056000600044Q0008000500020001000647000100210001000100044D3Q002100012Q00663Q00017Q00043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403463Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F462Q6F746167657375732F57696E6455492F6D61696E2F646973742F6D61696E2E6C756100093Q00120F3Q00013Q00120F000100023Q00204300010001000300121B000300044Q0037000100034Q003C5Q00022Q006B3Q00014Q00178Q00663Q00017Q00013Q0003073Q0044657374726F7900044Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00017Q00023Q0003083Q005365745468656D6503043Q004461726B00054Q007C7Q0020435Q000100121B000200024Q00823Q000200012Q00663Q00017Q00253Q00030C3Q0043726561746557696E646F7703053Q005469746C6503123Q004D656E7465207C204C6F73742046726F6E7403043Q0049636F6E03063Q00417574686F72030E3Q0054673A20404D656E74655F526F7803063Q00466F6C646572030E3Q004D656E74654C6F737446726F6E7403043Q0053697A6503053Q005544696D32030A3Q0066726F6D4F2Q66736574025Q00E07A40025Q00C06C40030B3Q005472616E73706172656E74010003053Q005468656D6503043Q004461726B03093Q00526573697A61626C65030D3Q00486964655365617263684261722Q0103103Q005363726F2Q6C426172456E61626C6564030C3Q0049676E6F7265416C65727473030A3Q004F70656E42752Q746F6E03053Q004D656E7465030C3Q00436F726E657252616469757303043Q005544696D2Q033Q006E6577026Q00F03F028Q00030F3Q005374726F6B65546869636B6E652Q7302CD5QCCFC3F03053Q005363616C6503073Q00456E61626C656403093Q004472612Q6761626C65030A3Q004F6E6C794D6F62696C6503053Q00436F6C6F72030D3Q00436F6C6F7253657175656E6365002D4Q007C7Q0020435Q00012Q005900023Q000C0030580002000200032Q007C000300013Q00102D00020004000300305800020005000600305800020007000800120F0003000A3Q00202200030003000B00121B0004000C3Q00121B0005000D4Q008900030005000200102D0002000900030030580002000E000F00305800020010001100305800020012000F00305800020013001400305800020015000F0030580002001600142Q005900033Q00090030580003000200182Q007C000400013Q00102D00030004000400120F0004001A3Q00202200040004001B00121B0005001C3Q00121B0006001D4Q008900040006000200102D0003001900040030580003001E001F00305800030020001C00305800030021001400305800030022001400305800030023000F00120F000400253Q00202200040004001B2Q007C000500024Q007C000600024Q008900040006000200102D00030024000400102D0002001700032Q004B3Q00024Q00178Q00663Q00017Q00013Q0003073Q0044657374726F7900044Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00017Q00043Q0003043Q007461736B03043Q0077616974029A5Q99D93F03053Q007063612Q6C000A3Q00120F3Q00013Q0020225Q000200121B000100034Q00083Q0002000100120F3Q00043Q00065B00013Q000100022Q00428Q00423Q00014Q00083Q000200012Q00663Q00013Q00013Q000E3Q0003063Q00697061697273030B3Q004765744368696C6472656E2Q033Q0049734103093Q005363722Q656E477569030E3Q0047657444657363656E64616E7473030B3Q00496D61676542752Q746F6E030A3Q005465787442752Q746F6E03063Q00737472696E6703053Q006C6F77657203043Q004E616D6503053Q00636C6F7365030B3Q00636C6F736562752Q746F6E03113Q004D6F75736542752Q746F6E31436C69636B03073Q00436F2Q6E656374002D4Q007C8Q005C3Q0001000200120F000100013Q00204300023Q00022Q002A000200034Q001400013Q000300044D3Q002A000100204300060005000300121B000800044Q008900060008000200062Q0006002A00013Q00044D3Q002A000100120F000600013Q0020430007000500052Q002A000700084Q001400063Q000800044D3Q00280001002043000B000A000300121B000D00064Q0089000B000D000200065E000B001B0001000100044D3Q001B0001002043000B000A000300121B000D00074Q0089000B000D000200062Q000B002800013Q00044D3Q0028000100120F000B00083Q002022000B000B0009002022000C000A000A2Q0005000B00020002002609000B00230001000B00044D3Q0023000100260D000B00280001000C00044D3Q00280001002022000C000A000D002043000C000C000E00065B000E3Q000100012Q00423Q00014Q0082000C000E0001000647000600110001000200044D3Q00110001000647000100070001000200044D3Q000700012Q00663Q00013Q00018Q00034Q007C8Q00413Q000100012Q00663Q00017Q00053Q0003073Q0053656374696F6E03053Q005469746C652Q033Q0041696D03083Q005465787453697A65026Q002C4000074Q007C7Q0020435Q00012Q005900023Q00020030580002000200030030580002000400052Q00823Q000200012Q00663Q00017Q00013Q0003063Q0041696D626F7401124Q007C00015Q00064Q000600013Q00044D3Q000600012Q0060000200013Q00065E000200070001000100044D3Q000700012Q006000025Q00102D0001000100022Q007C00015Q00202200010001000100062Q0001000F00013Q00044D3Q000F00012Q007C000100014Q004100010001000100044D3Q001100012Q007C000100024Q00410001000100012Q00663Q00017Q00093Q0003083Q0044726F70646F776E03053Q005469746C6503133Q00D0A2D0BED187D0BAD0B020D0B0D0B8D0BCD0B003063Q0056616C756573030C3Q00D093D0BED0BBD0BED0B2D0B0030A3Q00D093D180D183D0B4D18C03083Q00D09DD0BED0B3D0B803053Q0056616C756503083Q0043612Q6C6261636B00124Q007C7Q0020435Q00012Q005900023Q00040030580002000200032Q0059000300033Q00121B000400053Q00121B000500063Q00121B000600074Q006200030003000100102D00020004000300305800020008000500065B00033Q000100032Q00423Q00014Q00423Q00024Q00423Q00033Q00102D0002000900032Q00823Q000200012Q00663Q00013Q00013Q000C3Q0003043Q007479706503053Q007461626C65026Q00F03F03053Q0056616C7565030C3Q00D093D0BED0BBD0BED0B2D0B003043Q0048656164030A3Q00D093D180D183D0B4D18C03053Q00436865737403083Q00D09DD0BED0B3D0B803043Q004C65677303073Q0041696D5061727403083Q00746F737472696E67011E3Q00120F000100014Q005600026Q000500010002000200260D0001000C0001000200044D3Q000C000100202200013Q00030006403Q000C0001000100044D3Q000C000100202200013Q00040006403Q000C0001000100044D3Q000C000100121B3Q00054Q005900013Q000300305800010005000600305800010007000800305800010009000A2Q007C00025Q00120F0003000C4Q005600046Q00050003000200022Q004600030001000300065E000300180001000100044D3Q0018000100121B000300063Q00102D0002000B00032Q0026000200024Q0065000200014Q0026000200024Q0065000200024Q00663Q00017Q00093Q0003083Q00746F6E756D626572026Q002C40030A3Q00536D2Q6F74686E652Q7303043Q006D61746803053Q00636C616D70025Q00804640026Q005440029A5Q99B93F029A5Q99E13F01103Q00120F000100014Q005600026Q000500010002000200065E000100060001000100044D3Q0006000100121B000100024Q007C00025Q00120F000300043Q00202200030003000500102700040006000100202500040004000700121B000500083Q00121B000600094Q008900030006000200102D0002000300032Q00663Q00017Q00053Q0003073Q0053656374696F6E03053Q005469746C6503073Q0056697375616C7303083Q005465787453697A65026Q002C4000074Q007C7Q0020435Q00012Q005900023Q00020030580002000200030030580002000400052Q00823Q000200012Q00663Q00017Q00013Q002Q033Q00455350010F4Q007C00015Q00064Q000600013Q00044D3Q000600012Q0060000200013Q00065E000200070001000100044D3Q000700012Q006000025Q00102D0001000100022Q007C00015Q00202200010001000100065E0001000E0001000100044D3Q000E00012Q007C000100014Q00410001000100012Q00663Q00017Q00053Q0003073Q0053656374696F6E03053Q005469746C65030A3Q0050726F74656374696F6E03083Q005465787453697A65026Q002C4000074Q007C7Q0020435Q00012Q005900023Q00020030580002000200030030580002000400052Q00823Q000200012Q00663Q00017Q00013Q0003093Q00416E74694368656174010F4Q007C00015Q00064Q000600013Q00044D3Q000600012Q0060000200013Q00065E000200070001000100044D3Q000700012Q006000025Q00102D0001000100022Q007C00015Q00202200010001000100062Q0001000E00013Q00044D3Q000E00012Q007C000100014Q00410001000100012Q00663Q00017Q00013Q0003063Q0053656C65637400044Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00017Q00023Q0003093Q0053656C656374546162026Q00F03F00054Q007C7Q0020435Q000100121B000200024Q00823Q000200012Q00663Q00017Q00013Q0003043Q004F70656E00044Q007C7Q0020435Q00012Q00083Q000200012Q00663Q00017Q00", GetFEnv(), ...);