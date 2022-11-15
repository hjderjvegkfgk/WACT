@echo off
ECHO.
echo Initializing...
mode 76, 30
:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.


ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit/b

:gotPrivileges
mode 76, 30
echo Initializing...
@echo off &chcp 850 >nul &pushd "%~dp0"
@set "0=%~f0" &powershell -nop -c $f=[IO.File]::ReadAllText($env:0)-split':bat2file\:.*';iex($f[1]); X(1) &echo Initializing... & goto MainMenu

:bat2file: Compressed2TXT v6.5
$k='.,;{-}[+](/)_|^=?O123456789ABCDeFGHyIdJKLMoN0PQRSTYUWXVZabcfghijklmnpqrstuvwxz!@#$&~E<*`%\>'; Add-Type -Ty @'
using System.IO;public class BAT91{public static void Dec(ref string[] f,int x,string fo,string key){unchecked{int n=0,c=255,q=0
,v=91,z=f[x].Length; byte[]b91=new byte[256]; while(c>0) b91[c--]=91; while(c<91) b91[key[c]]=(byte)c++; using (FileStream o=new
FileStream(fo,FileMode.Create)){for(int i=0;i!=z;i++){c=b91[f[x][i]]; if(c==91)continue; if(v==91){v=c;}else{v+=c*91;q|=v<<n;if(
(v&8191)>88){n+=13;}else{n+=14;}v=91;do{o.WriteByte((byte)q);q>>=8;n-=8;}while(n>7);}}if(v!=91)o.WriteByte((byte)(q|v<<n));} }}}
'@; cd -Lit($env:__CD__); function X([int]$x=1){[BAT91]::Dec([ref]$f,$x+1,$x,$k); expand -R $x -F:* .; del $x -force}

:bat2file:[ gatherosstatemodified_exe
::AVEYO...Rn+Y;.....*D........j}?.k...r!W{..s{..N=qGy+Q5M.........%C.N@;Ltc7Hj#rfJVL]-nF<x*7S14coTB?bp~]&o^J@;I2,.]?k.>2cYTM@t2>9t4P
::-_,P;.[^-,;b)h`71C]]vYt,3n[6jJjS+n5B+T*]HuHvaF|S.)my^]%ZIh.p]d7(TLGP#}1.9=WfC9R{PPF>X]{CI;vu;;DFs-|sy6]~07/.1.|.1VHz|}_BREe>]Q>kx]
::2y~?)RfdM!e)=QK!C{0-S8ObeeBv9Y{$`VwoM-?QeVa4*RzPu<ez.(bM+oeo!s8Km}&2!&_)i5LY18A.hbJ]]P%%y]q!Q`e.-.....<s*;_gVgaA@n7)A{-Bg0Wzl!_l+q
::MX#?UnbisUfOP@S8fHwV.Dld3d7u%|/a7K{x,jnGTtY(j_]C,*}uq[B4UBY?o33&)]t|!A]|izq\Q`p[q+tIGZlv*cT&+kO)t&B1I}<&pny#$`X*?=Hs,E>5,cMkINQw5r
::H3*ajzMuAJ/Eg*h\=/JnnLOpAx}-Ej%1D.t@S*2!gkDN><(~KSg;N(|AH\f,oq+q}ZvxL%L/H&XD@wvo/pdi/^059r!H;6&`(&7U\0*o~|AnThu&zJTa?n-G`\M$`g;dK$
::O`n&wuY<>\4`G&Wz)\/4BMn!=7MEm@<}|N7iI$,$|5x?Kp9C^|nL2CQ$\HXk\;i*i!GVU|PU[5_Z2g&]%\05~,IfJVw#1j<&M\1uZa%}2J@h4)X\TXg$|5$|;Vz=WyGS}s
::.^/wct<)&XC&_uG[_NyAhJbY(bF51h6a40k9>i,bADYD~0&eynh2Nyx/[nNfD5)`~aeL-BE=9=%0Obv!dK;J2BYWBVlj#t0CP,M@,x4u?51)HB/GeGHVXjxIvSGvSZ~Lg7
::T_pmY%^AlF[E(z0q35?/roJof?6sfL[Yi&OF^V&]s%{g]9D@N#$,JCD4xRE0Bc.D#<l|KC7Gr$#KD17Uu6O]>LwW-n_x1{Wov]\WY=nY`a\{[ih#I@M_FH|CxA4M&X1~%{
::d%o&w,7fzKLN\nULu@kE1yj7\KpTHckL.;P_%4,#g\J`(fR9ceSOh`e#L_~``cqVq55NL,[MUpF)sXfGGWgvsCuh1Euhxl@xa*JZ{#a>jU[vjW`f1uJ)s@jH?RIybj>deF
::nSc/=u\M~&>vmvfS66p2+j0D%j,QRPrr,|nqOGq@boNiL&8Fl92dOYewz!3j/b82vod^fH%h4dEk?6b~M_BAY7Gn]7bQe.*#oxv0dm4Y2bqT5}ymIjtAO/uSM8BvV~\dg/
::N)a4zlzn(ZnVO-go,fx9>ZiD2g{+)fJ&xo(q3V.CRWw\u9)=Pc\8Z;KlylsJBRXgz!Xg$Kskv+L~ALft{j~r`t#*@w2{87Y\K*V6rea`#>)LSjT@2@bj[}ecrbv,N*HwBx
::qr>?YC/S&Dumfhu![`p5WUY%{*G{(`TqeywD3{+|RWl@!-\=aAu8TJC{ZR9WK|eGCg}bztSym`X}=+tUGr-&8rq@dWG?bC@c\c/U;vbEiq1]ab\v%$H$A=O}?`iT5/ezDm
::Mi?!mA_(u.ay(Y)?lyGG3BwW`^p{P/{_o8)!WuVV1gb8yEgL&k!g5{erF.gO-d^KpTys-k,h;0rKdM}5z-5mH]&{[t0CvQmmhxtpt~J!ju>-p)m?$~iz&CHy+~Y%z@?+]8
::>o`xO~Sv!E@}4|M,~cu@R\A|o5ZZ|Peks=!un^Jq`8Iyi,by%Zgt3EnoUCQdX[~m^=eG,qhKPvP8AyRP<ytiI*h(50;8^X6g=uuDHkVa+@enuZo1TQPs7Fo;<>/`dNnKM3
::_P7+%Od;L{a!BfaJ1keI{yk).T5ZbA7shA!1>C=^NL/t,U*eJ70orApn.}J_Dd]bMTe[v&TFTxH=_e%?YFv=V#IgJk[LhS,m6M*0\XIty!hFf!\dv`A>|@J|(;Lr*]mO<L
::WqRNEv*vLp=MXIvJ&!P~+O8?/7-kfKWA0)>s}?_%l?=ZiJtNZI^NqXL^$4T7;]nhweEf#t{ULzP86!y,?~#=Ap&xw=8qjE61vU]jC/m&lS&N]ki=2{]/lK!r]U}2{@J7e*
::5V&4N9;s|@ouYNP0!6LMbyr52X>WE3ZcD`v/d\k]EX(bPl}Kp|q6h4dK2[ta#Z{S/!M?,Ih{DL#D3\G@/)+7B)X.4Kl38c&?Dsh^#,??A+L5F<s+7F#j\*=T-@]WLoB3u5
::WtB?WWm!&lPdpK7g|U\x-k_?T_tm_=k[90]Ae(pbi5+x_5Zo#s5,Emjn*)4Ysa.igtNPVb3`1V7s7mOUDs|b#S;5PX^&LG$hk[S*k3bgA(~Q,T@3Pxr+H%J(P^xI>4NIeY
::+n`*ioVK{,@;\0_O6R&CF2808iX0nPbVn>U1mV?NiE,`FaUWCuTA%X,INq%+1`F#cBCA{tj{2_IT\ip%>.s68cFnV!Ry/_Qe{p2T<w4kiF8xNWG<e8!dSMfrz;%)uFozpk
::Q^Gd]Gk&cSZa*3A|dk[c\hhfifS[gYAbQCw|1b|0YApqA91/Ap#,*k0fk8Ae;d*(?i]%6^kUwQYh@p0HBzuKNl_}^|$9L[>ovq?_qO-#FxkzZI3+#.HiFaA$g7(cCrN>#W
::Al&k=y5=OEtHc(DM!bC+P2/=0+PLPy6$=l<hGD;xIic5`gg3-mX==I`waT~{(l3u.KCH[fZ4\z[|fX*f#ylp6#[E$yuB}#\?xtluxuq8u^.2$B#1>CQcnuc<`no&46E,de
::mp+^P5W39|_5kIdL97G^4W(NJwDiKgh]J,w;jVx|0^j}PomU$p*BK,<CbaE(j(yIhM}pM0r+}O.$p1ER]m8@[3H[gGCr9$42`9wUjaeA1RF,~![}Ev7ZUAuyl[qzG38Dyp
::I%u=8OX4[{L)aAed)<9h/f}npb4TnU{pA3&H.12?q>lDmb&|UmQf<Z!/#4cV8BnMWN3rx9C{7}A(E>Ep.V,@!*}hkxhFlATV<IBy-eL;sUUCT=K2odaa{65Wf,E$k2-tBO
::_Ik)IA|N,,K>R`\F3(CxPg|BP3+$ydiRLZ~+cfrRm8~Db6@rb;rXZCqaZbew.rHP%CY<M)8\.`B=0$]{3+nMZ93n]_de,?;rEyZkhCj1!WAmW]|[pD\#88#dRlJe2Fq%tY
::-Ds9{j~$KqKrcJKmE,532#_ijHVA@=}9e(Sk-_TQ,=cK?^MSIS?6K2M=V$H.]Wr8u[4P*uu6c(8TQ>Ht@ByiaxrMGxmR;d(Gz2$WS6kV]Aq}9PKP$t~8`?>I})]`]6&W0`
::H8|OpRnyNwmCF8n`1_e8M|gZS)F_J41iRCU1R-1D]9fv{U@bB;6Dd^OLBCkV62-HVyb2fS1;^u\n/W{d;8er`8!;~Grs&ZYMWW];ch{BH;)=XtF---%g1}4DfMMD.1Of\j
::#opkl,&|B<C|}q_w+ta-suq28V1$OdA/dy>u3|D5QQ<@t2rF933*Q^-Otq9REN>i+/%6DQhY1[Z[h+[PP+Bt9,V3`CI1p;DhMtxP@Vv`gRS)PE(Mqs$2*=bSuE;6t)wKI)
::wjnCw{InxmhP&Wag34}(^KFO]dE=SGgH{Ra5hgO.796R&}D@=A=`L)+ii988~m1A@D#>L(9utEvG!I?quW*{+Fd`u;]Wl8d,+9yd[=xd-q/(?831[1%;=<pKpaU&DgUahK
::=Xs*^xK$XG;MQz|RnQG-oilu=ZAGC&dZ4QW/W.d^n[l7Z=|_oW2xV_91azh@6{2oNlsW_Acwl-KDoyb~~+0&BWm.B+^ckyyd3L0z73<XZBw~;A?5w`{e[<;2adnz?VOi>6
::FUsPkrMTrov1](>ov?p8DgjR4dMsC7bfxI}4IDZyCx6Q<IN2j4_FMcPHb{*9CxQGJ_Z1Wcp)$WA+1DHy!v,oXr{f$x(Km/o|C+|,t`-EGPn\EjG?T@O_^$-G#^3qrhw){P
::gW%_&vRBn@E9\x@(~{,k#,W6#9xOLwGhUq}t_RA4SmY6Y1nUacH(?UNa9G8C!]F-YltrO(ld^QSf;u|\VP2k,p#,f+Y[6^chsrb]4,YTSpY<BcO7EW>OAciH^^l]6xv#%&
::wy%W%~1gt6O/YOr{<y,9pm^IS[_cQ]Od{S,x2~ov!Y,-e?>was#-,ftTn!Q;6Z925eNjm8~}[1y?;j6C*pfsfjJ\VO`5,_>#KfF6{Ir=W[60O}#^2bo1yB6(4<%BUFZQW{
::kkoLh8^J`cFWVdOwv!QSUW0-@tq&=X%eZ;9b=HdzOi.E&vl)mseq)wyFW,l[}H<xTaw_0KEUC89LRc\Omw0QvwQ3yWWRo)9+eKC7-C8ibk,0}h9%<;`*[q-rR6we+bWXK|
::n8.!%[oc-Rj,5a{y#gm=MS*T/,pLWfN[~i2W[?`h;?-Uf+%G|GG.{vmwQqz,u|FnUjBY)ifRM|rdN>5JPYMYf]7CALoXU]2vnh>$WNL#Kvbj6{=QXXJ<U,|vAr8AH(.Ic-
::8AUI?[j,1R=H?DC1_CH@0I*\(v)gh_?ZS32vC}3&Nt2tt{W{q2}#YVPH?O#uD9h`AS$}rr8Ci!=|j&RK^$IenbkeA`aM6^U5v,&ntyU+UL&OL@Sj8NYU,PtFGDSc!t[ova
::/bl+>+z<-Dx-(Z,=If~P1sGXGe0?QGD$^vY{t*}M$)xe~g;vO,MM>lm5sUDyOdJixY!+K^K8)TlTBT1f-\Q/B?I6>`k&7Vu;sr19%(?xPEQtpUoYt/G95}F<0U~{|J}HR$
::.xO8x>Ter(Mxd#-XHSu3(b(p(hbf%ScJi|/W[p]cUpSgt#n3fRP9@3r`/Q~TzAHgC)^?TgT(T<&8[N<B8kfXo.E21oA[0MQx_2F8jyF^0T}cBZ4CEOz3@VcVof)r/k0j{g
::i61I@s3m{q7$SOoCN>f2c1WxinOhZTF-9M5Q$c@<!+VB1(&1V3WFO3^aD5HY5M6l=,K[o0#9]$E_vd+1[bXZ\_q+S;>8j12/tFr4ULr;HN6uBt(bM.kYDf)cpw&S/-xoI<
::#v?1^9,zNq(*~ebLn*`W4Z]OrW2=w;8t.=;hR8Zy|uUtmW~NE*p6PY_`k6PcX1ZTd^;o|cgTZPIQk2(s{crgXPpnw-p&DWex634gYc7-Z{#gA=N\?2#wcL\%MCLQYSn[2f
::iyOZVO6X%IZK\9P&?mK90jh-+S;Q^/~@?j0XG01RvF|HHy*CksPU$b0j+JIRs\>e2?\]$=JduQhn5|o+EV.;FlMaqy;(/r(tm]u,p=@c&!5Aj8zq_*)zE1r0p<aW>MZmS?
::qybAbuhi-hZt,I4P0F5(eIV_*+;1SHwNQyhHK#+V584,TrokcS\$S69J0LAw%[26sDf/QL,C1_)zYm#>l>M_z,<^7{%S}Ah-cQg)-pTXn~Wj&D8A>j~gYaK?od$]=fe*&6
::Zh1s.#*g`[bWB&aGA}<nz?\Jjeug?|rDpXM[JFakJP]H/P>$9&-nUO@RHvdsfF/yBg>Q\>.7-V]svDwvhb_YDOExt~xEL*_7E+>g^EAMg=jS^bOUA^Ga$f[x,fZm!aBg/M
::NEx%wdX;*8-sfu,JFRsArW{Je;0mx=`^(50fvnHV<LPMGWtyF4y<F<4bl\O&}y%Yd<vYtBySEbf^J?4Hh[-CFR(]^%c-(>`jFjia\b&ox2c&MNHN)eX?.u@2TkeeS00e^?
::?d0wZsUt;Df,W7ie|_UfZl4`~2yC0U;iy{j}Z0]Re^(d+KvJ5W|XB!8amp0F%hO;y#6(5eXf3HXcRfn/OM4^qeilAfRSA-J,0]#k<l^M]+(es_yjZa?eC9`F(/fhh{Seh|
::Es*c5pR6`q=Gb)v1}d.}ohj~!|~w^Y<)6;G^A/5O+n59Z1=4]XzR5qGM}Pb}K6)<~60x|YJjj[!ECcC\q7=#xy=!>}SQy\0}qon^Z`HoI?jS8$qO`/!S-Hyn.0y&nCLfJT
::P7iS#fuKVkSfR#OhFY|4XS?iMgGkTVd+be)u_+d|C`s\V)|5X?e|c597(aU=GN!m@F*i[EFLUhnCXW+4Gdy@PR[07Vj[,l88R\{#w^ZiXE06f)QuaQvYg[I?o(1(W\xmg{
::KajzE1*,G7vqth&A+uuyW_D/bSp&oM3x{V3UA91+]n_x08Hq>ZxRyv-BPN@d3]JVv^LJb`uMj#vKRS>nw9O6@,jws+X;Q>q5`{=[Tuyb1MlSb;Z%NjXi=6AwP@k.Krox}l
::]L,q0eYV^RrJi[/(pP~bg)s1O?q&FM~Rj=Qa{j1j#jqkA[?8an!-Z0vH(xVvz)I@^alm27xS},/]/h|h,q`6mpEA133NJv%F&It6pYTWYN+!9&*#YuM[2$\U4[&(@HrO7Q
::LPTCf]XIq}a0]AX{8Q[|(I@Qw@<9f_rRy)!/uo0Eb#P@]C[Y6RA{w2@k$k6hvEnrSB}-N;\~;2,zwqk2yl#E~j0?eSm?c]>N)lb]YBjz*=iQj(fwSA[QO]ns(*\*7o1u5~
::88=0A+Ic4{`VPHpERva~$[@+Kl)lFPvQ+7|[5Zn/9nRlc]MX8@7EXpfvgC]puRaJ-n($7`31KU@g|6pnb6EJA~2]ftMD\?BZwt$RZQuhj\5^0IENYz3/By$/+|5v0kUb<d
::D>`l_xOxQ#^7VV+=n4Ou^!;b98`07P@7l/SS03=qg\+vFr1xLB$Bl9~6GO@pqn3r,[~Pyu78y7%6\)S7k6^$s-U~zx7I|1=-lAjMSJVKx;Pv2ud{<<cJkJeFzkO#R$`}=+
::o6hC**_Lo8)tM(`*dhsl7pZB;Rz{v9u~HI6])g(OSx=;=6Jcvs$<fGH^sXz[tI>m0\t!sGMXT43Q~QGLy}_=Y*3x*y!V)PYQx{-]TTB(XgBqpePQN=,,;AOqB}HuF{y+nC
::?M$X5VS^yC?P\b|Gx@_WjWXp~u[rk>gE@@ZOLQ.Ld1dNfj+tnIFO=zkO];hTrN5O`VBbO,M(@S<NJ^OLhqu<S|BbPV,+U#!5e#DL0ykkcQu#znBk80nGb+29RNYXNH9&Mg
::BbhWeh^/uzfg.nqp[;_74ZHhPlAngeEMYn`w(^f)n/d|Y44\!Ip!O#3U/;UnBiZvpbLTJ,f)z9m_v[(2^$K)Q_t3x/l)p/=_C/(MC7%g\<(<G@\MX&a2_0n&Cu1B(a1[vT
::UCSJB+jvB!,Ry[vM,#OPG4nJ2F9OJEkHmREYE..WNZGhe#7a{;`&)1k$@/[-Dmd0JRaAR/FJaaI`ikaVo(D,YkvQpr/ExG8C}QG9wUd|N;mR8/+4}x!22J3|)#,cYS`2BH
::tp}P2tE,S}TVj~RgQAO+<cZ(_5Jl)6g,B/&(Y^yc({,B8WOGnOuKhY=1Y}{[nc/kL%]`fo{/8xD)JFozojyhCq@KPx@]Kk3b@A*|cH6\i{i1i.,3i#G{RFTz15rwBI5s`p
::Yr0;]TLYpoo]fv.3xf*iDf2fwI]TSbD=_1E&i(7r<?e)~t[\4PV%pzszf7Laq;j9eoL0n$anKQu|Xt9Mke,xc;/,;huThNhl3IKH`@E1&iTh#G-(@pg4t4>.>|v(</BnqN
::vl#m&IrY#Xu-obo?0ha9(-$d{2u~fS4b>~>q!G<zua}7Pv4104]mnB]Nf){Lr_PNbPh}|0c3.SU+35,8}22}>(gY^}13};QDQpWhHO761kp^arwTV4SD(3dLgP,QyLyM?F
::3g1;B-vn?+Ra{]K&C{S.<lOB@RP?+K0mf~R;U8dO21}T<y\)XN^i.?IEb4JoYn7fTP4$m;J`>YwbCHt#4_tRSaeq}R5S/#45`$K5K0T}{{1q4B1[@[LN.ITU^g!m!rGHaQ
::<bh1<5D/#U$/m1)t7pk4-2x[I+tn?-R2c0${9da{IU!S!miUWn&rdO{9e6[Uo^eL|+f[bSfUznwAz8_HiQ-_`5@Fh{mFs85Gp/E0.Nv`RG8w`Kx3_)nq=3^`FKg~*09\(J
::.a#&~m-iVz4DrwB$[f1n.2#7dLM@a}}mDdV/j77qHT-v3N~}oM5&CzY*}UX[DB\){_uX|4;}+[a==r51X@!|<MD1|d54m=a9_l<zE4.f,qb,lX/LBZF4-E0GlEj@E(cbT/
::]%1M)sJ8zP1KS;tekGTAcsW,%-KKh^X9hr2VVT5X7[]6xHrx&y$xRB{2ZHh(D8}Ok\V%|tK%1Z68.z4m&`v?~013}Ub13$!hZL;2HNTo1#QGh5C7w[B(n(w9?(xT%zd/NQ
::#)/fzWPWb1^xQR@25.#AAeKvjW,^F-jq=ubGCP%2n+yFw@\nKLR-KB;5`dXK-Kob!`?Sv5R$s(i~_a=ai0#4nmIytE=pmALfPpwMQ@r/jrt%r\GZ8HD4?C/mU3iX*xJ6cQ
::7^Zp?c@{n!z`QUkEC&>N`D|&qg;l$02Cj#GNW*#q!JuWlnZ?fgYdxc7&Rttg`|Ec|+3@U}Nn*AZa_8~]#54*l<eSKAFKp3w2|#>BV1;F\\n4%=T~TAqX}^@1mgP5Xx9xnT
::>cQ2n_y\RD?`WzU0W,$0_rslU{x`WNa%{<6FvQ\fioB8=_KTULL@umz$F&P[z9}LdT3Y?*@wdo{Ce#qd.OZ(*~[ZI&LyXi80JcK}f4[\HXxoyT8D4=KYMM*\V,#]~qed9A
::8een`rlwM`#X_AU@7\Aa#]lr.|V2VT]0|]Y*W\+rXsgrqHkfZTK,Oei\.C[`6nlNd!HAgC}HFzVwk)Rr]X*zx_t`U!HU97f\Zl|r-XPrxdZ%[K7=yEWJ39{3OfRb&UiG}0
::_xCrT6z^=TV\@F-w6Vkc<0.z^J=lFC$>YlM$uTb1R>S0MWQ\4arou&M[^8\^Fv`Emh=O`q15.N/&|ak<C`0*Ix3Vt[bAZu]!&I2vqii+-G}@w&j|aZP~lXNAbitd9,+ff]
::AnhMd}$|~284c{;QZYv%@U8xTSdMnz|.y.WERMm,/*az_)X;`cDn]yJQ~zQkSM`I5-8Q^c@@{FNWA(Ay^qd!sZnijAa;>,f%%d&j,q27gkwZV~V&2w8z9lDzjP&t=]s3Ac
::t-HRdM`$,#tlR{SMB2zhf]+dwXqlSj[b*q&v{F{{p/Hy,kkLH&^*h@L6,B36k*4XWR|O0wm^MP$~URvl|KfI4&jbz,,2)}QO\w~H.~XyJQputfZB]o~u3?G`$t5N>LCqj5
::?~>E-F?EkoCZp9O>uLPU0/5|17Nq-3p-0(3Yg],qYvSnWU\atO,~kial)2D-4hiv`9vBZ&(5st/mUo7e<g@z4%BnHVLalLH8h.MPwc^;iN1M2Ju49ix?0)z@,t1~X|jjW4
::AA+L&7,R}%~EihfLG6wMxM1&*+m1#QrG)W!TIg0twwi<nrouBm3YV8y^Km-0B[+R,!rZK%[N4[\$$<XZ!wc2z[%lINzy;LBP6tcs4r[ZZkdl<pkA,7(/+hCj.B]&?C9mO5
::%@4Ng5MPBFd!@_5+g`J]\*$4rMd`m72YQ\J%I\]/+aNDXeB*&uVfrC%mn]7C5Dv*&3In,>IMl2X2`l?j9K!wKzn_J58zQ2A*,`dn6%wV5`YKql>U{xt|_@2pKza%f]ei<Z
::ENLiSaGQHRxoj@744(Cv^_#C6)hoj(*6z,2(%]7.,PNP(rx;igg8~&oL-+Fm<X|u>s*!I3/sw&cy(+,VZaf=^)yxQ5ijk#.8|D0I6xc]xz#1M7/0A?JAH#q`fdy4[;a7u^
::&]tf\6?_-c3HQ(?cJ7~weLuN|_{>VE%[TK*-{~^@I{Q~~<xR.2w*KLQKLU45,\}PISSvO_PNXJYF^T_tZ`&gQQ&B%t6`3pm]2$y]0n@tZ7p..{....!5Yv2Q+@^`E\X;w3
::u#?I)3WxaA>R^#?;0%6F>=a{4^]pXWH`^LQRTJL~ou%0diEEA0?Y|Qf!L5y-Z`d=C1Pk<WwK+E7E,~w(2S^Uu<~l3>,&KO59HI)]L2\pGuCs-}{3A+zK-=G9`.GDY3iLV+
::M{>_#rU/S>Ga|6IGH@S<VK8wTq_Q@(/ThUjP4jh&D%SLa?cETl41ml{D^?E{xeMn7wrgAXH@r=|X}Wi?=_G7[^1Nruq)NJ|+SDl)(,5dt8P6]2^I)h5)/|ss^&oW%yEfJ9
::nr5oT>,Y<9HXz`SyU!=e%~W9C3g<A_CG>zrhPD%62rkH`EN93tY)z)?gqTty[/6s{sV]qhS,.OxzV|(9,);+w5a{dl=/\7!#Y#N;I[<hzr,.pf%u;2F2JOl*MCkA%PO=|k
::XEhbUh[mKj1qM-G]wq,sXk`lb-6^5N`wm,G9w!&Bg]>/H-QSC}{fpnCVnW2A@MDjeodO3V*iY+spF\{/oDo0gx5+7jw~kc&ckG$W(r_V5#ljnsooSE}n2(%`Fnp~=ZPOU{
::h9XGJsXR!0.^Ya?]%G[[v_|_#tGX$[m>G~.X>^cSghIwyIVZ3#EDAV&dJ38H~Nak{]E2rL<!@8!oNvKg{gXR{xB5xW/{0TP*Ay6I.0~3wW(c$r&=)X,cdCi}4j)rJ|tzkd
::s]EC$bQ/&vCO9q/&E~mS;tPU~;o,(nSy.f|#=X`CXW#K;;mAz{vVV8(t>qn4D1#%[w}.bx;Gb2k!BrE}1hd39,biM^]d!1n{apC!i{9LY-QO81*PT9#=w)u~M0(x#>[9J&
::bb%jtwJ1iOfBE(s`>-pAzT;3LF@$<.2f6|no/IQwlwDJMX,<lgnCuV43r]E6~L,;Fl4wdJL8?w?=D<`pb9jq29mv=1q*jQ#W(O}Jd+m96F!%]!ODP[M}lCH<iI]%yliTA?
::?kU#0`&`qoDK4(S;B@x^=s!P3M@=+HW.`<^a.L*L*rMQ.ow~8~9RF?P)Bx0yh+}Wa21gO2<8Jl4lX@FcJ?QBWPEd_=miS/qDvhB5CTV9#a=bn;6?5Eg_Ibuvd)-O37`m`/
::x#%=~Zlx9YrtYDdD<msR9NO[s6*bBF~KkBCHP^qwv)LX3(ti64a8nox3ndU%5dLRjx3E$|;%BW*564Ei|fnBJTe4hBA]+=)SOuV=a3*lrP<FGE$me{nTMiJ)wi$aB0>$_2
::ZU)#5A2dq3vb3/.,,OR;8,B~+D.\2(^r\M\#jcG]?G0KqoX|*3LY6X4yXeQ/0w*Z~.x[8B>mL|PAt5/|;jp`r|lTPi*,DA>y$@0|**-6np%wPLzarwK#$9\C\--E=o3La#
::^Tm0@a,HM;we}b\^xp@uQT]*Rf}X!;S0mK>4LMu9ke*_hE(neX*{LdkNd`d1`+@}jel%}9TY\/CAg(j`A/qt3v{,NQk-ECn7&2+)*SHarh2=s+wUmHiXx}e|0{7|&CS*@T
::4/#in[4^PkYq#rfABeURdx}dPhV%%611{%PV6npK>.qABl1(e2p-!u%,dn[XowUfS$o8`Q_|LxCkaFN3jHwN4srxe,Zt{\OhrbyKXfA!J/>3[nQU]!/0@z)K9N)SU[^JDA
::]a|@~mMLlD@CBHQ0XeWawz/&pUbKR+t,?8nZ3$?!Gu^^+kMc8oMlV;7FKeu~x)oUo%|3=Nnda9Bi6zM4,_N}cAul[]}QjCQ/\f-qF/v3sn<^|/SUl[z7)_c,\^8J<Yi*\!
::GoVVys&Yq;C0.G.mO0BR}%&=Y<(AkTgm//MPenFQ6>0_]tD9P6DOr<%nC)=yM^R}Z\%$4W&.\l^MW=JBYTG@d\z=ZV0(t}D,8!2R2.|^gh+}fQ3Ltb>R6~mzDb?Opg%bjt
::G2$DDV_3LEsoq^b@X-wQT6Kz10IbTB0F{d6HV$^<qW08YLsIv+d#8ruaj7,J*f/KIBkgl|a7^2{[9W<[TZ|=+*$\Zp@W|bxZIOi$gyaw5TFeZ`fwmd1EhU+Qi8pti8bDSy
::vwg^,VIud]@gdWvm]wsf~`11NP$ZtBUi&?D7o9RKpy+3M@I{HEk<^UAc(Q8mawhdW3=Zugcj*&04I)(SrjSF|aID2fkw7+pIF>7~~,JJ>hX0Vt%vK~NY3c47JYCL8lIJ;Y
::V-#\Cu4O`Qe?1PWv=fp/~9y*Z0}Runa%nB8;F|w-oieA,iVr#YUSKoM5DXeAN(>p&AmGV+z6sruUiWb!KC)L04~P0.In_!|Z==)=a*H0cfuz6+<_b=F-lv5zlf[h0gP#B}
::$g8jkR2Aavb*!6qh#j259l-&\tI,1/kZSsz@(iB=T-c&qVR-P(aA1]!^_!5d@,}y7?o+tA|LXv,s,V_~T6Tg>6Qazl[eF0[kKdH\Olw|2}f}v!9o0yMMrD2v@W%rc*B$I0
::FDLml)8a?S0,*=~=?PG%KUSxVXBaLs0Vk3o!1O}XJ9R(>YAJlnIL\2)c>eI1wa*1#F)Wc%Bs2;[!,VQjO_UZ~L_<V$OB>@8s=1KY<&8;&TxX;fk]!Ld/pB)#(Ok+,lI})r
::r%+eYHKZB?D~6=c+NGqOtwL&`V^rcCSRtI~C.tfx)md(3-OR^wI89l`/~F!+n-bS[;UfGJ$*Q3dk@?Vk;8)aVd|Z1yOK=%P0S9u3`l4TeJlyhypStn|+DeFRRRyqyY~TZ+
::}/dNR|/{)4=-9-4QG-.1r<Y9WO.+$ni#*0]B*gDnT.VnTADn|M4tOb[W)z>n^|.tzcTwEsmPUqSoUtTZ)TKDMkT`Rt/^%8aL/;LBRUl#[jzkJ~[phsK>y9-TnxMYV,n7uL
::2/}=Q|eGR]7tm&rT?OtbD^9C`R_<,AoH_aK(FdJT]OY!l9_[eu6#o/2i;XEtN_t,{L1swVY6*Z?FhF5)kVPU%~VXtcra&#VKd>KGJtAqQuC-28f.FX6t4[A?!O[KZ2%M]G
::PWh;(P`Z^38Skx%nx>n#XFo$(z/ue}B*~fTnOmpLx]\8u~!JoUTm[@taR$vP4%hO%cgj1(zus?nuI=[WdF4lzB[-QOo[c;XlV_-eULt<]p=S?SOHLH^YtPg09Hh;7L.9t&
::8cShBX{aJHev*zR%{Pfn5;@lX?E]m@9c{z}oqsODGB85!@\MV<ns-vCh(-?VCdRYGLf|s*L9JkMA1=TeL3,ob(*9BjQ!rJ0K2lLY;JCZ!^C~zt@BT!gGLkg,PuN4wepqDn
::*d~!6#GJ,{PjFBsyIn.g0_RC#}6=YY>9_Ed=q0Qn!/g2CF)QwwRr]H1zN44-7\z[N2ZUCMiKVJ~Ct,+3^f43-kL6p5F{8M\^m#\[y;.<qkuT}6vpqN1jb<aRK{\`wZh32q
::<yEvU002hd+4A&lZ7+.shrA9M0{MJpshescbs[3uQXdvV!J^`A!ZALImyu-F&Qbeh-8#o*%P|^dhbH6,,S06U|n#CtG_V!RcWMW57*^T=DU\sJdJ2]bxFdQ0~MzW5+p@[j
::K/M`Uqwr3IC}C2AtpVHlps[LDqa=I!YfEHmtmRn4*w(9(L#<T-`c#MyMgJh{%HD3763(`/SN@gO&pUq%-=VV32~GbH;%,y2Z0?P-[dhtXB^Gs|Eo=0I/-F-P>jXWAPWcDs
::5OVnL[+y[sVNj4Joizi5jEgt2e+$sSkR((|X,IoQY1DX[J*II`qN2h.E9v>>a&]6WVz]]3&p@L{S*199/Pb$8eU^GEES9I~&wt,VX&LvN<.iP1]/;qMwOAMnW[%|66u,pN
::=<6r-Cu0GrVcz<bJ41L[1,Cp(C_P]}v~HFD0yG%s{zB-,7QZOjHX[s5B#u1PS]tdTOD3\k9my~^u_MhaJSUw;OJ*f\4d1$_#sXqO!\|hp/l)P^|]=ws8?AHl[aRe;ep^|v
::<QcO&S$-<m.v^BJdRKq&zX%1|W<xvq|vK;O])F]P7H~$Y+wTT8yV!y(78|b.|=GN@0$h6v\zR+h0U{[sTV?MB5B=?c|mBdg^;l^wL@wLsl\!*zT?[2H$S3`[s@){#=[8ZY
::qEbnJo!S,pzgb]|~eN!~MWG+/2CKZ({CBIsK#dflm!qzjWM2w%nso~{pg^-b$85k!L}9Kr3@.zk]VV027[`[LOE!TeX{%JA=SPw?Ko0MPc7FqF0$38F6LgOAmN}K5pR>*+
::G?\BFtCwPe8KP@EMxFr&g}ZM+IEH>`CD]_]b;<.1V~gl8i3UO!JWVZXnLGvG0a!gwX}Duybn1D=5sZFj9EtI]E%FFXzQnMhpo-9gcW`22;A(RB^_--[NIA#~$gPo>*XxpE
::~x(;VAtRJv$Bw)~mEp?9,o$,@f(DguC5as;ftN9!7[xWX/7GgK4ytXh?WAP-|6_aU<b8i#fhI@m%{Zc3$f73,oJ&pcwxeby!fTRIn{v,yfwgP>3zj-Kjp8-q]-^8iFXut1
::,_j|%^U]T4YBywP!,&NvPxtpa*Qz6)g)DFb8E~V3^NIG=7m}9UN&=W0A)XkD~F+ROV%@HCeO3iDi3mu%tp99)mfV@+MZ+b/\(0n+x~L#G@k^%<K{+uBE4<F8GuR)C)2il1
::(7FqblMxv@<r,C>HUDI/k*dej<[z=kGt7l]2THghl0wT!6Z]Ir[*QBMy4*avX~&*7M<tT~e/vd>foE84jn#$yJIc>xwxxE&4W@p$HZNKN/{}8tMYu,WJyHy[T/<CuTm)\c
::18*z{HM;iri|6tl&*dD2G<xOY0CUif5,<z=PM16YQIltD2oh)rO6Rlj`wMdK\T|Kw\S|I-tAgru7=gPR|ylbB};}%nY\1GR99dof`av7|<TIzw8LB~&^x0<\^2YGr##V25
::n?5Xqxl@;0WE3aNmp\\RAjqbrdnS78r?|6P[s-T~o0ElUG+sS4zR4Ib4=~2/@xD]o}J\i\;TaqPWE-52YpB6X(}lu>Oq7Jw3n|(uE~NFe+2W/udyw-vMlY!*z2ZALx\i~H
::OK-qF9f2sd#4p;3zMRGuQ.!6Dtwp7hcven.F0o\QOk#1.EUQKD]T4JSIJ26)x-TYM/s)%]c>A\G,/5zMtmK^xCHE58)@K\!@2Q_xDNv!NBHH,<b/00XYom47z#tz]6*BxT
::/Xhsn_XTpGR}@NR)N8_usP^.{pa~6QEy$\1\dE9dy,EJc(P^{6S,iG)@d*(7CaO$522.$D8\5TyKA@~a930B[4r@{#F9D(}?}\~0p-q\/aMXu0[TX1V\.h-3s\p*L7O)b]
::10J^h~1R2ByMkG22j{{uN;CuE$WEn;S5vh<%=nL]1%t}R~8dzQY08&!,^[KRi~nR1\~(@petDk`E7X!Y&N_`&hdrfJ[`u%#GxT^[QQR\`dO>IaMRN;t4J}J?26DU-^N{9%
::g$f%2QsG@SP}~2/DOoG\=uA\;P6rY@D2.\j\Llt}]6$j(J`jS4?\PP|M4ie,g!V0P\;>DrmK0n70wj0@2)RJ.@#mh`S]L5j_Cd6iE$V.V\NUJ~|of<y[V)cx/fBEg(->8\
::f_-E(;->ncoz3KMmMBfxWP-n{Yb}!*VY];ta;u*3~~wW<!^#wEV.a\M*H~[~|.fx^*&Z*(M4DUN+%xM}u4Rj/f20\/!5`%g(G>^u?j|J{p*)9\YkU/xF;s|6R%|,p;4\\j
::h-@x(P]qI;=~B\8)fjC[snAlz*mBEt~m]Wf\SD]^o%`?e5t;&#a(`Aj}Y/1`tLys+7]#ElA2/<]~yBr!V](\&7/Sm~iwaX0u8aPN6]}TLJ_LpGk,j`X0M]xiI\!Mgx,eN_
::j<VN,,_xeJ^YH|1jpGS}F,m5w\~%KEAu7byE8rg(i.O$h/(}{`UY+e_xCv0RVT2ah9+@{)6>)385988^)@#?B_ZB%Lg=2MtqlBHqAp*)9(Z5JQ9h&[~,~NCp.(?zTN|G%<
::.Hb/RhepH;0<M{Q`vs]_uCRe~Si`ZFZX_InLI\MR*_71lLuk2#fEUwiWW,Q58VVG>A\yF<FYD~qd/,ON\7`@]*-jWRL_UV_x*;)cA(srKppzTr!vy@3?[6.B~gxz-0_3Tl
::&d\HTW5i`2<+MzQ-964Hg.!M1GSAok!c,mJ,^IOJ7BhYoRfF]*KS\}sxq(aToRJjE{PGethGVp.+HZAB]&cquvly[KFDcum_1p.&3BkLuanxbp&dKd[O%`{(mWTta2.>am
::3kh{9tC\$3\/9\_~vpI=F<!Vb0\B;X%UH)87lsy@mdBmF-lOmP#o{Ljjr!*Gn-e,BWaSl{v%8;e=ovCHwNAX#uF1kJpz)c/DFrIb34\?qY?^a{P?OM6,k+QW!weWERa&VP
::i9{y%Udx7VJ4sSmW0l8$L6_D$[f+[DNa?`\4tF<765&n%J@CBk1kz3Lh_xnM}K#y=l2)qo?0!c3Ndjp!~&N`(Ut&l$s-CM226kgf-$h(==3~_df)uN\}D{_^&JZxL3%4/|
::>3NppD+*zVK0GiB+ch06KXQOn}V7~Z?oPw\&%u0aC]cB`T+9#qN4&N|ekz1$w$#4Kr;&kIBm\]J`icKk=OE]|6TorF,\F;i6t>cql3I-ZW=nhn(?SqgoZ{iQT^,$`6|Pb9
::XuujhdT,kxlC#G$0,k3ictLB**w||nj^H0|yW!@lK,QybC0fuZ\.ER+r+S-cIbdPk4)qbJ!!a[9T6]8CbLW\_[=e4Z{R6fGc@T+q#4fAydKdCIs}N|uFMi*}o[\/uYsC35
::LrenJBf7-G`FHdCiN;4/J^AWasL*a/PWXW43*b7X(XsDXrF){k*U]R`%SyRV0BP*~YDuvKncEup.U}<E^^g]sYa+XhYCRjM{3P&<DB+xK=qnr\i1wZjsi8K#/N[#Fa_hX@
::$gu,D<WQV.;~,^w{C];^7%u;\VSrcKtgM*I]43+I]TVKPaTT+p~CSxc+qkoo?MyM-eHDC{&ULb8oCyxU@$,K/5%{6Rm~m+0L29t-k.jl@966~sYC-2U|.rR1yvA}Q$eD?k
::sS?3=b53u}UyiQgIBjVX@MinL~j5%Mz_A8dx|#Nn@w(HEOYPeCeR$sI;`=_1%Pq<}hm1`?d3v`y;Z&`E5LDQ#$S_sxk^GISc*#B9n<hhJ/WV~|lM*q$Oc_WO8+|!XK++?u
::#p6F{$E$@S](h+iy>`$5G=KCWdE]CNhOc[49D;a8&UGj(eE}-&WI+K-(\(uXqQ52.6J8GsCqJJ_e0yBg!UuSK$ac/h.e?Irb1P04HIj`(8aV^]b~n-x/So;]aHrLe&kWSx
::esJ4^TKw5NgOqRRZ|\%Zv{V;[&W4V@#<HZN`1ANO`}DmIu8^,u0?z#_5Z%,{$Rfk8#9rAa}5/xizs+$QdUEg.4^DG+\SQJ5DJ9~O{@$x5gpl+<o(_mvDSqR&tgFyT/Q[!W
::X/.l{Z4xL|6~eeu8O}8sw9uV+Wr9*Ik?<{X@Q;G0%GW|Nk_]sl{3Bv+/g6#vwp/MFh#z(SgvWFPwMs~Bsq7&7LKu}L@iS{NwuRqK*NJ_uMLMqiF]1MYsOmw.7QY`k92D2!
::wyo?F0yb,~PzLwj@eDh0,kDBX&@1WM9FkBG{p^M8&ewPdH!FPLHAn*3Hw7KOV9Cosm)(cZ11riPW87pH^B5HX_i7Lglvq62}9$KET._M?[.^\cIg~Y2e*MP[;O$4^dD1K/
::i=8oCZO,IoDlk2!3Q2CEss}aQo,Anbxeo=8rYv6~&U6|4M=UAiJ)omzsR2hF,ZCf4JV[_,^\tI$mvDgDEF&2]HS!Oh!BDI+(}AEJ0%PB8e%EAUTo&cV3wDGv3?<G9]bpCL
::TAhMzOS,iL(+bF5H|GhXB9rV>Y@SFFa4IT)q_~@#kZjneZ!(#3$DkrVPcQt+)V,\8da^m_,WX^@>uV5yQ<e}MBn}d!*SPW-&9`We>)\uDI((LU*T1=0OM?Rpr};oj<#qoM
::mt&k{P1<Re<FEW0_jLkpSlwVy3mN!v%5>)`4L0l{$fE\kOJXH19!BKStMB<I^(Y9|`zm9rxvB@`YeaLlgmRp9j\S#~JmonvLas8F#snY+nn+5buTpJZ5MX?fgk!tll4gO?
::n{hX;ezh+u@BDb>NaE[4\{+SPY!(XT!kjO<vb,{Z1KTy/,Rq,\WR23Baka1{fyrr)@GX|3%`T|{KgfeZR4*G]GN~I5bkXlGtABr6f$<(ef,XZ{INkY(gWp@O`{H!io+RQ!
::}8irc(RZ8wbk0U6?b)OGvO/*<NNCPmwgc[!{V!wbGw|nRXZ+wF#jb#5RJY))=9G,UuzJ9\qR38gY/K_DwJ,*a2;pw1ra;i#CXkEcj\JW^63H@c-+19j!w&><)h!lYn@Dog
::U`xM%_\e7]n^bL/CExm,rcHw-*mkQnK9l/5%G3fXoR?EQf(S<JB$!(?{cwwlB`mJ5eBd!HXj~zfLiV.RKl-iTc2P8#;zP{E#JC`s]tw5`bbIC4#GV$c3%&FZC,/[9tAm3k
::Guqc?1,!.!T%Av&bqj$[7B*K7<VDbz+32J]hXpsqhOAd=]6/[8=E2]8GO7yejka=-=?u3N;c%nZcpLu`5?)wL^L$<JtfZO<Ag=Di#VtU|eKT88<o20Kah&aQQc5hX4_a08
::%HGuZFJdh|cE#IKg4F]%g;5}/4l|&@3rG[{[AZM;KHUwTjC4m?HxCR3n}L5i5uqwb$wHDqMmwfYy>|VXdaRM.9CsRC4?K_^N<6q*CYUxGWOv6rcUuJi=^]Hq8H*zVuii|B
::/$KrrWlmya-X%@+sE$N$s\Di8DXqh/r8^c]}ms#SXhQ9=-cGox@>wwGu%h]W=t2u|62-VuukNFjR*ABemK6SxY#4g<}yR<~nojij9?.~1.HBgT){}/*/1hT}r%F@;uuH@2
::{bxebaToZF-Gp`*[T&5^vs20-LzN}8^Po>.x=(1xabnVdtlm%%Q1&2,C/,JG4e+Fc0MVT`bCc^Q;m(!&J/0#ilo>PY<=ZXc[#ZNRe,X7bvh$9<k7+xN+Ce^(=#d<1MolC4
::~]6kD{aLbqWNa-hwBCy4pM[e|,0&z=en]xKK,he=nR$+i@C>I,nm;6k<{eR;2vpz7*.}a[SL?W8d$xc^l)iZ3Ds?qs+#-l]GzcY^dOrSyibRoXd1/KejuX(X*QQ3OU4daD
::F_Y+)A+K/sCcNEb8tv&!YF*tMWX3jvT$0|\c}DeE[rBt]N0DJuEQtodka,2(~,mPx{i{=+Y7zUI1giL^-H0PO]J.,Y=Hs!fc2o~7wO*0Y#lZuSEh=MR2UKL@Yv87T)pf;=
::ar.XoX5t#9*52+Ml=!4OEmDEh}o6*7>HiYzU39o#u~*^F7dbmJ-Du](e)<qo-{J.$X*@IDAxB+=WsuxG}Rf)0dLc8Kk^tptS?XhW^l_C}?F.&3vs{}n_[XV&.7yAa)}6Xt
::\Q0P;Lr\1&q25kaHwLBAF`Y5{Ei]-g_.I_yK49jc0_sg0+ALUTish/nC)EbeQb>T&.BI2uQa*}tFh~Z_{5PM]VjW]X-2OInX?TR+zZNJ$PY4u.a(,Tyj;+6yei5lag}0bP
::r\Fk617WqqET1kl(z~>wn/7}X}`1/16I`tY{+r{R0QS[+TDFQANZ*oa]Ch%u%PD(Y_rGUxj&3nKkM=RUChNw8,pt/<,!gw<]]7S7hLvxp2Rv[_d(e<lvr#4xeEtQT;*ppZ
::o8dY6j1$D]SxQAUAC3I;[w|ORj5c[.;&XFIm{8l2C2_YG1cau>yknw@I|;&r;`~Cn6Nk&]d5>{xfD2_$u3&i,|>ro/NW1XP_KnL]m|&WD_d*ml%ujPt|[nI7n0x8k)e`&O
::lFjBHG1^Xk&^n\f9K;Mf8MBJ6GUW+>h-Hh>x!uIilGq=k3rvSV7rOYujt/Pfr\`F8e&&aCGe!,1EYQ8z-C9S)q*mnM*%|,WuyMm(YL-&$B(},^ivST_Rd`XZAc`Db]gvkY
::[&.BI|EjF4M2(y*5E%2bNN&K)WjtUTtYs/3^lwUKyubJFg?bd|WY_k1TVv<oo5)LT_D[mV9JdjhBFHCs3]s8=eIRzAq#zWgPhPI<9X;CMO$Nue[NE[k/0czo5;$bbqIB*X
::UwAz0SN0}ivT*}A7>c$q7/0TB@@cDSyY`iX&&bEjR4~t#C[xBank^9&z#Lj^`0tT9zV6&leGr9-Xn?=OlT}*n{60?5);kL7^Vg~fG1`FY-WADufffnJf)%fLy6I/%L63<4
::q}vmszb({5T#h7p1{4W]dpZz0LRPgh+Q;dODQFv`$=4{0Y91cst?c4bIB93qW1L3j^FQVH$R4w<->v@XJ&QpVtRk_l/IOG[KZ[!=D7&[VzT*n+D#}){</MZ28%N%Ik\Ll5
::<_bgCtwJt{M)Zi}/GX}i==52[Ng@TpGbS!&e&BMW#]VIN?0eF#sZ$Z>pyMIs50F@#lpj5ITWN_yM#na@oQ[xyuS\RNv,!^(k~!Md8U{J`#{.$<6.L-hq=YVYZbgK`+D\.@
::mG]2L}{DaF7*T)mN|1-bHJu=%y5gDVj+O)#{Da9VaV/rXkY]|X2!=Fl?h]jxoX.%M\!alv~HPa,-2/)c|}laam+_#PosAb3ARU.o<Iq6L)+JCJ[\w?L$2`v$$Y(DlP_lC<
::xwy#=;bX!3q!%-Xyf4K6(2]l*>JhSQmb)N%ZTv.L3dg(fs*$FTA*xu;sY&B{<_\)8]haWK..,.?.;>rJJ,Ad^2Fy<\OV1*{+$3o|CpLWUAN>B9Nj|4q6TfRfcdWH>D\E2C
::HUA^Q|7MOtSD3J=;c}@fo9o^Ti-[$PE6E6w)Ku(IPK%?2=qU|c38M>lmJnj%T7._t_y,;>gc[.+J<)c#EH)[eAj=Kei|ecT2KRryP}]z$o.VJy#Fsd8N8[eXm|E7{S8[Fg
::kS}b65~9I?n-v&7mLSO~XvPziZ=*<2FqLVkjw5E_$eP9GO#f#qx9@b7+\T6c=Y<hpQW\ez1`!5G.U6f^?[MTY-H*V%Ykmwk!c<\vll+D2F.Y+_n_1>oQ%=g.9%E8Dn5b<b
::`T8r9l=O_9|tuSP+YHuOydl4g^|A/Bff^V)\\9%pd&KncTcQ&alw$CCINw6$nJVDI]5)f_<)kcc@A?n{(-=<;;29]AH`2otv=*~c,#;,D2h#wjY~D4BG})r4PC)*0vx<+a
::>E_;!]7w;C%Xf48.3;w9|ud)/,P|HP|NI$=3nV&}gP0HRJ#/9n|T%L_0a(Jui9ovO#H=!,R;plD&4Bke=!=&qV}rZ_|9But9_&fb`;KX<fJlii-xCeQB#i2wSr1g8%u`y-
::S|_-ykVK5]nzfGf~G@,qBW,VN9.zl<j>n]a$a-3s4&7Q@ZL+bj56$uGSPHQ<n!K`(;3et,`OsXq~d&azc[mvrE(!_*I&?#Z~i!$8nWyCTo0dT\~Dz%;lYEDeI~`-svfZpB
::N\c{&Mq\3%Nw48%C0%a}#h@|[CfZnq{*s%0Rm%^@us|TmT7+e8[+J4OhSJ/k=;)zws)Xtqg-n5&cp}(#<a~C}|*PVSYF+TMYvfIdC&%)>$#YHJbl$<u;uB<\&2!Ku=7o=T
::Tq$,,cm%-tzL8bGW{19W;m4QZGR?k(ZVV|eAu8=Soy([h;-UgUfwHZ)+0C?bf4S-|5c)dL7[d26;PG_-Tt*Uq*<<?MV@P@z4wzF]@S](+^d@IY[cnIv}<{_sI`CB-|PA<\
::Nnw`<{7]2;DfhR[WAr;m2YqiVI?Yx~qCbRZ\$!<~#7^4c\Lveo>s~(PbCyJ`wvw$k6S|%pj!gakI@PvH<~cagRJSLvn5_/*K$rW=W~_!E3!oulc|Q4Kb11@*GhVM`s9;i^
::.=_n8QN,dYtK_~Ar^]f~[DsqfaZ/IJ3;Z`V-uky?Of<%[,nKAty_>HSHsEN@%tC2D4]1Bi/FC^9rpXmpYui5={`k0A\s<G=S`O@%1xvKpO*%wB!)xH;TQ)U<xv>tXNP=Z_
::>iA3K#9Pk#/\bBA$oZb]O/+L]<E|HpKSXNNTl?+E5v*/^oqC60x9TQtc=)KB<TQQgy3!~)S4n=V6O3YOU<sszh%Qw}b-.h{\<4(t<z@[rE_0(nR#t-05.@`(TXEW4xiAn6
::PswFP5%ZFp(/KI&@noG~uR&]PV9EYrMLITTgI}lQyRd%Pr2LWt$rE46^=62sNq_?9c{EeW7y*oj+vK0<WtSAnI_*PBnO,>y3]|U?5`}?aL*pxiHKt24af9eo{Bz]j|>s0b
::?yK{pk&;cJ?h\q1J`\zYd}rDrcM_?SC$!H+t5HPIrV!s;Yk1?`zX(j%QgTP^`?[1l!PyUBQtX*h,HB67orxw&|>ohp*Z&~v=td3/43GB(J[b!O<&7!gZss2I!1i2Wh^p,+
::6C1{_#Uv&nf0E#F=CMwEsnkKst^@${f50M;a?kfK]y4rOd^fQpU)D|9DJIRCL\nvb3l[CprNnYP]PCYQ][hN/mosy;BaiRFq1yDZL<x2aG#e^X#|q,,$%PQNE\}UR#z9xj
::e.;r$`|piA@J3rY1q&=\Ir&ykzfn~)^&K_(UwCFMQQW8%!>@SsG_K<eCUHr$(_2m0WPcHQEe^S|kAK\!6`0A?|kotUfWS-.up}W1Tx({sPGkF4PokZq<2mUES1za}n96wC
::8wGcr~;1O=elbhdG2{4@ro_5/bUV(utE-aUF-il+&B<]$tANU=i{`wp_Qkb$BLStn!,2&<=<*m;l]PnP]=jk`0j{J]fA7C(m4h1@X-s1Y14Q4*xCf^<N9a\RIZvMS,n4Z`
::?fO8Q1*SAjF\uk37gA~*C&uw]bNggLizTS*3QSw5gw(F0&|el%%J-dLB>7.Oi3,k,BU`FG$~|jx2.mpdmM;/H=de(ZGl(0%dd0csBl0WW<EV%[mR^h1NC0MVxkFBYFiL2c
::?@Mgs#vu|vnp)kRUdXt8KzmMDM{}{Dk,-Ax7?j_Tk~qS9g;W+$ClELSLe5E19jVk@?PE|$pDH39Z,VGY+%`Ycx)sF,Wb!R@zVg+RG5tNXY>sdCkj0LieD6OanQ8mH&i`M/
::lW9z^q{^KkL`mVjdux7W\F\iQ2#E\X3dCRz/4Shbiv?cDWKr\k@dz8;ep6l3^wu=0$|Cgju1(M%![u?AHl6jZe3M(a%g;k\wmcHMunMTsCd~m]MmQ6;-@^kzDzE[QsCMY2
::iPxh>otYizC@Brd]5F&GqhbYLusIoWxv?WXO\kt\\]yZ!Csx9qnWD`#dLvKJZjz(~KM#p}QE-cF;<7y4|Wz^Nu8}MnW-/iX_-@/xlYhZMl;b#yviRt*v3^qq2?ZZd=@A*O
::\0B&j&.E#C;g0%C,r(3W`CU4,GbC=)tUR|{5dzFP+v<Ma/0,\Eac%0p&iJErn9KGr{i7psen[vzJ$Vd3H_%7h\+]z9XqV\Z5I,U5}?cf+Dm^+I^z-bu3M/l#J9TNLz[RCB
::Pak;on=cvcRqHy>/8L-^++X;Nbn(!/R,H_K44f;rutrJ>qV1$<0u=Zkf|)/B1&p+D8ZHT|a-G9+]@zCPc%z!&_C]Oce0F0ep.hzm!mD<E,>YpvV/@mg%F%lA?4Z2to~`!6
::-C{wYA>WqfxeE\9EDNfE/6rap\14NcK{!we8d]M7(vR`V[)*T(^7xw3TpJ-,}i=cP`vl$s~pC;6.Bo\O#CdWCfO,Q5}f\fE3gkIKG>QB]4[2AUQ(<-Fk7p#mZ=Q,,PKK4f
::zlv9Zd8wq_^ScJ$WvcWk^)?``W0Ag_gv%|n}{qjBof.ycz@?l@d\{u1cN%,zQ1tgr--/a}FmSK!hIea%~#](PV(\lok,@i#%.NR<<?e]m+,Uk}2+X(#(QyEcEo8s_aVidE
::^#/jnCWOUei\0}MMV+4=PhgVC\DwS7(}lkFl&6M3/t`vIc=Eu,QmCI@|C{v\g.s{au</$YDx\4+IHzykH<t$nosF\r~C+Rj*KIkp244Ys2/2K-rZ)0a<^UU#L^(uO5c[Hn
::~k!#ZMlU$x+st~.AB{`K8oc#Oj]UB$XY~6R5rC}.5L6,^.iieD{#3]0$31M~s1DZmqN\}-.^N7Q5..aqn|$,C<-}%VR)Et~4!Ha)[K7j#^>},.=J.,G00g+/;/nZ}V<3_L
::D,~qqPN^IS2]>wy3__x2%-glCJ(M(s&;XW1[H!f`+k/aI)=tAu+c1bfq53<.KZ!g$4|=/tUcsu1PWrPOU6@3KFh|Cx&9<LMi;5Jfw=XFv]%)dFJ9|9g[c_le2Cr@r3TR8u
::F(u1?Qb#sH23s.FBR/zaoOG#DxXLuQ=O^v6Xd{L^g8PUb??*2dXX33Y!q7JAUT@_(wE=kXlMh9]8Q\r{=%%I95F^ni1C~+eTwS/rlq$CzT=rrUiNLwJL532STW8y1r0g)/
::DCpFv*0[_]b2zTZ9jq_/+_T]/3GIB9i]PLRiTuz]}_k]<|F4k(MXy!eK0S*BXJPCnH@o?gusvTUXt=-~sxfFCy-vVjl*q<`VgT{ilc)dBk*8tK?<K20~j[jO2Ny1wVL>Vr
::6kT+0@vrd/VqI~K]a=7OnB?e>fuBQM|z,wbq7Sjd)#$Z)v[QqM9p?)[T$xqDFfBZK*SAZhu\<#x4k==mu+%-U#u|Jhv,-~<dgc]pB8lTvbw-k]V{.&OHNfO6j42s\q~vT,
::FgR+1ovIh%w-n=eQ+~!WdfUrkA%_qE,>3qrPD@$6%jGYEWkYgT97Cvl66ldqyN%8Qe&*D|xdt07Wn=X(rX+Qeh*4f)My0n_?W4%m50n8b(|(aZO!UgSqIhcWk=$Gu@}`>[
::{6on{>$1V[H;Xcx[@EO2O?wf%r?uh\1Tt~strTts{j)PxwD%ZAn*JF=8x~t\})2PCoa$A+/R\xubt[g;lYQXrK@F1{|V|qpgps#Eq*OJU.4br6seB\Jp*ceV2nMf=2iy]h
::&Q`@W\,hX_L5Gk>P?)Q4GP\zM2oKg4hQMX0*TyDA;cvq3w#EFEn|r&9\2,T\jnM)`jzFz]tRfNlc0*5<k\-?Wl..FwMoSdR(%Zp+G7\;Oq#kBc3QAk&rdy]ZKl+).\ReRK
::[]_1RImz[iD\EY]i+EK~65<Dg|~r~@gif)I4Y8^|2Il8vIN5edW0[5<*`F2!$=GDaZ<oU\=O|)4C0I~GqHRj*+&E#Vbuf-Jnd|x\*t40w|vzB!&yXO$}F49!aw?cyJR;\q
::qk+{V4ro??8gz`hq3^_=X5vwT]+,YSc10)<[xL->BL6vir+%jOZ>/G{t@X,+48@MqG[A?;fd6|tUt;2fRT|SeA|tHbt/J9wMQ]Yn]@eu.fTW-RF#7pUVE0KOr+o;,P91[.
::L-l2cexovtX#dLLAm6y1.dzN1<lcxn747l`m`iNjHN5}.4ud=e*%!!>5O00Shy?hj5}(jL,X|fS;p<Bn`Eu;Xr-/#-_+)VIGTmR[f`?Y)w\8I\#DZ<J*C{^s_cK%<oWZhz
::)9(HpJ?>3,?a4k59&~oS`&{c)L_@Rx<(vfO.a%(T\ZOd\EUS9f?`9@Gca}i]2Y%`1^j7],kOg&TNbjMoJ#Os<*K.e)EHgpX-F@rKrW83=PPngz^AH)YGE/S^g(|B]lJVW[
::&-EJHxD)Vo6[<0Qq*k#\DOX]iEu=j.yx?sRGcpwzk\=k@_-_of_[{d2VkdDk![`w519(;yUv9GcFOC7~^L=;H)kH0L)=Hb(d>>GS,z_Xi=txZR,vOw;}!~f@R,3(nJQpLz
::V#|h}BW!X%$\ZDhW;|K&Mw[rw1k[;.M&QXC^=aJJ/t5$KU`#8F}FH<.%J)\pX6<8$gl%vQ[Pkqpct).%d;s7XO0-i|*eC<v_BI&G;+t?jA~fdQ@IuaG.z_ZFd--@aCQv1v
::=*]EX6]]&wb/i)9!9oLCyr$%^oC9$07\ZU]L./~{.j>7_;mAhF2ht=j!GZ5P<^h[>%+ha6~Q]uC<JFikE4;9l1IC,e|-]zR%ba2y`SngucK]e|NQt+>,Q#ogRRZNbTn\I=
::,>VMfj@XjXKtS!Qp&\aZ%dMH]l2x-4scv9Yli#m}w@BVomlle<h9Ql4oZA&h)_DU-a(Jg2yF@UH#05m$$+ww#c,>uFUug4MkcXxob$,h]ViJp*WWnqEl}*L7gqg/U3D1fG
::HI{?ZIWJJ38;E_ll|\~sV]W/MS8.F#r3pXoS+2;xXef)Cu)AP`x-?yJP!)Z{!;ZX/6[faT_Q`@pBv.l|K=(L$U&p3|)u\?df6%o#Qq}rhaSJiGm_9Q5G.+F$mw\O.yGS9H
::6&g?=jMqH0t3>geESeDb`TV|0V8iV_8cVl2xbMMt_8\_O|^46D[%6a}86$8,<b/CE/(P_4^bO4O;)C>x<G-L\wz.zxE]}vx|gwu|ocw7!Pb[<LMx.V{NJzI7jWqHW14y+d
::wz<H?EWV)iAU~8;A,2l;3w]E>9jpc2c/Y8l~EmBp/-m\l}!(v;|S)*3q{7TEJH##$nsvdRj9St3MOA6|^s_KXEM3BcO1Vvy2b1ki~GAz/S^7TZGw12{!*%AUTV1l_{^jnK
::WU{=$bYDQsSF@s`Npw(vXvOMQ_,W*r?1zJ7=aY(hC09w|.f<Qp?pu(q=1}CnFs;}Ej._x,/t^PII,n3YqgatwMt{fz,2}72zLp)Q,%S(mF!|i282T\zDQFaWQFOs>u1=xN
::<_a9A*FHr0oW=4t=Zaw3OAIw3&5k(ja~qcs6=\+M#Kj@$%~m>*~fvWlbmL6WC#U|%LV1TlO{jdM<W|WN7rrV`^va1Tu~p]U4fm6s9ZpH.cZtwqQf|/QCn=+)5!C3<Ov&DI
::Qy<UZ<xF*-LUZLcJZf)]])cx]@HDUf>Noup`;btNHtrTcqyO@}r$V~<\HK30b$B\Qbz/%5-=[9FxK8o6{.yd0/{anlN2)GE4v=~6y7P6`+=\y,{NX;*!hnBf}>5HEa`=b~
::z?.F]0CGsJZ4s]n=[A,Kkn4O-WI/*S@=J2csaz]Yyh;6Nh/*pD29dau`N&)#deY0k8u~O13Nv{`$X5S6MD7MS7hr084z}0tF,`}Vgy4zNUJNCgoMvOWk,F^|@?JDmS])Et
::Owf5M`4T)=x+s&^yE\*8JXGj!nfaWtKR/-xS=U@s($Y,eN?%0Kvet0(j=?xqAh}T8<~8#\Qwv4rsQFIIl3[U#4{3/?-J<\|Qe31_.eHN^)zqq?&KQWlq.P`^%GxArX$,zA
::6d1ora?RAnBe%d5k`KCzAxru?D\-f=q+sknb*ufxc45Xf!Rq6)[G[4s0.[U[%\U?tT;.XGuBjp{In#=?x%p}rZo;fy@L-w..Uj@8G\`NOcQ@\{Z4+)})a5NYm),.S3IM)S
::|BDZQI5NUJ}0\5}Rs%p<2<06HF6)`.n@C.y$~c-&FP1qPBzq)gvm[)OcVM&,hM+g%+Y5sz1>BGTj<@u0B1!pYPUN/\b!K5b}H={H^tlr}6`HsZeIl.?(_tzFj]n`<H6.uy
::cPE/+U+42?<(Vw/h3]g<hi<dMx!A>F?1|+ByfGkM0n!M|CnQthD=pcUzJ_7Xi.NpftS\,Jjz($SYGPu#=SNM1)GJ-]dKEap~{ySng*!z6e*!).Mgw?eL@8DqwGa$,bR{2$
::x{OVp}a*XG4)ha+MPnKu.W7vVgl=$(TXown2@652L@k-{j1%1a!9T=rU~&ONkMTK[Ob28wFBh5A(Lthqh`Fe`[|BaC_QS_m8T?C#wqmq4o{vB|.Pn+[?[f~rC_W>Rw`s[y
::2N<2?VKdG1!1@y?mIEt_E}yi]>X~qJgiOQ5X_-)%}iSc7I6(,@6tI/-&lL(8OC1t!=X^(9_2x0.-+Poz@g!qjU|gN>oz&b]R3*Up=AuU)N_b6;QLMGA7/d;x2vpv^A$Yy$
::booni,Mecn%J;e#x%s7~@`)1(.=mvJf6*}VrNXTm@9*\lj$klRr1%8@%JGM=n?7rQj\QFQH#%RLv?R-@PpfA25RRjwA{sEsHqLyJ!`!#&`H<CKhJ|)xAjr]m@?n&pxpY4_
::~N5^$o_Qk|.>$3rWNI_I!@R%eR1sWv0*3E\9$&%laYqMDK*hj9[_S7l/$9C!Dyzi9NqyaznR-T39&%h,<nRp)6)3]bqyVQY5rsH(?M[hm3VgDSW%vR~~WWQtWTw9z7V|f[
::8Kk8_#6S@RwywIc$0~/p+o?Z3^bRoas)|OvUFIw`0\m>rx|SZh|/OuFVI0ED_v9I}{se|cJz,mW)cu?G}|nYPcu82$lQN}thO`#h8HDZ^!io0$G6cP[qy6/owN-M}Vq<|l
::%$0LIe{@N2m4I\\m)\+`yzDCdfo@1?Y)[05iU~zQ!|;;gpRtYkiC+4SHF<e@`Np^8dc^#Eg87v|-u#>NMPC?iw|XwA?u^l1XeAxs(IBiY<)-$BRyIi#5f^z[Fh!j>+|23T
::fpCK/]Z=65({2Qqk)ssTIlnS~0Zi+e~4`ii*92EE>IgZ@ec0PWp?x$)g#w\Nok&pX~iTVdB4`Qm4G4&J{XAP&%6+0eEho3FZiMXxR|@W]-T~$L%,&WKlzq|R3=`~DsAZfV
::7;z)CWk]a}oH@UE_omOuVp_8YI]><TFM,KzvYmp3VU~2#[P=kMmjYy?{0jVBm5~X-%XrEkTIV+*N_;aZFc$3IO=8Un#M6X=L[(@sRw!Bfw8BR;mo3-s>gUtVgvD_NjzJ<r
::Ttfpz)Tx3zHc>3(*&HL*3TBW!a1z&,^\)}hGEdF&er&]jKZJVV43*\!e/}l%|;1X\]K2rb{!SneeuuZvzc!HT`{5&v%5j9|h,s*NX<JihB^$+@L9@XSz4/a&A]!T3?[@O&
::Q<tr<4fa@yK\6$C*7w5n&{@>({2Iu6lOP#|Ak^z34qbCVJA75).K<Wx9{WX06VAl&/M~x\76H;an5#}o**w58xKm_tVV3tC_1wQ^we(nTgzEF=LDd7>6iUt!5kl/H%nV,`
::AV`z*3N+/`;P|,Ne#H0-QqAff[A4<Fa9xCMUnjICVU!dZ0/MPj7=HW_F|QpeXU%<PRVwWb(s,W1%UeqW3OfL?pjyBS1&^=Gx+1[,_q(%94yV}q#_<jjGiPbpS]8aJc.o~f
::[kr}0}^C?mVJD~u`Mt,_,/esgmC%`|?\kuU7ZW`fDe25P|?IxFK.CUEG=8|[e6gncMLj@@vFH2%GLI&j^Y5ynK,c2\m?pU6W!p%``;oh3IMjZ`0Ohk3-Em5A~mj/Avi&aC
::Uo,Krd<{$B1R[hRY88RpM{^h[}sXJW[?X6%f<kwFuTqlF!CG}G5/ZM\Ys26OHOqA0w$@z,c%Sv>AyhRtr]IGVm>40?3nE5jFa70|pM7x*OhBQ=MZ);X7!Cb!Ff{cdLaOX?
::iRx`p9xHIDH96U+AmKL5(Oi`q<iKR[+FY,%/K2hx9W~4gK##P4o?9zs~eVCG|m3-3tS91vvP4~$44-.G7S3+\W+J\v,,QeTg0d55!/a$;-?oJ#LqMX=u2Mi||?q%QjU$YV
::k~;7}WPkGuq=<Pf7-Oi3,V!ASIM6ytH4SD*8;uXj,AXY=2&0pvko|,^CHb>YNEW?%kw#a|KxCmASIk/l>VJ*Gke%9wSNaI6.}3*B|kp]s`d.^&f@^|O[GHA.{cRd%<t4@?
::j9VT_hA0i<v\$,PdOY%cUITzsgn\b\A/f9FwHUO#d`$#OOx1{(rdZp&ChEb(IT\=}1X{_p+?u$3I%)2ajxHQ9QlMEgg`Mu|qaUhH];EuhXNb[<=p6fXY&M\ThjPSz*aq63
::bt?$3uxqdqp/+t8I*6XjHukGrZ[$/&Pal6h|@uLEr}H52+Tu8-Nh~TWiG\}N),zu~mJop[P1VSFCo)ZT`\}c.<NYeM4NVKrico}Y67,TXQ8&WlZ0qK1Ci5.hjH^z/1FLHT
::5$4@D#la*XgL$$g|N#t&nyb#&k}(YTmcs0#Qav`Sh&P<D>_Y3WJ\98#8F,SdB]NodDcO}7Iz4it6;p~o43eIyztT/I-8x1cWAE%x7CY[]9,HjK5NXHD936&L;6$x>4d>)Q
::3yM;vxJk_Hd6;eJrDI}u78=x2OoroVBsMZSDz%9F7YWV[EGHx3]18aws6/VOjBFreW;_~FfV@BTf@O/vfOEhV2fYO*3mlpha3!=)<Zl\0qomLB-Q6mddQ!P<VM$g~S%Bu(
::y!3ba8?)C?7Z16D@=)SpOnniPblWMWa=,kJ*)^hG#jX?mch())Vg`Dax;Nw]wK~D,a%$T~{quLF*f*W$B5q0yn6oex_|W+?s=mslA{Wt_(?e%74_s6[!@[+(!{O!wHQ2<V
::%h3TxmfGiJAr>[_So@+b0]c2Ip^cLs}7=slMm|%]X*Usq?T79/\kRgSHdQ#r1$?&-u|AsP|ZQ7xXLwOXJ-/xUW<TY3qr~G`h[}c!jLpk\EGm(@Y<U&\gA5;JPpe\\Dnv$7
::uz|$Cf)&B<i}>cAG}NnMK#y,d({v2lK?M!0v/<}_TlvGU0HpQz7JS3oAv%?=Nre)WgFA*I_<@)E=UF)-bV-yWJLD/p;Wd{hAtUiwj]g~rN0a@i>gN$GV]x$Xmo+48TyJPK
::J}R^/E^?{~t3{0b!6`b`2lEH0T\v4e4D[L#r*a@@>_W!]Q/b2n^C)%#~HT!aSpy)gB&8J}b!v\XZWLb6t?eW<#z7i#\0Hhnui~mB5nYq6G;/8JZ#Th[z>=/`c3}x1G=y}L
::]=#d8q_ze}D&9-ltlY&O1ZyP&C9uG#!s}e,}B~sam7_ZMsQtiP2vcVE[@d9Uwyk2SG,u@LM9}@l%#w7QIa2&xx^?OdG}QPbJdOjk,cqc|uEFG\|Jp5_v5XBYZr9@d4UZz)
::ltc)$X%W-$o=qLtH86U-2?b,D)O,,*`*,Xo8>H<G6hS~%V-7~\IX9]`<1ikE8%!!rn(L+VTu<V)=2B@+_P~k}Lj;X{`%vvzacK&=jZVEboWO![?QGTPGC-%ZAJqiD]v({`
::sJk/c9B<+%70ZMMXP^Klt`>z|7vlI0,/V|?Oi~IL-JLE-DLH^IhqiMd!hY}h<uWO_5uVbIJO>D`gc6X/<EG!hVuU%$&ej8pccs(8>v-8&nFpMs~mB,f{Z3Bbvndz^[Pnk=
::(YwJ%btPnj6\Xxb46vzI?$9z9PN$<a/Mh922Fqe+`y3iGEWf,U@c3u+\7`}5A=B_fWM0>n_G,<!9=q}!UA%SwcC?|m6G-H_sj*b*bvv(3w(D%\,G2nsg;/el}\(m(gQSaf
::,~q~VBPowse5{VufNlp%e;0&7$12*r66(<>nQdIv_-HP1WQQu^d?&NLRm\!+s0ex<y%\5)]<?v(;!sVXc}|P`!q\>L_T4V)oUi7D[C}PhB=FEg+Gxz%o62l/`(KWx\;RVv
::-k_G8#0HjZ{j!ZIIe{qn\uTUy6w*?**BVqn$|-WDA=q5\Tbqke!4<fyXXwAn{B@wbCQW8cnh~sfM,RWaJ_9EhNtt>.B8k{*>e_<n)SOhd5BBY95GIU;6Q3x4\FuN9hx;Kk
::M;,qiVXQpIkMb95*ysq|IZT8;pHC,>0HsK!>i,.Vt!416P~V2YHVNg}!{XD^Pdv$R?wZ_IYnB]UXgM|%?5$e+fUMt<_qPKz2x0q0s6[\kth&uWVkYViR[]G4_oX/gjoYU.
::OAmGW$Ung=._|dR~IJ#g+RDp-KPhCl(_uh%*.n9ZY>b>4Yo+AE~qZ4H/.UjK}qs1SwT`B_&e[oeACZsr&%J_aZC-T%s1]6uq}P~g|/^H}YTc.V=<dL*^4(~daz#[.OjSFn
::dz,8*!U_xAk[]l3/ET\q*/w%09g6\K*@<YP-HW!yg7+Z(Kq9bnEZr}y\Y-u]Ra[RZ$>_+9j+1Ln-*N8D0}+Mm>}lNbY9YPY~T1rqYx_Ucw32QdFc^mW5CS88`~+%TmY~cM
::tJ[je@]8tCB2BMiPCv@\cBEhN#|-WdSU+7C7Ze1k`zqU6V2l=w$4b2pU/65b3L&B)Xp}jom11Xym/{NV_TNK2BUF0i$b,rHAKSDUX;\-d||h6%.On6[bhXQybRK\I4<<`M
::|80hB#n^AL|/0e/)kbHH*p{IEVwf=k##os+YUUZCP*U-iH`qS-Oez<}c9q]B}U12wd}wAfF8Zh0J;%0zuqS;d\cWep+OHnBSB5QuvxPY{pXXmFV0R&wHLYj|y#@8_VcVqt
::uAL<.;/Mc(D4a.p-BoVQ*-f=?I9r9WAWr}$Xb[gx@X93h<jC`A]!*y{IW2gOq=u(<i^Y%r(5Jaik59lp%|?*1rR5]cpi{&}zYvJ~20Ay|1fT-|TeMltMvil*O(^x2\)A{N
::nuv[*u[|->w{$09X7!S?m0N!hCF~=$,n6(xshiugouJ_A<{)@l0j{iG#;~1C]_.Xvkx*dU<<&C*USv&D3i;zX01n-f(H\0}9)=%i3N~d3mm}.]chqmE{V5iKn5v&-+rA2h
::y5ha~@RE.XSWc<sX3uz$k6Sa6RZO*f0~J3]\HaBK.lSzriKi.Gn|E_VpWdo8CY8n4b%=TY{>vg3&$&J%1`1`|M3!=+Y//K(e{X`&}yhcmi[!bGWG)w7B>f1Wr2-}@egzha
::1blV+|`(Et;IrXrqBshtvslt(\uY>u>Y@Zgg^_8_8,#N~}0Vy;]`+qGHx9$dd!.U>k9VCi6h8s~scG21rsdwxx&(*&6jz%(D`*&{l`4N1qqJSqD-Ag*l$%/!lS(qSHXAmb
::dpq/mpHvRcgaV|)>ZY982PiRl>q0.$*[T99gMN]Gqu|#Fvq{a%PBS~,qRX>Cu;=Q)v[gLh`#L1/sc^B*Z{]X9J-OBJ+)xz+6}Gv!\/K#~`=xl}RWhs,g1W6#)Pkm0ypg`R
::P[}irI#42L(L*WrHxp=!m._^T/W_8ae!+eC)y{*];pQ~L|s}BEeEtWEsPNi!3&YsT%<uNBAYcT>jHyS?SC~o9Ah^&JQhhuH\oL!I<Qqk$M;S(,70\fK^&O3VpGwA4MQv99
::P{Qn\ui9H?uQWt6}nj9&,cS$#ohA^6>_{k_0c[f4WXuU@M52=h|A@P<lv@_B4Jz?YCzg0NS(5g<Ylxjm|xCy$|>yM+OYPn;v^~?s~=&D6J+p,i+@?C6IYqQy])+hu-9H<K
::#rf%E$QVB(72#BTk6%{5X7KIxuocE]$su,^1mi>~6.tzsVL|1f\R;3;`iO^-hHELPTi|}j\}bERU[M3;ohDDCU@1T}HT6Llc5caqR`T4YPnCyEL8Ttw8CD|-!<>y^9^8so
::g-$L|f=?7I;N?e4+]Kx\[\8A}2NBI#U^6nSg9|_=p$csL(?3CAw[b5?xX%rOK9P#dO+od!}]-g;74jw(KR!X;rt1J<K~ha^s%5V3rh}xue\zD&xZS@8RGh*70IRbU%tL5W
::f2k(hY?dDeFh!;-mcQPF!~X%+%!eS-RH4$;{Wdat[%{cWj!]~r+fV8JClIBdZ[u#,@k(X}tz]0;BhL}s8#5>mG>b\W_oDktsJ|byD%0H?8,0~p>mF)bVD1pD%XM&>nYheb
::?R?VS;Bc]+}k]zl_M{[sGc_3?sz0KULrO{kQc(\[eDnM@iQcTokn3c%ehf|ss>=onL.WZG&\)&&_SKqiU@_SsU<DY.<mi7FYdid>1qwL2HlcUxqq`[lQy*N{gAZCTR`;1b
::IQ3ZuG[Lw#Mwl?ZPdbhtCVou)A3C6al|Yy$C6<rh~n8Io~DF}r`{|<D1?c,?pf8aT@o$L3-$zS},&pSiqzC4{I&z54bS^pw-^26{!\AP+{t%]@x}m06l3Y9!?llQF,%<z<
::I8&7o>DbgZf}xHW^j]N2F)ep%hA*_=7{S>O]Q1?;[`!+mhZG3eva4;G96Li`Xx(r?2kq0E3eu^>tLlIZ+{=w*]pw,k-ef;BOpR(zM8>wS2C3qV9ja2Ct&KX[~i/3Fj-BrT
::au`OK3E%}2g}Q=b-l\Pr(io\2Q^<xPX5v-1oIE>HIW01]6[I{mK$QZ,-/<$_,Jeg?k{^wB>a8#5j<n`r>-\A@j}t&|`]qekPOD2Fx)QVP.z7H1.i}<4#nXN>($vT62Fe(C
::8wcV<~mR3))aH,->sne(OcLmV|Il!3Z0]OFpl@1gqR>!zW%fjo%*yCzbZ{P|MWVj_9i97x+=xH7SSH0?wUKD<VT{GrQ,uG$r._iY;_tH+kKZ[W,a9=5rw~,I_rBP+g^ls@
::q)r2\?81./3,fR>K.@RtR/$,jdj6lYFy&%E|XkV4PKal|xoaw)Mi|wVNx3D{?Cvb\6#moai7CHNAech1626VZ#-~,)/JziVb]As%s~@rsd;dpOPO.t;eUjrn;2b<,^7.#*
::L2P!ZU)RD7Q@p\;.vOAqH8PU?msty\k@~MK^_^_JJ{PQWqw{QzH[gQRV(V|2BdM(![dFRsEu!B;MA!VO>p,>Ng!{(oIy[]flEwIThDVn_z!&{{4\\%N?odo|A-VZA!hX[h
::S)O[NRDiV?x2Oq,2Cvhr5O9f+Rf\T*~<&jMwq0_O>%zOg\mL}IwyjmK{+*X&TYU<_GdY_58VKTjjBY$iDTyj_WR<tAx>?38A$?{#kO*Pta~1R;>6pdX4gwMqtD]&h6$uN#
::>&r3W-O.r]CMaU<>DPU/ja|To@bYm-4&$jcn*Yq<;vS(oX56FbIRc+e8@[y]znJ)X4oe=G]-s_vdXALT\X]`0BW!jxKd=bGG$7}E^|6jv`ib2vV*-#2B8N%%$3Sg,%C$!W
::x$F-lm{;mh6;&\{ay)5QpiOZj_k+rxyLe(vh6e-x=4fQ#w-6\j`-|vm4]Zz^Dl4%vFUopGNz%w*$M_%Ht>{/v{rtnur*i|C3M5DPIf<e|jR?L.I50,qKCbd|_GN(PlFglZ
::~!y^l]M_lJeZpe]r1@YC!@L{<@H?6FUr+3bn<@.7?{+@<ML26S`]*1RarkC{Lc~\Qw#0*3d\Az/ch3~1Jqe6\\OrGxm&t8E>}c#s?4lV8(qgu>72S=K;07(-qhMLSH]UP,
::G_;#kzlpU{K-2xNtl#-O@fA^d4\T0z.j!YCpx4UkIBHl{b@!.cOhX(<ws@~7;~4<X~i+0!4~^}%!hM@8o(_H\_@T!FtBeRJ<j2a#7nvHFDD01iRmkf((vE5S9wk/7DW}p1
::=1_gQNxD>U2*yV9E%h7!j@K9U5W/yJ.hFO?Xo42PgCgep8Q-b+bGzP>q6&^*j([0>LuYxU\C57`]>%ux6?(xd|@A2T|6UXcMQ+L%Ls7BKmY@kJEo)TXZPOlCno/X36QnJh
::{^),LG;s{^O=3x[na8+z8zd.}XYc)X{2}MXBSRgU]W#bCY(_nI<R8M,D@3cnfPJ~UEyKvCMg[KNM3IA`2XzV.Kd[)BmzBM>O%qtq6jO$.\1QCsG3t?GqenZ],E$1iDCRM#
::vv^Z*erK-=UZ.m^qG{jWWA,<FT[(b63wBIelUJARCp$&w=/Ez1_HBsFSGY.PIQS/4doVZX\@e?W-RPr}wI5Z,&Z`mDJS>{KKUf/Y83a+J!5P(tq-_gcogCoE(Mp;TVof@F
::(+]^yzZZHgB6f^E(\#GtNmis.4jhdL72huDr_yi``C-i@JI[)XZRXkI$>=rz3^C,a-U7}M|/|(?GdC*8`tBQ8DA.]&{f<JI&*#tTbif!hwI{gd<}MB_UQ@d|\Hxcmvr,ll
::WZEi[1]x0|g_hJb]%&XXB8l-+3d$#]`nR$>*Y8i%?7,c0EUvr/a;7CysQ@}%EcO2D++/|RlZ{;i4a.z@<z79gQ7k(nhv^Y$8RV$\vqz+&fycr&-&j)@&{pK!hWAfG3SJz|
::nAg8DkUyUs3|lIS^Hn!_Z3wF7%KN&J1wp%&d`\u!nK#9G<oz+ysYS945Nz+fVc9r;`^jH#?mP(a7N7/@[J9a.|[;lqnM#M]LhU)y}O^)?iTiST#0>X\fg{bo83R1x{N5F?
::[bvdkRtNnQ_KXUHYUhHtV}xl`_X#=p5`5H-;m/r[/zUH1Qw()L1[*o3>zq!<k~U|`sL=iT{EEQ<X`4<4xrx+c_Dnd<VU8(+0pTmytv=odC0X%kLzTFZ)-4/1YmX8YEUOr`
::7R|vAzNsL;@AU,Y|YI9?h6E2jVrN0#2R.Xq*@[BVpU5n\JNmv@&;4544w*.2`ylnv*Xs;kr97HNepHE(X8_#\8X2gWvv[O#q?Q3IGrX^GY^8rotXikuD>-ec8U!or4>Y~|
::o6>^$m^!NY#e)HV|bA(zrm@s+kH+BkXx~/\hpnl]7vK`;_6y)}]LRrOZ-J8n==eiSBaN!wHphvHyzs6=L#B2r^ONBEHs-SDVUK\R%oiq_E;rHSL^qv$$Y5bY+r!%h=>-9!
::008`w;7`x0-pfF~v3$mcwE$7?ZLqHr5D5TjZGD*DGWrK|yLsnD;dV+T`ndIF|aKRw=4`=J4#3R$RcWZB,<t@J%LMxf\&%>[zT;64Cp#pr!B;+%;N+#5a94O;a\/TzO$tL/
::v{BQS9jvybmGv(eBz+!V#fN=@-5!i10^G/5aP9HH8@_fpJ&#}U-HY/,TzQv*`Mbis\d*&aFsm*i.p!=k-2pzx-GZsdw4QY7eR;)GsV\N5X5X5y.TA,5Al<6zJ(xaQFSH!h
::8UN_hyn1~Mv^\.15Nt2Oo/CH,s#NNf8\{e4h{J/41;/&~yB!kThE-O@vi`GCk{[(-8xr-X/=Jc#3(4O5]kFLRxN^+}xM5OA7]_WtD]_?du<qaLLOF{Am1u$4DL@[TYON.L
::Tlq+XJf\/w6}$V/gAMLu17;=CD~t/^MrmVfd^G2b,LCNKT<f}V6TX(YW(]Sy\7*q@A=w^;>WR(Ja|}G07O)<~0,jbwf0t#l+[QPt7{&5MV)f?{#>`8v%tIT;_%\|k_(M(3
::AJVttBQcEYZ`gL]1*0/2OPjU#.TWg0^S+`/FdH;^~vGWUR$uL(i9umtRpb++-K.oPos%\$t8{Vinw-\UN]lna<1)#akrDW`LsTO)TmIkyu<lX~(7bcurwvlkf2Jk,i{lQT
::dX&;&6*eN)6Xv!@lkQQYd+!Vx-rZh+gJFMolH!p1*<LAr-)GW3\7a$??0@?Am_M]1/=Z\X+UMDI7cfhZTA]$_*1?m[@XTSCLbk-F5ZbbMcbO9J/)MoBN-,8t=VL1XoMdB1
::GUgqM[?a><coLWO95e{w_VHpQ-R`]~9rAiNyI5|iC[Qt>sle1X>]>JGsrM4P\Tu4N|R^4k|Np|]E+CP&cA!QMq7T>%dmanK~1q8;##R6+Y2OXzi7yzll}`uRRM6=(V*1?Y
::ecMv!<|I\)^oKJGiE-*Z?Qj6SClH*`nG.^>sd\9!AtW|p!,Tqd3GaLj1+l`S36e\J=Wh2Or{Y9;^YvJ>_,(fh8O[^6F7z<Pre|wUpXdeynr^}3MTv)KDjI_r1s^j+k3dtd
::Ym+[zf0U.b0oBQu|O&,9`3.WP`5O\?faZ~a`rp2aJdWSf?,>a\<RRHcztA-pA^QXR_u\&N\YoYWJhfctHLnaUk)hLrx?.k=!*}d+gZTK.o21X&`x2J@t>Pt20-/a=7vu!<
::&rMin0^o]00Sy~L`%T_?b#yQV%`~Q{[vn*O4Yx3OJwT5H{%M4yfkmWV/%B]#}fk9WZ<nB?|&ti^2%\R2..!`WV-|sG;pik3|i<Bv[Ia)Br_#GkO7g4EV^qOn)Rc_<mB=FI
::nT{X&RNe;G=.QKYu$/TnRo/KY*NU\HKe=ju8[}`0&)crrd]HF0^ltn~/w{T?H(GIfH{#DRoo}<;Ih\2hPN4;,h+qmUpkam9bH/am*SZoo$!(uW@yz`M*uAhZ{$C#_{pID5
::i)8*e3jYDY00lZXP=\f3p72Pq<Y9U?V293?9q9tKVI)V0xg%V;/0R7R|IgMlTZ7pf_t79l&@\V81Y^!03#g3F4h9Pf](J770}r6,~,#E#3oCB,Y~wt>4%k%0`q+1R!4Wf%
::R^=Nx!Uzzl\qeoyre@{KEfF4~=cZYR-tax=Dr)ZlyA=j_2evAKM@NCM#En+t}owg4Z_HVU)$X69<*D<O[,rfPz*%ry=D%yEd7IeYnpc8j=y^LkRF!8y!rOP]R_Sj#HG#C!
::Q=(g.Uk|o(ew?4IRA#~CSB?fOsg^KaYbe!(WyvUW%E%0|yE}9MB?xg+G&[]W<0$)Jk9Cn@6^9k)pgH9mbH}Dq*t&b,%AEU|?FGg5Zc5tV}Ps1zYySVSIxB#]hoe50?*@7H
::8KI{O)#{)z{>L(+V^K=pT_/1AY<cw--Md=F8=kJA4jC`xpG&Q^*LE~qup<{R!j^iz!a}tWSkOP+,8h/2Qf>zAlPQ_v<9)otQ*F-9pJx1jOeHJ@,T0P\^@u>Pl*F]R|@<5E
::!;i1(d#y=^LKyhH!&GlxO^_Lop[xKO_OmOL#V39FdY3b-ep,imEI~78-%yJ#Mct~Vm.KTXer@JSJj^wF`z,qa,pfN6K0a2i5MtBzxf>`Ne9W}Cs93L=_o#9%(96{zHs_T!
::{#SZ\PBH@F;@D,cGgz4ST+08/1wTM9fwr=O<YJF*zaL&<hMb5\HQ}&-P7Io0FQ}XE\{{i+?I|Rt+_F)_@Oe*EmZn+I|tE)vp[v~][)\/=h4>F}blb>U*Xn@5M8;?mUm\pj
::lW$W*y3am\3rv7|W.|mjk=nmUPRq;`n%k!Fdm\`][mzpm41|b&?w>hU3RdF=k~GTh*Jvgh_AnV;cUl#9WdF3DITu!YuC\x%k-)zz&@V-q#~{y-_=Qz3)UUGh0+(LPUT-sC
::;Tjaw}/G3]B+2NLg7moVv48<oxqVl=GI5C,Flr|I4pbGSVS&$|+ny.S}1dO/izfT&}_t&(~lw7?YSDkJm<F4~[]|TC&jT[L$Ja6Zbx;ML1)FMtZVYH<Q&^vFUWU$XxroFr
::+SJi-sVMxmRO+,_VJT,sfO[tKSi<HEG)\*6;vz5>K&&kXW\~v]5]S7kEt)V}5vScp}Md/3.S}`Y>*Sn3%WlmU-6)qMnH;*a}Bm5g|V*zO3XEJ*9AsWt;1of`_Uw#M!e#Ta
::xnelr7Tj#dgdx*rB>(]yU=p!^Bh+SKo@b]]+ZX/>!WIeG>}[i;`WhdrP!dZp57&X|7T6S_wf0L8ypqIA^8pnG<8@{ApOv(i<*L-WHK-bN@dq2p0*FYrw,s4]L[MmQ2$q@2
::C+|bgwU*l82d|tF$tT-GjqV[c;a^!(TyPRAh299H1K3tqF/)qzHR%JDh!;!6V+k+;SC6M{+NRO-#Z\Wt$.0~?D52yq!}t[VVc|N8/65oLrly4x3n&6e=Rl^h_=m=1GiHK<
::t<jl(xIteF\HOf|{{>&vnCM?mJA#(e=P-Nu2wpc\)`jl>&Qrl^T5TN/NQ_R|{Z+ecGe/=8/^jrrKnOL<aR1inLiv`)5,?)FKMT3m,X66zA6~qNlJhc`wAFD0|HT>x?.9p/
::\|E6!D+$X@vc41m_\e5L+x~sZBcY/B{34at_9HeLYQ7^]GKt>{}.ly<k>v&%K27c4Qz8X0o`0os,LvzzvS?4}}U>ju2/;e2[&_Z&%**{%cGhOdDFgOxqi4~c0F/0H7y$k_
::ofgP`YSfgC~N0su$!QflQeq)D7@BZ`>KXk?V2KI[@/88,pn-q21Y975K2gCB+HHE<rp]t4VUlt(_Ei[|UcO6?q7rSHUv%2)45f.(Q%`0KIhL0MS|\63_+qImK2P!dD\@!L
::Ve{-%CN!cJP}qfYu,o^s^t9UY?>me^_h=r$`[2-I3Ojm_\eq[gWc?XO3DgT(C#G|Wouy|So2oC.UHN8Ci$q=5i[J?no}vUlN//heNC4~oiYFp\8Uw[d)3]u~Xz=fc2^,(J
::{(\kUEf;SJdA_0;d/0(;]}KrZ*-Z[K\.!C]kae*tPQ[HA\G<.~\,YvcT&cQhr5Z.ES)QvlIm=,x|Pw_8{gfL6qu02bZwWS/KT9j<K8!B\*JiVKLTSG)mQ+UUiY>~{Ohm,i
::[_nD;RJObb/0{vfP;n-0w9c*oyv%HU,LX<i=~]EXMbFyU!^A]H>T89Ng%kvUxfzA@0Kr&l#u]Ae~^y@9z%`P8TKoVByVuOv%`Ts$EnC1rA.56Y913pneUJJUVm27U(.Kq&
::~Vr=K-Ux]jTAaXp?)<\)C*ss0%UVQs_1!3QKi3PGYqZs6j5hKsJfA?Ux{<0%\&mr0k/VFVjU`3(*LwBay#f}d,+/8lYtu^$@I#<fn0Xxx7HDab2v_OZ-WY*RXjx|OJ>b&S
::@|=y4{d}4hAj=Z^s_x];#,QJmakr%9X6zET3IWm.*E~)5x~nqx$}O(HO8A(kLGiv?NGo4a`7LPC1x-4?T474OUR,C(kvCgb4ee=F/^MJ{x|jyVs$/hyRIxvAiaj\LTQt~~
::&d/MaDfzfWkMr-xk.PhD^iKVg#q6eAb\k)Tap-ybZ<kV.t>xf*r].xL1fPVky>YDRiIOX3mKz(iD7T?J/`[Zo,pu3q}$;K9ZV4q^U792@&Wi?|HTY`R-doI<J(\l#6{)9Z
::KFL#A/;;NHn_D*-?1&$WBBzS|CP!.wL/+*lsJ}t@ppXp6DhwbEG]/*{=8+WlbiY||#N#CEBFc&&!C+@P(Z=OuGouk`$h0M}j*Ybw,x8,^Ao{OxD$_-rc~dgO{g/4A02n.%
::kU*5r3vcXtVxQZk?Ejy_)f_j{@Du,!9OxWRtsi#nN^P[kGc|~,D@,ortb<K?3(Vp,iss&zI\pd8Eq/9Dgzf)DY,^50}OZ-iL*8P9O]n5T%N<a`HA#jARiO{g_!6]La6/r-
::lWTE{gCGg\i%DzJ#,0f}Fi3X7R4[LOEBN6Z87A(P3ULv.wu1@Uu~hn}3H!A/B3z0N<f+eP3~r>ghYVb2B$+^w1?TRLoC02hZAm!3MZ~wby4+q$9ZXhLmSlKM|{VHrP^~Jk
::?3WnSz2=1/FnvQoI]}B(y[MBVjh@q`g1)xAF>;V9B%DY,rwKz<1s!?*G^uc5u$K73BHK~ok6xRH;>,Jx%pMz3uN%Lbj?2p*!t<b+hJ($D,?X<]>qi<57Kw~1\*RMyABR%T
::{UOp0.~N4>;U;lGK`9St?0OaVyzs!5SPRzJ5llh8>J6YVb6U.i0#bnC%W&^B?EX)%T7nwczvfqWRJQFSw4Dw~[z/lJRY;OHK3+zqpm/G,p-(4mtrN,-H}QDij)VeDr03a]
::uXmp3Y*$W!5Qqt7%W=no>wwD+%7~dJm)l6g-f-D\>d%jOK}/DV~8C9lk\um7G*z){aLep$&PQ}67=We6A\];p5=EeG$|7tmsj`^-L;2pT5HaS`ImtTnKSQ3%<LKhR]+*.m
::kNVK3$ybYw0?RhH]<Xv5@Soluqf6.2]R|rwWuA}{6G3so6V$@-L}wA{+9#>I/K`,)Qv{x?jS)\}^aS-jn95>gEM,wNnP@?d)9bTvX}=D(uMSXAjP=j?/{}_f8xvwC@}#o$
::@n{%f1fAcgHVz$XeZlJ4M9#RW=.YK|]q*)z&+}-=^EdT^5&__!G[GG[xyi[&}.$|Ou%pF<j#mSrjIq>99r&#S2/oAz(X>An84KyFUrz>+GCzWX[kA[k#K1%,Y=*rmIdXEH
::F*3rUcB2>7gXoJ/RMoq~)xkF9H$,@;}40hl<G;Izj6T&b1;w+(}QV6{`G5x;tywMSx5s]C~v+>E{L?Bx`GLR=PY&D,\wzSR#-Cz.0g)+vQ}n)F9Hii(Tm+Zm,x5_hcm{Ck
::]xJS.jWRa2h-`F`bPV7ikyn-]MV}O8klV.S8kvk,Fg!8^lrAphcf2#I9N*Fj)9%P{az/cY>[ZVupHITQd7ZwuG;z`uJ3i@FbIO*b@#vk?S%dxwOC_s6WK]Q7+be^Sq6@{t
::as8k{<0]mERr;V@\Q9<7w1IFSWw@/]X8B\Do~K>Q9npT6~bL*Wza@E|,#[QQ_EHb}/zlk+5-un/5,Len>7VDGE,zd*_{m;;Ydtzd<Xnmp&*6%BfKdhkv;fAE5S}LDeYLit
::ah+MN/UKx#RN]j-\>F1@vjHRsbfC,/B~3I{KIVKW\CB[WB>xL(XKMW;-QQwKR8_X#-1gtmnNy{$;~}LqX]xsq?9<PeTwzN(&sX5h@}4}#\D}xxhXS[{=7NP;H|*ZWUPdDp
::(n8lYW?uaf(j~[p0xOaPRdI*_We!<.{S7_-c/nve(vzte].]GF|]-L[w1z,ymR.7@{2*j%|kKS76x4c;rW~P4R?xf~`G8R1P<s3`f6/Vl,yb+(`Gm4qw@T)y5Xpr.l8Hrn
::kd3Z/s_xJO8AOn=vG8$y(4WaC3]jf#T-w6PSu_zkXq[/+S>OMY6GnU0CySRq^_L`3-l]u,6\YOta(x87H~%#YV6OCyaS=}47A)2amcJ3}$\\stpn$Up*_OS6-|zVJk=c//
::8?wc=9r|Kj[XNgba=DiER{|Gjs?j$p`=,wPs!uM&<|<Nt`)=Wxz<mlAX-(LTw$>W4$=Peq,Yj&+6m[tH?K*puKaWz`>U\Vq|(M@LPj)]>&W-u6W/P2+C.VvV_M0DjxF]aK
::7[Dx$CJsPeTtka2ZL;Om\9.II=MN7Ym|FuUa5]1{%@Bsh6\XHaXH4JxU$L]!/z02&A]^7YAAD-ITlYx325hMd*Nrxf];f?~B\XpL4|E?&}@WS==VUf$$f}>OCmVA~W4inw
::Bmegn,U1@x-=FUl?T?gzc|\G6fzc5QekI]pR*{kKcUU8}BlNYHg~1OQu4\Kg0|l29OJ]%nOnSG2>Y3SeW0X9$WE{uFDpmZ]ryYkxQ64;?|~R9i#1P<pei1Cklzu/qdtf;C
::3SvG2Dz}SYbtM1$[)Z6?|h09j#Kt1rfUfpEcX|)=(a!=#iieq{]N0K%6Kl,S7~(Ezo3D03-kJTrcW*Cziyd?1@NoqdOz>.nui6bm4qkfV(7FmR^]Nqzxj4KqrC-f_SQ3%A
::fRH_Sw`/mKe#QPVz@NwhQ]6703my`~XQl3+-z6OP|F,sLhGkbUnaEee,Ft7NroW%h1koOgL,bE27=qe/)&.x]Dx@3;T35)AxJ~/ovLv}ax)<d``BS_L]yoNd3xVGPM*-*q
::S-1|dfnW<*mq2x)a8MCXv-9_6TNiA@W|t}^z)]sXqC?!\tBn<rq)%zvP=vrsX0U0D-s7U=5(Ot![bKH9_nF=r`J[LN#NCD81zI*_Crg6&CN&]0P!4I^bwMno8]`26))-0r
::w]j~3//h}Cs{B%}BAk%gdE5d}n27Xy=[NEZtNTp9o}ukxc1r-_.;p^#shgWf]B+MR~-GC>(?yXhvB8?g54e}%GT%<?gc})576A6yX{Hmp?BY)^+,,*ua[ipaS`y*lutjb6
::R{NMf+*0J$y8aC_Fxub))7?wlpNO`j#DZ!;@1?*_5^|!nnfkSge8yddgP@CxZ+J!0?tA%ATz6Zjy[>ty#M-|~E5]okZeOvs]_yeQt)b]WJ0RSR_Tm20DbP#-Wfy@&}39zt
::#2|XgpqG<~v~c?6lU4]ZsuhI^~llg|IW4K(+#BzZmS/ZvbD)2O](dDeX7QT*^KP(EAK!2MyMzFVnOzy^}{;gAL[0eN&#cDNMKJJJ`HAm8H0~qKE2H&/v,1<_$gTgmV|`r0
::cLpZ<hC.l5qc5Z.@qDO|P=jQ2MKJ8FYh6v47hm189h3;*.|878VA@2nUaQ3nPL9J*G!g{<y]7_t|o=yj`|%Lxfu)`$q`av<ts/lD/T;Phja!>j}(Jy1&%VoR)q7l_XbSc1
::W,oZ@!`7?8DCGGS;7doLupoNPs&!+{yKV>gx82E<Pu!Wz.Q.|FjiV@;DNt|-rK#b/^O^%Jbv[$y)qWx-|u<DU[XMy_?p&UBg1++KRe{]|&A>r_SdJ.5!mrDo.`MIv]H,>;
::9QKXZDz2,(%;5sIg}5|Bam`cO0i_FIQ9L]Eh@7vwRSe?RieLBG&NV)75RN]o(C|hUNtYL$Ibd`M0O/f[Q&3-|YNRunG#*vC_3NA@r0_1z`@T_sY1BO3/|_PD^ZiuvX0H[U
::#p8TCr<&$Sn-]]n)ewL{xN03\JLi&k_UoQAw45W+db\B[qraByIM8iNjoK..rdAZH7gqVyPT<2,(BQ=QG99ZV?AH!D&8[`Pet\5)HXFxt&egqu~!f,dYn<FEU/Xz@ED\Dp
::daQe47Q,u}226~3a$HlqTt-Q2,}3I95mT7?k<{$L$0t-<rf_cIH#CK1bKLgDNt=nSh]P^ri7vR{$(>l[#=vHNOVFT(e}RShYd`(`4rO;?2s)..aWx\P;V~k,=stVcK8X}9
::_-d<<oVgpkO;3z)L2?4f\i\-m]BdU)Ei]9OkO|h+DGXsrty!!Gq*UUN`u$KP)tT&6n8bRU_Y<Ku{=`T9Og=Y_[xdN].R#q+\3|QFreI%~_o0g<oe8a\~hr2@9}Ou,HRfHR
::A+%HBp2?vHw&BBBB[ot\eNZ~Nl?VD+r@-@OMuP(^ynJ<B*f!RO}O5K!zEV!k?jQ?_3I>Q;wJ[5,95JM/(\t8/}Df;Apc;br8~r&Q;LerP$1^{]Yr3dI#,Fjisx9^9?fmi&
::^>x,;|wgC{!t2[`QLY#Fh)udJ6+I,k>&k(<xeg0ZEU@wH8U,>M>HNPatJcZc#Z4YcRie/U[zPdGm?L`3BB7*8i~op/3-;wiM)(-3E>H~jQ(i-8eRYkx{.H~SKWCsz^(zvU
::gGUuz@e9gP.vWu-OP`WMmZhr>dG2SZGJzo^H(o?oGT*eMAHt1B!>o4!CqXgIS;$Aqj<3iaI%&}VvLSEr<*oIG1>ZaWL2eQ>bdH`Okxp.EfTB,k?M>,oQK6f2\x=VlH}l3Y
::+3GDQy6C_D&X)y_]R$*Yk[#rRPwm{d{/PTZL@~`m%FL$&~Fc,Z8(\rvE`_XfEsrA?gx(WAK.mEtoh`|gP^0pmTWuE(>m2,8m.=guxK2#n3Kfki]_.SD0)z3GDqc!N{+cN%
::~RjawL/fF/ofmo8M2M]dVAG%@4_t@HMgpM>jTE87nGNR-{0i{nuo7%b#1#AO1tgFDHTo^KDkL=~T_zFdY3hACcLg5yB!~YUydy)ZF=Wd5D&`_)s0w*hyp<7xR@dnO,i/lb
::UrI7Q~p7{!|-t8U7Z;RD-$n].V#?1%[?zI`qgy#;EMqqlCK}f5J@QGiT}7vQRt@)xL{m,~i5eNxz_({enx8Ey4U!}2K=Y8.8%E+_[+O{jM8tY*SJHFzv-#Oe#~S~;.^|lO
::;|B}%^i\q$-|UFm7I>zv3}1t5ITa/fsH@(9rGps*2#F%;96r<=T8v^,*L_#),*bOnH_4n*_R^OXVtS4C>IhCtY*Q74E+(!a9~-\&r=phP56KqUrlvL`61@l7sywui~}-8+
::/4s5Am&PRgCESE%]bQE;k(>{{eVMQ#O1J7}#qcTPH,T]%O8`-ipmXDwLDk0zR/Q#;P$nt$(s[R\Zn5K>g9P=#tRqZT1!$<2+R_f6%5W@xQkweF}y=TL<*/J|HTVU6hruKZ
::@YxY3GPA{Bg&PlqB4lv45$ak\]TiT#1wTn+1-D\m+(wTe5R\(evbUc|0.rzR`Fh8/T-I)!dL;@Uhn@BXT_mDC}dHCD=fSmIZe@V;lC?;g%/=Fv`6ls&cRZfH.L<7>/#5t\
::Sdiwo)?c(dp1AkPZe04sVxR1ixh/mtS{NAU/Bqq]-UJ@5MTI<0.g6M4^9,u}4{EG,Q^ALLP\Ep5zzqwEmS4VO!|NOWj0y^$M}4kWd;gSd>i6gt[p##ffJECO[Ht}<o](m6
::9YYve.7&SaY1XyD`5)OMprNb4ksCpE%$kPt4!WA)VMM/6K*</9Nal&c0)l52go<\Zt,h^]X?oEjQ6A#o*UD1K-Gc0f?]y`f&SoRjRqWzQyeXP]|pXG#eED=g{MwSdwUq[&
::D^BDbwj]8,Wd%d;|AL>l3!D+[TR>\3kBO%p[NSxwiAX=|GGgWjCXo|#.,x1{WqWQ(X73w9V1,)<ABjcxSmJa#F$-{n%$G;4K7,p(Wt}O=9QhTtd$NR[9,+`t,#L0CYQ@nr
::PKd8?X3gUs2KB,}c)<5O|@RNsfK1f~CBxuKP#,sD=,w{9*3)ccS1?`&0v*_k<+j[_kChRsBQlZA9^w$Dwpp*h3[jBa&k{I;hlPEH~!|,NQ2=c1I+5,|+#7CJgJm\O+$pM}
::3oDS]pVa8_&Wtje)TZV<LZx![s/+,l3jx!7,4E]Ox2(ny|XXx7SgF(!e8QYHds0+DV);))=\7JZq4U?$pUs/q{IEd[}@>iW]k7mn),<|>]..xHYL$aUb^_&c.)FS^^&r|v
::`@rcz.Y=}cX3M1%7PN#oQ~7!C}DCU|h842]w@tO]]b#_(S2twZCHY@93Q]j*AVbI8_/@ie&?yyU^-z[?)teZu<c3i/f[w=,)`65sB&RKh)?PrG<x/(>?`<-%K0r2|ockPt
::426~d3)LHw{mc@C<KUs0<U%&t[zDZyH6iij|3P65ao\z0^AnEP&Pl!{`./CVndT2et.{>Af0[/^1<P{eeX_F#EfyeoJ&h$M+33D{IGQ#B2?SI9-xqU|ZkbWhVCk%yhG{cb
::Oa<pi?|rA,_hPg)IVWu|f3q~Dr_qe\BR1&V(lm?P@M}7pMbGdC}dnWUtK~AV\R)c8*]=[F>qr7[x#1i+w84bzT=lRO6kV\N}6iq[=Fwg&V>yCKHSuGVJ4doVs1YYmF&ZnS
::2^kYR2=}xvptSp?1+,HaqIq>mEabM0awz3flw7aV{I4LSB.qoQNt1isc$3&U&Q.-Hal`^+qJZ86oHv6T`[(H>5,@ZDcAlUq{`l3z=\}rX0z@T<U&dAZQ/ubm=A)^R{Ofih
::5%5+)ZweS@%^)FSh{)JZpsvr}hK}-5|I\=SAQ~B]U~*iExlUwT@*a]^MP/Ix$K_8.w*9!``Md@-<dkv-%oE{YKL,61MWO)KMC=q!fLx/dC-6I{\\.`dm6gm=m8iKQ_aJk$
::}DF#&8#bMnv$`2@M&KD5PR$)<D$/*EcRIm=qdgs!OHup`c@=}?$9G\57;_[2ZM*eGgpCa<MZ!!5Y/u;zT$CDbr70i{ey[`-k$lfNKvxy[a0qjSc2h->v47v8Z`e9Pm>pAc
::e<\_Lub]EwRT52z6)`*F<rxYQ{X>7u&-%;qU@7vpwokT=IR+;OB%$Wjsq4>PzYPxLpe!YzFIo[Vj$U#kv2bNs\q>|l04Oz.qU!vW~RtwkSe`g!){%IB77uaG_3?fV%\H=y
::;P&-E8p*f`XEPX+NJz8ZSa>Pm?hDQG!QxnlDuvT)7KRmS;Qy?h=?3N46HC@C.~{s1Q6jGw\3k5He3$Sy5[IDx}0aQDNnVRi!A<wLrVQUW~kjCMZ}D%!)q^.C_T[L\3xl7G
::Ef,!y1S42QH;iB^p&ZX.bINQO?(@0;-Ph%HKH}yN7j3][8[NzulOe-=P)@OjHQ,U@o`rXDlndoM2a8vFo7~;Nn!,`LLptuFo9BUv-uZA0Cox[Ey&-[W>%s|#*mde;xiBr8
::\4.i;u9^3O/wh^{*^vR0[x;JN*Q@fv+>Jyb$knwZJ`@u,p?Bfp!=Y2m_Xj1Rg70VhHU_yNrN$Mvd]bJLmZ|@_98``9|&_%Iowh-vqA>#@w|i{P^8_^JjU[x[`{9wg!6Wsc
::dQmv#(*.VIE6M4M@v`xAxTg0ovj+-EUq-El*PJ3m1~yFm`+E>|8Pnm+M?057-8wtI>@i$VkHpz}(#^5>R*u|XM,E;lDHm\Z(zb&D8upY]32V@-9Bcce;Re2T5R~B+SYkrl
::S+ZXccK<M@m)OgNmMx;NYXCZyn=@2\,^+xF%SQ)bWT|)-vK1j(KRO}F$&f,Gf@]aEj}Zp.?wb3_&k?8(Mzs3JDLz.V+}Ap_o9-FdE%]Qy-(n^o~2$6uuv!O@geUspARp-f
::bVPJpch!,-;onBS~HafxB2tVi=by`ltXGA`2;ul(+Cd8urpvFx]!{j!<BWCOocaTps@W.O%2_XTT`>}t19PGh~biHEwL07u+OQFkX@hfisQ/^m7)z-hSH)[O>&aasNo@\+
::!dS4zG+z<w,=A25~>`BGUx6SuKd76U7U%}?ZqHij%5dObRg&k?kxyz8pO3H|Fwxj{FLC]x1YY6LCs,)ec{rKgA8H<Tv17f?K+8)bT&w}v{vdj3BpVaP+hR_sAxhExkV#O0
::!(FABb_SGpzCIXJJ{25#=6c/`EW36$+{fOBv`69{hk?+td,s3G-<-L6A(L2lBvY%MSVmHn?lEM6/yCj[\lV#>f85xP1mW`Trp*7`}WlyvX6JkNfGh=gR/r#K8jRojq!E|d
::HH*Q(LR|b+#5`&IimFa;xZUb8<!nw61>~2Z2vn@ss$LHb[X{1zR1vvCAxcZmK8Y]~k=fFP|(5Z1`l,A(Nt[hbWRRWQ~ezZgk6xT3r$0!;*W|wPPZ}~qR%awjEFPghG7uJg
::X_5{Q9^<&{$V|z?ydXEScT!p_F,yC?VWtepzbm@)L*ID+<Feoyqk#r+.{s[5)VY#J0uu3Is7(+A2)m9Z&s\+%2#sJYri`TgnH~-.irX>n-i6&gm)cBK)M|)nLJ92hkZ[dZ
::3Yvp1E8,`BR\&(=c8Itg}~L%*IS/SFg/]V%nPNUq\9+OM00y<3{5N|~q{I%Y6=n#>VpiTB7j=Z[JaE}cKc#x7Cd~l`MAm2M[WzR^55%U_Z$|ngC1pn!y>P!Vmp=4K`sqG.
::eoQ}UGhNOhKnar^>ahHmUEU`Hkf+H{mZQShD\=~9cDJ9LO&Qw,#`o|Hwn-Pa~g-JWU-YdL}}{kgCNS){H3qvXBPEze~*}?z]n?(+C&FLLrV]s]awc%p<WfNPqp{02D_&U3
::~mK]sM?eW/V-!AlZlN<aH}]eZ?lya&1u1?o/~K%`i8Aw6HfT,JXs}%p~pbuGM6r+ns-(}wT*J~(JOtj}Hp1+u5PXJRl~.CS{Bj>QXXc!VmTBJ@5CY~LcHs/~VWv(Mh.+H2
::u6@[yJuQjSJxwkHp<mCtfZ)m>|,h*5p<[Y6-//g[<DQ[W^>8*klXfYe86lD`$|QgV,]T?O;bo@Yf$Zx$fGLR/Z[H]8*m1noEe?C]7z?I)qF)f]T+pS0p3c0E<#~MMH_(v*
::<N7ru0=8d}p,v4KpxHa/2=Z2nH#2K>h*[^yEZ&]k;&)1)]3?pU?>];`//j3<J9fx45e?Nio4L)p@mgO^EU_ll71-@A9)Lz?Yq<\x5d[[SLdaI2}[xozd*YUA~)<6U;}[)\
::P\1C%G-B6^U{Qv$6S2Z{+ySI@83)DU~yl)88%/_sG{jyeP/)Pa(jso6mg2y$(.EV|j5/]ZEF6qt1f[a79R31?u??\Sl^KX{s1@zoN=UuNY^c83G=F%h#RO|gxD9ZVVUFh#
::48ivS,RH5\M).]b{rEIL-p)rQ+W{.f$El&eLNUvV);UOtInIK?MHNmdQT@&VV5.0T])DclFY/AfnX(?#kfAX{.F3O^r\K),s<s(hBV1VZvQ&B{JAJkN)@3G9O!X$!x7HJ6
::Sz,(dy7l,xB3?z@_g=d50ZvY/{,w1OW\5t%ynmmIEl9c_[DU0Gg`A|yo|}+bP>)Z{Es?LQ.V@((+s$g&}^6RJ[Z>4FXRLu}JI6O~Un1g)@WyJb![40T+JJ[XCXnFt>h0}-
::bZ2`*>$]Ay|Ja=U#>aXp00^_d,l4%yg;WV]LC@6n03AP^,e}%adBCw7Sq\r0PCK?A!\(gD!Dl,Akrs!UX9xI?fZw9rxV))DPaW~8s+_N#FB3u%}Rt#$1Il=]bP~]}AtzyA
::J4tgD@K-=SHaiZ5\~oRGlk;#CvaN+C{wo<vghlY}D=T]9kTQ$nVUH@pPzK6!?I77;+<_.%op<wSgVIavZGV22g{W~K+_3p@n+ty.y17pm8tddVk((jA}n|Tw@^J`Z{Y}A7
::w{aAPQc,XN,y5H=wTAELmkC<[HM8ZRH2{L0b`8xtD|JQENckJ,CkT#MUFjzm[0{g&(}p?H}a+Kb<@RT;7rcDx5&y}dJ_JoQ*`]KzFS*)9ylwLu!Y9?iuV8IpJS<|Ift6&f
::?J*j-|k7-nFW!72/+_yMB1X\@`|[n|Hz+b_WHyIQ9~wl%X7F8Y]&Z|nD)^<!txjsl_8](Al<H7I\,kqmbI`5|a-4k^EM$Rbo6Ch|73?Zb/un?5c7<M6i]K@&b4}r7R8]<Q
::bK0~*0;7.y`kEI9}Ad]kau!;+QzBILoo4?`&eJ^Rjfftl]=iXboy[xsn|)VVW)w57]y*Hi(v#JeDxnxG;5xv&8G|8SYuwKq]?Dw7qF`CJU4}Yf*wx1uFhL3DKHuyA3k74B
::-=meny1j;K>lE@>8C`o08|JC@%||@Jzqy&ekeF0#n}9yAt{&.G/q<t\@LQ,=41-LMf1l..{s.!@$#2Y%QBu{p$vujvFcdcj!eWUAoJ82<|+o`-||8+y^AEbQW^=J=Lpldf
::S)941&Z=CkA${+vI7N5#DLK],`Jz(-Jc=xgM>_VV=%Vc}g%gD,_V5zSM#<P/-MpP!~i[!@F0~zW|7B/=moO7_tB4+AO\5h+W,KB5vi,hoel8E6FmppkO-8U]ig[Z@VJqnz
::+Xn+p*/O!*Gg-8q!go(-o?+OcI|6Nw;bJ-M?)fN5w#*J!LS,}aq^kdz5Xit=^P^8b7_l`s>!BsKzNtioz)KMD_F?O76u-Bi+xy3=VYZQg7FXOrUxb27~mKBvyw._.kGi%Q
::B;{;]8NMWhFF*/V;(M#Y,5l=je>iigjzhY+PYw_LC%$oxZ|p/!o2+_|taMz}@V{z#kDARox9Jd9RR$2t0oX?NQDN&c0BVbL,$0)/5NBH*@wE.DYWT1D%SE$Mj8x&nTV&7;
::Rc+(^%r38_bO*!*~&Gr?Cw3m]sY0$zTKx|Ujt]x9\|Rt*4PLHLKx=zXp&)>4n7AO?U+&o@v<C)HR;[=Z3a\<K<PH-wDD\^XS-c>FDb8vF~KPId*=<vy9ymN[e4#y-]q{gl
::^k|9>89.*iRX]hvAFLmdDERoWmOCgTL{@4Rm(l@8(1|?hfHC9{&5|6]5+|f$bPW\1zv*NT*nb?|GVIB0j8Q5$g{4q7I.aa&2KX%TA`cRm-jIr/[BXub?#UcVflELV1%GcD
::(O6~KJWF==m]e_\Gl!*y{gK!8E9E+ZA2$-/xNi`]V_/mvD]hHNo1hQ*4DUC4oog+0T2k45}]ZYsk0Na!8OR*ZDm[U3JiKzoY!DwI}mm`Q{P/h!4ZCYii}-y(|wGULCF_pK
::~/XxE<p9S=fej/M8;c]xeA^)?N$oD|)va-^LfA.VNwx}ToC=tQ9~SnXgQ>2%m@}}Qo@I&l)dbE$_\iMu&pXMzGd5.,\o/*u%e$w|)v#5qL9o+&L,[T{{e&ia&M}B}9aU7)
::FA$-=J|xX#F$>){%.[oIG-iM(MynZ?7,`k&{LrUm4j2}s_^e[ek@Jqi&;BYy{V*qdmvcO\i}#HYsoOTidZq;ZpOMLjChH-McI2bl!8Q*Q]{AutMcx386OK@@hij{}*-l<&
::;^bo@jZ6dk9z;;PL#0MctbUt^2kVX5p&kl_e4~4plQeUb%`<6Ydb2JoKIxbRciDn&<,?GYe}A<NGE|tJEj`=D|7IIxwb--&me&hF1?miTVu^*E]*`(8Ai`z]WJ@t8I/pJ)
::06uDf&7+a\pw\m-}E9DxbT.p5\U\+3i*$FJ^7zg-xHs)yop%dGNr$uGURh;[9KXe7@RtXU5^7@=[K`e(i^LJJN#`a`34e2gzh<Glb_TG0NT*TYw\gQrWj?&Vv9kY1Je0/3
::.KD3C)D+~Mp~!I.ybO$bnP]WF?1H5Gx1\jf,XDAwf1Y=rY51ne_{<^Ya3B]Jiyo,.$M80{;c)!VkE~Wv[/PUY[2*v}(%ojV5*G(3wR?@xB&}rpRIB7?e3P9UxA4~~M?3Kq
::iv&]I&===d\X@o`=t9K@IZCr>Ur7p`pe)q+E36]cKEEHb}Ur/Yr]|K\[Po_aw(P/yg%G&]KQ5aGe#C%3[gUd\w`xs}}s!=\!Va<lM4hsJ0MAV_F^6IqV?Zx!R+h;l&SYw#
::KP-DUQ3+%81T7_Ou=/P.SgUZPsnqifri8W[jCT`0S.MHn6xc0jO_N7ui0hxK/Yv*5JDHr%]Dw3r}`!=Kk0$}=o3zv|IE=|CmgLyno7O7fzk8n#JSqMfcVux<aICJm=&{h)
::^Q`RaME9y1VY-S<$h~QKaICE-ArYzb%*CI?Cb$zgA}ly-]FUPe4blW~^>vBHJ#W%*9b2&<kRCXsYru8Z|^o*WCOn]M$.VulIg#Wa.<u(`QfY(-Rq(3&/DweJtxDc{B(e]A
::kIKGj(oD[D96wEke$|MF/1uD^b`hZ-zX)`%=~s0=C1Mwgu65;/L\n&3S{PqsyFF_M9xiOVEbqrPP}@AA<7*7%.3;$7&L\y$(L9y#?9{I0|e82w2`|t=p3w.Gc4T.&sEs7&
::CH\)eH&%H!lPUUP|EW}I^$dl>~!Rj^5x2I2RPQ<3P?*w?Do_pIVmnRUQ<P4\1wec<iI^K;sgf9j}l*`,Zt@#f;Gv=F|ET<B$tJea6xQ0|`.PHL`j$,yw1|h!;kd53~FQl+
::cmPuB)uZ#*S-zN?;9DmII@znlP.I!.(k#~NzI4nLCpkJE4-j@T=u6/h6y@}3?NmaQMzCrY6h<Zn*M\Nm*+wht|Tb>6w48W65h(lt(4`W6DW0%0u@n/rEn8wxe\,R0ry!C)
::UX%jE{Ld{1UG25tPiC-Aq0xz/L>l-6v$b+[U![(L7e/S{6,dG2hF<TVlzSRN1&}R?|5tCQ`H=(ufcF!PFSMA;WN24u5K^I%jy?4-bYSbk(iw=A>D;enCD8?;@B]b$HUE|3
::+/;B%vXRB&RlH<iO1)@N9P,skz8&RYv9!>2JMPD1FXApc|Z]xLKv@DHH51KpzUxsqzo*TDLEu)r=,Q/h2,YGC-jE|Av)owL/t$ZRJ!R8Mr{=&wYL$M<^=eOmi!44#bv;{(
::qU@Vo(}@Q[tW_|tkVs+MP48t\$b}<n|\O9,J+yI[nA!W`zAKuN/`X&KHI6[hiu@Ouu/;J!i65g5\Q~Z4srw8X.i{oVrZMFscB%JsUC3xvXeIL\|_Y.Q+#DORTB.H#=7Z7b
::.x+Zm;D_3GOAu[h)2{lN/H].i7Mig9P40}#}1%fl$^ObL9zGE=?tZNfZL!zv>5(]wo3iu5ZV-q},_^HL;*x#HPpVo,W%GBn5GS-aK~*6\pCG{$.}R]Z($fLtYaN[V!HAx3
::M~?Q/o#&3;bLWGF4Jvgh6l<J9X+#=z=bI,qY!gu1GeT@pl~G+5f(VTsg1s3c1OOpF-4&{}WZo+g]=(,[ATw(jc_|5#>D}pw~f8;\Eg9@DJ[7S;TUG@Zx|mB=EPm2{u,#B3
::~BqUMm|J}7h*6[&AV#+Fs-_o9JT%O![aD\$T\j,D)TPMu3\jTj?GW^73]J,a2J@A6uvLC2,W!QeYaz3g786CcZWSV\+RVRBV`<p71=G^jP._{6GnPDR\qQI!]TdsN(/%N7
::xfCn-Me?BB\Vvk@g2&@zfLyzBButYwfzXff(0UVT[Sg;`~Kk/zSzo2{NOz)*A9#m;B7R9A6U]~76(0hLPr%5?[W!is-ve//?g`^VU}[,_l9M9^qO$qO%\ju6;{af]|uTOQ
::%,lU2GxzUlj`[!YEgx&&b~~2WfIz>y4@jO61j/FDjqB3>TzX1lq\e6KbC(M<%xh-fz9%psf/}_X6^T`\?P3;Vu~_I,H*yN1@6`eXF}/7b06}j6=LkWKPQ{orh3Rvg6YSx7
::_=Lb6crKh#P/`o$pvdpldi=wokGI$hWRadW@C4)5n@s4>ukC[M3nUo35$XO9~NiP%!(81AZT7,ZABQYlUA/WLJ([VyB%@y+0ITmnM|JJB[BmSTH[6z>x(DIHq=jvKBT}(=
::^xJd[M-}B3B%iEO{db|O5*BhNHe4$rn/#|V#VbggrN_d\d82-m``XufQPOmoU)+({Q[D\~4TF\p2jJzA*9u#xa8j)(|?V]\~w]?Z=pKY\GAwd!>&$}YB8]t(p,7r|5J)s2
::Z=n&6hIPC+;jT<L(f3tI_OML?3%Et(4=`i}P]_B+@RDz;x^cP_LF={Wg7nxTmt.<xr.=/=`b)vIFACU^RT%g+X<g-,=}c(-wan#~+q@43?,$%\}=..7D?EHzFKBoA._3{W
::8iKwOYOwaIBLUrm+d5Bu9G+8_T]m{LY-+\\?T\CF~GO{<woE]eSMFZalYi{.nke[;Sj})Eo)*%(?<m?7vp1OjQWT+FY3{.}l.P5CIiUIpieD!Tslu60Zf/5Q/;g3x0d1w~
::<#7QoU\Li[!sNj%sg=&Yq&~x_K*2,4;FQ5`5o,)07Wdm|^kpT~MZTafqF3l=wFwD~sL/<!8okQ6~7HdeNvG[$Re_+PhorMt$*IL|l%YD$HL\Rm!fjCGhC~OiW5r.A24q=m
::~5FlrQUob]>B.LDq4g`]HwE^3@I-B@EFCVRzcPx-?EL<eeq8a3F77~]Z7ZY+|KQO2rj6u^]B&Q\}[s{-T*/f7i$&{cLX%)EFuB1|c6Wd5}5{fW[v;X1fxy@9`@OTq|`I3@
::(!p[|Pu4Fx0mE-OwI!K7sSN}O5,Smpq]NZSF(Gy^~P^^h[B71n3Pffr&s<U<%@_c%EV6|%M\iWty)2nqQ]Iz5#lLPLfAsbp<-8qfhC%1Y,FuZoA8NBZBF-,@Otj#-\Ce7P
::6XG[(%LcfG;j<#<]L;yA\3w$FJ3O&9*9\c\9#M$+P}G?B;/|cTyFvfy!!$qGCAOp}#TWk#(@-%,xo5}xd$yx%5$6>^<eT~R1]XD/W2u;\J-<BX{hbc>sSLuOuRA=Ld@fO3
::BV)Qv`w)V)e!]Zdbw?dFI>&\0A2Z-?`RQ[_Bd;_WZ;,n.vV><cv`bIk=mV.v>jm,ExYW+S@Q$@.~w<@8uZ~E#aXSZLDF1wR,3F/=oV!F\mkJyLx,V7a2W1Vk\x3_ml2Z3~
::<b|9$n1jX*o${]g@0!E!6n.`NT*QuHZ|Fi>xsscaP_|rUj`#]ZsfOs/H@xx01U`P5]gI|$wc`BmpUv[LqC0,-\<RD1!/kg/g$q$9_xHi9aY,72HG;K*8r<B{^J?i|5E{yg
::8p^oP#XYv6BpC1.500nFdUh&f!Q,Y;Z6nE`50h}U?C&iBr}+p1c(BF]GF5H1&X!g(aM8&sMlb*%!!`!>odWUH+smN%06pH\a^V0b\6[h.oD!iX$!Z}fabQheIUr;.h{U![
::Bd;D7z)6/%q?Ax`XYonAk#9,mSAc(J-0Sj9lSW]N[I4OX;X%uZ$p;a\GX,+wQ/f#W[ds|?-%GUA5]o_R(}y/@m8#z-QW/u,${vN{E6s}tU7kIgJR4xu]n2;2;v(x}9g`F{
::fe<Oj/=O]U~U_lJJsb%P+}&nUu*,76p`Txu4cFEO-g+g)1@JK-2|UTy`R0Y6lbLl9rr0\6ArU=3yxnedcE97s|\f_(SJ,Hpu_O6@4?yMQ`(FMo6`Ej!+_mW6CORA]|sz06
::@UubN9cXzIJ4=O!K\0Y=]{C=ke3zc/]f^RaIF`.aDuC;sj*^9DG,pJzJVi36*zOFnQo7P7%jKI+{?Cd\m]Q5~&{&_4LtA^9b96L&Q!cO3xz3q_\4<v1h%8__gf0krwPb9e
::au=g=cdw`zx$lf;&URgQUrhsWI|qcOZ]+?v%5RE5V9}oXRU3JTe)9Y?w8L6t=7c>d!Gl,JUqIcHvFb/0EHs?dlW`nuoOWJwJFY\j)|4nc`T(YWd/%J#T^Kc>x^]|5m~o*-
::tgl26]VA>lc#Z=gzJ-&STihL1lp6u<ll%?Cf5itMDh>Xn4$_D|X29Y+7~@q4kqy=\RW6my1_B(bPE8^2xlc3EYLaI`+n|{;1CcOdfd$EdKz9E.&jQG1=xhn=QLlghPU)dQ
::}VvoiPhGF84G%X<nio3etV3pmJ!Y)`gxAm#EbGXd^V79gMd#NvdIGtQ|x|p[}[(*VoC}g=i~I)V=ynsjG!2l{G&Vf;u|Qi54Kc^q@mO4*_T/-\H.${cwW!@1*-B@M&{VZb
::GK~vR~jURsGZ_xV&l&9+uqd(Y2J{S23%LGaG572$^)\vVy`ypq-*Zf3\RD;.EczsU;tP`VkSN[mepWE,yuUBD`k%L`]$WAJ`+j.Z`48H[3g}%;WP^|5BLg.7#*hhS;!C8Q
::pZYm4>G{|{z(%@10-Qq5me4Nj/qLNAw0hq&8|+fnV!BTM;5Cb!LDinT,&7De@zz%-6Ex^c^v\v<LfiKn#Bc(_W,[I.7q$Qn[m~19tsk9\*>mve!p?RrJ(IvUZ=M]&hEF64
::y#9QG)_V7URd##t9\(,f,;wG$-@2<],-[4nc<#{t*EWj35;+c28,Zk_gO]S4pOToS7o{3E(5[boc\lgh4%v}2Ta?st\F{65t.y|.i^#//hj*)mRGD6A1o!pS8ny/;1XojP
::IFc1`_aZ.kF)5+`Ok(vmtC@V`r7ru(zN?=nIXe93]*{afkPx7;?^9(dLh}9iO&]YPtafJ;wKRG@5_MxFw1o>naP/7-LqX13L4b-3{g&t[8v(MbK#|*2o0zft4`pzAF.(3p
::[,GzsE^9hnU;#kVv#ih%I=ir_s1r+\Qxn9MFY{bGZ]4V2Oodgo^1ml~^HouUds2+~mH8(^^@o3u_bp,Uz\2`+^20&.t1s_q\tpu@Xj;\[#BNZ|6n@]}RAKB|obf\;yi`ob
::|13dJfn|CZzWOI1[(wo<t={1p?o;Q3Ywg%,ltE50!=de},^R=RU0vP%D#R>;r4u|%Zq-zs[h[irXnCeVmZ49Eo2w[9%1Bsm([@BQTh~`>O`^Z(]0~zo4N0ycxzr*(Yq$I>
::sEKt|YPQ)MUbmhQpbl_q\JF6f@p#;E<hWV9EXD7W<qqR%v-4$-zQ-9sy$%G`&}>d.Ud648Go[.4b1yLVB.2o*9`QvG\6QVb|Ymp*l\O.9!P)Q43Y[MM#$narPEWbw[s+Np
::=4oVoQ!.y{0/}j}?Cvxq3RbFMSZXltt`-aw5xENhim.sXdGLO0?Lz2h/V4.Sg_,`<0otfpy6{hk?}cmD[_q-RrL^^AbyO]Bqw0(N]aKEnv7e0j&dog9rfLzuSzieVv3_E`
::yu_|*,5qi4#fL&rxT]o_E0Z&nE,BJ$h0/*yXw-0/8FFllHz7CUqG+T<%Th3g#9<*cpMCdkphsq-Za&FVR$MC(`Uhi.Zj=;2e*q[Xir.Ef$lzMn{{|ryid),]}s7edUoHH)
::x6ommnsCy=A,(4#>`ET+J4Fwm)}lhsq]5X1c-Qwt@/s.>Bkz_V2ZQrQx>Mzbeu-{U&K+`hfW+J1\OSe$xt;zv;(A]zYKNpE+]9LREtDn,QkGtIK8o+gu+V@47xNZXxkVeZ
::!^f6RAoAu~a?H{,lAN,D%bii3<NAh}FKbsa8u*p48m]8qb?>pZAm&;&w)~c2{v@N4~}2rgPN>J`q1PjUi_|;9z(FJqJ8%c#DD]h4FDl41Uug9NK!cA-plx~OPvXd~p0HQ0
::.q<nD3u4NgRgQH^Fp(Syu*^yhxKj<^}A,YY2Th&l@w0*m!M7=&FQ_OBrcRqRha4`Z~cx;3Z6GE<m#XR]-85VE*?JH!mN91=S}!mKgUokm!o*I?VhN1&3t[.SrW}5>Rxeri
::E\*tg!aEsKG=R(W<sE5l0+H~d*q{{A=ZTp@ZVW%q1-3Bt]g@>Mla/Ma![(57YMF!y?4i>_7JOtL@OMCV9Q.BXkkwHwAGW<An]*Z+jh/5TQ3YN|y8.+6R6XvI1TS~!=vwPS
::{=Jc~)>?6*W{$W-m17{1SOcpvSw_;2U<$icpw`UqRe$<\{_!&a%K/~=J]1U<h(Y!@.Tka7UEoQ.XMg~^^Gr0E+!}vtJu+@>JUtRja,IQb0,.6MgxyM~0eVI[D)x%nQu&,+
::+;_`%k_F<02}^K,I(Jp!\<Xgijs7kx]iSm3hLA,(LjBBn,FccROd$qL<&*p%|kjA{dJ1m|4yP[\M^73jB@myb&DTl,YcwM%l{<rst%k;K=(Q4UeS5B;nh6ReQg@Y\vtl;c
::81`&5W^5Am%c%Wx=Vp/$5fP8)PTYrO[(a5F`P_*nJ-[[15G~%,I}GI\6.;U~2Zf&N9fw}39y)/;<0Qa*bSij@OxNApan]<r`0Z{_LoG<_`LTKjdW7V*LIZjZ>KMBB\inL8
::#kIi.8uBXpQelyQA!@X24Sz_B5A-M5Y}eK`YU]1e4WH)A/P9Y[j6vPlef\BTQgn7ELw6!3Y,cm}?$Ux(pnU^u(%Qw,ZP2)G>|A.-3/tC#tj/qp6/6Z|]&}cb?J]6/L~k9O
::QZ=8#eDDwJ&d)^vJb~nPou()Ww>N@7?aUW~HYM2/AywAhn7)0lt=>1#}%iR8+|v4tXcsPGmHY$7cl`$M02*nLIl@(j^-I-1&XjAH`}3UyCdN)12`SSwQ.I4i<cj!tn{XS4
::VLCqqBkJU7Yb{?yAk!&MfW9zPU\XQ)&x_o)..DfwD5%f{T_2r{TFj6?\<n}5|kj|[jqZ<)>!nH~g([zfBU/SrVy?zJ!f`i2;zd#x3#QJG7y.aEql\70<5^j`,!Z4,*cly8
::3T~d8phPb=O}3;xHB;=IoxVaE`A3<|>!W3t8\_O2~%QU[Q.JZmgeTXX!<^DN0>y!u/IRn0MYjV,,e6WLH4JDzq[&aN%9[v|zB7qb7{/$tJD`F,A!}+kEr5CFSv6|G2I]Fv
::bk<McFaK[Suy3GKze#;bL0/A~=EPIqu?H]?R@r?G7&gL}/r~@SGPwoYshov~Ue)8&GU/a%ujO.X%9]\UmVASi`.4.a]~R{@HEX<Gq\+0]SAEYFWN]1(Rx3,`1,,5(^R[)d
::&ZlQn/S9T]A7MJc)=tvj&4spi=Em-O}~r`VwaI^P16*7S;6[M0r*IBB[VSL*S}Hm\i_h=t2*RF\AtLiCn]B}RzQR?9gLiKb0;8<I)J6TSy[VjpsKOmwM~1%#K[d)Fo9CEu
::j)Mgh5Vt;+Z1GO&{BuwNQ]zkb]ph\pBK(e*x@M1b!talo^Kja8,;uJ(b}Ym6qO{t=0Ohn@,3.JTt7o>79cbc~kXZw<Wtg+yL?VGU-,2qD/Pc/)G]M6JY[Fclf7cO6%7zmv
::{zivskR%C!{!?M_<9?h)3uqT7<{yh+hGaQp|2/C_=dI>+KJiNybU))<O7aKNl@Xvk/G1GcM*X?`UY$^(oYdB_l_~#52eVs{_}50j=G]SCgQaW@Y%;K1t2c0g325{A,xd9R
::Il\/Q^,$\XW<O4SYw4QM6gkU7`kNx}[NZ#)Y+6FurGz_U/ww&Ckk8=L]#o,[k&<EtlTMx|}tT;dv#jDFyz&us4}o%,kPZyC`i&W`#M\tWo2YD]GF|Evq$*IhepZk)675vX
::o43t+ka1SAkygV%qj(mZ/ROE3!moc8Tt&5\0R]`j]@wJ6d|6ymGOQd,0aGM_,8\Jd{.b]RH_=0hxtRo2<1}(%lojEY_[[Xl(+nP*.6/K9l`8E.<w$s6m$RKkm[M$3fz(V*
::NVq]^omgK0a~aTWhr(*T[Va8kHhUz.^=Qt>1iXo.yu7|1R){Ag3C#vL?NGL_oR+)v>pEcY7?Ar/fPI\dSv9e?infU6j/t.qZdA7xs,)Zl!$/2A61;{CeH#\XO$a4d`s|kG
::1pzUjM[mh+*E{1g1QBYn-AAjje2h2ni@rl2FQH;{8wVKXqG8.^OO};]u9f9OW%1a~%OF2u(7h;]~)AXK868n[j17|yO;5NP^1S%$r4p/h|}4Y0DPa$u&.yO8^pR4&)IJez
::R=l5Yi#7!y,{v\B<nGVp^g#OS|*6)Nf{KjcI*30n~^s`E~zDM(sr]rJtMp?\eqQm#Nu-`|.!$B+y2U*P]-h0&ZekePd-7d2*}2``,S^!(l3*uRZ+j[<Z}|C]=Nzx<C$K!*
::?TDyd#}Z\%j<NK`Grq6WYVK{/>mj[@%Ty3uI_&A0X<OVlmG2Qq};Yi]*R0$#Bhzp?^3uD#.yQtoo-PR-za?,Zaj5M5K?/DllL<luOKbvjgz1C-k@qp8rYA90(w@|#Frg5p
::dO1(XcQeC^6jfk#wDy90J0hX\niw{%?y8sE.=Y>\z8w(+I$`RMg3VRIF/g8Np+&,J*?-<-!LPE+aBFH@iL=8yn0n*<vIg)Kgw>rE4OeO9iX-Ai6E;>Tdp/fT<T-R%eUy7G
::%$4%[fR^8lZKbL6rvVdnWb/$6S/j^j)40_mtt^VkJ7,J^h]y/QbZ$VVOEM<FUf@aPMdwDnk^[KK0[o9.?Pb2Ht0gAFwa+;R}$YNZxu&D]xM0&81\^^/f,w~H~3}\-PJhj6
::z(S^Rw0M`H[\h%x9o-gP^Dy&E0y6^XGRRBWqw~;WLtdk,WWA&V2iMyiNhx.G,pz7^xJ;|USN}}e}k6z/Dr-%6s$(cBEh(PA<K@gr<b9+QWC_-8o|(@g0*1oW&r*ZzXF20v
::v23l]ptSl|Arq/0TPw13[t#Z0M_pcXhBEGxknY<4>wp+fxEI!0RLE%,,.2[Y#<w(#DLr_}r\xw~S,&$kAND0=X9@88!y=/10S_oH/@yA1+*F*?;[o0+tp0kkHfUwr=Q2pf
::BRp%Rar~q6oIQ{}*z7\*cx[?ZnFaxG$L/XaT#{sixW0VJ${EGiF5<\Ehp|X`6Ji1yjIzMf#Ec4crVIupX%b0aRP9~LB#l&dkmXyjuzlWAQBwKXBeqz9H-d2J;2<pZCK4<)
::Xm+o\Nx#_n[uJz)oJ#jL(){QoT^eUXdn{KjbjMvwrz(DwX]#bMg>^6,8\eGWj`I!s%-*.JnW\)-7E>(*.5x$B.4GMtd^DZ8Y{26+r*}uy0\ie,nI&%S^%Co+Q3)R4_c,Yx
::+)hx@M`Up}mXcNC|#VGY&0<T6XFM#+\,B0yuTZZEO4OMU,LWq0hP`R0S2x;eFY%DVkD?/1HfazP}dwsl$o{Bf$`(=4z&7ch[m!)1WKe4218G^Y=\ma4Qz|tc)?[v/8ujX*
::LfI4=5*uW#Gxl1r0])do`&bLs|rB+nJI2nkR0(;&U3F`mr%w.9Stki~TO0@sze(GLM(=[2A)@LMQv#Ok3pDF(?8PGdO#Jwn8^^%-@-ERM!)tn(w6`Yag%.*3Z*4Tz,IY@E
::n<TP#k6|s`C3^4lt/4H7j_j*%&}&#I/VRWFe}L=HX9?aa#3fYxOh4Z1nQ#/wDGSj\iq3|%V,$tk/Y*$23)aP26]3<urminz(<#OO3l/m)-u5f?kT;^UiGQI0~hS6avfJiX
::*!l4o@;Ud{84lu{[vGvbb,1BJ^|^EKsfTloj+xt9#DwBT~joVK@x]&]*u;B~cZB&Cmi,,;cXFt,10Nt1JbG*ZV5v<?IqwBmJ/mhf|KaG0$7hFbSw1qv2M;#c`|8tc/xstq
::SnZQE%4SB#wENP91j?J<|o8qK})5)}b2{6Cj7%W#|`$Ob-e?POx0k|$y#*%Yd[@`,?=8+\d*.YJ\#(}QIQ|k#27XFj3~;Nc/V%()YwTHO!m%&[;Z$C)RB+%#7.m2]Ev!k/
::[NW6wC0UCjwBvL8IXwkwIa`YRa`1u|)V&q$qy$j+mYBQXc55Dgf_|Z_M66F3>RCN?VqA(4Y#Zj,PPzp#<<2H3/e%P)||htegwuN)G0AIUQE-wZBJvz8m~Ef8+`O79_C[$m
::Xg(u-0BkjHlk0(/pq<]}N$lL<d?*GWS#60z8&H?vp56}$h5K|ubFd){t7r5{Z@T5+&3\Iz]4p/\r)<aIU<~*?Er&oh00tfUdl/#/|%_z]?]-!+&E+7rI!TaU6^2a!r}sd`
::r[&s`a!K_`Z9gbfnp[C%FSLwT~%Vp()60*~Gu%gkm(dEjZsUv<OlLb#!-]amT\lpP$Y7u(N~A/.$0(-}Cl7_D_Wl,>N0d,p96+9q8b0!#?}/O)[x@Y\([rk!Pbq6M<1LpI
::xQ&vc-i#C6zm>%;2#2OR0RyX3inxQ(c!0,`#)zbd1wqDcY?vh6.zyGz/sd`)?8f\E]yEu=|w4~.KbY81}M>S?KjwjQe!k;X=*!f/4RWRyLMiZrse^hzkiu2N?tSV~`vo/,
::Rpn|ZzG4t4S)~\\Bc=-Qy9]9mRHD8VEK6NQNX(RoT$a|6^N~xa,<HoBc`z#(Dj8w\]_rh+;q$$MTHNa@I@L}3d(UxcJ=_Ph1]*w[;0&#S#gO*mZJ75Z_>r=Okxjc{Y(>^*
::INT9n`G-Bpi\o{@}0N9wfo/UWimr0!>uzaX,F,{2DHH)SVLSAi=4PE^7;38cCbfx{22^pO{#z4\b=Ow7~}3&`_F7lEId~M8*DYUO>OE=lVzm2j]jn!c#c3=[w5a|nkBNe\
::avlI/H%8,/g6s2$F4j!MZ-Ik*fIm3At1esa~=[W,?TO&c#1-HRac_|z9).\Vos1+mI~Si|l$=p&i3Tw?.@uTS1)dgyd]ZWCui{bg}S0m,v[oCBLd(o?w)HaUH+{l.;N~F+
::uyd6>uPsq}kVa/5z6,-_+`.M4qQA^Ex}TZV}HYIB1;\3%A$a1tRSAl|}GXJryI`<Ng+9Cj`^z0`%\R[E\GrY|2Rj9rMktpQ3_kX&.JV`lg-}5;j|nkWz4i[Pg{#lXuBJlg
::FU*?hQcudcDl5mh7u#]]}j]TT-VCV9_;GH)`3_dk#jaVghh@L`-mM6D!|;MrJW{6C#H\%X*QJPbxvc2Un&q3}2YEx;+{(oYT~+NBGMC[?3zh|yuYE3z-c\pY3`o]%\PT__
::ALgXn$XN]!/Ye-|NwYNC,rHz7).hbQ.U|sJPDrKcj*<,$S|38fa$BVJc,o2|ddZSg$h2R`bE?89=)b_e>k%El#AAoO-R~=(v&]tuB$mVOWOkX)S`+/udBjz!7ars(tA\b-
::QLN)[y*Px10*$-<Z*-+1|Uw[}|Jz+z_YI&q=3VDTo&k6T`[nI1}j.9,oNE&,eW5}rB#&=RH}b9S*y<|%EKztH/5VeLV=z*Uaqu!P*ZI6YHnAkA.S5h)WZ#n~mK9qp<k*g7
::/4alB^-2D5ip8SXH=&^${z%6=W=Hzb7*-@6tU?b/rev+*ScL1H{S|=(*]*d&_;Ohi&0@Uxy7Scwger=}QPt1r1(?b3@~A#\UFa{deh.T8;L_l3KJ5{OQoBhkS3rC4=mdUF
::L@=}xRkyZ|Vx+9F}q?ep-QN/t=pWcK}P@P,f(m`g<i!q6JE+H,,#$vc$?U$|ax_d(vwB>p9{DrJlxV`(`C(p7a8\B^D^W&w?]egCA-4gGF2kZk!ljNf9*S[zf+U-lbYiPl
::R|kb3Xa%ld45v|-Iq%C,[]d1t%pM;bn?huj0#_JJ5j0;r$qc%/)Hz^f|Dz+ZZT30NYMn(KOwA\lhK6.zYc&/.[^[CH=SogJt;l?%?@u+fs>;UjVC;T<[\YGEhYKT\B%0w}
::c|!]F+A2D<i%d4l,qL,,1~j,k8?dpLkAd_\Niv&bD0Gin%i&fD);49^VV>CK%,>#S]G_U|]?R^]~b,^&E]CTdG\_\Bdi!uK8[FiGqKFBrD3!WW{N;ViJQ;TO<jD_QFZCHJ
::Ug6pVZ>XkuOW3up&M)ni>2$B^H*Xv0]j!=~77(kgCW=.70_A3dt2&/\jz#3~Sq9xnXMK8akMM3ue)5XVx*x~#kfTs9But$M1Na9#vmw~Ph9Yq}2&.rACVKN5]XZ`@{T`.1
::Iu2M^x[9sIbyis6WRQMb(7QP?DW%U+?l-3z/jw}z4HqpGL56}40,0.9&C$~|^we#?dNZo2PhgSwJWK9uN3jCq#g10WIvHXLm)-Upz4TTqP0jr=&\}Brr|=IoJ@]6V1dz5!
::&>|PGrxyqSk{Q?G~x>0VE=IZb#8&{Hx782EItjR[qUEXIyz_p{5Z4W4Cg*pJ?zc,>5fi^m-Pp*4e&^(g9x4_{_dkM[mz&N`QDOu>ONUGn<>W^6)CP]6e(c=jTRbl3@1l).
::^$U79sT)kAL@UA)IN7-[>x}o=5U?MNR,`+?XY@sCC+=B.DjLoIX1~7nfSeoH4h-1NYE_v1SdOFk13`rHSz{M62l4;zwIva/SS!LL=h`Qe5?4v=|Z)2},\??\AA+xnTk[3m
::ii}}<1vVTiAQqaumrq_{<Rf2&H@/BBngsWs4>!*2t1oXn%J*fJxg5RViO\b)-V-3#RiK(qhMPalwT-V6Ypg$(x--xT0T5rOn2hD$j`E*/NBVi*Z0y1f(JZ\<7^M{`75gw[
::JAPK1{2zdEzHJ8%ho!n[)1F;BD{#)$%5j2>kt&)m&@#+SZytu{ozReW$}AO6D7<|t1&~uy}AvB.9LdddIt(AM0/Kdz}&RbAi/kQiq@~blkA#~Tb-b1KJ(cZ4gpY?.]|J`?
::mDPVGs5G>7oFkYP,^ck@\uq&+wf0O}8V}x>Xl^y=>xVTWuL!8U&]mlpd}\%=W;SFAUeXP7[$qM/),+p}CY\m#;}+SMV~hy}n]|wp1aK._2<?-/Lgux!|W]YeUW7O?F|!C;
::hip|kf%t!1$x+.Iq>{i#W$O5VA=t9Q<4I/om+%e2a3v%4M7Lebh?E01pgxU~y17H;]BG]n^3FEzHj<YwN$K`osRoEo|?^F}!;P`YCP>q7Y!Vq,otLOrVh+?->lkDg=Sy@e
::9[~68\9[A//`MIgGb<QR\[Nnf~bMjnm*H[k!kmvIes[@&_Oa!%n2|a6G24Z5=M>rh;pGHrbrXpz_zzOvQqCpK%[Lm~e<79xu}=LJ,3<o|O*1^Ics{(pyz#|-N\m3XE|O=8
::oZO^lR{?,nW8{uK}&4U!#?^A`spOsz!*]=c\n2l{3f83p%-V0,^z&Q]W}$PKjv?Ol>k[u;KIORx^i?09{;A/I58@ue9F{72[^])twrQyfhL}LMz[%AgM@]7Ypk0D=`h{0w
::v\DSM_8C4Xx4Xk{.,@yAw{dc1{ZDS1sxKBM@v,YCv82ym#8_OH@xQKH?8es`w(T?`jsr39ck{26*>@ay%lPl_,#Ic0h}BPHch{0G1^%NJ!9z<;Usc+PA6v-90zPh<VI6gi
::>+psPu.TOgNDrN$3n?a]})EK)VdYF`3Zzj@s)a6{f-Gwe4Ghb>>tG8N*jv,@+7}+;f@4$aqqlf$S@.8M)[89#+~PK7J!gW$E[i+2Jff~kGVc,(>i*S0|#?hB5rg+%pT!Lo
::nx(q}$w8,J*tn)767$N$L+<!amoiBju@w-vzbuW.o\HwE2;.Dtb-&xC`]Q=lT0?Va.@1JzjH!rq+}_p?bXqmUO=#u$dq;BQ\B1>)b\)1-X.MF^]YzOX3V-b;]S3zBA^8Qi
::-2(k1,.AGz9Kmhn|Q{auRDuslx^1nZ=/y)b7i5cV}l\!vCRNZ5wpgQOlz&Di8duMLf*15XkVAsB`^o8.S6m~E(TE&<{JR-=(^o>2E^,E>5xOQj=F$`Ez=-i]5,!dVIq($/
::#|3;]))K@\QcBe*?/LL_}NtWLW(k|s-uCfNW0+;B^?f3*3%~dK7_Zn]f!Xfj**$kFXF/Q0\;|fKJJlIAkSV40xJ1@[%7A8[fp=YKnSuLL)1*yvMIT(~=2n@!?4XA|KWP]n
::,F!Bcj1xce+$zc!F2SBA({?+E{{Ai?oa<QSkJM`kj5\f#thaH`}v)J!_\4?nPo$F^|``I*_N-;jBm1TWpkHom&lZ3AN%OO@1(=v$6M$E~t1R/c?-QPc@mhqf+g#4O~LKiN
::l~*Cy?7V*Ezkb/5`<@Z#VIqJ21*BZ7=Y3a/53F>|^YkUrz%O;zOTFgcgv{p_bcc|1)-@(b9hRz%R4lN6As#d=@`lnSwqeKK`U=&w7J`\XWDk},Q5%|7<Ge0F|F%xU9qjF.
::AZ>\_68+}.U)d)ql?Oqg}q[##6[Mk>mX!0yqf=L\h#uH#k0x6^*<1p*ZxMr[)A#JAC{I?#_15%EpRPY_Qy|+oh]8o!C9Xyjo]?pmk^/P<Owm3MM%}$b0e,JE&{BVyY%Q_3
::yA]/v*IXVCEELH\UkqGLya9oDWHy8jF9Md`Y~o+`sS|2K$1Noq`mNwW*IliJf/vKg8;TA0^]aq[0jEOY#)b7@`b6G^8D/Q-^oW;h`9kSw_wMxCc(hV$#bo48U!CHF^@&|^
::<}T4m`^b?/Qej|HpfBiT\)2eU7B%[TpjuWVQgRg&P%+ymS3]j5XMIt`jrauD%3|RWs}Z163iO.$oEZa>%f3ofJ~8o~r>tYQYl+nD#tg6]TNDz}RSbPi[}EGz}_#@}fqfL`
::Ur%?;i%O0VM7QX-(-NFK?YRTA^S**eA`!Igz`HUsu}Kn=GByFiXxHCeszDn0DcrX0Zy=kf^z9es+4#.nX2{BeCZDW24pAVx%bw>CNkm^8napeqfbS~SZ.?i3+j$($K$hHl
::\Z^,tN]eBNTfS^m+u9Mr?}SeSbOhH!o}@KHwa?#2_7|=OG4z}e>X%k#ogA<NKOl.ZS!V,eNExJe*.u6Eu(}D<h`d$7+iL8$r@!x^Qa/5gS7~C6-!L<5rv\O-.EK/<grRhH
::8Ye%\le{XMorpraaOY~`OnU[.`kFIf=,t=qBDtym|6*oj,r?rELj_koo/Iw1S^/;ho/xTip@gL=+ooXZl$YmE@,{,B)r?7[uwwF5q2>g#go|;,#or7l;m8PN-^r@QXCyR,
::KhV;V0i,_9X,\0xL>-,C8e+e/6)QmJp=X!LM5tc\_s`dIeMKoAkHJ*Lr#mbE][[j54g??iG}[c-[I$eRtb|p%apTA/jEoSk5VM5a;+]W.H_JM]4KG)PXs5<X(Xo)x[iJgH
::Ve#0-~YqHl_1!$ALf&[;]^&nIeVhMV8b3pNZ~WBEGF&WRN3$D1Swc_4tWEX*JhA&SL&,iQH#<C@FEbNv^(<csOs)4,=Inm6Yn4s;S5j?61c)o83a.YrPQm34mR@blt<mUj
::8wMxJz2YJF@h}QKMc(a($pIpM$X6v@^s1#JDWtroc%Jac<_M9]J_s=Ge#ef1kVi.~mktn=c#l,uGhbg]^v9z`jyH|0b`PYABTvY6@m+3QlZ}&W~gA&;smGZ[9&WoX+a^kG
::DvX=)+N|D``5s$b$wu.q]UEy<`cK@N~P\poQWjpEfVX=^YFCtax3OZEo[E+TC%8bPQK/d(KS;0_i~Bw[9tlwN?s&(d45(A\#}s86T+57<2EC?Wh79C`&0%+4eC6bV@8=iT
::HTX|mj|Xr0h2;(;^\N.(6LbPx5MQl(y.%Z>SW=zqDwA;cK+z&]4]|I8)-k%vN>TvN}Scpk#w?U+?aOK6Z=&2l0cc\/2~^kT[-Ao|Zqp;Qjk[2!szRl21M!4x[^CuTtnX=D
::~KK!S&r`@KqS0CI<PYO~*Lpz|E.H(~%Dk!B6Ro6!3M6*7}{UumV=5?v0}{lpELt6LJ~R_guj4aU/v49U/vC*]!BW1f#~Iee7w[EYVCm3!ao+ZQ`S9w|eolu,y-#`ipoJ2-
::2$,TU/x.ZsWivT#1D>D!1tWoN.XHluwqi4K<`Spi|$0xM68|^3.l<Pno<CzetD8tqDs~X@yKsBB\6}mU*kL]K5jrMHkRa0(l4-[_+mYlbb4nfsZ`k&SuGl/rw^oa=GR=`e
::$p2q5O0Gh-uoz51jw|Do^n=QGrqw#^j(W$5]1qL/ih,9-3*_TBw2olIh4{7\G4BksNJO{,JOgx&GljDR[AD;5mv|,@6/,h-.JsQp|iIV=e5_*tM9u_2/^+m]zeZc{*16hA
::|o!xSO`G3_t?*[9C!0C/L6%4u!UnW{,OE]`yfOyva&D,=%`ybX99r0*o;jk4jnL(uOd)vN;94mg4bzxxIG>2lO1q.6Hmo7Is2$*Z3i?@[Z^Ytbtvy+vSZwDEe4L!X7#O}T
::Q<5rUD^JS.5/.oj}l<Rm}pHhf=nh2hWRONwZa]q&U8C#@E0vFT9uVkGfa!%x-{jlr/Oht7aym+0HiH!TU\J*?}XW~ShN-X2k#igV!l8=.#?-C&j@wz?w#5<(]MyuzMiN&c
::,gDXgENW#SGe{|M]r7V.]zfT!lhz3;&mkSc+|*oPnz(<*gQe>(qIe+HWc(Edyf(*zzct$SE6U8JTtDc$)Te)X5vmjnb/oxwYj9tQ^[fT%oBa?;7%uIZ$Q7[oB)3a@82)dt
::D2PO*K6&*63v;p(SQ)t$lOH!)cLG*TLv8=He*GG;7;CsdHpki%mP<CbvTTA;xMZdwipIVp2Hn~;b+y*8UAr5R.#[8ES~r9qC|)]ZLg17zko;B[JdE55i7fPpR!4`&XlXsL
::q&p1$wESXxeu\.Ck8=&gaXwHYIA][%t!Ov2[U_74\vk9hD@g2-Z@q(5+QCVx1g`p-sU+2y{dWYfp|#Xf{lI2$*wAX5m7Jpo1)0gNHGddgj+Fxne7v,*Q!^jB^eM~,U!;]W
::/EtU%\.sY8*c$4Gz|Jw41s0oWw_t@Om)duopj@o,Jp3rPEnveF}//1eo`.JmP6%4~^B&uxXQayR5O@frr,6,|tf9XNbY;1ZomJk+$7h*/#]QSw[Oiz[Jq=<!<u^Sm$cn6w
::/{BL\hf^#DVj0uGEZlR*sr(Pm[xefF2#luIb#kAjr`|s9e_!`K5QbKlWq$[V731]b;G!wfLe%]u?nnDQ,jm)GH*^!Egb$(l47vH^Pb9nTT&4tt[Zu0A3btuYC0keN9Q$B2
::)u@{q2S<<+_&rDY~\gZp&dfPWN}HOm4x|fX-b}&f25`ok.|uTq8LdEVKDWVPI+Z/IhjN-3QI.,%?w\KnHf@u!U~]%AN|0s$o+;@g9m^HX364V}\J6)eVvUC]m%Mnc3oVpz
::]c7i+A}d2C#.Y-oNftz5`6cVH,-9AG;0R[hmCguKwo`Z=o0T.0u8RQz`[/S1y9nH,/?iHS$[/FSM~5da[<VIw!ei7U}#+s4ta!Nc2lu9AHrG{EuIsF}\>3a1[,R+cStvrm
::{Au=i^wP[4\v)ye217kaFk@}YRCkDh-GSEz?-#y!iK)0e$C]}Ru<T;Hpw7.JUqq-n~${<{itdSs~5q4uW,VH*Z7(!&i+Q0mu?^0A9ku=1jk~dyI68m~T5r7[=t[LTm1E,G
::WdP~8sA_5$_&~*u4]@6rXleDuUPsx]@!LMv\MQaAvW.iz73JJJy_I8%dqR`-qMq8KIhYdZn$jKiv&Y*D[ZR-i_VUt_r]FuO!{d4_u=OFAhJkV}yo[yDq*}z_$(@fMUcx1`
::((fU@QJZ>J}^\;PD}ITeRl/]<=o%l5o3mb8|N,OI!Q0H9HiEgxg@92.#Xh^TzTA+pq5@6e]<u9el+0y)rVkx*Ysr\L%1?ZMPyTRWR=e*E7{Dp`cwZ%[A!p!xJ0yg`&mYNm
::n^mkTS(=FP+JxvFlT`EuZI(q~lLv#zATb|T@kWxmK*^+X-yP|=+S@tV}u_zfl)Dh|b/0@?=bV$`8OrkLHl/4zNvWc9hOM_GrHu$X\gwsss2Z]YIHg=!`T^it=8?LiUx]7>
::_KF5X8D}e0v-aJjxAeT#t/70I5m;msUhx)m<^Gp|gx/j7x<8Z)-M{QkiVCJn7qJlJ-q0mjVb>B>M<6tuIM``[MTLrJ+q%(2P]b@!YdO[@pUC`/F-%jJ=ykPm8b<uGg2WXv
::466hYE{l08|Szd[R#AsXcY/]>_<j5FFQ2M]i>\s3|vs\2n40s_L%}L)|#A2>5Hf<)ver;XKs=KO1!m6Z2k4A0^_-}Bv2Y?{|N]-j+r4;iaRz`!VenfTorv~=nP|JNwR52_
::]3,|rB.>VP#XD.<5ZZ*cbCW]E0dSqH(h)%j+V98GLd=Hln&ZQNylh>/=Fl=YemgTYhjac84Zapm?QR^^\yl`-3/EX`T!U!l-.nUio[_tG9FrsN9![c,aQDQlkNJT3P1#C!
::h)iRIJJS=2L*Z,_Rm[&rRX%c$uaS$`xvL>`i);eWqK/@N(}?aHIFMxMvsmap_-Ok_{&69Ey8h6;J#6sQ&Ukxps8cm]W/|g$(<vhvyB0T;]4DwKF{P(ZG&*Q99tN8foGU2~
::3[alV`HjoCqrtJe@&V@E=9s(GJ1xF2NuM]Frepnb{cOS^9BwEYv!6(2cb;<=7hoT3M1Z{7>tL6$c!RDZQO4l&LCBwJt-$s!+6JHeMv]67g4fQ%YqvKnpYm<g7qKNNVrK$e
::r)S?^Bf%@KA|SH!^_6q-[Q+M}p=*)sc4QhWb^i1wo#u~q+\LkvL}>!kJN}^0eW/f^F|K3,zN`&e|}dk$+;;y4~n$zl0<b7pbd51jH7Poh8cczU_`4C7H\9Za{Cf{Ve!WC2
::)S;?C]j~a/LVNhNK.?g|YuF|3653[$.oDv.w]jIkcSqJHUm$lZaY>2Wnk#Q6pd@RL1XvdezOhmi}NdTqk&XLi(KPh66$dz(LCEF.{K5p&^7AaL1C6|[sNHg1fJ~QIa)TT{
::<W#2z@hV}2F\&QaT42UGRF!gl;qavh*(6rKomV.duQ1\Afw&]/Vt_IX<PxnKDe7N(Y#yY`>gq$+zzjo&+TC98Jo)G]b}Q2Q%1,C/%bY0DJ/7?<?,I}.X`i0i~JJERk`2I~
::QZA)OsnsFQrNPVPb=JNs#BMgsL_9zfaV8g]Ibc3~i[_k=J1=2S=!8O2B+{c,,Nw.1o,};<&[t\01H>D#v/a/9Zb>N{nAZSZ=3+z)2U2*lj3<Kf;w]<,*6$*z-;}YAWH-b$
::@W~4%gQ$t4O{0&up<]hyC%roh#5ELnmcqpgrQ!e|m[58u6s-QnAG8lROP*j*.5~5R$b$lee0#},7GTNSwgaf|F2i,i>Wh-Y7PMDmOW=7t=>+^v)MHLhrk(GDL6$TRCxWWo
::@TxI9+\!INNX3`x|ai)]C%,XU4xQTDCqVx.FCe4ZqM{=AI(oG_vB;2e|P|2(_U>lkG`SI,rUD8zCf/oaK5y[*E[[DhkULx^e~KF~,%UcwWlbr[plup!e5VQr]`DpKSdmxT
::[dc+-&tV\^rt?DW!mk0`p;#Dpguj[)$U}P6bvojGm@epDlro|Ls?SbzP8[}a4Z(*tVTN)a?1qY\_5_Jm)w;cECAQy$XDGpnJtHb]evK9iIp&g#k2,7WlyCLDB_8@uPT/)I
::(Q<AcZ#/^U,{+G+nq{tN8,s)W(`Y_qsUeo$G6{mLX<MxoF$zs*);a(}p7!0UTuoy#z%<,ZY*9@TN!5!VDJ/[[LD<](_m}{}`201HcOr_|Qq!$5H)Eoo#@E{+]^d31YXGz&
::B]Iem$`SZ-RG~$oZ]%?|mCg1(~\atVX]~Ze3~Cog3X[C07Rs12QH\~`*,@\XZDA8-Z9_v6HS~(G0!\^a;xt(<&&IxF_Njs%67;+?.1^%wUL<MV;rHv_Paqw6vbs#KTkj?7
::AH-UKdkmf?Rw79yD6bq,\3v%s|Ai|4(lfjJ58pMK4C*fh18Ly[Hov1ZV.>B;dam}t[Dll[(`?3a>nf`Dmp,WAC.$Mj]DPGBVEFv@_lp[WDnbm3~SQr-4+gAleo$Eo?JXZ!
::ENpmW}b<p7QFNa~W5C%_p#^Fis2a.Y#&<7`([oS.z`;$3vlveybwSi2+U^Xc.3&/5)Nner2>HgNWPEG3Y`WUjV%0C/,?_jkRkR{NKSuv_|d(qAJaGGGP2^w,x_>swp}1|F
::._(O;c)Oo31%Yke]4sDP2LTo\k)&op9k%Mwk%HLgY6k;\9`RJBC_p8BSowX#<!).Jlht.*n@)Cy]f`V3}V5H\A|ZcKp}[7Q\3~xFmezm>|yQ\e$6Vz4k*`WyHN~02Ktl1Z
::evy/0NH4]1GY9)o)Qz&Z,44>j;f43~)wg*q$?ix}&P%F9VwIbsj!Wot$!l3{DW?*G%q}5TAh92S!Y*a5L,e!DIKTEWSJ|JV{DWdt@(<CgE7\1{h&A/;\2%cqPfpSH=G\/H
::F-yjM4uc0bVNfOGF|,~6X(kFdB9+|%Y)sa~r$Tau81&lC\aDS%{sY%#z>%u`)ml`\~ANBVh5lRa[;~cpphyA@5Qb6;r{UTI`q#S/`{[LP2M$6vthMEHh/O\8d#oM)YUeSp
::pLlw8AD+nZWk,(]63R&QVi^Sg3Z+l6D)VLT=CLL(zI_x7iBCIE;_P4/H54m@pdNT`7!1J/)JY~$&>a~eGl3Fq?sd*2m`>s|`#Qszi)D$ryo5eJaSx[Cy.8KQ;!V]`WYl#a
::!\;DhpGPz+_TyUZ<*0e];QX2K5QMUmk\e2EkZz4Tfr27$I!3uL3\HtEzS4%DuKY$RW;oB@QW=bamV;k\r`s+DlRfjvqW0Btf`(W&},fm;$svzn=hWv|7$Itcfl0G,d{Rz8
::gOCtF0BM[=i(T1o5}7e/(z@iqZ*<l5*].Fc7`G$!yKp2V8)1&)OA^$nY;cYv$+pe-%Tcxdq_W*6)vOf[IT&Jn]],8N[8&Xg232!qtdtq~4Biq)_sbw`=%`b3=wm2yZ06dE
::+S2h[(vJr<whIsEq?$X+1(E?(tQ>KSoqNp1Z4huTqMW(z\M=U8o7g9Y#\/L=[O>o&v9,/us&iDS`=X9GH(R\E7RK!91-pld0?igld4b^B&IcfE,g#R#86(m+s`WLH[;P4&
::b,IcNUF8hP8w#I`7>WJb)zU)j@]`N>L$CSN9jt6oN/*T_*?*i<&Lobe%bl.o/TYd.Qx#5y!#nii6no|kw5/h4|<VD2`lBPs->[/E/[yM%=}]N1-u/cO4QArPoOaMFJ,be+
::b6YOX/gDFDQa&CD@|2ilpD=;3lQxDn^S+e-biKcK!n#u#Mw<K/2E.EATl]\%W4kS>.K-E34wI7Nz&t;2`4=o96pm05p+myB@4O>M)V6+i\^Ouj{\cHy-$Xfa!9qp&eJfX(
::tp;g],U;31Q]eR2T7hshJ>Ieh,p8kwzDc?MQZmXt-iac3E0NpW+E*h23lkcH2869g^Ixcv$?*=Vq5vpXt/PoCk]E^kj#L/n{OHgV6RKIKT=Xd~C1Zn&}=]|~N;Qef]^0wQ
::Q!E?(nlP(M=%^yhVKk!~GVoz+v]88g$A%WeBo!T&297ze3Th|0j=0LDn}1)\f\pc@s*\(p)jR;[Zn,L!&/O~$neCOMmRrNzJ`z}X)I#w,tp}(DwlsFiT&Ya9^;V}Bw%]^L
::G-G$]q^*dX1q\}V<ekPO2OMg*B#QJ2=]k~A>Z{]32hmW0l!fLbPj]o]|L}s6p>u<3]=]}r}}x2M1FgF(BL^+zk>tjm/7pfyegbM|5a=<w.q6DDnI*?h;S1xBe.6d+M18o6
::Tb0AejLH#neW%K%Z#v777N\#_>h`)sb[Q~_v.e(OVh6K3dxc~/7ClRKWfpD6L%{o_YE[LD22n\![Ml=fE~e2`!5#Kdv1Ls&=|)HE0ezk+d[Gm$E7qv+9|3P\;eS8oDcOl]
::GT0`0uNIFN0w)v+QXW>%f;p?gn<VD_o\rw!$liii[6YiN[ibJkzinS\~Dnu9={eI(._VKP~k_gsL(!k?zd]1l\mVk,R{{6U9G]LeNWsi,_>{se7^_=rpSHkkR=B!OoJB<b
::I}>%5+7!^Ak,-j!GegJo?QG$TN+RYqP^?J>u;gvXSRDFAT)YQE~7H))FqF`KN\x$^0N3y2Q5U<My6eFEgm-DPTs;%pnHg|>@(;L&ABktqy6Qn/t%KMt~GL6[tf}>}_q+~t
::2gZxjcxKyoAes`;$VwyL2t9`(OXl1SMWB3n{Z=EVd)`[r$i2C7w,YOECN%laqSk5Gi1]faZm8O~1<6sr(*QJ8}t9>5`zMCYLl,*Q6UwpqCF-\sl/kc_Kh8k}5,8#<3.CoV
::AQdxxVtC7`+T>r&]ff\$$bX_.hPpm^8s0cs8m{xZXoK[;3gahu>De>)6>Pxd>>1iyvq2`!`AT~tH&__o.dX`T^]*K0Q&mj3b$k1|*hq*.l1uvHmAMB})sO8{iw`nXsxzGk
::M;Bhneg-N;^sy[k^1vr@Nr,RvW}_r`tJ/E+N%UBD1|G`I^-ziF=)_(!]#7UGThCg/)*]l|Y]gJyge|bv*{CB~5hU$.(rW_H082)M{&P|]Sx-_WP36_^BNr1#A?tQ@{o1A}
::}4!9pEugOPSWXGoUU\zw48/HJ+}Nqx4l<}OXjm6LaZ971&2pVYc{x[R&MdfMx%c<3E;gxrDZl?j%zjsD`4lrKxcsCMT|Y$XR^@f(p?>s%(.lwp|h}OZYB?\9pv3=`!dLn,
::l#UV+]oY2y2BIw`^3(T%$*t\J~Z4E)I.W6=X7#9va|I5Q;51EUjoH\Vk[l<~NZs9B~$n\[$jgUH124Qrscd;P)si>/kzwD[yx\.-0$2q^x.49Vb1PyUu~ga<BE,2N2U{0t
::A}Al%d|_mEf^%OJ?EoeYtwZ@{`j/JwN#]Yf0L9uyQiMR(sgk;fb~6G=aP%e10B}/[Fgo{2xy<35xK|)2L@vVj8O~@0V_;<lzvs;8$@AG|Y|zynPye|gzhK%%j+2?W}udUK
::HXJAjiL(zhr(kj!~b3u.&2AniRoYYUuu_ilaz*RxxY6n)zRmm(!\qSd)qngwrmvnPUS9afw^c@3]nyq8|.u<mD[D/TEs}1FGw&1]~dLN4D8b?h;`.$vs_R>1X0<BLd;R#.
::9)!VLk8!q9U8itRZDl(\ERN@;ELru&H;F?x}/T|Nbx%I<LXz,Dz`_C,R_xR-GhL5lM27pplrB^B8aY6HdxJ#`afK_[]Q^]m%c=>4pozV&{C7(Me4\K,4VpA/MYa(%7#E$1
::XH;]AA7klj]dO8S(q,x4]Dd<zZ]qx(+W>zS].iy%DB,Y>^_u@Zv%gPz9q?k6oiO9M|th5{DLH|3Pz%A3+8k4rZMo)AH7a}[!gEO`fR,IurG3Nw>(2+w)a1+J0-@Y`1O,Ye
::uL#sXdu,v=b^7/p]uZZw9a&`.{@,<^D5A5R)ql]0oL\Z`,8%Mk`;12FIAOjF^YHf.#_xx0={%PBaQhc9&tJ@7pgmEP(@iVKUa=hO2KX2Pw`})~Wj2D1Nzez!B8rPV#;zE1
::*)`9a<oHpeDzx*wy>5Ipp!q/6_CiH6<e_`AUP-P6A!.UNYZ4)W[sDwP[*~N-tF\A+x<Na0?_TH*%bl=^.pk*8`|aPUrqDR<RvGqcCF92T~q;Rxmv=^{/,K[(8eihU;7w7g
::Mtp;#cne=@Tw[udh/7&r*9Dh>.,]i,)7zWjeZvp=bdXC(XlF6JE|x]7{s[zN%Ag`P.+w_4k%S8?|&B@36QB&aP0HSqKrUu@(iz5bNtFa.x!$kI]<ceh55hMA!3+!n1MbUS
::RBUVW121%NndvuU[uBWxTqXy2OT|FDsPi!Hvd5}TpIX%#v))R_XZYYaW)kv|S3iD8o3>{?f!G!Kdt8j=!8Ugv`YCBsD<,<~&*04;65KKhs(?|g59(mPqujmaQK\91(;Jq!
::GwWhsmQT\3-x/\fz2,jA>r1c$GyzOqs#&ZmT<%rH5B7tB7=}Ha9jkeSp~Uts<.K=Dta,pH6&C)pul|b+*gS!oek7Rgq/BT3M7,CzJA-9Hy;lchlQ8^7-gifvxBA{&|fOR2
::L;B[rd0$dw?wJsP016bUp0}2y=DKLwa)t6zN/P)r\xq*=m}??uk`h~c3#ZnDDFnP?a=+~DQ*eECwNF@`*+<dPKbX(W)J|xX!Jz^VL%yDq^(oDrM0U2\(Z~<j+T{A(WklT@
::_0;]piwo=*wtf|fT@O)}T6L`Q$~#2*n@GUfSqx$MPkLNBh-gM^^ZXm(|R|k;I!AzN;&qJs#]xx^bdH^AwU~0EV#28PETp&jV~KuN&T8|X1oUanh/B3-HsL9HnQf;]\D_dw
::&@HP,KzDWJz]i+qq!byV`j`R)NJ`opl3&gVUec1&C%-yu8MZkw3-%aMRUhS^,A[(a<uk!7qS+TEC#gCH2q,P`TQ8[J<gR;jRz8IZ6cLo(4n1yuP-DhAoz>fe-(]%asyjDr
::05B%8N2qK%NoCr&LgM.s%AVtn)j#$8bBS@@\<C>j~WBT?KV\pAysmIgdDK(Y^ME)ZQ^gCkX8;FxhH_lr(WTS;aa$G$l1%;BK#|T3,&2RR8W84T{;}Z0tl5(/Gn,YNW%4D)
::M$v&s&`(^L[${-WLM)uB[Vek.Qo/?\)AcsFv5K#(SqznRF|,GDo1i*B|x~W(LQl(Iv@<Uuy*e]iFLT#z5[gAk[+bfEX~s~aIvzO_gRc=g3i%{(i4dBURh+ajW]N$rv2RAp
::uq,1VuOpon[13dKg(ch<=`;4-)(uY-iNZyHm|&qIO$4Zh12%P8|(Jio=?kE`iF2S?vHz!iWujVsYYM54xL,|L@U5iDfIq4[Ij0G=iKjcdM!!KHFNT##Yy`+5Edm^eb8+(9
::o9bCJMv)<VLY(FI[U;~/]YMmWV(dv0f@A\VPwLwa)T!hnn5EGs`*kxY%/5mm{>CD%]dkpOMn}^>Yy2)U%sLE|.0#x[wh9%4,kNziL$P*Enhr-Z#c{L(JVnY3JH[Q<B$K_m
::l]%#?#ANAez!|dXeDi\LD*j_+HbVXH]&}>_`X/5%lg6mbF-~j]V=OJl<&lN}]p+E);u{`_3L7EKj1Mdw@LbFsvV9Hx$b8T@V.Q%foud8UA\mjAB%aUn8*-G-fX5NFI+z)3
::#cBph_I}t~]4icJ|H@t&%x?qJBX*My%g9j#d[M3DmLnB,H?oSelrAR^bxgi$0H9,isIuI;XQ&3pE^{ke-7D2c|IBBAYv<h,zxmz*II!O2A=IAxWfvuOUiblszE?#35]Fk0
::fI543MDt/%+tVLMMF2&*|Fy1H}qm4oY+$=}\ajmvcO1$Sncal}Fjg7rM`|Qcyhb9[E5REL\QIoLMjz6?Rz>ttu;~&#=&(l|2|SoWm@Z3!3X#R_z|LY+9a,1+ygXoXDAib)
::g/RTI0?r?)UDPNhB6FM;836\S.e+&|D\VuL32<[4^KO40&)-7(|w~;,6kr+#le[0Z2fp\@[6v&ssAKL+JyWC@,]+O|T]u@$4#0{y9xdV`6hmS<f2}1emVczAjyq7W4[x/N
::(@%zZ1w}F|)/%m(%fgIZq631bP?**-1}N\f@A&X#*qhmtk^5[M.%z~c8)?i{~yp]gJiDL%Yaf|-I4y[;$1T$hhqj*$Ej;_Du^g)*Dy;O[1iva#Y]Q/D\(o`Q4%(g#gg_8@
::oD~ldOm9Oal^>=qKH3l]9C$Jk<PA7jIaoD45.OQ^y@8fMF/emvarW9;/VgGawMph9}_8mZq4[&k>Ib._I~hP)UaT4A&wM`D49mJr}E*+39I4%HK_3t[I7]oYVMDlIP4/M)
::9/H&^pHd%u{z.41DCMX@]bv*)(0J}&p6qL{@mQDa_6dn7BHht\6m.m1A/nz<Ois%\o@j)FM5-$\&G;CA?\msv[M0/Th`$WhRJ6)Cn$xCJB@MqXI+mKk[?5R?rcynPlm((k
::NNKACv2B(}DO<qPQ;Es&*y8iwv>SX7Pat,oMVTG?8JEAIg0f$LVs.4]vhZ%&dN)sQkZSs0VKYd0!BQ[;_uA(,%/ACRZ18,#(sR+tYwv_AfyMP+-=+1fG,$Ul2A$h8SIek5
::nX75bG+;vud#k;6OS096@TL*-uTR-tVN#/cTch;+r0<5!9u9)t.H#~8%}U?,(~}`ekN;X{_Z_qL]&;RVooe;Q+)>I[dNdL~d`2x$c@aD(a_+>yz0kU`;6RS7$N.VQX;+{E
::k}eSKC;lrJu@~3Myad-|d\?*/gWO71K[?pC2vA!I]h(RA%m\r2^m7ha`5^VW@1D15,nt`y2,3M_z^Jzke_m=M$4erERn?{~adm7?5Fh?L8E(B5=CS`pcvB1{QQx,W30CjW
::#3*iMg1!uxpr|6q_CnJNJdJr{|[xlG#wUIt`5L3a6V)uY19?^VNpV?u>W7s2tnNL#62_fCFu8BcCBmM=vU4`#7][g!j_,op$;88;qH4*+9;~QyaA->=nWFkekKT){a<L1;
::d|wgMx4+(f^55PQ~XA;UM}>*bnOe~Kgd|V}$gT9Bpg11(aI4?!]6s4jzUqkEz1LfhA&|n(ym>ZxKv)]$>7~{l#5(PL+C,O]Z8XH2&a[F6djF<=>Ks=1MganAK8B1{^gW41
::g*(h$[OI!BM=}{)FS]GRrnpf0e2]]Rg{(hxl5S4#aUrD&=&*9ns7niAo9MyveE4j~$iV`vvPmBUbi~$-&kx%AP]OWTu8D/AUUq0qR3<YI{`ih`+4t#sg[J8pIKS,dkv_yv
::r&UYw)(dCcZJ*TDc^=gG~VT\f=+S{[jO$IyO9-d2Z\q~4NG4&r]?8[v9A&s77KM^E-C=6cMGI.rAFyX?diu-SXuK1oT{pLL(P!U+~*8It65k#5;l1UM5G&wD}_]B>OCqK`
::f4-OTAAzcuY,a<]jYue-iEf`MAF[OOiBR{ne6|U0@c-RaxS1W~rOx~lQVbK]0KvxjM\pKig#<OA/Zbxp~IbS{LYKUJ[*-K&_fYIB{dQ7BnJ+kZ]E3r#T~egTk%s*J3CS`q
::-L[YdgzssQJzN?Ynz3/u?$`ReJCdHd5,|+QwRpE|_|aVA#@0gA=j0jd/{R@v&!1iC8N}Id1;-^9HXU;G~Gd!=U0H)SBC_HHM8v4Ml[TJ&*8&Atzsl#95y%H)k9E?|b|$L)
::BMQaFkO2=cq_`#{[+gx.zH]BIkzW^;6Z@GGJJ1=_CTE~*/xPFtPP0R.XFD{Gym$4IfFo`8c+3&aAM.G=VlT~\-#VD/kcenE{gQbm%}h)}`]SpsAVx[fu4g1j[`j3,1Q`+m
::cGpk!H<;!0m!p=sWz^|=PTkI,E?UZuGXB8Hq0Do>[#33zR~_`1MPB6h}k$ut={q!{H80!f$X6moSyF^3Tpo[W-8^QnC_*fuaQC!=|au)#IUCg~Y,hK_L\zybKwk9h&#%V<
::3tJ*rjLh5ctzw^0ln;K1)dC+xE{,oM\=k].A^1[CD9.#r-&p-8JSj?=XeFNV*3w5,In]u(R}O~fPx2b74z*nxR\+U<Mb$A^|thuztKh+<j*^^HGRM|)(j{kNOMT>=kU/8R
::{[d$({Wn&jy{ofy,W=m4LGX{<T{U^,]iU=ESsECIg[lF\w%KG{(}x6](6]McuQ1K6N~7&,-uPbtX#Yc4h.z]d09iy<\]j}3?<Ao8._KCZ^vD/$XLl8|N~bzE@Ga|YkUbQ!
::$)\G3&t)ISP$JiwwiFMgo&k6PMLykAoMOp$<5X)jK\~mlV_Dfj&mXr->O`rlw|Bo]_S4mr3zROK_jAREfVf6s7DFVbT4ic;ZhuN1q9>,t<<;SZv?k\r}~FKyMa.|mnVj,m
::XpG<C2~4nUwOALD,mP`R$DyrZrl;c.JHkBn,rDHNeu+7aY`l4nu1-+Q5`XHW7~o}-r6vYZs;;9Mb)+=d|XR-r3!;a!Q]mP$TWZ5iyoDA7Yan_s&5~l8!WV-#`u;o>NWzH;
::=1=dQtj(2J>eLz/bd%O|N/Cn?mG+DTPM[sIw6LJhOCm[2^)#z2|]DdKAn#%jc$hfAlAGrB+0iZG)`DXS`jU@0Y$uR%poUL>1}cIgqy+qU/%Wz{S?jUWS]rEm6J5929m97O
::]^SIH1.nK,+P}H4E^,Nr&uK)Q_@?\jQvtl9aud6YrtnI/%8lS<H@qGm|DSH!0-<+)iMsr?L9F898N/wyOe~I#b7KGjq8!?-OxOjksecvEBpGrIddkg9oh/)XC$.Ji>BUN}
::_I3GFxsjU8u(VR$&cw!3)3ruv)O<Idy~`s|*C/FD5bs<L/p8&}CXLHY<Vq|J~6q[LQ`Rzm@Y.!cE>[E}eEts;XwCu_SR4qL#TBuKb8#4.__1V-]qckf{U<&XfL8$N/bOLT
::bX\WMyEhO.f?E$BHr},iI?{8Ew~hr5pa2mX9}K~r/;h~xE`X70\Ju5u_M#qH3ahsWH|h`yFHr0fC@SY9^T[9HgFopd[Nj@y)HY=NEa;Ls/4AuDJv(ra=(DY;W^NGO61ZKC
::tNgWedty3e86TD~kIZEv!!w~-mk_i2]k2H#S5k{|Zs-Xz9vE>k0<\(6/VX[yJA><Oi)JZxYB--h}F{0o}.SOlw@/51MF3E@l=UQfB=\NK(tx=~uvlhfgleyU@[~\I~e,O2
::xZtX-j{(gN@r\/zm/2iS;7/ndHvvmukbskf8+Q*=5waW&&XNq3_5uGvnlma;*[^%sm_7UH*^`XIH\#me8RIZOMq}CS`@ynv+~E};-1YUD]K5XD9>W396%4[!3CN|y2e?)0
::PrwAUpV_fqGYBn}OvI/|$1W{nqN/mT\{N$AufFGMXC8qE&)ornj\R7H|OzHAmCn,U73p2zQX@RVEDA=(sJFr8Ldws|\\e{7x-2eqYm9~o%!B{m6GOk1lwdA|}%W2_(1Qsq
::8p+ZNxeLoiw#@p{8kLjB*Blm`hfxlO}z<}.\,gyr]$=jd~3<cBlKJep3{g5.b}r/Z3;*b%|q5SihO^`|!Z0}nm%c41)kp8E~<f9P8?ZB&Fu_%hHz,h[D8),s=pv69-9KTO
::NKSv~{_SX-8_@fcb7-XOE_[2\pW$,9Pw=Ht<zTs\C}f|TKF!(u0`SCcT|ZG6ew={L,3o&2D9(\$E)/P[tR=[{)P53nBe[I;YA7-5h4Z3vHD)f=?dvp;5OQR(pKW2_rk=J^
::Sj6jrVX;saGR^IrJQTRE,.lj@DHvq=qg7[xr*xX6vJiBSY(Jf{1d|cbbYq8,`e2#8&M;UCYd*Ijx9;!]GMp{DRGVDcwfTbe,*9>VPTXmJPXvbmH+e13`9N#~%q*@?o&KGC
::Q7o/qo^{_C\C%^wmx2<A+h7~h@_VyCQg^o=e|V_?s*TYuT;Rns,hj?L#Fmnv0^$r#~DiX&cmlKqE~(c0]\!GKw~Hk]k?`@?ccs`8Ejm6H)]O*3.7?kHLEA`Ui\hzhW-nh^
::K},//j@wHuRJleC\U6XwLrB`N$oXzyX,l(3d]FV@YZeu+yyItprJ>dD)./O703S!B@%=/`YOEl|PnIO%|3ZK)7MY=JRStMVBy<owe`Ta7L`)h~7g4F]0gByc)-@,b1t&r&
::1vDh4z!ViRSzHjy]m6fA{VStjwlwg7@/heP`!7$N^7gxBRaCveZ=>-c$Nz^-n#=Z>5|&Qyfn*,%Iao<I.3{yl47Ztp(GU;xhwt&4D5s;aE?c),QB&$9(4BOs\-W`V&m9E1
::@?zs`/e,SQK(l@&A/vUk?s\4Icl7Lje2^1]Q<zeddO+ust87zWUrn11+`()^81XAxPZ8vz7\?;`*u$nvQZV0-ZPGMIdtU^7v,YlwEA]@#E?ajHKHf8lP.ttJj&%K|6sI^1
::m)HSlxG@z\>,Iw!WDk.Tyo37T8}V{zoUT4<~}z!vwNtQ~x]osHAEc?4W)Cr1m}^1-qqv&^ye[C#Es[NPxHsQR7\|\Et*xDe/5_-o(8#Gg@s6dfS4A4~b{(F6HOo;@`o$_r
::/4tN~+ft.A^(kh`0t|b;iut)*C2*1Zdnp^)|3!I]`+Ha{Jm1?a.m=Nah)E+MAPgapd!#~c92eC/-#x5r.|3*iHASfAZ]{NtRUxKzj5yP=?qYyH))rAW%K_{B%LXn<6j(pi
::t,=[-#wUQw_8WV97b$`C9WHO^P/5C4V7]uFSyPFzTzUwV4>kC2Mp~iV2!YlnNxmR0]Cb@spH8(*ck}KQ~<N\s/xY(x!(6Gkx]hIU,)OuB=PU=}Xo{b2Q}U)7?pVTi8N9SS
::-S!J3y3TdcK.o|HQ]N8741n&IGCdI-Fs|6HsPG,l)II]y^&|/3Es#Kp9qyS5X%Y+%;b(c$Hb0eAbEqa2D~Q]fc~0A#>`]%d%8g(t<B/ycWlq$RA}6@7C%]gHOLw@aH9Qu(
::1Wqc?rx&*1q,@^/;aZLPcfQ&Lt%N</!=nz7mnlU(u+Y`Q.{pPCVG`b/bM~|j6Lc(mpq\t%%GPLK)uG`,Pctyk]Oj5>3B+[%=!{SNYO4`YhK@xI?<_!U4&l~;s37Uq-In<?
::Fs%!}{Bcsp}1ns>(egBxbr9_~b4,n?a(sgz7d8cW3[_LPPKL^5EA<v0UovO`6GbD3]yohdx%1HWUJu_38}M^=1)M#Wxuyr!4B-(mE%&&s6$;%Z\WginSs0{xtb,E}mtcbA
::t],;mGhhKlXF!~/L*1[B14@Ez/R&htF<c~gyxSq0.!NM?GW=\f46sth;VHu8zmq`e<r$Ul?>I*dOQ-l^d]*1~N8?l;HK]-D4#r6-N@]DuA-ZP6O3>9tvCpc19tp-HC`[Ze
::C!rr74E;G7000ib&GQbQinbdo`iwl#P3yoGtuhM-#l9e;lkXOIS^WVWwar`b(6x=Z]*FGGg,@In-yfn85^L@a&[4BWV7*HFO=vwT_<N6D89gPZnP))sIG@j.T{?21?s{~)
::GDqTdBhahW+~#k[yg85DLVkQ5L=}.T>-#sj<`IB=~xGV\[TCom-J&?1]zohFkjCA\4-wMRpC_k,Y)X5y-/nui[++mU\8^~-<Cl?J5+;HuL!jSA%SMUU9_6TaDlN]UVZ8!<
::,8ONw4/i<RB)^!Jk^tf^-A5Rn\[.mQWuCrkKlr@37hUk[i7cy>^-GF0n<I~`]S*^SX+{s#.o}eeKFFm6p+j~Al/Ti0GI7@]uyh2;DJ+ITnC}|MeUXTGW25#nWE~)7\adme
::@cD*ji=cheUrAfQMRBv;mAXl!oZ*rHmQ3=PA~F{f8L+s8[=mF(zK.}Kl7;a!8?zxWkksk&C,mysd9<)+!T2fu8sLgN,UZ&runT<#|ViY`q;vxL>*aj&#AiK(RQUF\Ela5{
::&s4Li!eTxyM#v=;tqhUlap*@lFv_q>lLa;^iDq1`pdr;!LKPs$AUl)YX<ifiN^#T|2*r]}5+B~UNr+MQ=QJ$3NbA1G9.sk?f$pr!9KuW`QGn}4b4ZJzm6#}6)J>EMcEPgc
::#Cz.ebDcL<f&0V.&B,gUxk\8}>-J/)#b/fC,P$\9<f?>$=Acgc~QO}k*--nHiiwr|4xAP3#Y]\IL*!vfba/.%v16{LN!biC*OQ$U;u6Qwg.6,kIAC?j&-3pr(%83K@cE<^
::+lTMX55Ko,zA#2Rt2\94j(<x\!!aGe0#ko1<pp,FoCl=*;?Y=80JkSrE3iY)FIfz#rf}8Jo|,_EU9FGEoKFn?DX[R(6c[J!Nqcq{XuMAT@]LN_0D`2]42YlGqzBXI6D%Am
::?3>Aaa{2kw(zgQiH$9,\rqh>x\L)~B?znLJ`y.Q`Dip58i-%_4xe(;bi}+M<{PJ|_w<8#XHK*U<.z$R@wShs2,DGfH2q$c6\o=+>_m])s%Hy9%\}]5SC_xu_Y@183sH^))
::`dOt\L#5@x{6z(u(?Ru5ug~#>cAbTrHA-)U=6ge(gqT\;GjL$q;_{z/ol$-&FOlPKQq[KiwDw70gx%(imWis)Dmxa=ErjOLYz+?p2MF3VS5wWQ|nDf$9[{AHy;cY[6r+Vn
::Dp$nyM;>sm8~s<s={)b}&y!J}HI!&@qT;t`4*o|]%_[7ELj6P=vdo6!W^@PsUNS964&&kjkTKJ<OCGS@n*e)j#U+DP<c<ZNNj+%\e3W!X.Z`woc[N|fWLTl@]vr<G~iF8!
::hc\V)8)(;X@X6l{xyZinmfbc.TyJa<1$FzdY}X}7~3JS\B$s$)az_o1/B<9*H}Vo(^)I[)CIYqD%V,yMHWmmD4ya>2KkJ!Mc$%\=P\W{4pIM<+GjVPz](Hj`;}9=kNiOhS
::vsDkF6J1Rge~/SL|$^+r\JEjPc;e.D>I[oiU?[pZ@vXjTnhj|zf\l=i[b8ME`Hxb$hl|xlcF4$N!=n7}Fx<=]e9`^LIM3UDn}[,sfK+gj!tECVhj@<||HifVL%RY4p{~q[
::j1ASl4>oZX91x#WGRUo4$[]Xw@-){O?Z7LFB^f!UJX%}.d>V?lne8PdTFA5/.QUh4`GC@psMQvA%9Ut?a5Rj7ayD2;/,206pNADMQ/kB/k@p*a]{M^FzYI;V\(fJV=gjTU
::U]t1#iF|5x_9;ymCQ,y}5?}<&9qz{Z!mI$y{oBl(Fw]Uu&({EB+3kjwx$rJ]f8=B>+s~,kN~L#lQ8\8LC5$3cwTtNkC3{P3W|Z>lf,Ob;o*9-Lwpqajo+{xPM{8y|Kr=~|
::GHXFJ$L},EA.R~HoQ10BTEb[Apep/0Il<@Y[9i_5Rno8v@pW#|\!4R2ka$f}.1[)q[4OV^x1Fqt4E=J7YagD0V~om`R$Vg^x*_6aZlKy6rhbU$WRTv*}7_@jcf\!&4SBD+
::5#JM3%JyGI@T_|\nw<<N<fY*MbcvRgt7z[i,~sKg.2.*&p{h{nO(%G~m^9pE,]UCeK?eIaX`5JOg\sOBde1%KcH]]l>]pzPTtRnC%U|/Z+v1LRbR?I}wY~;t0o@|b)lB5J
::@QSIFE1fXV+iuP_~PG<,6<{ap?b#C;#c@a6=gi_`H,^f@K]d,6(Hvw,ZBr$-I`@yomJHnyh}!X>6a3=N*ykj*c49)Dp4$W`\zK/>!ejVNPq](=D!@a.9GJKh`;DOcw*(o;
::S{lxglPek5n_>5rmuNLj?PJ47Ql/at)8b$t]Y?Zi^^,H)0A0p]0zpBk3&%7&\oba\Zq7)H7/nX~!aF{KJ9Q}bZ+0cgUkj0h/b.=Y-UnDsz87}P;XP,R&v}eo)#[/]&JlLv
::n3v[evI+-Ig-5Z>Qv[r(.4Dp6-~A(rU$)%md3H(iSI7_;(,O|6L*fy[1\KXM+$g1?$H9xwac$`cheeJn~%/5K&@JV/PqDyKA*cC[cQPU\,l^xwHDyKA+1}HJbOU%Tf60f$
::yVbX@L]2AFkoDoNI+;O-&T4]_dRegBtmy*%s-i!C2Cmysq8L&TucT`SQLZ^=K[kc#yT[27Kp3fJ8.8y`)SRH/H$~S4P@^tr80|(PPSAWN!ifhZ=m3$og(4Iwg,HdjKfi!Z
::dN|24HMzwr8+qSV`oA%?}cpLICPVw_{b;SNi/M1ybkU$C?!-6[+nHTd}e;<LAV~wku>HDUw\oM*r3/URT]Btpx+U.Hdz~TezMEpEI`V^K*?6S;LOYQ1eF{T2MG(qt-)!3&
::3B1VzsG]%%/==(;K3x2]EQ{cx>&l_F_O%d-MckD;hi]MpP}[I{%TKEk8~IB_1t-wea6.u`e$qpl}[NkG0L=pPS**wa+I=O&x[V$02SMoV7[K%8^WI5tWTz*zF}w+ehHc%&
::L_R^Ii6!G%/@olrO{3[.--$4e=z9z_z/qz\95fp`[<btCXbZ=0`Rk;Qo6Er~q[ZNiLa%rf>BZ7a9l$>sE9`\Yw2R7];ZyJ%KCKf,[mZ^>3IS+*ed<L_@Z#DaG6LZ@4S5E@
::7$<PhG5h>Qw6[&9;;{GJ1fPCX<\3p%+jA}oTmJMNn|,2fXXA`KA>Hxei36|{Jz(j@HNY0zw,AgSRvh%@9!}=%}W@<`^Ymn?yEv=|?tPXu*sRLk%|GS8^\rnGV%=YiL&jC-
::dORus{$7(4Z-gM_DF]&rUf`F>f[~XniK(IgPQGP,oKKFwT@i=^RonIw#`g6<$A)mW/`lcKWPFg$#6LbOF{FdS]1e]?6RRso+?cm_@lRy+rOMIwH[Qh@q9_/Tr6QnJr`ht_
::n1(1S(Qr/BD9wO&|!kjtPM/IP%![6*OX~$Lpi3<+Y>7(#tqknAq9IN^bpF3*]\gS/_.{8kJFw6/tZM=9vx#6jq@5mn8M~{wDWG=6pTSzv^.2_*i%X_VKy;zChd2Ig5dv^l
::5wtN0Zr]sD=X-YFP9h}kYVEii%n1*C/!?i}%Y*)jF?Wb/hp6EsOJk1YWwxdM^MyX(Cs]P40@Eyu|4Gx3<|eG+AUig},]x+rj{Z,)!5vHyrbWq[yDBlYXjOT6AC+[GHw0)i
::##\w+laaix~@z[%=KVG~rIY<piY/g9I=6w^[3@wiH&81v/63U$k/Kn6uhlUB!t)T{WgY<epBCB(XnywUt)[#FuqJWa_B$B6&NDJ-FvvfHol1)f=a9}9+S_;5>Q0{{!MEk8
::>;luYCJ<d#EFwLgSy]x%9(t3-y.?fD*B0rH,VP;tQ{\\+ii$5vbnu*Bb<]ft7wLV.1Es/L4/jV1%V%tQQc~~k0Xu|TY+,/zTO;>&eMczkb5M#ZI5X|;+^PJC+Cf}cB^o#a
::[t49cmcC#R\kTz~N<M<i<}G=xhAA3`AHjrHIO%`cR!]}Z_4oApIwpLY@j7+]GpMqU^W%9x6to*t%.&FUe)\#/t)I3[s)D1&&!+MK7z)JO=t4\l|P0Pl%-9FJm~mUx3t*hr
::R;8}YmWSqCe%;_ctcueyi]OVs$<@k3$[Uoq%;Z3P6h_zFTtANAhl$lF\95Xl[!5%!rQ|axUOqO}b{Qs&S3O_{mZybai7@)5<37TSoyh4~<&9(=E)]e6#ytnJNoWF#u$1,,
::.GjJRM&Rem*fC6uHH%SbrpK<zJhW5N5|ej$}5Goc`]_`_`RUiAu9<G(sPg4n]N7;~^W*$%k|2r+R}$Nj^CNDv7CD|\x}7x+\Gx(w>-yqZH1*SayqB9{lPea};($77xgBY?
::KByXSwK[=RT]NS`uuS|[@d|<q^?q}$INe7Te7[oc$I%N@Y5=P_)`wz|6L-U.fji3A&-jYkqpXb103,1|)<#K$K9<8|y-\dpH}<pdA1S]v}|cm5&y[l2#LL_7r.X-!{IO+I
::M5#s[/S|}rvuE%xM!9+Prc<sL`Zu)sW0c8|qqf{_q1Kf;+i~f4=%Y2d1DJO|uYvTzv1q\scEiWJ*wz(o%Qs+{9}OYDtW?D@Q\p#&qI^X+Vaf8k2tpd>BRt{2JxU8\5D4Hh
::4zxmQ^7!|fB7&y&?5\a$7GR`h^{2T!f*@S!J5W2(Y4ANvL-r^`5z(hY]ltR5!%0?Li8N6rWr{5fAU+0M>]mJKVp75;x4BY};5SQwpu2-ALDB2al2Q5{0KVkHA@S<+^$/9,
::]78fH;.wzYq7LiawD0/`RLq~e}r}aJ89OfFR4rx!9j?%3k~|SI&.bJlxEc+%f%0rvZ{g+X*q}GroL%@1HXi\<\qy2i7;_X@aI7[5rCt?r7C&LM`D=r3?rg.yRL>+o~g5Yb
::q-lnrQOa_0OMGA4sy;(|tn?q+Q/;ot^&e>R6^r0POGM|Fkgp<$U!y@9Y.KmyL{aKAq]kTA4)14BZO;MB&\LtB/+9;#|*RaHKg$x4}730%G$1Ky4^}r#0n**tsFx/`]L4vR
::$CW=mDmn$9`K^qL%-#B<DbQ`XzyF`Hoo3*f{[r;=p(A7F=K``X2t*fTiurhR]7V$D2m|#U4q,)BJ&`#/cvuYm0=I|s.yn7d,J+^0C_&rjZ;0s,,~KwLJ=_Iz_\o;*CKo?<
::}9#ucj|mZklWr7iv^knHK1y%hO]UY=)L7+1vnZa_xpC<z&kN,HT(u;G@lR{O+T#kaBzDYe>JjQ.(o@?zb.dG)JE56%k82ZVU;bNM%i7~_[oako3v.!hB!KhN]P@ZD@Hld\
::_9trY9#xMSv!~Be\Hm|7`CIJO{jO1d.k2@u3.d@>qHaSuO%B!3-1/7|(tV,&D=jAc[}oJb&RO0%P3mL$T_]~;?_Y!*0{Z3z\E5`QjAssBw~t#AGYp&VVqjoDt8G7GNA2xw
::W]q*njM8QJ?n7F/49d,cJ[lMcQ(WNhb?hyXjXiryyi5W/6|iEX^<qYp7\lFfDqM&4~^X_-XX8Q7Wx@$-6hjK;||3)0*#/O*&7+e3/zU94#b4Hh5]!|GZiSe+/q6Nu5!c71
::PHKr=l#*asw@rg+Xkl@O)F&M(c%X8#B/uJ6[)AP/eG1MBakISP6NC-0LbV+j^}%x4+i+{gP!h7WI)4;A9M|dB>l2`s!4l]SL0L^1qwqTQH.Cb];{<N._AMMY0HK6mH30*<
::Bbf8r0]`~.<ZG@x4JzUHgbB*nN%]7qOV6\[uGj7P4Lxo\[GL>;JZ*FEN{Bm?BULk\@)}HK[YD\?}\C4gT$6G5P9L1{xT]oc)CT%GFClC@Uu7XE(GlH!hKmo!F=d&(u8qcr
::|Wabcvv+^wY*TuYhj;SJc6oEmQ[=1^3j;Mi0;dIvYr-i.z]E*6/__zr|l=Xd,foW%}p1TQzzP=5vS2U5xOL!Zh61Rb@{|tBaKkFu/gh2t?{Er3zY!=Q3/,Q)#<=xC>umxb
::G8iml9\+iGdhRxyDli`?m~h_Qui/J0*.2oo\cCsk;!2^|N+Pip[L>nP\;Z+qa6K1QJ^jP8-\{gJW~VXp-J!w7U_[d`.CC*_+}p$0N4P0h]4Iu;cy.!?jsa&3){bzt>03D*
::rg~D=FsruyMY2Wg\Po@m<9M>9|g1sO_e;b_7%<kXHmi!P(nZ9wnc@GTRe8enY\HEyMbnx6L^qD[qO%UvCzDX[=yA<oLsfa1>e?HJ]WE_E[+oS}eoG=)/?_]Di;=).+;*<G
::$`Oks9*5m[T]Qd~gFHD~0j]4AI\_=)A*)Y-I(+HJ-1kq8<dtdm_q8kE~<P(3Nl@R9!7RG1$)5nI1#wfr.@{mO{x*BRL+6/c+>X-tSoU*>#~m4mQF[G~122vDCK6X?G|pPZ
::px\?`9zbx/eCPu?z(?]8XoD{86%H9-f;C;2]SC5EY>U<YQi6wHVM3BF1}d+nnb%PZg>G(gVyAK^)4I$/%Q]53]kg+hYNa\h7E\je79@X5_O?c&FS])#ichl)![E*-uK[UV
::cJ.3e0yI6N%?H4+{Wzke.@,1<KgYt8?J$g5u~O9j_AUL=yU1&wa3C9Xz1zJM&jyPQ~Ndqz87-pV=!+a).QiqTPpAUi|ZC,WRh!H4XZ*HFc(aR/oE1B)jwhHlEn4y.h67i*
::9ZibX%x=,XMTpIuuX+n2whHqI,`7aM6kF[D!.JF`jnwXC]@Q$Id|&M,p1O0heCMd{?d<*rixoA_qZv&cN?Fl+wi]?l4}oSa~PX}l/pD?\JT;MKMqm\yQ4aHEk_N^6a`MIb
::&/GHRNF}Axp^;ydY9\ZCiGRot+C!@m,2OS>qF[El?&V?x?89E8W5<h/fDT^xa|ynk*pa7YHcHa3A4kHN;c6D3W,e63u$=zkKB3XS_7<FN}e1$lOgbtF#daUBsoE9OcA_41
::[v%h)>@yGG|q\_~5xjnVW]~dIy?qd!Bxd^C9lcxlH&|$INE<_b%>(b~)6YXB/Y=;ujhWG/1xvM^82]A3r2Y*SZ159sLs8(\E<3w80E`_gxkZf7>#>RG5#*@aCLbMLu^P2c
::M=m?m7c_Z6XH=@NMgoiQ|8jpuhX4qjeTUq{;A*vp7KPODkP/d!JO7shusvPG`;_jXBTN>*kbI6enW#gd_[5BaQ3]P;t}Qg-F-dFD}[SP@Mg?tY#Skd_#z;DhVV0E`\%{<a
::q[@^?/GlUh_E8{(^H&McAo^)!,Wxpu!X)Wb*@b|S~VtTTtY\y5_]~,mIZMCkvtvs)xrlppc+.uG8wty^y<xo)_V=8x>!Qg>W^(;fU2$Q8V.7wo0C-ZI0pMfsjQu4SdFE]D
::ksr({2D*Od2`3}}`st,?SLg=*NDF$2*DS1l=Gxd#=[&||SUoYn|OUFwC?#n<1qR;XOQkSHc4zR;/Xn!~7Bwi>T]r8E[qm?xiyhnot8U1)lEDShBm\7[wY8T%Y`+_/6-2(P
::&zFiWhzX>`Wb0JGy%(Xx0}`V#DO;KEy~)@5%+<7dV\HJ2cJ0o`(s[<|2Z><|EVx^}PlQ3/z{p%..,4MpbCK*bO6iZ$#z}j(/grEl$)CQo++^W$7B<)9fPCFA$Q`u?zLh/X
::?T+D2ntHL7}$Xq_![3gxIXq}8od#YVrk<1I4=h/{xYR^NBGIq|!G#[av*~Y,Q$$H$r~Ak0igKL1dXZ`c@m1<keNqit*MAVob$=8K}]~*Y@iHroB]j`]&u(sW&2C??^z_y&
::1,1c5^U\{?w@)\a5wGYBt=g+}^7)\8q_CnAo|<iJ-n!rmkC6OF}v44ym8k<nVn2t$S73yAj>)%1.L96*Y%toLEoq5R#NL|vWW,Xyz4,L(lLvR@LS7FgQ({QYtSJ57B&<,o
::E5TjCD?iOI={es|vk27RqX^q*T>)jF{MQ@}a2C4d>ymxuNWPrUh*y8z]83,V+_s&>gX/)ux{-qZFT-+1Y%Ti{O#z7ilW-xgcB30g1z-9\^!1,+[*=p=%fz?4jt~xiJiH7?
::X0aSqCU59ecc;L6EI8R$1@hZg#,fVHnJp@z[I{fW1t,k#^D5gralzU9yOSo_\xc6um@7f3crzv;=*G!TJf\v5rJ)`p_8iNz^K)OC_?uiRBvMVA/S7pV#He`,YQrpLqN)A0
::[XFz*^!6~CGbhyn{#3a/#_oPDpcdV,,C(/v*]pZ@L_Ppm~#fh/Ys-\;6o]\Y}8Do#{`\uS_kJX9drLi0_JVE&`;1tY{nhPB^}%>7OS{X?0X)WrQ127%~mr@bAa\9ahw#3!
::7ACG+cBr/kQDPm~c1r,CtP;#?q<4nnO.2S$9bJBi02_#]7H!HvTmvZMI9rv1LbV$Ub#cavo2P1Ai-1R}[s/=+ksP9\{)Z<^6>&R==sQyUn+>*m+ai]*%ZDnx$i|wE?$YE*
::kQGwe<k~mD]y7P@||5>W#DMA)C?qW3]M\IOO<2KzbMEKlrKt)nqJX9]cwwZaeDboaJM}VpUs&d3}m,~H*%xEid$+_B|G\P+NDn%q_*]e7aitff7QvwY8ddx+Z*OAwW(Q_}
::[[!H)p_]ZzJ_B4\!y2P,^tWV<tP\Q2[2^(ZjSK6&fb{QIDNt](ChoK{G$%DeIH/B&xktusX?CBUy#a.sfvn1X`mrGe!}hDL>~SrvCkj6RX+QD.[^MGW{q[>zMx#^{bN.zY
::3x1[Qyf?_5sPBNYe[R`YD+ZU1L?-Ku6+UVq>%{CZKEAw[n,(A4_}s~=#m^THgb4(\r6YxI)$[CV0!|/I8v!HwFb5gcDM6Gn`-J/J&6!n,/8JrDDQuto%{/EiLdYm8+XBrr
::4|~~|i$ZgTDZb$7{eqqQ?N{4Cd!+(hY|}xzkS=p)[~o8&#3b/@uerZ[j>XZ~?>zjk$kM($,?<.)p=4o+c6fpfQ(~Nit|&}#dsUI_#$+lD=N*_eHI1_/oY<$#{hMKi%]ls_
::NI2NrPU\N%3MOOsNF4u#/HYhvZIC)*ds2Z&g@=HRyW}1c4rM!%tgGmclClVie[0Utwf}o4eGVHUFm/\)i^>zz?)f5yz37(PGc`g?[t#@~ETC)tR2ylA8.eH~.d{O%aR43(
::=90;VJD6d(g9GUY7~9XaJMMY9$<yBudUX6D6Lv7J@9e/RNzf@<=N2xBVr4DG2DNt*ggb+jVU4^h53E_ld/YNT[W#!P][?GqJD>`8IN`UQo-0}TN|/513GI8!z{%mGm|!xs
::m0^X7U{Hy#z05We(+D@B;Xg3H!!SMEuA%TA|2~~&?SvLm#b0&1<^dlvIMK4TS,c#F?Y5?MeoZCq`Md..b04gOUsN}54Ln8$PZ_<?]gj*d$p[WpC`bP@?y`q&}_K2EDxUAM
::l!$)QwtQad{!PXptE!tPqze[`T2!4l/g_.sf.7@=1daYxe3-a?`ku|n--PkCRq`H,7m{hyv-]3dF/G&D|ef,7)Ik}lvK7att)n\/q_|NrN&*Q_w_QInhB(ndSA;<[^6iB$
::eyBT/)2W#9]Q*}Xg<{s+1}uM?;eM,P-f[.gNBeCi@6y*%]2\qHjkXO0.A2G`MBEYh@I.kNhweYe5!J+}II15OEt,NK|sYE;(9~bt}5A{@Iz).|8(i1Jk?Dk1R%U72!6Ve;
::D5N>d}saJR9QNrT*=LV%hyW&SLkL!FOQ]s%~F]F^%+.clO]X4oR/95?,Ep6Iu3L8Bp@`i%b1e[[bAibCwB7^j1lt#?UIjbgiEnOSqu61Fr8C5Mig~YfdRS6,ZP[}?5P%ii
::9vpLi?_tq<1Q5=oG7TJ_;J.RH+UA{%UW0*/Q(>kp>[l&in!)4PI|^]2hc-~Kw[.~xO@aeuOED&uH}!|u|gDCp@B2ELUe[H7@Ci|op@}8>BL)U<e6Zu505Qk_\6W41<{42b
::\[jX#q9\(}&$Sh+4{jZ!skfd%gt2x0f4,VR*Od*pLss!*+w]wLfBTHqi?Zd~Xr.7(vC+]-gx;I<.Ifrp(L\uP?\BQ<AH9Tz!RJ_O[Ol[I#Az}Z6%sz5t(MY?oqhN)+_89~
::4Ea8vf_?`(54.)=j8[D^[UK}J%+?{ChMi>rP>;V/=g!=fhM(LE-{>FOCXox81$b*OM5f2MdH3q\NAxp!6?X2OHiqW2Zb;cy+P2V4MK]ciFO&!^c?27qV;i,0vKr!I%Naf3
::ms%uvLZQwT[\F.e*PR{v!(0%=`0gLT}IfJJ*7VAGB9yb?JzVcD-9\WQoV5qP`%a[|-dHiz<9%&]#kt(&Ma5{Ipp\#b6dULnueG[OC/|E!_9AE?La{k.O5)HBUXcDgv#zE+
::{>O7uc)/>Y?4&{J[oHS_$}Q}a{=|/z^gtN(S?vh*6kO$63)pbRg&k7U4SkGU9]7[YUC#yzyU%EQJ+<b\!-BhI?vHj!PI3Z@lo|Dpr.b<#]f8-S8mH,$^V;7a.I-CEjBY2b
::GnN@C;DJq~i?yFa~LsJ~V]Niqr_^P8g1DxVRjwsxV,_F``6Sg5%e+F0S!B|dCmet@-KamuC,4c5$%mhI@LsnS3Zkeo(_mL0[{N,KSkd(5[HE/uVT;aa!A/2&E@EQt2y`Xu
::>MUtNpiyX6=aURL=JRpfn@K*2dc{XKQ)s@{FX[X?8zQYGrD9uhJF(W%(2qJz85Q0<KQ\&_k;v<SH7TuYf)~(lE$|zp38bhjE<&2Z?E&owr9bWL#)4|-`WF]|hDY<.{{&*q
::MgWqK}7M,u<2B]s]}IT?~ufIJ3*|?7rh#8-/\`/x+LQ&fY9R,+klIj4^#W;EISg*{54yDZw7r?@DTK!<9W%.zN_?#3g$#1Wc8WB]X|7i_Lc.y1}]BfcLTz=7Hv\ay\qe;3
::XM2Iqq=,B3mw`67IS9^?9GG?%tg&MSz=YV;\;*-U6l/gbqZNTJM}IJK~pk\1??r6DVPE}J8B+@d}(~\Ki]N`GR`S*2.##;V~W4ptPXNZ{mW|NI<KI64o^}B[xxk%2r5dGZ
::jnq#[FVrS3EDWOA\ku~q<yG!sbgm|AeyiYqMt!#>_1X(ud8g!)^46<|oeye`oS-dC7rZ=X_]qHZI*1<S?a^~c0/?p^If$bL)~1+Y@C#cWBAMfdfKa*,L[q8J6D_c>h!+;s
::Ig!{&dGI4tym1xz6RfY(wK_>GzMu]`PkqHE^lF\*i{542t2tSYn2h%^A..c09\LC^Ft_G$K1}Sbo[{{;Uj59+D_+]nfDX_%-W!mV]3SKarAlz%52;&yg<^Q!Lgf.qCw^4\
::F%udF5S(}G9=\j0-VPb&^C<~t1ysJ!]2Zc]d.feGj^.eG@1+8<T)$~nu)n$/3p8xHwG80loY4%CW>Z[;%v&5@Tnn>g%J,Bhc[r15{r&84/e<1sGC_VyMA`YPb+!R@F-n`i
::pcPIEPl,^5?.]Ij6<fzA84H)uH^ofh=pgg3i4f).PT([s#ySb3G;Jg1pNtPtDM9gl53FZk+gw5W5Ya^E3tv7YH/;3R!>d+r\b6p64R}1$vqBG,Jvf$,vB(lX6U\S{;/`Nu
::/UcnlWL\l8=R4|dsJKiDxM9MCyyr$@0FR(V4#KVvbfoD\p`ZrE??Y`9NkXAbxE4#Fj\HX<0<fbL+^;AIv6b_=*R_}M)#%Ce.uaD,$J\)OY@S$8LA3?1X<v$WZ&>x@|97qQ
::u^j0EF(<1RO84\b=Q0AsPU%;m$iz+0Y7}B=b&,nY\eJaAbpope-CzIA{zVHm2B$=/&7$)5>pz}WtpEBO=E)fpascb>(w#K9|q{FHM/,rBI@tuBERlnBy<x_]20pEcr3@qE
::h]7*FX<cH@r{X|n0}9qM.ZR)PP7pa#|dbV,Fo#\2gl@!}dpNgcy3>51mC?Qv(0Hdr;8Ss~<\^!H(fFw_Q2my31e7+8s]*}2PGxs\T=HOYU~6XI`bqO*&.<08Jln_o}gFT~
::Jz5X4S]`mNc)fd?WbzqE>61<s8!M;_72]gQyuk-R<aX\ic=0w5]WBeie^cpQI^DiY1m#BjpCf<%a|Jb,6O<wz-dL<<oEoc^`lkKHi9a`Yulv<?Nm`[a219Rp~+]nG3KNON
::F7-;)R-NHDp<.Gc-bkkJb3b44U}L,{L`s$HPQm!~BAV~6L]nyGnL4U.#plmx(RGWcni51SI$9O2l/t7er/&+=#My?-#*Q8A7~rAL78d>98+!CIN%P+0vawfwlE{n>q!8r1
::`cE^Iol<aH@wgi#X~}Qp>M{yovNFhoUH26}WUc@XX}Vm^S%K~%5w`I,$h)bBfC^pSEOS}eU|t/\vH;h9Csyk0;~.F!q/KAV^Y/laLFf3$=R+PX^U-Q)\(0J*uxmB2kNN53
::HR3&c^PIULg](OoC`+9Aa?c4e.))#*!<}AQpgqHq;xesR]=|]zgWOtoO9X%|$MY13!P+s=bQ%umH~)\_YeDegV5gV!!~k?!?7brY*47DHd/Oq%`zJKjB!t=&ZRPU@R5$2`
::uOl~$U=bcbiSzr6W<_;e|k5~)C4p0[FNTM[(>UKpuMhQBM&^)z/}T;9B<SL,X?{zA!?]VqF]T9ja3Kv;x=v6e^jLDxEX1cmJ(jm~_eU(5rTuDr@7<y3i9USi7S8DZ+NmIR
::,0e9*5~1}Qusy&FvhaRqgwfk)z)3-@qW=x|_._=SV_WR!<P{Zalz{/Bd[U{tZzaI%;MNK+_!gR&2&9+M0d6(Rn&djl`7?gq]^+),oos+XB&fgfH/>TnWOKvJ5Ru.x*bqzI
::nz&p]wI<rjGuOi(qM+1p{6zQiy6jL)&B0_j6~/U/oLr;#f@Q]$IrHL<0,S!c;m;8iP3ygHKvi%OIS|Ds_{54<~+SO%U!iqEu~i4PkE\q$!9(VGmpd_7=,OSu1gN&UwF|bO
::{uw7~#+f~(RNq_m_l-^[U7t|x%NOJdn?(OPxNbB5AF.NB?SHx{S4,Ul(O8|6kK6Rtj4B8Fvy)c*W_qwT2HkQA^V],jBK9TI/&jP<^_-ml]+;v{XkSSk5*7z_0I5J,S@3m-
::[!A;EiDB6@5f2^M8?z#Wgu_ngj0Q#4s7rN,/;j;Kn637>1gSsl`zfy66;nnF#T<[MZz)~JN$Fl-<.Ug>-vI_up{CDI=IeZ4)cI{S7t&*j{U|M4OnAW/r\4iqPL!=;s/W@N
::?L)27&1~^d8[~@}M.$g?hBVY3#C=Ein[ps)+`EMTf`@jn_<FML}VORdz1-iI`rf=GTymh?Tk^\3``9;9~m#9I-vC`J6{2,G_tk>n&OBt\l)Nlc>M|zf^)~hmpWa#Thz5bP
::nu0X#1aFSYKU9;6+ppdbUQoe+[Gxg,Ubci4fqTD{c^+F9UHwq^9Uwaj%3Fd6hwjlwAq)Q?J_VawD{y#eI6X0h|4HDN$^7~Sbx%\qp?^K~phtipMc+m6Uj`p!pHhK5v.b8C
::_M^U%aGEB?6G9klKAY7R[{ULxH==]&B4>SK$k)gAg!(Uafev)m8UDv8jbse|nK$-DPFK<N.n)9xpU^c$rIWbOHuuvU{\o{=4hCMcpuNTi([H+A|9u@^i1nHD&_tgW9&4OJ
::=kv_z8,ZhEbNV/-sX2+xqj}[c!gO}6sj6Z1j;>a1<usCmE?CLC?UJ~Q$7dETIR&|u42yI>xBG{gGJf3O8s~Um[;AdLt`ViEWj{s|?[g/Df?+4hPZtIc4dXN-EqvE50N8Q[
::D8a8D`pD.n/eW.xH3gP{|XdEz<48E4Z>Halj#xZ+Du<Vi&#${[<^Thks.DV~qrPOfDs/02_~rAh@-0ZQ!6a1.CXFVLkW)C>s<!Q;sDO.p4au\~9/t2=QrELJV@L1l?01(O
::chvt`djW^5HAU1}igP$K@BR-kL_w2$z<-N,a-])Icp{!4Sn\d8riN`oZp;\({Ugx0E1S,;!qn-Z=ZsMX*\ZoEz/Ikc1q0v7kWNb3Q*nh|w*LTvZ=9>CN?<X#9\1Hx6dDWK
::tq,M2INPy9iPt+Z&XZ!de|]0xGsy@8@}cIO$fRBX+6&?<38CdGj^6!7S(%U{k}_QInBn.jqG*_6O~;-VKPkdQ|V[|8MM[!*~kRMTjmi3F$YYPV>s_M(WQV,eAPD*F_aoYn
::O=9KqqoZc[\]Q&2&lbb%L$}@*S>-KgnS5wsTA%or-iR8kOJ8s85W!YNRC.U4va{?&Wq4^3{.%x7GzVRr4Bpq@6T_U^rp\bk7E!Gj`7;_2wml=v{vx\^pxf.+MOPPd{\99M
::eW{2)i.p0kN4X;oaHD;3PTA)1}@>*9SyCYw0gOa6VAy|?OI,L}30+zEE%*r13fcew_33{m5PQzgiQVPbb.^E&X=d)2wjm|{VEKr(|u\@AZX(8c<zdCe+TzBCMO=IX*p~?l
::;kRqABz]Pq+LDft?!e?A4$4<6Alh`M!b`}j]B3pk-vV5]lv=ft>QnTCHRYF,OcD=ubPsQ{.?#M*AzIDX4G<4cQS\P|xn@V-FCerc4Yu@gKg,5bxfXTbU;LF9$.Mj(XYZe)
::MloB-O)gt7QUs4$7KaYl]|jhm|KjEJY1PDzF#B%0~itD2,K0NuC9)cG!zwKO6H^fT&!U^RV\-}FPB+oam},`4CK-OKrWRBe%(00dp}h1hntTZ%!@bpmio1[`S%gy/M=qL(
::f{}E7{sY_#16@gDPw1M<|mSqCTk?yu.C.W>[@vWCH@3@z43.nKR]*MT)c=[wD;m!;ii,cFST|`g/n^[)ESo|r*X$+;CMdQL`]|f#1h>V7#(z>dG[,*5[x4xvF|hYtQoff#
::)#B}5q\^v{\[NbR&sl#VJ=-nEM~w0P1)xh=4~Rm`M>(sI5R&mqyDk_L&h;>NhZ[5ueH+x_%=!6eH)W[cL+LF;Y%M)$_e63+.6)V&%77MjgpvV,^&wHKsJLK~Zoo5k/>Bw?
::h~V~9|J?[Z)`Y3oKPv7mj$vA;=mP6XG?U4bH4g9c\l+Y1((M]J.r.R~1JXCG2Gjx02Rb]B{9Xt/@fLqte,4<@P+fP(kN$Imu@{q({\5bOq0hLk<\Pi8>[fOK(L0,iZ#l{<
::xS&xZ~qBc52Tzhs??6xnVuUkHhNF(K!@r)gT\/dur$sj{O/6UcL_7@{$)yJ/C_x`31QDrA1yaHJ?Q_L{X;/!}Yrs3<V\sjLk8;S+J8sd6NLH1h/c}5m1T5X8n?1?*%AI*;
::+NA86/*J\=I!ut>e-dU[|n6`R-BF09i&gLVZYYe!cd{/}L3uq9$o%5[6>$40-RrTz6!W)7WP~xqq[[{dYyS9x]o$^LR6aeAri~d/6X|#z],,is]Tza7Qfvtd!\`]%Txge+
::ed.Kk(h2w&9_+%[lU^FnnbLy_H{pl1.FY=hSRmo&U>z`r^^H\hsp7raHaF*ufXj?3|baDI+C@P9;L{m|,cXB.%nn.94+0o@){&z/JN?Tfu60c.dR{WY~.7<&x3<\|]Wb(2
::DH>E^hPj)\(]p@!^>TV.v&6y?9%iS`=r1/4;3PQ59FxQ.0@)?)ZyMf{-MYPo#qMwQ#@Pbe]jup]XX$5Y@bAnf*.hRQ<d45WUa%_+7V0GvL]`qc^~yWCN7dO$bxqCxMOZg|
::b{@Xgu.xG$}h*zz9\3\eB,<?iro15Ih$dRE7%ISCBq|X^g%N)$Lv{ls|NN6p/aJ8^p^1]@=Xi[m]Pl|!b(ce8Nvy<;^o65XD,P47S*{uZ)h<p7s3cp%XT+u)Q-|s<Ia}!)
::Q$xs]dwUl%Kwh;~gI5gbRe+5<S!#W%Zn]]rNH5%5Kn}sqM0.hIeDCDl3SGU{so|}&yZ_N}4$_a,mIT\BSXn^FI&lW%`5`;5yz+m|bfE@fK,e\`\*8~Medk]$,W-MH\HICb
::p>Loqq3A(G)_w}R9<6zBi0=yb+_&e[54oZ/{A=rRJt4]CRY;*J(2#;Z{AzwGCz317=h6+X[l`eGXtp[?Oz<]kg$v@7#=~~LT(,^]A\pC48~Q,?@,U5|YLSbED~`dA`mO^G
::G;ePAVr4Gpvf8r+/@f.-L2qh0h_]@&KS`_e?!@={%]vQX[~]rC0_c#xr$msSL_6%<W0!X[%6/2Jr>GaJb}0[}DZF\{`Wr8hG96c`IRe&f<x-D+X!e61sfdyi[-w$$k>)%X
::4nbq*{}\o{+wMXtt*uo~v6jbWE04K4%tutLm1j=YW5Bd_B4_1y(`-K2(i8,HZ{S26|,w*;k\Gc@DdSD&(Eertmo*,m@{-uij6)riDC|v$3Ul79,JM/{<u6Kk4-&=G}Cp4F
::S}Y<m((%[_d#}TC7\hSvqguI<+%;|=CUx[A|tY*SL<*!{_&B*KtROrmvsH4Uq_;\a6nlO&i7YHuBYhBC3uNl~;7m^Z_zM7WE<?4{{])^#Y4$/Y][>UG{\3Gtz<N%J5vx++
::ddSTs^-B4,umw8_.N\T2Qo4%wSy7GU175kfDf&G;xc{erLRMwbqgs(-M~8-(8SVDeelz(IogcB>5q1zeFD4|t.KKq[+4um$EZZJ6?+o2]iW(*Q2i9K79cK<Yp*DoIPbwS_
::wMe;kIaDf<T24Y~Oll=>2m)Ldb@;ObO*-|^}#WjE,ZRhLa*&o&n@[?bNRBnyJr2,W[Hh6u0%uOdU<ZEaAl/!O\*`X*p_EyNm~}?*4n3j}8!kS3FSM=5)9~K5a4?O5SSw>2
::r+^Trjtd\<3W>VJlMM~/uS4mmkE(Wz?Dxr)&4I4L&r#RR}Y%&aBf$np_wid&n`@RhYTYKDJ!E<a%H4ioA!s{No>zDLJTY7hQA@%ZX_A)Z(jrBtfvlY[A.fQwUY$),FLIuI
::M.B$h=UqC=lD,xemiHxjbxD]9PZS]iqrz__%_qJspQ#x*_{K/H\S[TAFHrSc_XGW3wzz?P;w4]PrlA<P@*fB}7ICd]dg]y@nV(?~r*o4icvED#CQ5pFSHr+z}!k?Bi8912
::~vYh%m@Z]Y/~V8$tec&6B}{Gm,5o7G+kP1Q2N3$?J}(q1;@b`wWWv/c/1xcds-M#V09{wiB=8~#V+\[y%@Bxc2t?U_8o;o@6w#jS8_HT?EK_Ew01K^GZ1R\!s(#~a?;d1A
::-?sM<\6$U|g.Oo[!!b%(ehK58)_o?}6oIG6gq<<@4Ob|sJb0{}6GQN5CfM~S[^``UVyF@a~4mKlXSV-SjyXIXODXwqKHnaiSXDal{ymW-jzbIZA]+_A5vaiR.sYEBKr(W-
::[]cG<ndic$6;WnB4b`1,+#9SDs;qn+F46f^13IrG|,yUTX2MZj>/wD>ph}4Ow%Bc8pp-5qQSME,7RO;Q)v}Nh#ok8#9Lkozj4i+l2hmETkY/0OqRbM8n4J)E\&8u0m&_hV
::LyWM8$Sm`PQVv11%E8(/B&{fL-Zqq;|[D@)}RmbV(KzXkro#{o%7^i;r?rQHJVM7.Y0Q<53/!=gWOT}tuv06Ut=P$h9A}+urZiokKX/uPwKG}3RF/JI3ALXGrlYV4oV1pY
::Ep@.njCYV`\T(o4OEc,MIe.Rn=]JSMvh!f}jeBv{,o/NPXCY`}^_&#RraW!]VsF`2)NqbWL??pTh@*N+--?vz?I`7a]tIC?x1VbTr|qTb]UqPyj~N`j(-_ODmCx?iB`b*g
::R[5m*G=T0w~4C7clj(O|PVr@#.J5{dXZ~S8^R7\EG[5GG*CsUKKfNSwLSf+t&$O1Cr>$7MpF[~k8<5dvCelz90!eaX]N#[&1Ot0baHHSLZJ~qR\P;irPZ`4`8DVmhLw;Jk
::-3dD[j6&_OHp097H<epjcJbo@[r#0K0AZkm-7mO]G%`@o^OC)`qwN*fpH(3}8bSxw@H3EK]$y\wbl))6[!cFdZekPO;P!MN4v\M]d,55naK;xz-?rO}=^#JbJPCi9w#~1*
::YmSb3CBF-nAA5rM+zYhp0;sVC8sU*+W8FlMqJFMw@\*`xE@]iLt7UE_bf)Bsh|EO!ts`m=xM>UZ7Qg>\?=m/HSk,N$!<Xhhx9c*pi^E8Vl/*pdO2%=hH2eE8r>%@p[mFBH
::qvXg\po6|5Fv@,[*O]^%jBri{1UU&Eafvp`&2[?h`.)Wur~)QvJ%3xu~i)Tij05U5dfp-(oXXw@K`,&A\v6z8eHxon([uti}S~@Z?`5@&*K2J!}!lvt_^a|y/qto&r+Qkc
::bJKIc.b=.Vl=f^}rtQ>/*jQdPcbLZ4a<I6vs=<V`4}V1{5ZT[SwIQ|]U2n[1cDl&hNTtggEDM>&ceo8#~u_r.l4?ES!RKUews)[l=kxmRo;$af_\i;ySW]?+YuS@4SF5FQ
::EG1`4;{[rlGQIlF;xlAB_N`K|%~)w~|o826d-|Sz]ZaD2K3xgy@xcgSQsn!FhTw?VS<i94X]QIig)e6*51XjGs3C*(o<(H[GI}3D>QU{gkC3R>6~y^vDHcBuZjHuCv2nz(
::?`Bj]QeBBbxeGa^{O#wZ@,.Py<yrTC2)[M0i.<X(oqOahS[0>d3t>@]SO-XU2ssIm5~nf1.[G-(PDa<n>RG]?6yReNR8#8vy/wHuDGr2B6WX@~\Ndsrcf}mWM=AZUSr-r*
::WPI\G]qHS]^S4Bb)%36+icEXr]Agd;k06$1a|k~=6-Uf?7Yl,<MbC)*McK];@9Wv/`jP=A,AX/6ZaE2*A{~SUKI.>V{L[/`HTTGTy?1}>,~Ip)!T2#=.!6JZF#rkYEP[Hr
::@7c4s(ef-yV2NtK8ZJb8R*3){._]c)mtFjE_{zGPypTqS#|&*[)yyX@cK8MO3M1&eG](p#;bdQ8$tX.G?bgN94NzRUqn|pf>DKw&O[y@D%!eAqX8bA+h}AFuFZ|mV]cQE4
::QT=_v+Z3]n|Tvj{#2-Y(8<b<B2L0<_{0^KHC/7_ux-oT>K|hWV]Yq!5pF4VcZjT+>$8*EIN[8I4?jb{]SHj(k~1|oS/WEI)Tc%yYBno&vTy?\]c[c[k9\UT[UM>V9Iydw[
::try}(2/Fah4afr1Dk>DKw2##oy+{ES3@Nl6#Br76iv=eC)y+PHi%=moGC(yfS-]|rg3}#a8p0QjnQd<Zux`>!5.h=l2f3cC$$}v&-6wh2IMOP{nJhRC!j,8%gx&k!d_\&W
::U/=hu*!,~0[#4*9<7z$gbm#g^!qPJTLeKI==CP}.&.d&[P@-0c;HMcKFOUe;B2OM?h5n/I~z([]O)w\3Q]#dE>m6I%>D9iKz6pHxS7dcrXNT1Y+_.N\JVsoS_[jKkjRu&h
::Z-w\T0P+Gz{ifv#8EI2FUh817{n~W7[OAHew?nT(a/E6w0\uTJzNM<v#wK()y(,(9~[)OS\0Lb+u3knk1FxQ$H{E{{i$nG$..7Wa<zS<?vzB,/-,q;R58-BItbfdv3HJKE
::DZq7|sW-gu9vUD>AJo,T<FYhG[D}6(aJP@TH+KNL[Io]wnUNC_TP2!`.#d9r&nvx_R;th.yym3Jd?Gu[H}Wl4FR`z40CXIiH*sg[Iy?Naiv]QzI]mwK7xM6T$5^0Ud,62G
::R^E%N^(5U6_/qZ?NqsY?Qrm#q8U@gh$;Y0UcI,5G!gEi]nEsvH2sn__?44x$.]X`Zni\Vj^wCF64yuk0++{mjAq!_)AOYH4=V(#S*q;FhZs`PzJ;|*51wUJ2CtAVJ3R/UK
::>yI0+izu/;^eYmlc<W2K!z?6;PhDZCBW+5e#o]lryf}]n6ZNC^f?43R*${kw$(t1B%M20$,^pCEJ.19rZLgR3eyjWh~X5FbYMN/GgGuvn0wUfxb-WB&Moggwjl[xZ9R[{>
::#4lbK5Z@bJa-Z!3UFNwUjaH2Qd;)ytO[PpV&3Q1wIl`gI<!e2MVfg#x~a^uq<cFkk%4!&UKT=&9nfUDuLJrG%@>9JfhHC6Iy&XDpi9Ii^G#b79H[zB@M`ku+Vt^Nso#5)E
::Go{1x1s8)6i2(DLB_E7=E-yP~5q`&HP?GgLOWfuzdo3{j{mN`0(k52~VY2B`n2R=kKvaBBX%`~1^\HfTTL6x[$wQX}#$w-P0y#DKW2OYkQNj5aKX2xiCBtTZ-/stPIwrYV
::[e+2&JWTQy=laD_ECP/-H9lwI{FVxq^b!J8~v5BOA2!c*_2Fl5t]{utyxSta%E^dRrC\`4?}Wu{nF%Ut}i\,&_9Sw;(zYombiG=|Nx]zS1rZ*mqR_);{[BV&P0#?e`s~EM
::2E}oqeWv=%Z/VBgGY]r+Ri;xVaVjr7^JZGj{vh$mD|FLn#.Xa~U6gI-N[R4_G4c@sL#>}U17^n9S{bj^Q*/C0ii{Eso*H8t]yzl8=$w&Y;An&1<7nb,>@Udbm[`By-A}zB
::>rHA@!{DJbg&`Q!rve6j|!B?v=eT4(ce;e<(y`_N1}3JK!0Eao+wCeD~+1FKk`&x9Lg~A;UUOK-oQ}}=k\zGwi_[T_le#T]~sRJg$M,@sy)_%Z1@caod)5<C`=|]A{54E4
::[{+-_+o|?ove<>iwe<x)qGj&Oe4Z[p2.NSDuA%o1ym#a1u;=(#[_%ov@sxOX6\[mD$]-}Mj<-p#]zP!Si@PrJG\r/6)=a3~!m9SU)+H}g7cs+CB[PJ>/+C?I*3.=tx-T[R
::xpxu{,R%K(m{T/}JRvKC~ENmtdcHmq_?F!yowbc\RydGdyDFXILSjCoXeX\;4*o*ub.c#J^GbO#nIe79~2Wb*LYag[&BVJoD^l`$<O!efV%b^\aGhP;%i$bD)$?%TZ2nh3
::Ue<Y?B1VvMe;B^byY?9ByiR*v%%[.\\|n{\T!gN$A\VX#vKDkDIP2!%C0K9YpSjvy)G?Mb|4qis~Wc{Sacd>Ak74aAOAcED/i`J0zskGx*+).wIVduLf&0=%|kSv]$YW{s
::Vt$!%Zr3jb^vd^f?A,@a1iKGH.?aa,-LbJ5/L7SNw2|.]n\g6,a..}}r}WSFWKk6=U/V9BAXg;rS_6IB6xE%|q=%<9=Z,z8Pqe-fDH8Z8\Udrdx^Hlt?{x,tYUagR1g5Dj
::WgaX-`.j#ir14ju0)rW5B&M1{mVQT(#+TN&E$oU6_+d;WqyCB8kK3v7QhqcdMA@ScUiM,g7>GgYK/{(gJn9/W)*=<OFaB6unHP#OcT/W2$v=pOQX<2389H44`DX.^)gimj
::<!qU=Pm{jgx*i*p9g9BE,+>svUrAD*<8!*zE&l02UbmZ{7VDFHv;Di!N\Z8QZ{Ms^aD-Swm7z+KCf^&HX1~.#19>s3k}a8$G^?N!bxS@JR.z<v``609)>~Y<w5<~*s1pvb
::$`WLKhYv#L/uLDm+pZC[tU@WY$Jr.ng1<qd5.*9$hlfys*c#Rr)r[JZf15Hh91sIsKaSR87Sr?g%\r^v`S;Mczz3[KPZIXt98@w96G<(|DJYhGykju4\gretoWC0<-\#/\
::spxu(U!XN,\/>ju$XEoZ>g^=,G%-A_]0^cSte(GghUQTKhXDZM\kOffl$fdbq1X3{^Wliuj4K4I\cuJPDF*)d$RNU(GhKJ0M}Gtu232aOtqwIDp!Qi9XTOmCyqDjDB)xAT
::^+!a]!J|)Ev{8ivkTZ5RY#-FMK0mW4v1xQ}D[HJ{./(Yn]eECdM2b|XxOtVK^-ES4}3yfT.x<+V~_xt%EM3#iO!G`(-N\3m*TqIWkyC$_nm,rRPqQO/<,IT?6=f*KWWFz!
::p*Ol_uiHa(qMwf!`K,`wAt-.J>3=V[POZ(e,fb=$-!Tpc{6+UCp%\a7^>@H;~uyA){rwmhv|wzx9PMQ@BQIMG#PpOXF{O?|+hCk`B`Srx4B1Ea=yA>OOBH(lY]PO6YWayG
::%(sp[){IXD.J|VKm}u-KJ!`<dv%t3vy{#}da9>AoV%nNxzl(r6/4|*tplaLQNq@uMZ.3Q84L!)>eE^c3)=rH?Ic[?x=4g^2O{+e`!T[5~NW?|XFvND7Oa,%[vgE!xg>&fP
::8!,sQk{j{G+2%4eFEML.d4y|~+13rL@IZoo,7~,FdL7w=+ZFIVEe+xT_2C5TI!,,3y^i6N_^C|dQtU~F>b*4,gWybJBkZeN_nvu$,]d}|(\I6DIU)nFN30Cj|8Z*]^G=ZP
::f`CJ|-KRk=*]iBi2^FaY8-y=!4?E.$9q;EY4SG3MKIK~I*Ol{|O<O@s|&Zg-k0T5p5*w*9y[idH}PTe`EY!||WYI`P1&7FzM=I,yAuR)45EZtEQ!A<E~>LB}u^\-\5)0>~
::z9@[wE|C]pe@nJ]Dglo^pQ[MEq~hR,RMC\|zJ`7pX&HvpwfF!F>pB[=r!EZsA,Zzbjk+$aU20=WN)r<[x1&h|@x5&ic1ZYM?2!$72{\6=qDOywwyEjM,m~+8Hq|JbnE3GP
::=k}*fEfFk]LsA[2Tx$5A==]3?AkV|nNWArU}T~r\)?C[Q^%llN%u7IA_.<X?<6|Xhzz&L<H<xM#6uYfK!8u+JgSDfx$rUE|[uo|]Zk,}`/R8s4%YDpCMQu%|i&o-z9VoD{
::18JO/~ou4[r7#e[[&w})\K_vA),4__mwnh-(4YQ;5%eZ7ls}IE_!BPfNIs,m@-R%s-l&PVE0fnD|+v_lL`~6`,EaR#3Ro|_BTE2<v^b?#||Q^cey9aF=2$e[sxj]O6C21I
::<63?v{^8]xPT;[4/(.g]>YYo*u+Sry/4d}4b03&g|k]EWM)Vp(BYhYbC?}*vAT{4hBeMO4E[C`Y_t`j$qG(8~<=*fzKrTrqP$V&i;d~4X^fTyw1LB*>F3$_Ed{GJb)|tV}
::G6[S_@u0rhh%xnr%~~QUeZU[gmhde&ssb-shqv&[u3lV%**Y()zIUWiF!!5\8X7?-JfNZK=BYA9xXVdo?nMSlOBKm]k`kIXyP8hNK@kMy]7r7(5H+lq^qBK{zf.NkmdY$;
::}+99j)(ST07-v?ZvA]Do3+P/tTXhon12S~Xd9wIz&d_|SOGj<9qDz]n<x^Joy!w-oFqP\$h+BhT=lyz3;bfFjW%S.Kc2K?,M+.j4e6IsI|\Y,a8u]8_rayS2z$#k0cvR<B
::}ZvCg4w$P<s_*L^cpieKx93LYWrNU;.gicMjIuI_M|dwm|qgf*Ty+h.uU~;V+l`h3vMI&Ra93a/A1~efTl@C&BAVZ$$71HFk@p~1x2qjJpGyNf!Sy$6[@;(Y%*9qjHw7zl
::L!#,_];qDSwpGYT+#BDKshW+RYzot8NAQ+M6O/DWIwk5ixxy60Fg`?`%=~tqE6I]j2%J/CNE7GxgDBurF!p{t-*OF$K]NM5-W_aSxGh(kQkXKbTs|h0cJR-G~P$&y/gUof
::sx?ZCB%.0M!C@Q`;bXVp4%CO=mN{Wm7/m$=kd!&_iqrJYc(&!WpRwW*oGIj&1cR~{0Z*jY]Y%rwiJj|s<z]UhlBbN<CL_y_{YXINSMs8*IK(.|tUk*WQVn=!ppzx~._B9Z
::I,]#w)R6E1>O${/YyhiHIW8~Zlqg}Xd-`\f=g`bbiv5@}&4dQDYniX[dtY(r-?dwU1AOxCkI;u@W(gdt}ZyhF8d4i/y^=aFqCCoFzf6Wh+<Ih|KSYEz2c*L$,<CG\QM<qp
::xh^3)8lzsBHnct8_m=)o,sazw%^e5J6DI3w>@AwX/PE7Ss_?z_BVy24{\hzGmGmJ#i-(2I4d!XDvEa|$qBt77R.)t(_i;IP<LvM;LicC4+TtigwfF`%,|2Cqh]rzrMX}}f
::~(=k3]zDVW63XIWR){{Om!3s4,s}UclBc]*i^zC%ljXC%|a-Djsl>hs[2MP5VJ~o?Q-E]os#;$=5*6$vZR#9n/?Uk.M0w.ZQKNPUrr^himlaur1(=YHx/c=n!idT{iPAZQ
::p@20}){\rC}|)Jo!0yda=pTc4jFP@RIH$*qosAZ<jzMp$m>/G(/e$)vHJ*1SsL=T2,y#oYeH>@`_p<jzxfDYce<u`yx6cK?U]8>0G{utuZ}<n[Vau0<B6_vrOu%(L~RqvK
::xCzltzehICDu$+Nh~DQ]+9{&,l{3K]H4;Hkb$ZJc|2YJY]*s4!Eu!;|=Z8;vZHygpeJs!m=P*Nu=ea#s1rWcoEhLN~!$3WZw9&HU5Zl;ZSpPPgEvCo(uH@RmgsRi]iyS)~
::YE-,UX/TTtb3Qn~~bGDzmc[+`>OLi57iT^2Dlf.<`?c=P{r@fKeRgn_H+$}CA`!5[t6V|[C6[$)[;dWO]HG,wvx\tNY`2p5_JTo{mWE|5h+cI1zq6,WT!r&UTuu^SG^IYT
::6-Oo3Tk$jS5OE})8dmpe=4\fK)AP0{fUV*A)[_)<3hTJX6wTAUsny]uf8Ejd9TPaGj3)0vLh^;<xfBSYGD@3(i4=j6<*MG.&4c9@X${9[Fg~|QIUrNt-?#UlHCVRixf4O)
::Yh()5)mNi|n,4Dq(Yg,rp\9MA7w&v]8X<]\_pr)44(1Y1PU}n7RVLf%{tV=c6AO^)_ErbLTx};b}`fwZ+|VA=II*cfo{A0HW7zfn92~Z&y@Wh&ft>]O$Y7Ymi(,xA8=|/x
::CE~Ul8j_[9f1.gTq3jvDA9`~U{!VbTP))E,Jg`x%0_eM^4lEnqH$Chd79REDN#a+b<Poa]>3XaT/!D-5>_lisN7\/=Q_NE}2qrp2z,ZJZhut/uo<b(>_Ew#mic+jH2luGB
::v=SH3p^pb4Y3p?N,af`V9jA_OXl3i%G%TPwPJ0[ipR+I$?Y-{11(gZW2B/z1=ig(;C(Y#WO=QZhjQbZOoJ]2v6>o+xV&o,pG[vuDz@wp#CJpKDcap[PT,rT=NyL7Q]4D.S
::`PD*)Dxkx77]D5vKIQ~r~2.c\d8Np`H1K^=D(ySJqf/&5<>Ua)CsWl|#{+HI#*J7Emk%J{~{,E5h#8@#*focZwS0oe_K+cTa-`*ny/T<Z7i>U~B;7!$3x2xk$0h9c2R%;s
::@8eHDKG&E(2|3[9xZMqB&%EY,&tphWNwmCJu1Y]O&MLE\[k)n0n9Qf&P_CzqGr%H!{N_YhP>Z+KgA7\=%|Au7k>BF!3rU(+JZ?=.DwU*)lEO<$iM7S]sEimQQ8W;W,y|hU
::DY5Ej**s~Ac7V[h0b\(p~O59/wgm-QVDF7@=_GM=(k5};%MJKX5HK_<NLzrsz|kNc95uzq~^&eh!l#$}7f1a\)+S?y81(2{m8`f($6a40aCv_2ES;sSMYM!*5q8q3`+\!`
::<a0n[DTQa!jiOeCc</fTu3RW-`+|KaF<CH`q0.1YZ;6sX40oAJx!y=l,>poZy/ro</cYnht4d_N^QegLcbwXN-#+yS3)]EK-zFkun5V63uOHJi;UvrDy4OSNy^HuF@S0R{
::S}jI6vzb)ItP[r~wiS$!7S,&`zFS<IRx;F43HHNTD{sapYPyAu0ZnS30O~7^A^T0bVqT?a|cfMij+;te/{\w^$Zhh,=M$#<TaAOP?Ak{s(o|AX&^r4xH5?%_lFv*,@Nd{2
::Kb-0v@{V%]lE6YuBW8)&)bsRBt0Y.BtFXW-MYfVVl?B~yhfQf(oS$GCEOKaG^VO*w}<X/,\}V;uKW2~;*2[~O;xL02_-S/L7ya,)Hmg4/IkXi~hs4Px9ne6L#CWdMfRoh#
::V!k)(#FROs3xn0TRGIQu2#*<S[i6q-[bW},Ln%5w./Eq<WQ-02n,AiTZN1%t5ev*G=ZImlh7dS]/%?W}iUJMxyc,L~xC=<dlAz--bV$x&L_YKs^84-Kz;mn#F\4zma`O+V
::(,dObZgOCN>H1|q2|=bYs-b;s2w>t0th+zGn$s&]>t4y#.r{1Eb9WFN}}ns$(34*1=*RJKX7J.Y?`UzG+-?5Xztflm=7Vv2TI+i5}_n8!GAFtWbvn2puJ%cN0[F/5Q]R5-
::xA!UmESE$hy`7T#{p;k{5i-\b9>w&\E<MH*Iyq=p!dm;v(vUHmZsEU#ifZjK6}fm+h1i{nWp.+oGa]#g+C/z4mxKdFx2Pl(^L92z-<nrxBVs-`{P#r%m\+r]=-mw7{>^ok
::F2Rrw!JlDV,^\0^WO_nIW+IL5xn_*MSA^k,x~|>)Qt]_~7FP`^h[jI?R#l*DY~>JyP\,*WIHXBMZ_{-BTY]9aY<-G$1L+<Q&Fp@(>{?CRR#_-`^5BR@3J3N~$`3)0fFv7Q
::N}MLW$V?1~FsBa#F8<fOJ^%R-H\T;|2<C=*JM$R749V!V2D@ua*{aA.Ee=ua0jC~=+VgNN,_9/w(pe]9dF!S/c;yqyQtC#Ji73DM<8vQD-I6YKB!FzOojjFJ;~wX54g!;B
::1fvzfSdvUE_|B\*_c@4ATJ@$ePu7;pG1Of+.$}FBLCc8R_2X=z4~YJCHKq$Ks2t~]TOd`kdYS6g1L3^3M|n7b/DV^_6)8_H1K?z]z1<JU8C2[r$Ra1#/fv[1#NQ(=~KIyH
::>x8o.#x[(y4XeW)u>Ojg.aq-%jHy}UO(b[YM_ytso!ZjmMWoL\,NJfMq_j_|#7qp6mwg8PV]OEIWp]#uL<ez6?$txbvqi^hoxBA1X<0y#eW&qbw*rTEW]vo-U7R3sJ=G<_
::}C(iX]fvysQ#fa]}2p9;k)7q\UN\p~n0nm<Dzh~~,|h6$E!kH}_8_TW5,]t[_}D*8H.ftk[Bm0Rw&E;~~QX6*w|Wf3g38Y6i~zQ8Kw0=OE&4}4ti_3#AO&\<NClLe@CHAB
::Hrni*C!N0Uj>7-m1w~eNVE+1]<%M5#Q{@SIahsefbV\mE_~M1;QFI?Lod[XCnF(u5q`h<J3|(q43%CXhO30%9^?1ca(AOL{pkrE57>M]kKU3*\||uX$,xxH)?rf8?n(Qqk
::;IU+XWTB&++UYn&[L7`l?I\yKBF,.TLlv<<p8R`!R<vIn&[;Y)Q$NIc)q7fM.MKA*o{sd$*2H{PA_T,bY5A2ZQoEsr5EbpLdgz)CkE9{<e1d;i4AXa84TZ4lUv?<.R.WU^
::HsT[PF|1\Fg]S]$A/sIDiWf9?[vrZIGkuXvyl#2*AM&KHF]p]i5l.0}VngnQqXX#M%)&lc!lv21mFh1pP9LUoi\BNb*JBAX~=l8=^LlYRCC3(;I6S^L^?2@U{CXx~0j42f
::~\ylc\)dqXx_QfQSurmn/Y}\b7IeGDgqb[RTa2hpW70}uMy(I0$+ZPG9zkg3zt=?U|1MTR9Vb|k=rB?8rg{X]7FwW(Dg`%]r6WaZ7H51SYOIM{d$-`]UD2^b\k{,XT#C0]
::9,HJ0-+yZ2T^(j\-yRYz$[\6Z?*FLGlsGG\s\8Apq_so}fU+yzw?n=AR)jktbw8_Y!R8>16fUXi35@chh68EuffdoP</bMjQ>BiLENDO{b1EZc|&VRd-(P_vi^C[J[P+xL
::J=*kH=<_KPK;8}<Dyy1OL[[c72|svAz_TBZiYT86.~h<VZ|&Ha]}!v[O_Y9ILtHZ.G[-]V~w&E<uqfe/aOA(R3nZ.qA[i#z&)K#Cv!O+P%VDoDU&|mZCnGEH*2_`?Hg!\9
::&9MeSAQMrp+%0W(9Pf#Q)%`e.&i`KT$dk~}5][kVcDJnP{q1{z|?{4y77&tLZx?[ZbEGP#FeD!*s-{j0@I+9n%.SGjSLo`t;c4}F^k2;P;0-h,Jej<s&~s[rlO_?}\qk^B
::fH0lV\%5/YVq9gA?}?P2N4I=jm*MJ#\X;|<NcLl/.SU[wO%b9f(85DGD?gIIJC}Hq.h[Ef9qrTO+85plI!D>xtOCXOjN^g+hdj15`1WtyV7ES]3O^e.S0k$x~|<}%e$oK;
::W8Fv*`ho*]v(ey<^3ZDCA_^PI(_R{@+M0)_#i$^wi{;BeWKGkSa|wxEs-D?QA/[#Nwohk5Sg#Q=;}wU&V+[^&?c$^R3qzR)5-SSV6sV7_hb}wiihA_m~A~oU?E&HDn|SK8
::,[F=$}]-aVkS[=e;QMr{xjE<Tz3R&Q=N>qs7h=(r?4biQ[An-9&Nw-(d{eIE1)vPr4._%C//BbQtJiLc(+Pd0ylA*yiX`ir7W)pFP/_S0YYW/B~7Na^hNYOF_KwgJMTJ)+
::=bNN\`qc4un^3vjTH=x0\w)K;gX1,E\,|t-dk{nDzb~_.ib{|b(eW6B?YzV^jc7$%c?r$1*/K4JN0s&Dc_DuqVZ%Vj&9A0\%.PjC0Avg.`RB9@q9f#(n0e_\}PKHQ$(r~`
::d(Nb(xhldr;,(eESE|4_w]EFUoTFW%glTdhkKV7-~o^5c(&A24tb2P=.?#/\[=elP7i`QtCsShUD.|i..LM|U#b^7~+n;m~+1Bj5%JhuY[&Xs%Z;\6}4QL|GF0CB#_NQx{
::seZ2IpKJDXl,1l74.<&OmxM^}H-kd>I[~zXNX3AGGFz\n9+O%0HEoCLN->VnJ{flWx]-Ir80<`&~zcToa>?Cp7F3d#!k&\xx]h\w845X9pOvk`DvBsSzQ]0(Pw#KP[SHIM
::,dI#AF}7bu#z#T_AiP!$Z0ax$TJw3^_=1[|2`_,pP=^I)w^DmN>E%MpkZxygPT~7<#L64ZGs&/n@<LZJ@jESx#Af1]IPAmS~8PP,r&xskS\[x`M\J*z%vae0ufRyB!+t?3
::-y89VdBU`Y7v5fb38AOQqAMSh=pZ(x4*rvrE9\6fd/$eQ/6UuuZ_G=7?o._aT%kh-V]Ht~]-)xN32c57aberlX%|!<yE0LgaW{b+p2MOIHv)(@~*LW2J*Ygc7Q|2mYc^Yh
::w2(!E@gle]evqjXPRixwd#c%UROy_@ZaTef^m=SCX/-26WiE%zUM?vkQ)`D|d]MfsX=*9rv?;&OsWI|iLS5ze;+6o*.3xA&Qp7}J7[fG6{b+;KccbsL;>KFN/75o$i]Sg#
::XIDr4BC1YVC>\K;*,&\8JPkZFV2N6Msk!FJg<l]`%ylmE`$!!to+OMR-<5+>rfARz{][_XD/[_DUI$d6_j,k>Oz-!m_ukbV}z#oRIMhhfIS!npGz#1.YnFS)uG+O9VEXh}
::38}0@L~Ci#*_dzj^<2fhj@=JUCB,{CdB#ugPVT$^<ke6+3UnL,.90ra@8rgIkP7C9I)[xfr55&/V]9I=\JjZ#=l+Wh_xTN|RU[*p!l+QNcJ[rO!?p[Dp-yRnVu?myQuTRP
::b=x~wS3`#,X#(<Az?IeCYpi7;j+@c3Vw]psZz5]&?_+|_56ECfdf5qfxC9}fuJ7QfvM^GZn-s{k=uN31|69<dQZJ1IQ?XNER)C7LR*oy1QfGfE02lcP]mJ7|B<wMBT,e{=
::eEIlaPI&wNb=cxNFG]%PSAS^njuaeuc(MbJ;2<ug)kE$eQ0Hs\E8;hzDqz8Nu^]L_;e3&Bf}3g1FZ`]yqcWG\`a+vAn3k17@Svw!B(B(($RN]ypsp=CnkENsoNe]y9{)su
::Ypaq!{$DZY%d*m?V>c38sS0sp~-cGTxWMhx-RGS84^^uo[q`rF]l.<>*&mUvz;#QZJu(1gOA_$<[#&_24.i*R&pzBfo8SNN]DdX40<~*kCd\TE{14uj,2E1hn_D=41Ov-l
::Xtv|YO;C};LKlc&/{C)wWZGn=wwZWP7j<*Xms4!RU4U4yM=jA#m2Bo-8f)2%uu)etn[AM_E@i<.KEz!{Bdn4LS,(%Ie$RcMd!m`;hur]Lk[ZMZs]_k-|mqew^f^AAG1s^{
::M0WD[U;_;LKhMP(E{n/JR1Ag;h=K~9-Mpu(HL,a!NJ\Aa00IWzTfi^xnK7lZ_Y*{{7xQ%T|#3`RQ<,/Xy-7c{k_k1$DkkaGX*J;D=E+fPs%NQh@y#fUrTu3eZ2Z_*gUA)F
::Y2F]\rMRL~9AN9;gfr3m`&7iH(%Ljp.NqN^T.sgfBN3[lvHY$jLqXWk9@?l\nk&RB-oIMCAuk?\pD@\`%)*<d;\t\!.]l?izC;tsVVw2uQdaH+$}[\al.>qle>G#A;x$#Y
::?rQuqv>MJ^E_6qv-K|%Afv=d*%1C%uPDNqOvDf-HYd%tZd6z,hUNo[3%E!F70rg8;t5xgx{r1`Q9mmYEx/CHMe,o0$m>s5Y^psIU0d/AUQWcSA?gsz~Bu;PlNX`H6(}+U-
::;)J}U(<Tjye*{zsot4YbB*Sr?MP%A]!}~q,0lC]~A4TVP9JB`db5d&l1JKxH8flm4kH/WUi%e0ZZv_P*Hy2`Cs`!}T^[<M[?ny`ER-&`6y0Ts.{l-^1K9s~QUiL>slPZ;n
::~.c#RR$><_2~TjR&X(Nxf^NUuB?pP9jn^1p6UBpGE&~511<CG-)IRxqSA-}eg7q)pzj{`jV?&oz=#$J<lq2?=XR/X$!jF\l-I<j-CMz[`ZaT`0c@rK2^ib!sx8dJOdW@[0
::2^<sk]yF|+nQQB$f3jnvlk&7#zu.ZCAP&}`qZPYbRl{BpC73g6x}0*=`Y=SE0!=gPW3,YZ@EVR$rW@J^8#&8zP!qr!m-mc$/.Y>X&F$LbGv!rA0u=[>NW!!.5Y?f9Ms#{C
::TRn3_p2BFTmQYRh/pm&),vKo7qR-6N!b]d\lh@z4Q{T$8X+M}C/aK6U1fum>Vz,`o*`L@/Q8)0e?Uvh[e2np}b*&7f05NmP](;M8[ITXzxc2M_AG>tx?=YZMoRVw3Wv^|/
::w#Oj?sHAL^_t=vhe}~fS735%q~`\%_hJCbenOO72aqOom.mQ{fbm@{Ln&.MjI5LwtBHB1D~4mp1TM`do!MCVVpaYRGlsw/Gk}]?vj]K{$sT9/aETO,QaHTUmOarm1v>Ga/
::aosye|V1jWsB/M(l)?;<mX4$s^eX<_g)JZGl3\Hs2q)jP;sA>K~6>V,h^HGW%KBE~5hMDpkq|An2Z*an>(Z/l[dD)l/vk8X+BOPhUjwPx(8LHH#*LV}qOGkx;roqLamF^U
::Ky[}_E]y?=FA<Mm;hov8]a>.)ASh$H!~>!fJwADWp#G/;hb=*Uv_FcD/^`.mmDs!j$DHHMk|NGq%xTGG0JwMp5w[oI+SElI}lSfu_o|uyhb6jpO}Rbz}`.y[;@Ms#a%tLJ
::Z0YlF=15#n&=@lfj}m/)|-&+eUwj0dpQ{a{I6AB4gOd-S0*?NCRi{uh8IrcGFm<lTvRXmOwY|8j#+qr%14XV#lkG+^kE}SE<LK{u2n/.~2L?fY{w0D)zpl4QKcMa?Hv6OK
::BDjsV[h(dHmKZ;T[OGg@abalk}bc@$fS0>|;UYG*q&R_6jiU;D.h,YIM*^j]2=JGi<g@9x\{NzPx>+-|B!>z/QR7e2/34a`1#ItTKjHAI0R/KufXhtRAu[!=}12;GS{bQ_
::Fz]$*(}DO(0f`RgUT[Sc+EyhxPkq-22@f`rM$^{2rMVX84m4mH7?|9^QH$cm/.L0Z_`+9%l5]imV?#{5B\Pe/x1-o)OwjGjD/S;x#lKjH_pKMQP-\60hM1*d}51U)1z|&Y
::jvD2`{PkorrU<?%xs8@EGZu!^_Vq{7y[Og<FRWC+9I~(!{B}%25].5RjoqYd^,P|)#}tF}2F*Jl3X?@=qP`^Mpwm~nsh+4t/e]>Rc50T_oi7t0et3c|v4{J\>pn$o}.$pA
::Tzl<~=xoI=%-%)T_&LtYm_LCCT!i]_juK~9Xp0?o>wo%%UOGOQ,Gd5SD4tAm)hS]|F~fyBAe$Z6]3#9~`5Ui%e0~5XI>Z}Kjl?\S;o_xJiPF<4mi|Ac*(MlZR|`2EI~Dmn
::+!0m7x?+tbP*%lg~2%q(4W)xz|MQ@q5(`SX={#x3gsWq6fulD|cH+Mfq-O~<k1f;u>(t%<uQJ\Z@;r+-=7t%]y+57_-7a1;l/3FrPO2@{^9GyF@M@(r^fUTI+5t)rlb0t,
::vlTK&UfA!H6yhPF?@NMuv49\(-xOHa#2{rVg2L0OTeB.%6Tw={D$-kc{x\bRA`hoOOGtB8ys=WtaM0/,]}g[Thn69_SkH~X/7`q9epLD_N#~ET1K{s|O,>9RWb]gjMW4-_
::3/{+j(t+kou@C9Xd0}*Y.U/tmeq7lpj@`@c6c%zq4eA_g1lz`9pn*ls4aA\i&Ag@5g2S%2oc<sbNsr,3)eDm5P2/e<WLhdrfWh?#bS8<kA2w~^Q)5KkaK#_.oFII`|;JwV
::${$SB+.4h%o_@q>elJ-#`])Q\h^jjIvd9GPQkn+no2^p_^3Qd7Y\{Hj?OnlWq4ipz0_@?HX^N]bR0$4)jNh;=n}*(|jctFk=4G&C&ON(faUM8U/`+0XDKV<@J5NHIcu4+}
::FA)Rkh`kSk4ctH`_%6UVtrx,o1e|Tf(!FZ(wUQni+nu96(ocG`GU?UW&{EG0Cb67/[e&hT!i}~K}2032@*gN?P#[N|Nu}=`91uPXs|sZ2)s,7Cp0!_d5F/=76~f%4vFRE~
::``ZbhTS0&EtUI/=Sn/s\Tcvy#G~$8G2)erZ8Q{s7mIH&L;YuR,2Zan;9CKVXzBG,kk~43p[L]sI%pu%yCJ#pYuI!KF#FTuT!SNM$^JmduZ^XM`s>}<]k@X&^#<jjbY|@$*
::klrX.RglTK(gu`$lbSWY>r5tD-6\{%yMoj_Z)8f6d]5J|[x\QE7EB)U\m=3~If.nN(z%46da+ih8H+}N|(?^Aq[QIFy@2VA({PM{G[oS(QeV1e4#o(9J}}F#5Q1_(5GagX
::a<MC<jT[_&5Y~8c*IQl4V@v/@w*i6kB}D?nR@?avXquD9`G[\X>U#2#;!;f;Y/Ab|t)<JQ*sMmf[wF4-I=]$L}Fky_mo%\@1}{SI{!;y>NwbK%OV;bWZo)2zV/-J<SJ+^B
::WLdYoX-0fK&!9T>y}z{<G|i$J84eTH93&ouu!tEB%kV@sh!~tCAm#{!2pDdN[9T<80(O<gyJB,WLT0Q+)y>8fbt^R]v{,S5~<nD\>rmQZ=@@/_|ScLCiF6s+OHZ~G[LtW$
::T(Ayh*$S+{P$Gn4^&Q>8x$2yqi8y=7HX{OR)%mx~]QLw0Ms}M-p6<!~L/5SfErJe}I`h%E!$s`Kp<,q4!80tatW@QaBL})eAJ?2PgNt51yATf4gS6-E9<pg|dpsm5/h~^#
::^JlD<mT0?N56S*<J)Z>EZm}qa`Ej}L;yrs6qSqrP_|Du-2tK*5G6wTD=]SRN?6uEzx&PBp/_5)f8kjZQp[aV}uaX|dGs*z$MeLw0o{G-J!Snw>?z6]{,or*<3F^,6,-Gy7
::8Hearh_b~4;qpmu|Jc)|K\B]7,k/;>{;Ez!a\uggVq`RuAhETmd)d4[185n?*VV+v4d>JZ|Uh-#X1H;{~8|U.A]o)[OmAxC2UB%Ukg~sD)a1y/A+#+U(68QbV*_z#*9-[S
::X`97|xI%N=7~T4tM*}riM6F_AdYbY~Ys/\UNVnH*^IipkZ3&P8@n)n>;3TBD5,AG(=u$*\;u*=R?+.!2(ho.RM!d[r}4qYKB|t%-;A@k.JY@+jH}<fgt*o.FQpYzb0ic|R
::&#5#]$.b!@Cg}f?\=D+#~bV9;]K\UW|M.V`R\m\Z#Y,7X4a;zbpESSWq)=V;SWE,5/=`KsasDua4-#jzG8{^ZcnabK}[Fk^ryPWY}O+M>i\w>0i+6N#k6oA+eY9hh@;at=
::\7fZ/2#n{km#F%y;I(bg[JA^Z0VV-)9=TN>%QR/~{RlqCpf)[QK;Po)[rg;M2;sA6plY$,*HICn8GHF\?amc+{L((R%+h`K8+G_SyNVj~tL!IHPtohK\Ep\Vcv-Iyi)}yR
::06IchU#Q2iZ^3${]_K{>{=N9MQaY(SG[o[2],X1S>ReDL()`r!?,mE~(|\gz{5CGhM]g@T8dMvj5%>bvp<;+wGPqt;|DXlrV!D=2!Rix`IER}Q?/rT/F[?bF;\djy5F5CO
::}P{[H_qfx^\]3$BjT$1(#^FP3q8)C7)~=F/s28KRup.c47^Z4Fqt>OdWiZr}Xrv66)?g4@kuE`)S\;))j[iu.O__R7oJ{FN#RJLvO]`N^AkQYRIH<sXPShr+IEd+>H}4AO
::39(62MJJ;@]alK#Veb%],j;svL3f<9;=rOQ_Wc{}E=#fFBM$VTe`lAAAX}D&SG82`L//0^Pyr~4Za!kE2-UYfKlla$gbg<&5lM_m$SwHmzEOs6lt0X$h&upTY|TRY|B$cg
::jdW>c1)>B82%e~lT=2O}`AV7k*LA2+>07y8=u@F3]Fe4Q$^rPv\0k)<C^{$kW4U[vI]gWE/dj{zeZ&e22mK#~fHrL&NFy*2LOIrI0e.S\W7&0zm%)-UN;X;en[gV_!#%YX
::XDn-VdXqLH)pG_G4xX?pN;{<8l8KUoZ{!@41]\caK6/%NV|we^jdp}F8dCxnx%jptJ*/5G{/lc~<Nyh])bXb@z!(7FfJP{t7!4Z$nr{x~F>`^JK|0mB0%R}qptSItB3`_!
::.)hSnT;`n<5+g<*Bg^_o$@~[Bvd^]1P_O>c[B3M%.^d0m@A%>;_}zra&Fvef_vvX8[WDB$uyb3J#VtE4O(`?R,33jjKdD3GG3aLI7jST</utr6`zwZA5/X!7t?p`=4BPw8
::;wjhPg+,HhN]Pr5n@C[P~khx>.O1_qftg,/Oj0`BAe*3H2dSot@D/QXp/]-5>fhFl6w[pPU7#3u/x$bt}\uM=t&b%Y@F,>m_L-x\5y.T$_Q{$Uyij6#WxZ]}Sx3W_Y?,Rz
::mqV_%F,(]E99B|lyvN#IornP6-q|e=k<ncHTLZ9Ok*Fp.u~uf~P&qr\37G2TL;^`!w2ZU%i/YM<Ij+uU&.-PE9)-+x]7uHp<fW>f8WKp&2^1ZOtwKK!fNj#V`eF@Av1oB*
::K*,_PrIvtX|?QtwALo,1e*XnbqTW.z,>BB#~a(Pry-NFVH!sZ(|W~nJZ@^u9}/YXH_-S3?4xdh%%0Ryg~O]Vp/A}wFxtq05NZ`][N^LnZwoPYq-\.H1-</&qjMhU(aqYdH
::|~y}=&dLz%N(Tj{!zvuWzPx[oAT\WdSr?7>q[+X8O^6NdJ;9H@N{[lehiWbA2/<?Cg{PjazuKTaGj/fY0Oe=P(s[!VdH!^DKQ+6r*iyoTrhjrK,Eh!=]W#7[fzDj.)rF9e
::XX$sVSe+ofP)}lx8z9$<P)Y(/Np|m<i%KOx$bHv@$jyi)L1GI`>gbd{|LEGEwiGO0Qr@,R!Q3,C.P}jH#7Te@9I``v\67Keju*hGcDe~lWn]jIGK`Xe8^f$!T/&~D^UGv7
::qK}$R74}RzC>7Dv%<_8_#nZoz3K#5C=uD/TV-`@n6+7a;xnVozK*,rQ~tm`e[[P0fkkGex)D8C~r=*1urU3aXYcwm_<E-=oWP{Z9%bnAx$<B<Ko\=I$}txGetfg}@$vx?J
::^EGwflx0f33aOXLs@Mi=)LE6\nzGl8(g`QX!O)Mb|`O(@LlqZ4sZs?t}+SR3GVpWM,*0R#v)?o9;MMy{Y5s!KW47*F+@4m*nV$`xbHPSB=y2KG_};YM<4Vr68zsC1dngNm
::{67T-BVwH!{4{r!_wg>umyuGK=4MjN*`]!ekQZ$)c\ka|{h/(SHPM8B,_aDX9Glf_^J3v^qZ>5E}+5/%k)Xw;(Q5,Jr!(us<i)P5b!X#;JnRSww_V7kKZl7lB1Vqgqbs,^
::k&@5T&Z5D)G&vKEL+p_\r}G~_6P3<IR<,PEJiPM|/P,5r/?&p={;8ivNrb)p7uA[AOaK5*-jr}qGy]oXcXZz@-E|%~.+^ROgqYm!~a(/Ao@\jY9/C,6yB}2|Y9WC{0-e{,
::&IsG2;rhXGceX};#zVL&Dw*GzF|n>L$sR1*5$9kp=0ED]kMo[L)`]R;oCB@Wf`5gyaF(}k<NFr{}j?#LDnRV)/z{\}OTc=?Q#/~zp%j3a8iaf`Bl?tmsNbLM5J.)]LE.xE
::V#7cr|GKY$ynhXs0nY-(EcV?]m5k8^v,\hyLpEOj9P/KQhv`<c$[?j^;;s0eiG*Y;rv|/7k]9PlG,,bUyO$M(@,\Ar,6w~znp~C!He|G^f\*TFK(OqQbu}?Hw_T`&r@vx$
::Sj_gjkBn9o}pyD1c5Enky8(yr_%t5hr\6S,{\#Ci;r&Wc6k5lBqf9wErt_GwRiV!J<+~nfSg!]>Y(cxc-Fz./2Y=eOQ0n~s%UI4,Anoo~[2Rbb5&I#Xso6n;ex[w%NUQ-9
::3PnxIgl^O[pm?u@iY7xoVqr8czhW/Yf]u@Oz^O+|ML9N(B~K!hzLKXP|4YlC5CeK9^]>Bt.jU(4Xd4Yq=~aB40/hx|?<z)w+1e}pIdO5\.)yGhJczokq<q/Emd6`$-)}Xh
::hw;elYoq]HUep_5qf6@b-~KH|Y5Ot1qMDdl}</u9`!$jA;Fqk%*wl@$-sY[\D06h`EyEy\N0}}SD=|G?GOOH>%]Y7UlyD=QqyBlek[,b0I+aQnMr`0uaa#Fd4>j%5M_.Qn
::G/xB=I.Rf/hz8=GsL-Chn)^k$)G9$I/s9nkTF#VnyFJrZ&5\3nHAm!v3{p;D@uDEQU7}h@?`cm|#\@?tHI_jx~%n|?b;I5rG[RA{~G(NiW`*x@>C3|B@VY-dU`jPE,rR-z
::/QNn#@T?>QP*g8tzAWx]V8XU\[8GDdlR8S~,k}t0d&zxG/Co|IbqExp}O6g!NUv&3dpsM]rJjg8d$P6jb2Ic`KwP[va,qGu>4B,.....;>;>Y>},h}d,yRa57TZpLLqGB-
::C8jnwR{{G.F.3-.t/;|bRnL]H.;.^[#s5;/mt)E!%;+_=J9DmqXNzR4Z%%.A/X(W(b!Zzi6eIN4Sey5{$[GUZOLUkk2^6b96)SMA#O*0UaKc,gLJ;CDk,zOyd3g&bw]/B-
::q3!T5U!Txl.oXNK4Kt_M<%M*r(~TJn!{|5Q5pV?UKQ,O%a/^(f(,G7_+&YpUsNi%E06uh]ddZk3--[m6w}qIaTe,N9}$IPk3-/htsr3=45oUk+##^tXk{%o-U`uHR9j?78
::JfidTlCD&MS+8~r2<e-Rm&Ew_OKg#f$l&o4%lckh)OT;Gg8$y)YQ+@p9IX/BY0inSpn>hrwy$}gp;]^d#&%JBgX*?kj}w`JG^yLVd}~bH]2~-At4Y67}ZNQ7h`3hy5udjp
::qn(qP;AB6W|tTEasauIm]T5e?J`fh>E9-{9%)$)&~@iSocFZ[5HL_WZm%Ot+d;Mo+z4~D6HW1<8`qBs4AP!FCDtD2_`IU0m{jRl5~HQp6<Z+(*L1\/u+AhFDJYu6*Tx;&L
::7,>Yr/A2&$Koj0w<c\isDEL@vZFQ-IPgO1[e28Umf]#/WR8laHy/|hgWrc(lOaiw`Go(Mqj?Aw*JW-_!,oA*Ei\pM$-<7dmTjyly@8W`c`<Bpd}Htj?DZ3yL5#\4{z^?LD
::L@QZ[L1<;vu2,^>#rg#$C7i~PH`aVK0`^<]$,BEfS9f#H0l/]6j,eB2p><#NvnZXjF4N+*Xd5dZ%tK/lx~(~h[y#O$YpUhuf&`dhH6b<~+%QOgH?/0bn^V)$tKZ{5)l\uL
::BS%\pF2G#H}5qa?gr^~oR4v.g<+u8x@N`9{DB]*\$(+K7^lhYMro>eL?#wiuY8~]6?TZ(O_OdgQnhCXzu/4`s*F5@<NvVjRzmO&4P<7wB9`Z8v_v@|>gotVq5N{W6R(\2s
::jQ>C>m!h2m3n5H.Pt47#o=4CR.ee-e*thPi+`{5yj2/)qC*@6]WbjY;EdF1VoK?g.>nqU&D{z-;9=RUVk[503+yB;aoA>XVO6SeU~w9,=S^?F)?M7,,1B]-Hf&CJtT.4Xy
::h%j1p<vma0vu.\5lM0tK{W6Ur_BDPx.TksFU|,5Idj]?6w=oIa3fMV%]Y]u0=V]wxkd.l]6nYqeH#V{wA_a/UPR}wB=8.uaX3z?QmJ.t1]vfh&OYB#yHQJ.abn?zF4{#o$
::R@,B{T[Z8hO*M2uw=hJ]&c)b~Ba(V@4<q4.Y[m?Z}JptqO9L-h[J~E@M8uf;/E$\.!5oFUyRG?8`\=g8+HPhRSWkf=b!+0|)IT)R_H/QCz1Oqr{S?/E*93P-R@vK0b/0>W
::iK2_9-PXX/a{iUMNd?Pg3|+=e@b95~z%J0mLLJ]0Sn=FKsx641U3XB.7GE!$(gq#&@aDeZ3u269{X}m^!l?F<|Z6k!71CjzJPXMHW]ujwgK1^2[1vpKmA+XQ<c_pq`FUDh
::3G~kv_d|g;0B~m@(f~-T>Lu/-oIl)^X&AxJt`SpZf5RrQNgq0[>.tQz^~GkH1]gNbG$~qk,i(+hi2#YVuh&2Kb~&iRW4uU6{Dq}ZOe^}=o{[`kG4j7%x!w6&#,W,6{o<BR
::ksdHE--KtD~w(t4YD%w}xxX!Aw(N/0tHeDwraXOsP=6yl~fTl&&TOE>Ph!p)nIF$eG,IN7J!9Y&z6tHySG0&,$^3qGug[VF!u]$qo9Ib3QKt-qPoej~mT*FT7dI95QnMQ.
::4-i;W-^i6(XCN)]a|kROBn\mY$ZNRlKg9#w97v^#.*|NwR2/jDTFm~~TXg~sL[8~/Ym?z|AW\h/+5s97o[.2U_j(NEOc1ie}=N3$3aA0`|Q9I$L6<0rCJa/n1v4O2db~LV
::hi>T}I3TQhUXV?o@rBq~IL*~$`Q*}#L;W)<_{^IH|=<ez~YH/Gu8oV(=|OpmB}\I+B%mfNxIPlsqN-3hIQe&#Pr?l(Sq*pdN*HZ=}d-nfD?YdZQ$^xPs5rRJ*/i_`bPbC_
::EKxh6|,`p|#_e{>WXtPJtw/BRFT`#@fia@Ewul-L+7YiViu^V6;H/y7x&.iS3b$^ynHi0lo(0BX<HNfget|F.J^?YTD0Lm\Lj=)kWMDz7WcBoP~1F2r=)YHIMBb2S;a_@Z
::N-V%$jXF+@-||k>nd,O+gn&yn,.O@0w#_2R0JYy1y)uYVTl\2@6.Q?U`p[/aFKA=O^^Gv.N){n$OHlRzO\P+=57?DX}2|{l,IX_lg,EVH9^DoYr;0qnPqAmIgd=y^/M6HQ
::JnyEy5@%B(&#`iSJfh!u&/MeBDCRL/M2uC,4&DnY/2@D@MDSxxs1v=1Up8?c<Dm#[E8-BT3jLI1)l=l=vHogw+f\)cB7B8Y9FeU`tjW^a1l\DaRS}ST=gwtDQu=I#sb~YV
::DnChN5vj!~W]2*}vU\]R8_5<ZPCy5T[^Mix)m#Fr*/S~E4g$Q}{Be;(<ODhjB~N7`MWV5G.eZ@>o8I,IqW\(9Q+XohK=H%y*RmFa.W~+D~BJ+b&dEeenF<.lIiYcK[X(`N
::ZK8ATXs`uy9v7n+4A$xnyo5-<SC9K<iyW8ay$qb,i4xH4zv\M7<f<yup2;Vt#<gGC-3ab>-~&md1,<4N!;G-%TeEt4BhZrq\l=RcYcO`oF9E^&irZrLruQFFP_+G~C#I$X
::+kJk(/RYP=w}n7bN`1w%/WZK$IY<hlO@fEdTxI*t#.d3l4bs`v$iZ}ETcR+L~;#T6ER)x%4bVUJ)G3%`zrOr~H5w+l5,N|dy~_S-Iqmo_kFn\J$GUP/=sZLA1pei75$D=+
::#bTG8CRQD@/h?\?rdyy]kAj/r_u9/YGaYT>g1%C3])9^6s|F9vWbN6sUE{.aJtK!lZ>V*,%cUIqm\5,0-,Nc&9bZWWskRKjC=Q<D1anet\f`2vqxG<*nA694a`4J}dm91=
::eP^CUz/^1cNu_Z7#g_UA+5>ECR5QFp<7g~tzb%05tg.jK\~b)xgB3;idOc9Zj|[.UPQkl0x+BpqHMow29)!`y=RU8xGf6$?gK-DHJ_w\w^uv-Vw.cY<K0DDHDBpcm|E>&^
::ol[m.tNDrlg@wOmSD2*r7j2Au5z{JP>eMdz*zy<$ML;9vq\w`O/1&l,P1ve!q;;;2_fl>EmK2t;bKoh<+AhParIiTED~-xjzg)C)7l2l$N6y~eCh0}XZ[Ty%#_mP@gz`5!
::.VMd@<(QOK\awx\oAJ$q_SkdldrE;Uc7*k6#7qG)7s6p%q?)Lhs,Csk[>enz)<I6SZ!rHrty&FO(=mWbO`&0OzQfa}M1e1TU7fLdA+5y&O(UiMSRF?$H-I<pQJzW5\M)VA
::]R=K2TG[a[QSHzQ*tq9r0E;zt<h%-AJn)PF#>C+DNdW1Z%UWeofB>KSemjrFNTbGyQXdr76z^n|@AJ(a1bIr;8]~SQSk,Efj[D)X0R*v?_@uVjRc/Ht^^Yj$&{93wEupSB
::]54`Qdn002x3A[N;s?%q?l=PzUPj-p<1Mt%pr]+EEo<?Iu-Q`{#QzKj7l{EErFW*p$J@hUzSo*{Wq]Y!^cu)~I_d`k[m=!<n]%phK\8IOBdsJ0b4ey=\nr5\|=4NE-Xfs-
::Ab4\{Z#JhP<x^Kts%-~noqC5PSr~pH\|WYCcO)aVn+/csapFA1L%*h/x_Rh`r9Dcxg1eoS1$qw>[dAdLZgZ1h;I]?\`Fb@ifpT&O[tZ[c`C]T/[*p0|/}P!BbtZ]_)WyfY
::ll~nuw3;-_=nN-yF&D#c8Kzz<2mX(/uHC3hIt)4w/]b0O5URrI85NQ@6!?+d^3lcxPH-v|p=dm&OADjXO-8Fqw$-?ip]Xt)IVwixN3q3*{<7ua[c^Psl\A^v3u8ss)0U5[
::.OH$Mm4~cEN;@Gr@G}^KCWaR0g{}Mws&~Q#Hu?U#>q[Ros=5Ip4keAj~?]%(4FdtVC1BaU\;$fbFS>WTA%hX=_7P0v0;w-snrtZ}f%Ad~|ZXQELtrFIEl?p)LH_thn;yi<
::(Y]_0;SVQA^YSfB)C;RF1]*jSPKn$Ek=6=`,rI(s-p,s;QN(V=KJ>o{[^,h7#c625DOQozCY~FqU)ysl#mVhl^S9phllcPm}3z$<?3^_l5c!%-4m!+bX&%-U-BhRZK_2fX
::7~JnsZq`kFW3A_T@tXgI5BHpY-wH<G^jan=@myh[#Ox5rgUa+[<W\Q`o!2{j/,z5N3;x7`o+#ifCi`z!nR~(;`Un4-|EurHue<E.rfE=R<>]^Zlu4ss?[(NImPM9zA}F1!
::T![8O)|Q!\F](q2U/xl*kOhVwWO1,>,nykbX~D8eBzDde<iSqlA0ce<GffIlvd;dPE<(.]Cw`_eF.$6q-u*#d\|LBSdQaRo@*su9_wKe/xFgN#ng;\1g3q?Gb2_|x#{q2h
::kZdBxrL{bBQ`%+cyCXDmE+\o?Y|@oMD$.yzc9{*AU|7lV&.K7s&p)ypB\Q,;~1k^d,J=+x.iP+5ydkEljXGCc[DOt{IG!vre!silPD!gtk$y.nk5koqH/RPWwbP=bFQ%v]
::$jaXA2WA7*=?-lSLWb<1#rvWk*aIBKx(e*#Nw!.F_;#OGFx*+_rZDkK%n9,?a7PTQSlTV[o3ct>;5B_c)^K0%t_Xd[^N<&N-YyI[&waQMAY]e(7U%b)ip;7Rii%0|x+shM
::62j.R,Dvn\Sc%m;eNJFK.@/be}IW\5m4G<k7Z-=i{vII3vkie~Hrz+087mY%xgBJA|Fh8dS+Yhi4x!;MA}0VRo}t;,azwEy6q+Q$S=PxsD*Uuy0$Gk>W<5XX78g}SL=vKU
::*<vr5&O~>e#i5iQE#p&kS0,[3<w(Cm/?27ay%ugq<MLJR;oBi8IUE!||/ED3EGsY`J=H$ToO2Sbgy|Xn4Lyf[j76l!1`D_KxIN0%\;FMpOG+#_8}Yn%Op02|>sAkuXro%T
::7P)7V97ElJJ7PL)5aXou9)=,pOTVRCE=m_(?t0(wA=D*wm(i;{8G!yj6>3\Asn$FOxBWIW;?Ceb!.<|pa-|o{uwF,dqUH;2k+QlvnR2D`1gp{M>BG[1HHYRW3Xa]Y|BW6e
::4_<!Gm*nY^UT+^V6wql{%u,!wS<SJO(&>npsiVYX4SihX&}kq~k+9+4T7XBu|sO\i^~%!U2/o^F*yec|q*PXDl{5*@/E)F/BF3\5`uF$<XF#^OECfOOfgk|[GFvWHo=%+O
::maX0N1uu-(/Pipq_)H!eOrF&7y2Az/h[89B<U^w!D/7|vrhoz2]b\p!dmgf5#L1,wtqDZx~MH2mCR*#m&_)l!KWmwno4E_eqI2<i~Y^G=/&XU6BB.H2n$kSA6K$.C-|!xf
::Lbm2oE/i+;T+n;l]@Sm4U_?5,Pe_R7cJf|qB,`I\}_}\dWz+#/H7nH.kGRn?#jZAFRz(8uKZU[8Z;?M)[PL+svZH8K&P[+-jiLQ,fD*HOSQ=*\0w8-3<wo|aS\q{eS[xAj
::sTO?U&{p]{9c@{g*6=Wd7=l^VeDdM\O<FPfEUO9&=n4eZZ&a8f4a934Jxy3y0e(3)Q5\r3tv1i($bv-qk`e7o-P\IgJt/|Sj*xYD-bta4E,Ju;E%`pf^=wv#B|^KHT,$rT
::0\mEGUI(#W0x[{5e(b<HV]EQsYMKqJqL4[,h/9U2slFXDh{!uO>E~Iz)jN!@tA]`-s#HVpR88K-0)tVnU{<AZZq0[ZH)ZmmAd1Q)SF&V|5DT$HViq&c3Pytb(yZ?DD#?Q9
::@?uD2p8NDs4ifP$w<D)ExFL>1ano~w5yVo=#+{<-Mjj<V6OPJ}|cbz00s)G|U@3eQkw?^&x?XEF<|o9eP8e1*nM]Y+!fs!i%7}[j>jvJxz/PuWq0fgYF{-2_DtPoe?/zc!
::shn%HX]U=`3yo<?L;Bht{+>YxzfBC0RY/Z=19`}~n|_ym86U}7k&/~-k9n|itEMXK{fK6we\np\l{FdBEToqU4sp;=?`!FC!,=YPLlwjWAEM*tKH&cKy(h1\o8_SU!a!]t
::@U#5v$t`c=Kc{G}~e`{\N!Ui=k?0|$Miz3NC[#Z*W=#W5.u#O}}nDJ1JTlhOhsXe*=wlo=ILBQ>-B\/6W/Vd0z*<tj_ccS~p<;Oty|5fX6e0;;{R&|wu}+*(9Xxd}kKhl~
::5,<VN[B#CIJJS5<eIsr`8Z*XF>#[`Vz=Z\_|WIFjll4RhAq[GL=Y;nn4~7~JoUS2NaN|]IW3PLI91qkY4cmHIwk@&[JNrRY/6Xq)x*~YNL5Z;};1@@Y^kQ<W!AU$ng%wGY
::@(esEICw#4x#6&=_{^57bv]K@bD}o\w1gi\Pz?],[wT<-pd4$C-8QrYDPImT7U+1fw<oFbbM=s?4pe)6Pg2]QPLI/<aC2V(Zc=Fci{%\H94?6XO?@JH9iPyqF,pD+P^qkp
::C*^O9H,NlJ5q&P7we%M}7{wIy&CQ\55aMsoe38dyP&}kH%IRb8E@l2Yz2c$+i]hNugh1b5M_w?l}c8-Ldb0L3;X@>#ovBs(2x9NtWN)#\E%RUe0-^z#{(_G{#o#k\~J/&E
::)Q]La[U<tgj&CVVf.{htus/jA?ZHYmqkPSKjzdm3K8\09_C{51OSR(9SS7#zT\,F+*a@0;XVw0Uv;6DaqjM?<|O}x;T<Ohgs9wW4MJ+{;[Hek)0n)(-#+_\U9CP[9P96&k
::$6cy$!2$rOoM8%17^uJ3EGt6|hDHY]pj)`fobS~8v_8%z0pgH4tECrFl}q[panh)v5lOO%ylVCCxIRR?a?k[BzUGe7Z^nF5%bbd@FZ;~M9(CJ](*2l~GUAl!7EO0O\-)PR
::Q\M&z*V}/dpcMAePCcWGh%)p;!5-*%],>f3QhEp2%P#(pDgA\A4njj}M/aPw1?_\5t5=0p?|(hdd>qf=xFi`v8a)|#?D[!IO~X3G}zp1&I-zz8]<2@RMc6QNzXH@Uph0D7
::(akqt=*?0CD^VA4<,HHcR%)FH5a~E&N8>~T=,s)GHDM$[P{^^$xukr#c-MS7zvi~j-`A\)6?ucZg4eS;QO&#S7M-s/hm4H7EF/J/WB9Np)zcH((vtXThhJ!)vlT^yS^_df
::f/nF|Ar`6Jq`+4yl0Ok%6rI+-P+%96TBel<?,*A|b,uIC#E-`MR>-66Xc$PJrw;e1b1KeJ$x+-Zc#v9]Y|3ddZLxk8qCYYdqc00hYZ[k9c@,N_5m_]3GhSmbf>`B&KgO,a
::@HY*}Z25uJ{w[j7+N%&+cezrX>bWRxY+Md,g/;Qn4Ydi,VI2I\GoQf.n;DlZ87XgRJVt={~+\OTtR~.X8%WG]Pfwxk9.Mv<YF6MZT/6S~\AK}krGVVe<HA<(PmQ%YqQvh6
::_g(bKs6hO!7MTO]*3jXdE$UJRR9\q+>yQh|cdUkSah?gR#\#ujB`lQ.!4CNAewiO.8`6Q\[~ay(CZTrMOkFQ;x134w9G]9s%SdN|UheNJR\+/F3ryV35s4D)zfCY2!UbO0
::*n=p}(<\DQhs(N<i]Q4]_YIC(J`\(v.i}#nh&Fg4U[3/^G+Kxz|&.|1G%8bW^1}\F+sP{R;Fa;<A|tFT)|^8LvUs)KBn4~4VG-u2gPQ]_;gcW}hSl]tx7|V}CM(NPgreCa
::&D0Ss5MAbQ<dF\ORKT*#+IbE_ci09OO(vsT,uyV/AtC_*]Y.G#B)ST|YwVUa2lYBPL|b{pXuypt20*1b,^tS,3t0l\RI6m$|;zYxEnp#HuaJHF2Kplz-f;|3c<yf`MwjJG
::XA-_x\2s2Wz8A?0^&5woB6-h_@MVVa{q?GU4kQF]\E*2WD>*GwNHFT@QyQA#Mc,`5|i)B$6#4X?uNdK~.kJ=>l]0jY(IAG#/e}P)hK3/HChf9qxi2]1yV9MtZd8GD%{~sI
::8M8t8VuhnFD!2{10vC~*z3q,5x[-xr@wB|E}<&-1z0$nnm|_m/4tg1a\DNZ*A]wqi?}bXpq#!b}I#z7=|AyK*>xsOHj[Q[%_h4/%ly+s{|PF6Qcf5L.?Pxu`W0y1z&E2PD
::Xsov4hMVFTLjGS2#qtEkE^T7WN(6U7Q]4J5+Y;O]!n+w3Am.Ht9`3EQ*cc~]_VDkGNL2Prp&u$F4!lzu2s-j!qyFu|%]Y84CR[T-GIWoHq.+E#!9)uvHIQznYd_Nm1;{t7
::|JF904sFup/ht2k#aMUy%Lx7z/0)jAl-XEDg8D\_/^)9+\,z,uar7<N71M%o&g+5^kP0uIY#3gKbWa8cqkc*mi)ha~yqtgG)hF}d.rQtAtoG^CmKEqQ>j]@RnHkEyw?w,=
::x/2Fc(YNj3`zcv3u{v8K`@UlS7Sh0B`*%f%or12!Yai*;B1@x$W8vHfX&u*z]p&QAWzhO~Dd,&Kyz[NBC^*F)2[+-j>Us_dQVs>g&B0e##0Sl+/dg7tzFN`!a}Ph?v2SQ}
::B&&?PA34ZU*{xc~H29ir{EEKKz1K{5EW@]|r,~8GswH3c$[.><1>rEQU$nbj[RN9$W=Z]axPR}@`6MqY0si<Hf~|v<*P=.7E)y-[I$j5m{CSXYa&?X.wN1KX[upFRl|5?h
::3G^\Xb&7*Rw^eo,@)90;#tjHG+E%_+^6q2a[ePXJyJ&rg*rZ.-vcio_)|0&^_|l{I{D@u,iCgYes%9-b`ah4r\x,!_T9]qhsodcNNG2@DGQrCRw!whmhOR9/wg+|\YJbpQ
::JFE,Dt!Rm)7F(C1NyhYMU7#f8l!Ku`21xIO8785Z}5s}k86c43wou_IKhr=*PR|>-1*;3s-`$WZ]CykI7<8/#/5VO}XQxSuWk`bA0PuYwK=!#alo.{i}waGK)8L(He.8m}
::&?Q8PAD7tdt3,fLf@L;ZNi\%y_7DHV]i*^&bTt/d3ud&TST@+n3YOO*jm%YDCXZ^79XH%axF7[hsfvd0yP;Vt&vw<O`&Q8#fqdBV~3kDh5t~QV^PHu{P{r@73cs<tV]zR&
::7JWBpsT0h;_[t@%V)QKmne~1tQpJZLoM+Qy4oTx|0{GG-zm2)ddfWPZWt]JGg%E(A`^dM1h0}m513N.1Oi/2.0iPC{k(}XK3@2u9Awu$$\f~b/i;gR{kb$N%Z\[6di}cmQ
::4_gJ8-Jn47\1QI7r2bw^B&M(F,U7=@bwV,?;rHw(!+/]s5QfKjD6ToO!AciC_cN{i)f$oh0r]$*UD}`J3YHxe?c0(/{@%v6Wb5|n#+Xkt[BhsN8O]?xm=st?8`\^=z;uMR
::ui3U|Vw*}&-R%B%U`2%/J\9<^MoG;T<~G7mI@S}f]-.}f.x07s$B3$)S6H)(N#2<$@}Zv{-Nuj;\NV~`1EeommI}/9GC_rCngH2pH5+wG/t]#9{gG972{vBz]fkl-<Y>GN
::UAR6CXk^oFFWh8*EJ35M>Efk4c!G+N/POEfd5tq3-#SMZ\]sH$QuP1gFFg/bG^gNrKX,hT%NZD?O%s/#Gp.F{L=tBNanJK.LBB1|kZ#L9a[r(Ps4P${|Gn9@`q}c~\1r$V
::Tg2tw-LD(87T0gyI)fJO\fm2q^Cjm>reb^6VKO11[\EABcbgGOr+Tv#OdK^?+XG#p$g]=|#{KcvDONC4M[7!NJ0*?oER\h#)nhfr%ImkK{},|\Ls@i[.ZV$GU`0-^8V9g-
::3|Z+ymey~J(-IGAhve\@;vbE,pSC;5w$`h-i,E&ydL?7kVwk$K)SN=0j-*Wom8bYPZw{ElZS+\b@5me{C,iGD$kZ$IUNsF{78I^8vFj?\IX(3`=(Ms`;@<1H[nI?K}Q&1g
::97YC\2J[b@@u/Et\w_%6aTE<T5Afm2jWN=@AznEHhzV06rKJU~*qU*A4I-/P$Yt)pMDRcz\D_7;y|bp@a1\eA~bg<{.({p`I)O`0cCQ^z4&J!MqX6}99<4aiRjy!%r5H=<
::_LC4_XKL$;f+ETs[z@leNF`!duHN0sQ[Q@.@\EoYa~{e_km6!C++NMNXT3F-G6;dqfXSY*~R(0DRbe[mbi.OUDP+`80qPP2Wv<F9!*u<#huf&VG4/m<4x}r7P7L]]r^1{*
::o$]Gc-ytT0tRHwrcS`nFnZ{XgkZ7Ti&UP0`a,H/W&k_TGVhOJGjuJr$9q=(#24-@<Nx_>XutR(G&aZMhK1e<Xl(k~;EFmQNkCw|V,UUh}%\IN~4Xnw7]~Um\<!z7^*hR^/
::`O+RY>E^Ba|]c;XalkhtqSy~#WEAa5i\)U7Ori[<Jy0exBQolVxw_@c}ceWe#!*fl4`N?Jr&a%#F,dn[TU)Ztq5vDvz]T/e?B7NA^~(0CLCf*Tk2RqYTnE8$a15tv71G3!
::BYqjvD0M)~Ie/}_qL)(gPSw9b(raNZjnDRn_Q|Cmz{.UEVDzb.@BJsk7gKnG~*xgl0a/--_8Y1KUR#WVI5RP(y/8pfg|G~Ks0)kUk-lG2w)j`[,k|a[y4wg6!$?mX0/O9H
::6%JZ|X=3m=8^FVMqpNq|VGTr=\6DnCy2aOBS7!eT+hb]/Nd$Z>s/u^[c%~30kWtErcQBU1~]*4[y/#@|V4&<\t3|6ml|)je_y6JvF@Y$sv3J^uiw|5&Rn0<Z\H.PSmoQlu
::0%;.T$0~OPWt4bYS#H_Rrt3PCcTI<U0r>1]c>5_y*Dk$)+<q=HybQ7F|I#UG.sr>+$4GTR8VG?$+4sPG3;,lmX^2FRznM/?!CmmNYPbW_LMQ((Rm1;2=d=F/\Q9v<C#qOj
::9s+X^xrbufDYvFs[z$q6>JR^dz~yu{wL}PCPNGW=\8;m_Hib%hmlh%RNsvM$@eauP$`Jz7Ll0&_!Aydd}SiY)4$#\l*bCS\ioeI%dp&rnib~>JJVEOWbq%$Lq/ihkKU^6Z
::Wh&~lb[4Z_oHM3b}c8r6_W95X{Xv7!1ObrZ;5MfbEPs,O3JOonRU8Q}NVQ^?2W&K>_2=C3[Kd\a9@N]Etsi4A#230\Pz[.jEB|Xem4p.GVglT=k-=BX8HYbwM[!&^BRJUZ
::n{guOPc4EH#?2tcz#]B(xC0s2q;JxHa}f6nxZPa7XT[M{rF/!Fp~`CE}qMCnNxOxMGF}@k7Sf/vF}I#-oNg$c6qDhV[&|W()4nkRS+92)S!_x*HOIq*cp[PRjowk!laR;b
::\BLCqx7G6xE[Cl(\zU==T7esG4tJc`%ESAK.c1;(}4dOV._9@5sdKf#3+f9pOmV@vpDsr@(BY.Gp|K]CQJ|y`zWRN7,5G-aV;DSGG-|vY-ZD]DQ.NX+<r4YpqZMsJ9oi=C
::zp*,-yqLOchbhny7Nw;Ij17bGr{&+KB!46Vp;lddW$b8_Bb0wl]yK%_Y{Bk/)_s_]6<8cARbd~*K#!o^pRG|nm^B,s]K)h6H{gP|f3R8>Xn]X}@Xos%]F6GkUh-v(b/L;=
::4_~%n83;HlA$%63=DbZlllUa_qdD{}iwktbkLXTh}XQJy)z+lg8;bP6mt_y_,!.lR7u3P;{@ntvb8Pt@MvXo5}xqd&=i[!1VRs-rOMR/fX~2JHrGg_8;rwDA1!nHYV.&Rv
::yvv?5h[@UedL>PQ8<Ak0Ybcz7DjJj8G#V<P)>ce&!wu3MsavW^)u>gxFsVDi;OHP#&gNEAgF(rxIX[QK0FLzE=i/ImLZ)Lo}*ZjPw]D~U,#(t`TJi^*8uX6f2Hk|WrgP,X
::terM_I86~t1^@5CX|a13Fj_>&i+EJVK!M}LcPg4e=,t7v-j%%SNd&s>k9<{$SEEg;/G^O!rBv|91;>gpN(3Dy,Q5kDv\z!I&LO[bY&(y5?ZJ8Qcsb{|,g>pv2fr%028?Z>
::ZFMW<H?UlY9o.M?F7{ZG1xG4[4+,E{cQxrtwj7AI1Z~TaiC6dUPr?KTK-toU{#t\tW@bVFVYLcjs3(rTg;#g3+-7+AnT^m$h7(NzQV9ReRt+4]&Quf&17|?1N}guwe.uF2
::6(hrecZZ;_b3u~XYXEl@zKANs7Qz1\j99dI]M/yaFsv|kfDm(i!y6j3[Qlom/X^m[p>vx9!,q5@k~ZG!!u\Rj+UOGYwDsThJT}-]_S2v[i[X-DAVy)S!vEk}S%%kv|E6~?
::~KBN<[0ouXx$;;}JL|>v>FLhB_<g]wj$BH8I0YcO2|*,/~[RLFDrzjTZ{<kbE-rui)3yc7|fm<[/1YoxK^W/a$0tN%yzQa9!^G|#MIT`y]!~MHtkiA=CkZ~SJYBrVHB7c;
::B?q_)5aemHNN*N86~sGjRbU[s|gO1u)M|/yi!klzB<^%<j+hFH;kql!3)5d$E[O*Y(>N[jseJ-YH*GDJHw8|&+s)xZo/h.bc^o2MX;nNPqn1GOtgy;o_b&.h^Wp}^8A@U-
::-=t!OhIzT8rE6olOFQHP%*\$je%aQ0S9L5NB_DGb0_hPikrDcH]c.YQLGsKMR|<eH&^0;yFNZ0q;ntD%`8,|*k]!BnCAbY(*A!`U*$]KX$0Jw{?0P|L\i9f9A|>n7J<q&W
::W1<g6LCFsKP(s|`fxA1wvzY7Y~ZmM22Jh)RwHxl<c~yZCm+di~rUM-c\{b/*V4fSgi%c{LYdO5s~M2)M?Qs+@i\jn$^IDN&M@ea=zEp&6KH?.6-1yHS9^n=h_@bh|gWcu{
::~1-\!)Jmcv%ITZIUwjHn)Zatd6g-Cd5T+$Kp@.6eu6`<TcIx|#(c{XoyWM@^=35*B=)aAy@O.-Ztx[q|$Sn!rWn9u47tkAT4T+[-li!<\7nnr@BgHjXZjd7XuyGZqSf2,;
::wK,)gLE$z.)hbh%sYTM|Eje,{-<h]YETZ}.d\qG@k4*_Z~DO@+VyMvtTUT#}X8@+$fUr[i0L;hnkio^yP0}fD6slIw|/W02SWXcSB9,P,\`WL-6r7FU*))F]tQEiWfVcQ5
::{^/j)Lz%8/`MMP8E-QhSfV-N{OhA2J@V</?<xt;$z(R.ro%S(~rT\s]!5xuTx40!)[^=K/2z)52(|gq$AR8T1)PuC%bkm9v^B^|[_FVz~38H&R@v7n_3r;qh]l`)&KF-3r
::oU)CCjU72sQ1(sKDS4`y),K0jOa,Fb~FK[{zvFPvAnbyh#o2\=7|MsC<0Oz&\L9;U5c)F`D1UP[ftjn_g#B-\s`+DyR)-RrzffS9%P.M>RLZa7@o3_Ru`/8gpll5Wvnv(J
::Gc=L5F;7;u_l+*M!kMhe/m>O.FopvFGL^3xO/(mXZAf0[V<52kyTb*X8<$uW\WTgJ#PcBBd0t^)XY%AMjsDRmU\1`6IxMN1ZkoOFDZWfbp/f9u71kjR,X69t@dAr#tzVVE
::/z4_wK7Tzse@vmJDQ<AMMq7#Q7PBK5Ib]wm/Yr|PWsfZV)<^3}Dc[NdC.v>,8oMekNGxXeDUEPm;rjn`IQs9I57UZ[?\T}Lq8DLRAucNpOgtJN6YzK}WS~D0}E=TNZo3Pt
::7~Mx0z]o*7&U|cv[)U|&v/6iJ=*mZ~k)KmvnY]M@h]}^u%S<MnRA|o?Mp13[TKpcWt+KC9&{TP<bM2lr(7^x$ISev8|B[EcZ%,XwGhw7m{yr|7/M]c(_\#m!~ok*arETP8
::8ezZ*il]%7aJ}Wl3^~W,wMArZf%9s&erNr8aw]!L#^DX31w0yDxUVphF^eh~!!U56h^;12HV)CfI>2wUFgRv(R%U@}(c?Ux9hl%x3L6{Gvks_q0,{I2!5cHm@N!/1,o9YV
::=+j-r(XU56UREuMLzT{VT<U7hO!v5[d7yT15Y^r}@2*cD~z|V!k?A!jXKYA[5voZo2btZ{8V3dNS,Ql4/M+oc8ZEa|=%8d?2$H,8r@M]%B\k^_cG[lr|IIZ/Z$NtdVoF14
::DrBv]2lrX0)[WcM2oRB7Y4Fv?AXa,VT7}{*mAtTr8%cz\7jR{M0j_uO{!*Ue{{}){K]aAC^#t>o7F&xAJ-i/VL&oU;vKcI4BFG.{3PK=5Vy]vP1BeMIqY+jy+PM<_=lf8Z
::y~BR!3lJv1a)qXv<r,3M]?$AxWQsu`-3V@Lx9UJSQpxw+v^tt?Ex,F^h!S!`F|qs/0\h[x!8O_9~!V>tpI(@qB0_}QpOf}|y]DF1sg)(BcBi&N$`Wc1P[U\fd8#X>H.+]}
::0{(voFH<Jg<TB9lji|&U0eNMk~3~.[0Sz*Q\[\AX[;n(xjmWmX,EY0dfPb_XZuSW7i|_@JNJ06y4`cPERDCut8<Xf?opkEld+s6f4%jYo|WU(jl@jNxNHBtg#rsk@%to/*
::i1|!D1Z,_L.mBx~,s%*x1Pzjp1zmIp<33tLDQ<?+WZq}H^8yrCTA8<hmp/fI[CfNSKTk2;[)3yUe9m=|e\3SQTQ85=tLDX,hS}3wTh`6UT^i[e`c!)RdMe=jNps}P3[%;h
::ea/J?xL0+PlP,&3F^BJr#sbIHwGcBNm%soq%`/QaK_9mr0cqO;4k$j/^dbV#r_HcK;WfDn&5S5l&_SfM<EA6FVrTcx-XKer<FZ;(oWM$^d5*S|4LLtj`8ZrdA|3L~pkI$s
::?zk;#oBqn/{@TBP*+!K7G)VCxFV&pj3[^6KKG0{~p)/H\PovvCL`,=W&Ot<F$PcyFuWXop6JWmuPx7RAiwEI$GK|>`vLk~;(JN}lP@j=Vw8XkU*b\VC8+kgv.F[S<sXlD$
::lFAME37]$9MrV+nW=.n)rqP|;`f6?G@|K/WlytgiHgz3sTyO^UXrU}Cj&]V<64Oi;muD>I``CJ\WBdwX&W/ZxQeXU@d4kfSq[hm>pr(9[\H@=qGTGo<Z;ETlIzNYTQQ%V!
::vp?m$&A/0}/85>NRFe)8sv1x%t6v5J>t8_WIl6\{Fj~7xp_2D/mOBGq|!dfNCr<b}X#Zcl!L,rXog.&p9)G6kEO[[7n4iEYVJQL?oWp@pY1xb05FZW+atgUa]B9Dp_$W0O
::t,N2qr,8h*sK@O\Qv-F#h7!j%HJcK~h-q@f1s$xH0[`/L8|I=vDQ=L!YInIk,FKQ\\xl|J,rZu~91UT/Pw66#Q9X%AEl7pw~_$_7G`L4cEdK0A4LPu_qvsbP!9of>(fgE9
::)IbK-!&N1~v~,)s9[?G%\zkF#L`INw4O>;S&K/3U+dvW}WA|AR9FlE@t~^aa2;uq,ajHh;@S!KJ0Dk_]p|FsA|Ttu4E+\vplRIupW{w&)w]0s%`66kVe0rflG6@qZx9$P)
::^GZ7*Qv>SK~|U|-iV8qy4-Eb1d]ac|EVtiOi!yxEpM{hzHJW<N%hSjw~OQ[lXy*F|h/ziYE|]Iu)yf$vrC~TP,*-4k49V5RD^WMLT\0pj#9xF?IU%@*AYl[]#E5m<KZ\l*
::8n&q7s]\V)S5UJp-Z*YWMmG4BLLW_2CACLMNueFrImu7}hfih&cPHvd]]1$$Kg7;8-_i0h3&L,fh%$AcA{2_`@#iLRbw3\<1L()30tIM7fC9\E5PuZ1I5z<Ci[.L@&M_s5
::0-}`4{4FD={araNM6?YKt(VB6;@dom9F\]@J;La}z4|oS_~Qg#Wju&<oh{w1+[y9Z_O0,eoER,Mt*JFV/,af4UB2goA}n0q-jkw~TV81&n-;@CfFIWi8k5#BNmNQoWzDH]
::BVL9<?Ue6{aUmxEE|fRf|^9DvMwI+A3@ABdRR$y1kB?k[[/K0Ta(x096%j#_ZMxHU_!5nS`{}*aUc&78FC2/}o5U<rPP6\Np4L/4<;T8)/NI<ajq+ogHY$5+s<{wuBQk1c
::FP1Ps^VFMLhD|1Dt]m!n\<`*eEWAGZ7)JO;!!S;ilULgQmd8p-zS&LlnWkKhb{I7(2jXRa(fX8a6=vw(|^qbUNI<C9rV1>X`WdR7DD!N)&6sdnx&?r_C@1K}>B`s<@X8|Y
::j1#]A$IE>oyiv_aA|@nnS}DG+N2}5732@({<AXD7L$?bq*J;D/JOw@oTTdbl120Z;FljVcr41+g%ow2~F=khj@y>SQEH*J(j`)WQ\dto\tpRgFEzBML$Wrehrw]@TNI[[?
::8as_pQX~[$L1d8\E{kFcvO1(VwT(h5r;@@Ojf5T]DB(0~Z1OG%S<OGzW/\[;|/B1cM9\/K&_.txe-%KLTif;0Uk[A,lD&VLAYN(AeO_7;cN\}n#\;w4luIzAZ%_mj<1XO,
::<M=HO;01Pk9F]9u`6|e{gUEj%,#8A/4vNZ!]M5*i1e\QD+KJ[O&i-s[f5){,fBIkrP>DUk\v\_cU2CoPmle,TW(3Jw_)0D*sh-D.HcB2m1R)~a$-S>A,aJ?MnbqmZVmjvq
::e0I\F_g4kxE^%(VP2D8t,)B(#+l{fIW!/)K(p9VETC>[rO]R33{VfTuKw|KUGv!`<`2.D=a_yA+[Edu;Yh=k\6wN&A~4\H3/tj0fcMu<S$IO6CrUU!(,%QblKyx(6XfYm{
::T`1YTrK,7)5-^zaI<zI|>Zbp%>v$[vL%Np!jErYK\Ij45R,RVu(0TdPy~R?NNWQkHq_!]tIYlv.[s&&$bPG9{S3l<iaJ2aoNw<^j9V-U0WeN)Y-y<oTm70Z0!5gZ#&,qi0
::=rg\Z6l?=OhspXJ,i3vQcB#2[5ZTlYR6</*\@$Ar$M-eA[X5\!D~98u.MPd#I&s-(4S}|hUi[Bxe~j?OGbQ_FzM^+3~!8b3;%.xj2=EOPE\Y`I\@PrJt/LOl?HzFuT)Vc_
::VY7^sl`AL44;3,;XR4=Qr\<A&9$q-c{9t^@47RCg`wD+dcUpI-oNd5Y93/tR~a4/G]Z$4xDPw`Kq)`\`1Vb7=tLIUjjg@[wMR9RQrO?ux}Ct~|Mo+;Tv[/|1ty_^lnr<_s
::Dop3tW}\&r|b7^`y`f&/tZ3ES[ay8,F1N9=5mmTv8EsK6i5A4WjN[4XZ&uK~[9KzR[[4Uj@gKgdXkk%`iO*SKRTzO+w3||;6n5~6{cmC?s!kdk{+9<992$~HH~=k{9(/9d
::?<j<x)Xxf!l|#X_QO{@3R@X#2Rc^l#Nr7N-U5D0}d<e|ecLfv@alsDd5+K,LB0eJem5h=+=hCk)34Y<fY-|xD^MREr&f*RdBf*rlMvGelFzSEUphXNLh\J5uEisvtjkB[w
::Vg!I)EFOP>z?%TnrRcz<l6f9he75cDQU/JYzlLtbF~@Pfo#;B-&Xh|pu2BA/uqWF#s,/!K|lG6lM|w(hnpw~aQ7rPf|Jlc{~wpTj!%~;#In?/tK)-?I45ky!nBhw]}j{$3
::GNM+|2dL5A+;9Xn)(y3A|a3o~NyMoZ5+L+T1f4_9yV4FL~KTcGf!gg,?|?/M/?K5<e&**oMD?V0e0VF,7DrdjkK{$i`w$BR;nt<+@JRLgEhuyJ[>5\_?b{=kF\5d#~*[8W
::>A6?8qX1fb#$0!M[[3p^>jfbD-{xi8e1P_GP8GF[sRH&[hEz)_<^Ik4\/w$ZY4A~ZdD7sv9ODM9x{Kn{LS1fPd]#W4I>_*Q`pO(UPx1]TR<sY}#;#&!V]>;{-Lu?>RR1l3
::W,<o&(`=?5CV\6Y?T_,g^ox)`k6Yu3QzQ3ec5fV[wc4L6a-<^8SOb%YT$EvCS8H<!w{d2c*Bg%>Tvpt~_7J92f/S`YaNZOT~gky/L_.h575[g|L-|jx9<NnCaUwOZZaHeb
::Mov(if/r)}lviAa8h{6utk\9ksR&4GP-[tR0bWjJft2@Z[fg7B/a9K.Zn}*lE){W?[*o#<L^SEjiZM|PD*)9!|<IWk;RQGQ_bM=IjVewp+878Uy/h8t74mI&u9RwE!HD&/
::()Zfgk4[tO1n!j(`wV{HzLmIG9dK^=lGT#H]4?1b[SekH,&|,BOIrVb69p}IzO1Xu|Qio`,\6&>g%#\pP^y76wwQ?WSiCQznfjN~VvO2xt2Sosw8|DGM$LO25xKpJ8V3sB
::X!QKV;^(a\y]~AhCNl7-b6=5]-Z,hN}Fe}_zymHe&0ry1]Cd\&qU6cxA|i_KE@AVetIyJln)g`2%ejg<e#H)c9LRD?gp$x],+)ZTP`EZGv\DkzRZ<35_s*e@Z&6@L~K$Th
::{P=BUcbtNE>6gHDv7l/Lu]mEOd#(w9,mg={Eq9%.pkvf1zfx082^&;~8%@_yr,E=h|[](uN\)8jL|Pz/GW[[m]Mkqi5[vliM3zN,wKOZ{OPRPO}n.B9gP1==9Rhe.}Sr5m
::00D+icdnxxYU!tMNWdHeMZ\jh+@@iIKgU<9usP8|!zu*Bx$Kl%zYbBKzJ=Lr5Ap7)~B\UyT&G~fM;g_;|n7U|G40`Eu[@4o{Be5glBjuvDZ]ls%C?Cp2+N(ROj,8S*`+{/
::i>(wFg<f_2d{w;X*q#FYBsq2\JuXA,lbz_Ve+o5bp@#zJN-PlTtsE-}(<vIFwIFB/4_7PwqkTvFe`=FtX~O&s&&d3qoK`LcdD,%X@n6,>B6kjOm5rCQ#4T@=pW70s)h=?$
::caf~.MY&Gax%;ScQBVQnr^`df~d!2wk4Nk)f=zG6^jC/iJUqVsMRtj=J4HI*qEywCe2E<F2PiVNVl#L==-z*PZV;.J@Z5qP=HG\>I};*^9@vJc;o~U~Ab@/RRBX\O(}FYh
::rEKZwY1U~K<Wlq,1uVe$~tEO]Zm3tatNIYYc=JlK$1y[i4J_G^5~$*%VT5u*0$ADp}i!JL+lyD%V]NB%wAU!9BuuAT~UT0XDN67hBR?Z(1(_P4\2Hg^t99/Vykb%_Z$iG8
::3gBVJM8sN1sdK8*k|W?IRp+uSd\Q{xqst8C%sW|`w@^m?4KTvM|mAeV#G(yh&R5$}/xS&cLCglM]B;g\[t,@<g-ng*cTzeno*@N+`O4GF(Xp->Aj;hhg><)nrh}?VM7h*#
::}d5w;Yri}R3~32CT.0ks03/(jiKv-[RA!R!1ub6Ld*<lNMhC$_mO.w]^2[fLX{|h.;iM@#egNwN]=vDkH[@8^ICI`$K$cL%Ek7*.*4$=u>q}lZcNTwA]D{{x?G#k/L-tc\
::U4t!o2I4fxh^\Ybx?y|J%*nOtLqCqA18ZDk<R!Ds$_W81ZG0paw{YGH(4a_K>2H,]W47,wbla#01b_E}|V<qt@N=~7Hk1;`bTWxX[76ef|{^9P]=MbIU<o9vAqi[X@`(sF
::zy[I]dqKtRM@)5=7x3%1_`34P0r0&u>6I#Lfy6R_(u4@?i9s,W@NX$~`v{{PE9i)gq4z@W*a0;^K?RJ6_~&xyEBL^k[M;!C+mOma$)n(.,i/xRx($8*+K2(yjL`<dyqReZ
::)=V=hL^${zP=(5Cod1));ZO(>v?x)huCyYe#,lck]}V`J$Wk]\p_tNv-82$i9L6VQwxp.W{gyk!,npO$.s0v|bh-`[]@A3/QFp9?h9^74ire)~a[!bm+B=X74$JR;8\Q2,
::rIoX>13vg8zJ8`xmLwqS`k5#xtg9F2vLfo,n}n,y_Oz6OZrY,5gZ-2<Su0wfVy)q/nwV9(HB,~gmbRpoV}aPTvslU-xK8[8Xb5@)y^!+mKa%J?3)>dlY3DVBo*b4tiq/8s
::)pXg}J>Y6dmIftTS9xeI403j2OV6F][0!T@^Wdz$1cO[uj%=Dx65`d`-7|v<78eMsUxcst.R-Sh5$4UU2Pu~04mT\s9LGsgel[NoBW7W}#d9P<lAr[&v`4pY3)Q!^PZ$zr
::{`%^=hWuIVy_`u@uKqY!M_>r\.!9xoyD~3nZ#/}WoK=jI2aYD_PYN~OXvpgKbGs][W10;=8^#U$TWUs1xhP7G^}Xmbw#I-!y.z62fS(i>_UxaE]m<b&[mQDzT6.@MCl#ZY
::y70N,3fni&!Kv,(Kl*-0jT3lk}Y&Xfo8D(WF&o5^Quq@x=l)(x.Ll5CP7fEn_RKrjq>y&\Z^`}0V|MmTF<fRkw;H;+3a>h)wo;;]];&jpC/?&nMFjxyfF5by_ZY`7E3&/-
::~4KP=gla<6b&KBRfk%CDt!_LW*>.>aC|RS@8o}@F!T[c{S@IEle<gh#QG@&M^c$mb7F!svg(pIf,K]C[VSP.?Nz0cWh1%0Xx?-<0t/uJ[]9.)3%1>F*`8?MK^~aDI9gBnu
::K[Aq\4YoQ&Zk4{X|M]);xfsy]gUzB=2rP/fc^ih)+aM00e?|bD>[2Hd0Y31^3W./$+9}q#R}&ZGZfbdy+@#~}v1,h,Z(L*Bz3g4{-@&<ew,\YGs?2S#9@^t*,70{ijgGXq
::E$~qjeuzuvH`V;-#W!1yYb>}FA~{tx!$h4MG|wpW,W7SA#lXSO6yt2]Oq%do8S`N},z*j~3h#0Hm~3%m`z`c!C!VEsH9dj7WC{GnhkO0F5)#<@,~vIiVJ^ntL4kZLS8v\.
::CVF<R,NKV+7lG_8G~3j7u6}c/T2Sr?o;FYP,j]P0K$LE&umy)>u;(X|$9K_{r_WP(l~$X+;lN4f!]3OaZ6nqdi}`qN1]m?ai&,ZV4Y$R8XY\l`,DUcl0&qP-8*jN>34=S#
::BheZ0,4MJ-1EG-cEg3{aK8_j4cLOC9{N|k4$eY4Mip107vt2@+nGyXkBwdrT9Huor-1+lQW*|%tPoVzWT,<KQu9Jy!mVk/m)|v%2yPW~r7r,zbafE>%DO,Gxk;+E\M!!jn
::D&]m\F||CRz]Vp571U5-!]S_-(+dFeU@UCMS*cXuvq`c!MevVL]3pKe!vqIL=tJ##R9FY]/m<-cO92Ij/N7,vt&KkeZh^415#x?=PahQo)21)hH}gNXWuI;FD,A#T7sB$2
::/>8GPh6ZIIWOFF>&S>t|ox=KUfRKa7_K6~Fe43;S\U>0n6DF[@us75~<3XIXTP.3~LXCawgXy%V?FAAinB-s*jxZ[9>V\fB{Y~aB5ZWnf}(]b9E-&sKYXk+J+/y#rwPa3$
::GNld&}l-<^s&v*+nQ#Zp];\N=ULapP$^?`t=.@IA7J`od1n+8$Y?D7DE/k&&fZ*;khX%Q\x61}C1+;I?qFz}*XjNW8^{l^!Hk@[xtZsIx-Ck*g8JtVo<CrI@B27t,p=8f,
::oi7BKMry>?Rah,a,q)bb>+csOQL?#U+sv^9F$^}GA!|8,S`/zN=iqoi_[83569<F6OepaFqz@|m(d/mL}<3iD[_A,VJG7H]=}FKcx[+2VkWQ=I;h*{9bzc_t]d[YoFf)Q1
::xIOm@$]hb#OeNP@I^jnBxK#laF5}^0TV9&Qku5$sqXj5H%ao4g{XkT8lSLfKj&4E]WKxRUu8CkNoXmUC(ea96_K$(q5mADO$Q;SEh?%\x,e_tlj8.E#%mx];[}F7_sw?6r
::S5#u9sZ+%8upshP2{J(0Y6^bY_cj!yd&*/TX+xVXbvQTIcBlsTVv3*-z1jm*HyE@\%$oV6x~Sb/X`tr.&0xat[?HhL1Da#lFfX5~$jm+8^<LT]%XBe%SDPuD2/<]@*GSOo
::v-s^6FlxE1*YNRQsFdF9j/992`^Ter8C-t-}sYib1_WJYcq@v!k&\6{<%$^UXykM*Q;(.EzXO)mr/~3nR\z;`FZS2e|17AibhYJsWv&HN!Bhi`x3yh&/ks]THfm=t33p8p
::=_nyN~|F!!2269Gv.pG2Cy)`*URecsFd>ypHOQIda)!vqmxg2F$!kerRTeNA9)a@s/3^oPz]NE%e$7T2sf!f2Nn+.===N/a]OB$~<V?KAc`68%7Si&*!3)KOGA@dxAgjaz
::TWA~JV=VKF(b=!;J52y~j]+x!UAahnw@fD(B-b+Q4\YW(kv5M]50XW(wOa/-Uq<U<oRU0[VgHwxVX0_(80px)sre&M.kK|#w\+ae#jnTB*>AOU]^rg59wl#>_2~qO@3{lj
::^uKBO(%27lwN5$]/<d=J3w5R;\zLA9_UZrXUF\jo`w.G[~N;[TQP5PtlVzq5);D~7ZeHnw0#tHRjm1~HHp/vOZ>X&oAwa`pp1x+teGq2yaaverJ<2~A@B@pSp5CP6X<8n6
::)Y)Og\sc8P;JYd]oLUI[e\I?|V,G6*w,AEPzu_aQzkZ7*bW-~<.}{&wL5QsOpm1#Q^T]qqk/W[+Hv%by\3*Df6C(r@J5cC3QjM*?3Twn^fuU6.R5?zh`M[yGALBx9(J<iZ
::@Un5YIl#gEg=<KqG4fxe~)FBI^T;<D|\/{[R4=rTe#4NG3g`Njw)z/V\,>bAzI|z+`~/9kY1Br%V<i}&8X7v1>/+jO$Xdw{DDfO[_bw2iy7JM#6I6F3)8ra<N,hI58JC,O
::ze.P]#[b#P{=nl%gh~+O+EBdd1[yx0er)D>WI~IV(T4dMiQWrlt0.{*mvIn]xzj53p)t2!3&^rOb,Oe@CKV\XY@BvzR9TV3`~(C0G*sq]esV*Y{8w4A`o;,`@iX&MlP@?9
::5d~S3YW\c08OqrHaqa6JkIES[M`;}J}xUAgHUoctSWl81(Xh?5-~E{dq$^09h^eLR[(7-91BBf.a7k-)zAf6IpC40M9>2g0v}be-<K^E/@y#|QnwroY=10KiH2D!iHm&[#
::\#[l~DGG0`q-/[V9PyR<q}W]yIEVgyUE<t6zOM~E?AtbmMk2SI)sgVQ7uGN2XvTDC/MyOZLLKjX5Y6+Q5Lp]pDr6;;];>`m10kq{bv}##lB]ts6La~8I=o>!vV^0]_=]QG
::a|d%Os)@dw34^ledIi{~D#NH6t88PU]]pu{d;X3/}pep9Zn9QZgFKI>,PvoxY&0m?`v2g*m55_S]heTX,e#cT6TdESgUTMX*c\hZA~i*=QXxku\5>[Y0tFS_Hf1D{@>?7;
::A=+nqG<pP*ywVVcoU#}(Z-)_iyS?%2;7?pR*_E*Z]jm/Rgo7wDTt,OhUgQf<`cfFvr{Q15x*Uz1^vfSI-pa<FKLA(/\FpY|v9V;/`AxNn[IT,1\f%A(MO}STjM+Q@IwXh;
::ADg-G`N}RYFlB<UDmr4SA<4\#C_tD9k+^{/n!E0[$7|P|7`&fQ&~a27qRn?v4gxI3rP`q1HD[w_0}D>?RuCS%Gq<w>k)LDOkLJJ,>6P_+x*!e5lh^#+F//yxA/PXxo9C6K
::e4b.O_D&m^Bge^S=,w5uMU~IE`f~!Y#Mif#OP1GF)]k9|c~AzpTIr&~ghG<iwp7im{3aR7Z[WO71f,R=cevjYK+UUP5=]G_jQim7SqYF57Syu{G^3~G9k/!=uhXvpygLpZ
::Zyn`D0KY5J4VR1M-0iJwnbms_GZy5/1(I%OdJ3WfWVz^,jnk6p6R+i.<L5r$tkK!\f9Ci#TY*?(DiZ|ol`;n|LG[WGLA;YsPclQi^cF[n8~KqILfw0|3ngmQe(Z7i`I2Q6
::uMx6dnFCBe{%QqmyUT?_ejH48G+K,-Z0Iip#red/ZKdP#)5Q4B^g7!-B?[.L,d\\5tNXvea7qZ>{(xuo_dgG`]LEAade<0vKr2hdkV<JDbE_ratSE-)VxQ,umg3Ro=QlG=
::^Lu\1e5kML~p$N3Y(!c96fS~$S,azKn7u%[q1%T;Gy\}gXob+aK>z(]Drm3J$kmuyYoZ3*guIorb%z2;NF^[eIT!{6Gr@4@^q6~rQPD#r+~tB5cR_7`Mq1Fz(b0{m`!?Nv
::P_z2[sh(P;yd[Ov;xBLucdkmPRVo5GY_[7I.o=#O&Uco7D1}27Kt3c.G(>`%o5z,.&M(H)|F\Ui];e1Iok!MC&@zPkUbS-Qt+hT8cR6tfH2CQ_Y<8SOZ`lLI/fIb?smmjb
::)Hi5>W7m3(^&q(Ay}-nI0&]3711h/{U[l%2r7@2x1#&Y4I1Fr}K^+{`[>v)ISlRT;J`h&?aA}ArMosIU)%gm_1}MMA-BPUGENWZFkAXj#Apkix~;M|u*@e[Et-za6Ps796
::|eNF)%[c}TT>x{bN>~nQ,eE$A4Z*KMJ(IjAVFzG$ab_(uR8D,S*PRsv->A^Kq6zJjw-k>UdGj8Cp!HdTve9g?bH[;(J}Znf|MD|`-n_C0h/VWczlVjpMHFK$pLiyE()wFW
::iz1QT,Xbf^KK*{Ns1CrTYTnPe=K<ZJvy]DqdgD?3SeG68]W=S^Jr!w4;RFi)[L(&3_p/\m98rJ}T~.[SRw)|C(b5/x#|nNO>?#r#s<zh(HrO(?^RyVc=MC2,ydV10xgKF<
::k[JDcvd9p<$pKj%J[N+cPW,[dtv~dc}I--VdS#nQ_YLm<=kKvsB5?&+^\Ufb,<AzhN<?LWURGg.&qir*?!>8qG&q>4>+&JIkY|@a!NaML7@)2t#=-lD/kR?g1Kve4#es<[
::Z^2OLoz8;]?YxUT[G)L;,^t|t_K4Veju?>l|p1Up2?ml8PjCX=Ce[];}.//Z;uuiT-Y1ZHS*Urj2#-adN##[}0I%}#ikm}8eqgk4e`AVYCuxV&d-GG>5%AM#1PclIF2,8x
::,}24FiatFa-iWH|3htOu&9!qb2dZy)&y^w%d*]1?*04`tNpkOAO#d_Mdw[o^5Qz51AWrcL5LZB<}Z#[Dlas}}a9NO+UC;~<rR;tU)#mPHeC`|P*7n~MeIepU{pXv?zT(ua
::iM^ErZnw=4|/Qp[$O#;0WrA.Hw#HEW@-WwY}TTlgJW1!!OD)8zC0HehgUV)D4G78yMTW{M*=m_0OR,.ikioVe?m$E/1*(-Zqr@im|!j%3_u?!AJLOQouIe]P4zP*BbKOTH
::LQaN._glC],-sSP^>2&opiavg@fN!7d\s&^YQ$p2tduu]26>UN)Shs.\!&_ncIjDse~e$(8&VVU_qKqL?31/b2;_aA>3\~1I#2sJo0~Xf,a<~83WeV+pPAWc^~|]kf\KSk
::wS!/tgj=ql3oi=<SRr-)j2E6[/3FQwulw_1N(zj`nbN[Td;jFs;([gc_5}LB9t]rhfbIjmO5AqPl.cr(9UmU}^^FrIY~k@Q3kXG#wY^-6u@fz.U&l%L<#~NeKh|Ru^*t-z
::KTO6k#Tbji9~D=~<Y<25xUM8Q{W@Yb(yq?~{Ya3)^+^_yzGB9!=*@poT{lfS,!A%tM2|Ol0#jD9V}U^y?a+FJLF6_/f0luG/1Cz7|s~mtSzMS-Cv-C\>37c*W2.@Bw]NrG
::Xs-hUgCS?4=tfBB07y>Io{rc?sd7$FJ7@&XQ[;2>U(.v#h8K_S_w?]h97F?74$-s>bX@=vH3YilEplUw=0Up9)xKb[sFPmnP-o4XzrEfctF2we.jsvzup7)ewT;L5;YZ0`
::h=X<$Y6o6;U^<Y5Gz#qyF0\@1~2%SaK@AJc6o(Ai)/={?pnk]bJ((i<y1WM_/Vg=jTj0tfF#YKB9eWHeNioV1nnIzvc[`TGNQxWFco/uPputo4Jv^9G-5!3^@/t@y;ceNp
::E!j(X(a%oTdAl\s{>|D*d5^5o_;O\oo^T<GXJuc+;EAa`GavI3sWjybdu0|(5sZ6B9d&A=^mdp2@_`82aQ#5m/?hMuk*#1dGsp@`zq1#!ZSePkBd;oA/\d<c@mf+S}9_sy
::a_uUYq1)|`;Rc.AE*/r/N^BomOc@[sL{irsGiPmRQ4uB<Zs(.o|m@E=W>F*2/m5r2u>7O{RtA5Tx9ZDh*-gS@!_}@O*#t$=5e-j;E}o1>a]21VtX@4d,Y*8]|]h^PnsHsM
::Mmd,#H@2}jg`<jIdQkSYN*=m=T+%QP7omvL8Z2O$z{g)oNA}L?^el4X&F9)AzU>ia&bY%onw92/g&|!O[xIwC^[G`,^i)D4=}CZ!QlXkJ2PLn12xgM)qk6ntS}-V?+?Jjn
::2D1UC^Xi@!N+NWXVu7B6reP&v*Y!/4^sdHf11QT<73|N,v2vsSN?Agk`Fx~Fx3`M,sT4Q/2A$II!yUmchyPZa<~)i4UX|c-(Ja[4#IpAdn6s-3_joa6mQ!vn?l6VTt)\zz
::C{2{2vMO(N|%p[T}p_`WV6epQ/rm~E|I)Z-R<HJ)kGXM(z!u!8Q@}A?CmH})<!%zqZ!-Vd}9bd|6s}S\=>4Ky)%&)}[BIh?w5N;p{M-m}?V{qLywVgDBGROi$5R8R));(U
::o%yDKsJIw|C-vJ*&3wp@r=bufl{(eX,8EX7YO|\.%y(NNcB?Q7`Pg;$fai=I^uzT(}F{n?QMN(044-aOIo/PL+3yItkSwKng\s],jvu)%V7YTt\(|i2tL]LyDG$wv5uXF-
::;BdhlD*u{oU-mU}OJ$Wx)SdGf<ZFxkVDE(R>Idtu23|-mQP-&Fy2e5qc\VSJ+LAluj5!.k5;Ve$4ouYE/Y\!xtxc,B$HgOEM^f{D\!],P<d?}0]@jIrYk}+PYqBucL901d
::~7%l7=1FB9)N[M;epQHHJl&7U8<f(DDh[Cqc,iPpif<C?^!Ha,ez40^dAy{+6`v~6\Ua?-|rW%@Wa!vZFNjA|y0f>c5X0(+WG(jrD)vnLly(1NXL4t1cL*df[G^3.1e9Ex
::IWbNbRoNs_g3rKbC4t]xRh;$>[4PyI|bbKB9UrC{uNO=Em+k9|hBg&>MJ}G=t_9rXVE13w\H1pX-~0Y-rM#]>?J6QOU]2Re^+{HxZ0KB.bgT{cfpzPa)f|t^(9.KKMSRPv
::c>^Rf<}?u=nUk]]lQOk?oE@7)z{aKV|DG9exfCm91w\b3YaunGeyql@U#c0(37lZn(Ck^Q2|(YR`_Far.NOf&q5=4Ap01=Z8K2BB5+IKDBZ=l2v=B=@/oe$EL&tTk^.X7[
::$f\y{A##&k<[*4.QN(Ot0jZZkK!%lyp_4hQB}*{G+e59V,\~^IV[gg{Q|$W&`0@RZo+d&tUEto$-9D]]hi.9Vh$=DzGk7T+{qr]\ytF95%[dEHlOl!pF(QmWp$sQX&*wR-
::4~#M\=Pj}6SdNG{f.xoPa#=txBznn\-jP5-4QRbB4kPqv_CfonThIplU.}OTl#;^0<F_n6,8Tj0Ss2c[_;_aswLq44aLMsvLOS[|+l;E,g4#@%HbhEl#pzOZdCqgo4[m#t
::(^Z@M~4?OE#CnYPBq;3/_87zW?1qZje@e48y|JWA8JYL/;#=&eP{@_;yYanFY}hj6N~!j8jXTIx8b6;;s*&7f};}/*;^Wq1.>_>rp2JsgoA?pUt7|J6_zq1epz`z?X@G*L
::&fK~Ico1@D{}*KWx6\2Tqmr&ySg!Z[Kx-B6%Q_Iek^^f@6IX\15GHaicm[v8q{xxGyP,\Of=q3F90HDN+R!UEc/*|RM;r@{*BVrJ`{O/q7+C>RO<%ihu%4VGQ\RR!QY]Bb
::)v4K<t.*<j<=pY~j~jXU~Q!Y#*5/hAfsJw[<Rb`Z#8{-IB,^a2W[J1DQhm_~K{@&;Ry`Aewc6=drwCtJ.ES;x-9PNzk4[ONDFcZC!Q&7<%tDkq@u5hZlovNFK}AQ?&~D5*
::0a|AcV(4lE=(3EiG~3]T=4>1iE#1fN^`l?(aHb=;[hmq@SI_]IA\AyQ][D>>LJf8\M8\DB.,]~LUB~BOkF-N(q;L](aILa*%59@P(hzfb<%c&].!LJ-vS|t~lZA;!u!CW1
::~4{MSlY|uc(~8e<_?FWwwC]8{A;X7^fBCp2,_@IJ[E`~~IP8*,wZ\(VvRXl%$dF5+s9=E=!NtA4OJN%_X9S`|%P+CcK2;1&s.o?m!_^Utd4kexeR!N?Wx-zA-[AsY-pF~t
::eD3oD/;~3D~#LO9_HK*kDF_(Ek`h|wotEtZ*C;tLKXDD&ZSp]=s)wVg{x=BcBI$Ni14g-bf[doiqL=+d!mSdU|z63j&KemP=GzQlD]l?w?!|[^tOYVG5Rz2Ccb%=NpeM4C
::Jvf!mN;pG#<@oG4d4+<[}5iL%x^wJ1wxIX_R<-Pf=e<0E$xQ6z2?mN+?68h9xfW,Hz]BAZ%VqbFJDZG{6d[wmAOrU_6zX<{d_F7]QmHl>m*/07DEt^i4*F+^e9}t_MY80E
::wMOxZU,l]N%0r0Ekx/JWFqp#@ic?Hhlj^9l7!)fcr>D,Z+7csWhP~y(PkOV}$Qf-nV;9a#\Hy_\^0k!_^]_WN=MSNMC(XG-p/a6M_KQ4r0`i428vTpwoYf!-<d!Fq!!2S\
::lAcQh(&Z6Ug$29%Lag~R]t%b!=A-EIzj)Z6~(\g<so%eB;f`*bZgdF._B4IeU>(czVgvj\7En8JXP_O\@p~)V}Bb/NCr/+C%QW|o?cCg,{hG|7ho*+1O_S/\@WBKt+`U=?
::ltC^Og0KDdz4|A#PI4bRZGF8{5/VG{ghmXSupS$-F+7Pr7&q=uTJU9u(bUIm)yJ];e)9??5XOg+V@b3-^MxYBtiBa(NccdT`i,E5[0k*2qArU{wCRt]u)9bAHuf%)9[QZc
::4OvWHNa6s%nSu>G=y_%TA|0#;UK[=v|V7K{r|PAt~C#K-dFp$_W/]/5K7if@StBpw^@R7Q(tOj**C%H?4@OH0U?]0+u_2h;p\nnkVZ[Qp-4l<zlYV@=HLoLvB\?sTg!AUK
::-;Ma(=Q8w})U{$cB)SZX!N!AL?/;*B<8k-;T)(F03&Ij[<W6i@NMILEX0pTB]$Deg;pnZ)iyp8+kR%?yU*{wYq1X`f0],Fs2t$e(PGbcAZDNE@9DrN<f~V,Zes_6-yQu#o
::Xgz.XKh}yk_d=.[<|ISND]Ng,vax%lW~!vQ7vo|Caf2,I{z!xgZui&3)`Qm0o;[(]|xPx<@cR/I^_2U|,/q*@^{4AC*EfGMXtq89u7}C}wr%/77td*j4wj^Yz5d#ED}D8@
::.,77k=T=AdR1]eKFqXvPlNxFT~<I<dSaPl8tB09P\2^2CJ%}c)EnKm|{&6Pa<cI2L-q#o#*bD~jrO$EKcmFMJVj*Bup0t0YJ_2&=uP\OsSEF5wZ_@)f5Q}(XH{x3#MB}vR
::?S?`#S~aeVoczP==(Q3,K/>brg3LAW-1xB}6Q2Nv+7$&!QRK}fhr3j9_?.~~nu|VC%BvG<B;8*pZWx_I.%<EN#`jS^%sG6I%_TnJ6~|%D!mB=PIgZvF;&B-/_ln^![.`Gr
::J7D,XZG>TC\~7vy/^uf2Y%`+hUiRTxY@805s}1=VD6]1weh\[UM`>r%53X\-qOAPRNxz|3;^H]UV4%-Y^em@#(_!Y<7DZq)T?P%eDvsm}~}^kkL*EW.my$aIe(.<pT?/KP
::v~C=.;afNTP6V\heVosZ+g{#;h7upeWSg[iEe_L\bu)PP90]Y`rc(bBVYNxxi_uRM<fvS*6M,[KQC*Aj|%TwnL#7FJ4+E<f`./`ez(,8+A(z4\5B>NfoE\L~=M!3UtR@MX
::0==Ih]7eO)Gbrm<_r&f?{TIIln6s?(BlfLzJReSerlBq,D0[[}YxS&$P1;?;k{M&X(#o%%%&CE|_VAOw$3JKdJDUEd\~g001lu4xD9gqkqy^f{OJYjETj#~gJps?ev,!fF
::Qo1<S_n/Z;${}FSx%LNU%Tgg!Rsp)&7j(gD3Hp))vZF[~p5`+(t=H[G}re)2M*7}|<AC@(uLF=V5M5VB4+l;?P(4&U15sUk4%rCvi[J{W@>q?G~1/d*?HUD4VL|?<SrdL@
::x&q)@sKxMw6uy*2PAOX@3G]H+.xnyH[Mpas8T]F*+=IC*cD^@w(#Xd?2M~`{@oWzp.?Yfw+TXj?0.x8W|2h`s]!IDqEJ?s|\i9dX!)Sa3mkdKN0Og;>X,-{\EROU[agGm?
::<_fgGl\S?EPiAI*tYbv~?zm]EZ1);)rhadEMll5a%^}bJFe@}1A]#L|em<x)3`ce%z/Yt-{n6Utgb(6cfJ,KRxSY2a+x74\~XO52)np0g{JbZ*2~O|EXCYV%B#FdKOH;+`
::*joX1s!iCf+SU>i9U*TVSe+n2[~K,E#Emv!5&XW;@fO,yQ@3}_>9hoWKR\TUP4XdMLLVaefFkj!wG,p@9U9y?qLnC#K!\G/\st{4-GCn(*Lc%{CQ[y[R};.te`J}n)MlR8
::I,U%/xyo?C1pObvO;aWm~5X_$bSmhT,`||mSoKBO`jGA|^\kucJ&nnv5IAz01<k%`0sg/]r[+L$e?Lss>4P(DkGL1n=YKZ5U!;7k._C9LFP2OZxMJZ,N~0uwtkGu}H9D3!
::QfS-VA_U%$JjAY*Jgi|)IJiIf<_Eb<kVN0PsJJX-Ca6~n|h^YRfnn~!}5t%K$rCk!3=oYIF#kkS+6OmeQV/i<Viwl|jsMW1AJ%a_mv#ff(7ZRK?#^0p1NK+F_*2YXqGWMJ
::d#X,^uSrEr8zqjJ%9T[rSXI}<_bPDs&Pmz|rg%`ygj)u?qYCTDQA_Aq3m;ur+_<v.e.3aL&W[qT]PLhFno*Q(Moj0uqsApxWPj=,/S[~}7d.]M8giw\O7]^ye1[LErNS#<
::,U_nUbg1737ZUq.L<}b?EzY<&X85.^+3i%UP\@9odUec4JXfDQKbGL5&YloQ(kd}M_fx<pl*c$!`>tPlL4,P-zmb)yJhymE2HN(O[gPa}B}or/Jm&V+VG6fAk@Jk3P%)D<
::q#u6I<BCT@Xx@rN\u/J_0S[uibCfk]4]33S?S]xZKlCo@8QZ>qITGd%p;lOqNLv8IG64M&aw76TGhKX-DgC#K](!q6CB.,&]~J);K4TT@FFofLl%TpCe#|9#Kd_*L=_oGB
::$B|nkoOqIVRdmYkuf17`_fFQ@_zfDR;1y3cF5Esb~R;R.OYZCM5eb$A@@i#Qf<D^1c-f8SNHrn63c/E#4YBT~|D!QP*EC?3]^{7!oBcej3?)Em$-*{9bpMW5]e=Ma0>*`(
::ZU2#5j{BgRw6AIV81.Be7PiEv5#zCAQmh;#JpS$5>S>l5y_RfY(|O<s(C.Eh/sKbBc$7<(l0lxGeDiry3wDsk70Uji/JNB$~|Uf<n2T4ROfX(AL=jI213lK7YV6x[z~x3`
::*Pt<Bz;ADXCDkd|ff_wjX9+$6k?%bE4ji6xCR~zrZ+y{J/-_m|PgX]5c<A}@>g.+JqDoXc+L5;A;yg]T<%2MF!U)j8R$)|J6u5Uy1FNp`5*B/9~d{!,D-Dq5S.QxKSFuD4
::=@Z[ZPO>U?\c}R8l1EX;5u!z~m9lF7fLCO3zj3%/S~n+DrN<Cuh,2\+_8iFdo^5et{M$!)xxxXasC2w=mG7B8;Wz9E/B>]=vQl6wf>aYondygun.>dG9LBGOeu5bi-c>\v
::7Dd{_$X_(6r@oJH\XHjTOk+,j]I>|,h&s>2Uly{38zT6kETFW!vsoh{EZKtYw=|mBWnsvpyOT#&u2QRc0p!sl.[%(SvgZ7YJaci@?sC%!B[iC4,$@/C`Sf2m}0G~WxFltu
::n0eBLWRe>rqjSw?D.fwz.Z_AK5V!`|kI<kIF%U^Ki(9VmHaD13B3k!T21bTd7$^},9$]_s4NJ=2tse!Syh#te<CDI??_sX2LTZpB~rTN,1Yw-<N9o&gy~mX_&tuUkR2<fn
::|xa$oWoV3G)|wnH-pn}qi(d*Q&X]JznG[CEZv5}gRY7?x_k#-Hr[npM%Bgnyfj4\hN5hxp`M(K/bTVyz&XVM2@)yka>#ss.n([@g=@TG;Kmo]x/84k122|x),0X,n|Xa|z
::z;A=KA[osJU&=a<B^wY3QO\u5hw-D1*~MLpzG<%&J%7mdf<oeR7*66\YR}$?[zQ5.U%0V(,f&Q7p+vl[P-`d1j)JYxLn3v+~k_\*YDJl|KVkC9)^;d7;7Uh&3;e(eIk7?g
::pIbnFyEKNABx/J$50AUjn2@;jJAFrW8KwiwUiJt8BY\kCbj</lIv&1yMB+yxLE&g8h!@DYJG34#BR@mZoz9=lUb7PAPD*6v;^7Z(fg&#&>[&V[w^^SMB)V7OXisCj-N7rT
::ES@TUdWQ<xMx}eq1Z32bZRU]7$p{KWr2ux.p(ZZ|lQ`zjCiJP{qVXL)&{=4dt\;pV=/}D}6x5?qiZH~Yb}Jbb`?`}gR,Ry,>Nr7F_`oR&kzrWs{hYQfFTl&ou0\$=ih|4J
::Ri@6tk]0U]zw&X(3aMmNih,9&}/u/Kv]u92Rixs*zET2CT{V{_76rNein[>TJ@Yg>SzHNt]E_ZIR@hd~e6ic!W#6l@!n)1|p>*?LsEjhl~wgo^3gSW0,lDwI[TEsGm,Y46
::5+i[.pZ,(3E@%0[mJP~|FIs#94gX,vR&k^5->RTW~%7ByeKDGahI~rWxHwF=)V`x]L;j7gcy\av(=<t)RIPWW`-ViwTW&S`(/wZj-`|u<A|<k<zOXj_&!,W(PSw&%V.$2d
::1Mr0oaiG=[TJRrwwk@x+QSOATwgxfraApl,u5/|71[kw1Od5n^;bNz+a/TH**$8t&U~O(D21;`QT.dk44SU;_n+BGeh%)n+=oSG=AK|ll,_At8MyEAk-4j)[d89N~zVX6L
::3aXR+6|{b$&}OZ~CxSAr`&2(70FEp-;LPK$J7Mz44]TwkUt7!&A;||$/`r+UW>/?(P>rf23UOxdoh`2B1Jl~v;=,sxRfq/..[d{js+WT>K(c#iDe7l_g0lnA$@py}c3~Vu
::c&z{7aG%]10FG5;2a8J7<H0&Y}[8Ik|wx8FrY,s76^TE/CAxH/hhUu(xkl)$dFUDG38gw9eImU**0>Cd|c!%wY+DF?U~(x)}mr%8n{KWPf9;l@wiAqxOsJ5CucG#;EXpsy
::Jc{m*YVBZQID}}Rz!)T(DTzgZR@;dm_%z!dCjrf{t`xyyf%60h<cM,5U?N0RO5suhq1@3g3YXS(Zd{I=@NI.]?q<Q4w|x9%m^Y,E~<(XUpzJn@j0\d_tE%u)&H/6Oy{,b$
::97^tRWUp\f=s/C$UO;VH0*fC\+>,f(lHE}ngMNm?W!;nW!>c~0|KTf0L8{{.`!c@t|[q=xLvL,a%s=SY0I<$i)1FAm6#\$#MG({>Z&jX{v84Rv&E,uW,_[pEi,zC.BAy]L
::^][+qPC)~%^lHe>xTd&COmt?56zl0;!V)pF[A]#<$xrmAQ|?X&6P}3eNn~CS=g/*Q7+IGf}Ch;E2^44Gs[$ahE-=M_^quX1$_v^jTk2eg;3W<P4~#H!y~RSCm~)(81zgB$
::`FMh!7ak?p|JWqN6{QhIMe*T;>>6r!`Eava#R+cK2Vnf|Y<$vW%4|%<UPU=IV${!>&ss12M2s8Hx\`n_XuKR/TnxYagmR;M%a0=u-&y=,[sE2Y)>;Re$&4ewjcTOWZJt$Q
::}<UjJ%0<HgRP|#z;xDa]KQ#YhHNFsB\^BUJ+c[Ob{y`I/0+Ov2Bnw$~UNviwVDZ!8xq[l]|+7JNjfX%z&o.SeNx`l|@FgrY>}<,LTfu/i.B}kzC.4`U5+[K|dfTo)tXihd
::YwL/g=zg%z*{@h94wPv6=|?3rN8w[fSYBHo0+pv#SWoMtu<Je>ysdS[L>3BG`O{X9bJ|Q3[|XoRW_2#+`ix3`X8&lt\<S.%%@zP@hTIw<LUbXe-,Ra7%e@hgqv)Hw<Qb]d
::^{,?ah)+|TUxJ\%EworfR*m_#Om!!HMq?MQ%#E?_adJH@K6}>w.|Xi)kn(ZqKLr[BH~r];e%rBdcUo*_bL-~eXX./Ek~1m}q~lqaf`2cw2e}bNaml<XA>F3j|zXa&&|V@0
::|>M~Pcci(>CEfhC5VLT+W`+am%G=~t3ec\!9wo,DESTf4X8Br-J=a=!*eZ\D`O/M<<|Fm7Rk4tgkq!#rs<{KGbec^-VBOWcPN5K/$^ytOs2\{Nk)Q4(DWI||&7sa\(@4^o
::PL-HjpasKNdD0`<=0#8Yu$,GA`joU6%Pk5sI4ovl]7p$Rh)9Id%G5(M@54#iJNk;]NYAGz2D<}x?(kcQTb<fTLeT#Y?<nV!Oe]f,9H+E^\z2,m_C7S?.O{E252Yaou;+kO
::H1r!<ldu7RrVsXw5vIdRn_&E6}F$@-RF5j6mE<5x/$X.C&{(UW-{s})~v5$luI*y>lL2kJ*_=Yxu{#H9DQ`}zT2^w7hod?f1Df9Z.q(kL$?#RL2SFeaR,W(H@*Cj<jM4~*
::;9[#h3]hqrZ?-]5CL8E1wUIhxNl|A9J!Fu7\)(E9!KSe<6@rnXkdyiJv>doh;94{1D|[Y?\O2(B+@mCwd_lhMwVw`/w`box9)m!,yAm;S<JvQC/<FEn3+Su@1X`bJD_G-H
::td3l3dbf#_(XNXG*[f=eFT{a`Mfc%e^NMhgx(`ro)k4[Ptt!*~ue4=FJBlw6$qlxok}9L%mNhyS5QRVoSjHIRb,s}*l+m8]=5WAn({XI\<}sk8.KVZeUp{8k*P$Oq9}+in
::{!M6ZfY.[KL6T8|6UdlvG`r-<~rl]6T8\K*Zt6Tj!30mR?prnHiq+_(x*gq7}14k^dg+5caXg$zFU_f)@EY9.fb1FK+@CFaO}B|Pm*iOctv;i]xSpIIM\&hlm#)@!@S!eX
::ts7k.d.QP4B\*3v&nZ?FY1.sMe]`?3YI++l8TlVDRw$dq4Cfpo@[@M%X;xfG{U)M_6VYvM4kPYPv_[aO#Sd)o%Gz|Q&=0g+w!<UT,*]`U^]?v6tmtiNjACCO[b%|&]aFE/
::J;Dseh(>GItIb##kKeXr-?7Fb;H_7l0Vpc248ew[&-RRL;G_y;|5nM##7u<jr/8^\5g~{XXG7BRMI2ZPG[;u$#{\A<r9/>y*g35Q{*80n{nJsCV[c}6XG;csCEpvD%=u)L
::bi`;Xd-Go9;cOg]jX5YphOuy8_$#>1TDcWTj|iy;`gH))U^t#jc0-na_+V7#.N3;T)ml`[`n-X|1qQZ3j%@+gEGGpM-%O3{bBcci?,SjfU|)f`83wx3H8kE%_z>D0L9Vis
::~`~(}VzNvZ.l4DCSu&.K;=NNu^^QU)hU06[bU\[@b7}A*62O_GRjT8NG[d$9x~pN}kwT^Hj[zspmLH;-%5nM@}3y?8@MSOC~2!/pV9F3hP;kSK])#ZMwZH7%dv7B4u%m[1
::\Rh)hqEaQIQ3hma;O-.fyWB7s;8N%Lnyu%36^vWF}%GH5Tolt[eu,>144~+p}mqueQzZ-@L^B)?YhmP+)v!`)R}y/[[M}H)BWVu!o./bavxup3i]8iUkHt|a3AuIvmHA}y
::n+xLqyc0zHgtJ=Ct-h4]`6>xRWAhEDJ,bWk%2tRG&z4H*Ih-R=xgScn2XEnt8N4Fdkml9u]lldOn+wpq7}8Ez1ad%a<oFzcBENnQiH*e%MZ5?@X0PXAeiU~MK3Jk?}?EL6
::t=v~I$0>H\l|O3*UrZNU*m&1}qk*/)IB\<Q+I>2al`0Cym!yYy&y?}R(_mb[&f{fjpUf$Qu!oJ/o<cA3WxJ4%~kGQgUl<h(@$hpk5PSWoM{hoQ?\~+>NgIB&AFet\[Y9Ff
::`x\y6!cwgHkqAz,N{aV0StiS*9hv$v7tr.a~#eCxy3iP;R\[Tj0IRwN.cF}CFPDV)-Ns\f(H4d$6lxP<ip)BgR);s*q7aJEpxld=X%\vt%YOaKbJ%O!W_,L@|jU/REm*<J
::+d[j4~%\Pv{Feg<&^oHFDcw0NSatwHOse$cyxSSL^[u\eECaGQAes=ai2%pP,B<Xlx(u>_-!qy5if&[H9$dkv<CZwF9RbH3$7$_p7F@\x<s+^-s2ncp5KyJe}i9^$@/BYJ
::~;y?Kg$]3q6\Jw<hwn||f_d\Y0Lb;S0>Q\u4mKPm`>O+3LPz]_nPmju8&N@A49MNWN#XS0.>m,UCD~Tg<04Gvrrh9v{cq&l9(~W)<M&R/34*y@q-Sa?)oGKRUtJ?6x!Q};
::.Ht\801wRWYgZ&{/O}T%<KPNM0`X%\/?WUD?.]BeGFaPeDdWi2]{<a71?^p`n_r\BVVeWeGq|]K6-i/MEd-9&&u!K#)J!#\![jsNu?p2iFu0J=Y=b!`D$_^p^9;\yV22A`
::OUXAH;BJ9}0qQ9T3^*HI\8mm+?5$r[K]}MCG`SLMe}X7>K^OFqd)4zf_)vFDH,no#(imhpPn#a~J;tb<&7b)MJQCpS8LV@)0N*%QTvTuJ}zLq5D$rf-9Mk~kWP&3N;yxLr
::V27V<U25,TeZckHUI{o!AF+I/5D>SIzRf{iJ6#>YBZw|Cj`q5dhr/ZUqYCuTRl>P`}Bc\Az3I;;Y[wYSw,wvP}}V9zmIu`#(+l@@yLx$)M!(iwE?bD6s,Znm{,FUEBT]a_
::d9fyGr=NvYTO~,Tep\c~;=#9Gc/hF$?J4-SJqk$H?Z^G(rSO[NnP@gXjXd{Yo%K=TT#e?[jakO69o2aVhg+&JdY~Jr8!1}+iI1_%-\*JoX[tx+>i$mNC52r%o^g*>Uqi*y
::nNJO@4N2X!`hiYMg`it@$l]TY)B>T\dGBBAY]b+cU;5BJp`Sh2JJwjUKf[791(ppk1}t$_llD%IYGp^$S0Jq66`pLQH{^z1AnbKu^sQDW{)&+T%y3c{l|!m]Yoldu8>RcE
::$db+C}K4fE.bH)PN\{}1Jo{cX=Y85MeQ0rtXTQ[Fbt{s,nr#};a[{rF6w++j-X9N[XH?75o{D%b?YqNh/X78S&D&s&m\8bLU^tl2H;X2hMbLq(=st|swn)N*RKB\$~Z|yc
::H5#Iqa8q>,w+6(Ul^Fxz,Dr4\iW!)%P!qT8lDA4ucS]Dc69JP(&bnahWmUR#pJ2SXsu\w)))LDrG[MQ$+B7(y%E1c1PzpOIO5+}|W_5DHhpz[9uiAT54z/}f.|NciGt&q6
::)bwxR(KO$dCeE`CGn@z8Oh*D4GU?>-_<zKolu\8R/&b0Ixm}(g)Aq7D2~W;#D=I&kf{@=@.q4A<|uN=F=&gzEwG6eU,\8c~MDg=c<VPSVX]Z?d*9fGFr$?5ECMtyHXZj.C
::DgS7&Ci3qdm?*(@KALDG$=hy`)pTwVa&MNyAO?lC^pGO)]@rj(vcnCt>$lJFIs$A$s3t>r9V!ojWn+m*7ohXqS}AnT#kw3K)N5R/,[Uc/G}Ojg,iwafWu<9M*(3^+YKj>5
::/b+u=-f[|q~^G`v0EqBv]=ZddruyZR)df$(H8o~Wsh8V5sD/*A/h8IvxXBQIDNz|xnb*0Gz)h7]U\.>M,K;q?DT9JBGUXrELHpPu]s$1M%%=0y<^W!p1)m7o5qVb&VDxp8
::s9+FLzt/$/m|_6TK0c?]0v&*ENK8*n=r-_oyE-w^8E`=,436rYPSy75=O)e@`Jr#7d23.L$f\ueVnLPZ\bjq|>}\aN^1_mB5~8bpA=ZBQK%f>nufR@Td!jTW%BP[EwGMCD
::Z2_a`A2&%D(n&-)%|Hlb<Zh&K9u,6c5bp{ex(0.-<uzj4(xp?/<&3(6lM!Ag$\cw~Ryha+^#^uun)_N&ke@SxgUizJ>c;!sh3#Pz>kJc$,lMLo(%SJHG$Tl,IXHK6Iq|Zf
::P0xhFNsw7+P|]K$;.N)TTuW&[3=_\#4FBa`{f@RntssqI|bA]o`=?y2\n$*o02nH.$Ysjg!(bCDvGz,ZNz@W.C(pJZIj$_fK,ypIO#pnQ4z}@~EczkPn];B6oJaq##@80G
::Wt`!bQQ_-h$(Se]UBEcf@$5\+jj@[01WbJ.Ke[`@t=>LcwX7ELX)<6|3m37Trm%7jq-+H%\Oh~ypzxhEiR<O=}TYJ$fhjHk|Y2WXg`OP>kSZtm|U};}MAK,/|P?x3>@Jb[
::?E\DG;b<+Ef%jKzH]GGkiwZu_BQ5/n$6~l;v;3Wd,&l8-/<!Q`a6LLce&N[nW]V&Kf<4>|2(nnVWUX;7>JXZ+NBHv=FUNR^zZg<J=\/]m@`w>t=MyX@+?EH~O86Ln*q|w|
::MS%tyJ!i<O(Gl?!6qOeB]6x?,,j[ady6x>Urq<o?!?(pQslB>3]Rp}?7Tn1z+--c5i`(M!B8#?@!V_pzBC[TO,5z-_um\L}[PzG}hNS-(Z)h=Ybd49Cd!to??.hMl)9V=6
::KWI(cxtCh5/1?8$ujQE~(-WEZpc<ki<hvq;&)QkKR+)NOX8`,\G(TMu/2pcjqFRZ+z!*2pPrrSFBz)d4C/@;umW0RHzwga{z!,t/jh\06P)kRSrn3Ws8AXwrn<(aVl{G~U
::N/phYEVb)dq*o2uw\%D9M<-qL<g/6CGG}B~zy[q71guXCTh;\IlfvXI;>RfjEWgYXY.&Mg+~=sXf%ef#Tl.E+8?ReYtVQHznG@zb#D-*b<XZ>*3y%Cll0y,UvreScmqHo#
::c+r6*;jy,`$JX20Wgon/RRJ_-1c7#wW-tb[I)R,Z9dcj~Qg/zSgMScUlnN38t(P2jy^1ap;`fOsef>KI9W|*ZT,Ngr!sWV5{b[!Z15HILQWOhQsSSG\_vaq2~wGdLgZvc(
::WtEhvbAXw)PL#A~Thmkf;b8w]$2ijb=%4hzuwCu5Aeb&#ldq1B>(t@U.ki`DU<;gnTN2zOi~YQ]Po/RH++2Dy-Izr#~GyL=m)I9m5Ic/t|5K1HLBv|nyM67f/K[}QlBW!D
::>,#s4L_[nRbeo(mgQr!ldTkDhG)J*@-(nWTbu{,B&;w3fMmPq!3/N4+F%JY1K/V{EJNwwp?<{gU7<)\YW`3RgJY(S/qE4Kn$y%lO4wUZsPR!zI^C[h9#92]MYr1x)Hr3&F
::g({Zm8h\>ivA?RFN,q?N*J`noTeV~`vtd*1HzC)ePZj&=Z981W_ZyJB|%N)`QZ{AE6W8FknTW&[tEGNKbl}U%1T|8=I~CQS~VZ]+X{2\VC#g~G-pzN=lhfcECk|C5t_bam
::EZg*4#INa%E4eYBVQo{LdI\Br+*8Gr&7/M5=Srm+U[Yewnb!Etj*dfiUY7F8VU6$dqnQL,rrf46g{S\qyono{a8~dt@w@h1V)WWjinpuM9$t1Lj]V5!r*n&|A=$93G_v1U
::m{#C`6]ueq<VHF|/XVlJqS=Ea9r_$oTpy\L&.8y*jyCi?!&2wXOjm\WV!Mg&,}.V7*S;jk#&U}qwE3!m40?kotk6zwK~(AvT8*Lx![8XOF@K+GCy`5T__yQLN~9HSG<M.&
::&klV)=QQ71<=p~cqH<ZLUm8M<Q1#PYAD=!1|GIZ=wc7K-Wn*<npXWUU/@ZP2<x=*&Q[?yZKBvB2gZJ>F^#E]E3DkqRia?/JFT/eV1lPqlkOH]9%=#LHi_,GH{&)V6Hk=v~
::!e-$AKIyK(n~*q9BE_`V?pZ&aO_%WexqTwlr+FK6A5]dZanqrNGvT6e<vZOPO9Cm69R~ZlPbEk<bxL$`AODEum;@&#;G_K%CL3F{Fp)@&JVl1MLYG;/(8!T^8g!1$YaoMq
::|<P2dEgMdNJ]C^-<-]N(}m$VoSGbJfse9@$`66+#gx>)>uJ==2K5q=R`.yb;}mn4!^Tt(/GGeZD`v]\j*cdhCW9gA$tgud{0_`<;/%*Y&QZzaU.x-*4nrScpab-kMDz`#Q
::SXNf80nXh\$ZfPq*p*$l=j[l8hy&u09sCKZrwT|!Ou2GgU.M6ofS_X8M&_;1#]T_c;{fhu;@w-#lHw{QQ.TF9rmG-Yr-~a\K5w1]fTLp/jyihiK[G5<^8Z2YcgZQWaT`x0
::O\7h3MFGZEOfiy|^-{{1bj<gi(KU)qkCBb@C.W%nR-4c8X&=tlG~D?wAg=enI6H64jcCg%Xfk/\U_oN@!Zh|j9t_4v]q;()V[);+lXUU7;Vz4?hmv-\fKGo+e`/i^aBT}i
::`Nu)~n/#OW1UR^XQhz6*|+lpq#[8vw!I.9g>{d74(D9\f~)D!v!HaFy?H9(4^PgQ*UOMw5ELnPV&y!%ob6UV`!vt;i,z1uqo+|D`!R;p)B^P%y-GX^niMoWz\/F_lZzDuw
::4TmdsF1!xc@~P<o1HcoMySJ#$NL7/[+TK$=?S+U6q[h,@.Dvi^`]?/@up_-7o**T(5Cpd13DdcMPn9AFsk!1ClgGz{>GTMbD?m_/C|TVY+e>X,WH9GE0`mIm,dkC@OEz-P
::1OR,Gw]^8{(RgmrdlboMq&p)|-{b@b9YZP0oOI@|Y|DX#5`-TEY<kt}).pXl6`Fi]RGADm-^eJSs)bX}Eyg*Id4].6r9r@pE[I3$y26S)quzT86gs@Td~L^Qot@q.quyhv
::I*}`H[$M`c@mA`1,$$rJXZukVIT4kq%|V+K6t3qzGwb.*5vKN*3E(9wXwW=8DH-kXTse51&,|3rN}x^w97u*z)UM#)db6nTs~o`sB4We67*h2jyP&\]7#?!V(oxXa53qTz
::NUv/(d%VVdnOaEe~#AmV<7T[8`q;xUqbSk~+>p+{zPs,iLcaXh<~7D*_Z\zx64Kk/Tq}[<DvEGaNSasHt?B&~L^$l$86jK)$XuX{N<GZEs_Xckm6CkZJt()[`Z_Nxw8/7Y
::u1XyJ|{b4vh]i;AnZfg9c<3Lz$^N^$0?o_QSfUS@dSwm9iETo/U;Fx9UwF[#v\VSU+rhZ6oP3\\V?Lz[i^([6V7Nj8!O1=&E4]P7/8W@h7iEP@lA+_!q@L*Ndy(dS49,9s
::#pl[^2VLQrbnx{;8!NgmVR(g^)S]@Pe)f-xc3z4wW3F}eeoG6*0KYaN3\z9zyx4eZ*4;_3231U~G]FPxa9`#q<\7<3`@yN12Me/UjeO`x*t?2M9kebifNB8_)\u6V]r+B(
::JS0}G7i1Laoy*#bSUhgG8ppkF011XEU[,H6dDJswtgSty.Y@9k{n<1ebO[7~Sa/FyiO|*Eow*-YkgKCWx[iUI]}cbvsrn_OMLq5$%Br~WP@rah3NI[bR?UMx!g>u+~q[$~
::1XY}*LwOf398o*)KPoB$w{~0~C(A.8R{zKU1{]+ldtZ>mFc]<!`D&xdbh6GzU$)=6iN3e*!T{-m(wV7NJQ/ZHFC$<$M8`D{dCiH--K@+6M\sl)=bd+Ut=k0a-to/|g{3V!
::0TklhqYn.cPA15HJp~=NMf_eisqM*uOe!Zj-+~&[26v*BUQ+Ure8oI8l*Wj&itIb;_6KgIge2<k(X=(wAy0^%j.ja(ly5u>+uc>ZhiCNZ;qXT\]E&19f|cOTG3[~F5fJuo
::jP,yHT<=yMbLP;;&51~[tY8m^=Nv$)-5nC3]2-`(,;2ogZ7#m1qlIwLUaX4t0iDYhm3*C{bvI<AsR-w!a(\y-8AT6&QZ{c,=?;=,re2O7}GJA),QA6}W%=7ec)G*8Y9$3G
::iCp;#)9AEK?TXFq`;U.-r311ZOLLB_x>+t1U9P8|N=andh9h~OANpqHbPgQ%oS-6@]3n463[YLhT-#g~/73Qu*WIG$1PCQG@GI3jCQY(!HvSEa<QTmZ4X;0NgFeehDTK86
::?Jil?qpAp,^_Ya(m5Yg<J?eDbFn3%K%LdZH\@;j;TQwRtUaM\@%@t~I=Ke`nSy]l4#N^mS9ZK8tKNu>9{<.GK`jMi|=x&Iz)MzQc?R%@J4o%2u)uu5=RODh]!|xun?q0^3
::._=6df8D5kh09.!#.b_pAUJQTj.Ev)Ct0?m_3M4{z-yk}uWGl__Z/XIOYb2_XfoN^)LQ1j0GrOfCx%P@.q7ggIo9Lq_tr-4e,YUm{W9^iIAJCU,uNA_z,<g%<]L=j\`Iqt
::uW}DxTqC2M5`m,gmL_7FFa|NXI&y=&Kv6qWK8]w#R4m+Z=`{\-eAIy8g&on4G}MPEX\,U*PmL?*pNTm**A\Q72Z7[}R$~!_)E%Y|SoW3]o^\(V#WwD_!/=Z,4vJOC,8w{3
::e<%Sv_#ZE5Ec9F^}CBq~HQuix\|RSsV|-0BaOM4;p#(Q)/\(A<uW#&4J8eFmh=0P(<j1i@w2.Zih]|kuA(RsfR[!gZ6X27,FE/j[5Cx3yH0baYSb0hAZJ-WN2HeiNM2(6r
::X|aJ3o.p3F+WiB[K!~{Z>P_v4SC\}4bl*(a/*&J]J@%}h$T>kfShBz)D}U*B-Kso[TTebbWjVlF8t\^DzXj#J1npU|/JsfH6mlPsX4Rl>Y3sK,OaT9c9]DJ\sHFm4v=1ms
::J9[6ET!.je0G\O7EAb3OPdqr(#;^V(Tol<BS9fWU6rcKtifex=!+FChSC?X+_4&$Q>`,^z3WxE<GE/c\Dyr?bC@Eu~G(?S)=YJtZo/1dM5}`GO,zoCeljy7LHJk/R49-Wu
::pRG?LQRTYA4w;M^<dWVlA_526`wOd`9O{cd\|D3<YRSD/99C\Q31UbMc(pTW>x0]\%TA$s.jj^+lU0K?3G&-+j*tRz00D[&-RNTE{Q`,6x|w.4&=vq;iF0$HHg0D*KzaMs
::17|<qJoll(e;<+wfIQH=09^K#&*qzaB)G,CNvV&$j-<=#B7g8?7)QY~8fV72U3y)c%#~sO(|6S9AD&AK~13maJV!D3t`xg>$`iDY1Kb0SUBj`%v6x!FOJ|!~saN*5O1w#7
::,]C/t;-8$U3W87],D$?S>%SKf2\aE6l6/xPw8bM4Iqa{aq?Tn>c7BhlXZQf+|hx(DN{~wJQ~T+0-m(1W<3;i11G[PQui<F0QXwC!M~k*<H_FppwB?%sw$rgSu/~fS%ok<o
::2EO<(6kRxl{RzVudtj.hMRo=/FL-h@<8E[%j`)/9hDGyTW3!bD=7dQPDnpsfz&i]I$oa~L8$\7(rmdo0[&oy;#fOC`iVF28%DSxV^t8axYlOiHLb*x)BS{E?!(&rHGyR(o
::x49bWI;X@rAsi01tf6@<39Fl?If%*BR,)md}>2nYRz/&h7~TrIsTCT%VGmH+GhR3UdDCxdEVFM-zbbsFe?r5E_w>\k-0~[kK!2^&rtsKXw(Bo(ZQ+dqr<J^u=?2v(1|q!m
::B0|g}bh=-nZcZa!<WJ<TB5D1SgpN]L9][!!$\JF%9*Bd*O`O,Y1X-f,]SYG*`1<]!cotk%At[JsCzAYY$1HW;Q0H=l33JWu-SAgU!iaFbofl74(7@XxcxV9h8X0rm?Y4g.
::vugl8fg+ff1N~G/bCE.Cp)a.4F78,65VHm~=!;{A?TZ$6l*J2d=%F^<1I?*R8pT[I$2Ajgt$lysP4-z!$Q>ok8Ne9\$O_X;%.x#aIc;=a;zssnv~HH<hwL)no;f}N*W#\k
::O_/CB|#p7n[STJe5,0}fF&i}=JP@`hi]VSU/c3rqy*PF`rx<+[DDuX,f0fT#w]g]Z`B%gyFbb=J\C]MPF+v-e}-wIi[tyT9YSq1r-VF?csj-2/3Q$&%M|^JE5s.fAU<K%!
::Xp^w%kO/Y2&nGux2GD%AOk`oKP{E+p9U983^u&Uu*z4PpkY6HAO^(|<Nlh3sL6Z=kA{uac{J^GD2J9q(4])hug|%zr1FAI0/5tU8/*Ti3Y&\R#Pk3bX%Dd03A1%MjC*f!9
::G/.t==v+Z9.-E7VAv}(po&18U7R|~YW*!%oI{)FOJM}~pk1>KB_WKA0Ee!2|(=]q*aqf,02qFR@Cb$!x/e^B-@w;cyzGm/9\}$V\vy)hwZS}9lXSyZ`Fh#p%Q*G%o/^4Qg
::&*n)g#;zYtDA+3QLfE;;7}&.@#os#06t=u?4jD6@2!{nMtMM~TTr?(046[C]Pt7ZF<l\pDs_/AiFHCo3A/&zpJ?!.N_uPBMeSvL&Ogj{f-oUgnaEmilzP4){,D}U[-T$IX
::J0rCvKlaZ)KBzH!>ok\@;1Gh$I&T0-@PLD/NS1`U<Ku;mV1N0A5Lw`R\aRf8F<mo_S{I=%yl@Blr!33C4~J10D&s$aUi#f+bif5vna}o.Q$P9y#m&os0B4fd!Uk|SE.vUY
::jc-CbL|crl~[u9#Eg74uOmC[2D^uzkIg^T6EcNrkSa]$udL%r0Ow6K!#`5L7x>8BSeP/a55xedE-VJNK!910}6er#MmO8izKv^U,!t!con9vug,DgfxPnXv8+5),mJfZC(
::d2I2f~VWBu7qwY_2iC~Sy{{*RPWgrZW4K(ptM7dD=)%)Rb+K67q/n`_!mJ181_MvgZV$$F6}ET9Eh4rUUpqJ/s#rTa>.z{)/b~;R#m*HiEL@=Mwa7I2&?3<h5T9C#xG};d
::FtRp)/3nn+T^K3^LZc\JVQPDNhO<Ni5SnS22L)`{p(p/f4p{C09aRomLj\r&J@2fQE7x`A_~QG*<s~>tav1+6@7s89lu8faqf^GbOmU]B-oeBDMi<JYvDt%E,37I[(*%K2
::zaN@N1Djg/x<Th@Ys^7+),FnCx!k&H/=59<9JhZOYI&sKM&DA&ZdgP=YX}<,ruOKiUWN~0/.D_wp*R}*umokOPB!\Z%`qzlwV4Ld(dyH#H{Y9asTU-xJg\`JZ8v{m/Q7Ww
::Y0P-Mi*0vcV0`X|;gY1|@-hT\ljQM?%kU$Aj]Ui_.F|WGVw&XHWq^!Pv3RjN2N&<c>+uA,0rik_=2sL_?f!x`ar+=Vqt]f;Imu;)N{sHFk,?Y-`(5W.%[#~PT)8&sRrLWE
::!J0mPKaSz,vL-HyK9mj}pL+P`Y!%@+PP<VOM!R@ev}\LZdxV5FwGt7}3#E,0}S$T;P6fR3|3`<<<Y%xA64$H\~k7n]rX*5_FbccKE}2+sEl37A#c1E9RsqR|#w3\T@_ctO
::pnwK~o-[_-dq-{t^CUfJ`R))shl@0erJkRt]{H^@URAj1VFME00P7X[&V@gimfv=B4)e7C6F~wsah~f5vzCx5`=|BNQI3NxTlgcWouI]8%cWLTgW7_RJzrfdTj\8Y%JH11
::1%R6Kv2q.\7wbOMjK/-31}(}~=0qwkb)Y2)Fyb[Lmcb$d&RP`LA72tqYGmzMKTy+;2Wmx~A~igHxR1QWr38ZT6c}QF(+<+JeDLt\tMq)gknbUcP.]l,VJ`9Lp!36,+Q<O8
::b(7S$f{bbj/bz;(~8x(WUw{-By.slZ>E?WtpdYRJw6~qWtJ)0*Y0Gk0t$(*Swr_^QJ9~i/XrC#AY`{T12vW7n08Qr`C8>U{,CDWkT,fqvxQ1p]gzs|JN(uv.l3KKE}D5<|
::sA;n!N6*e,,-WO6@e$hcJB`rmv0k{{>%F/N@ZC~7gn8K\g]3?wtOphhVcUH{r><N>[,n=la-^VYM`M+MF^^Enm/?]P(.~0[Bd/EM$xX9`h)lu3<gQYjVT81nJh(Cs~QREg
::PrA55v!;/hf4*zo\oB\iEzELa`vDp@u?uQMfrtt_)oEE)MBv$LH@ua;)z~0X6^J*R|%lcBo=dZT|(Q=~k/*oGyo[Q[{cv-i*z-8K\=G<EN\kE~%{IwRBouB#^P[51=H]9&
::x`/Cj116_U5]VO;a(f&dH-*i?U$&$%ca1#.6zfcsW,hXVYN_VG%x<HCaa-Z027<(x)}83;;{)WJG8L_gQ#I0\#x|N9nGA.@g,uu;p3iti]xF9p~-X>]O*(3=ybuVO{`ICI
::XDzT+H]MPXF=hwZP{U;&<vGkF1f6DdRk[}3LIeRjbyI@Ah!V]EF@e[yRdaheeB_Mg/S#m;;,-uVK1=>JyT@I2fx.B}m{0|ZXoMv@7k^w.oIpZ>[v.@fzeCAhVKXCI(W<ie
::8d}O-i3Lgf`FeHl@=kF[u9v|JG1TSu-\r)JE(]Aib,sYTXXLu^tnzQq_t}{4KdOX3JdB)p\R.ejLNu<LT9=E>sTr3llo([.xZ.(D*NDnxf)_Qm-H~^@aA<.eBE^o<-glz;
::%6(Dt3tJraFaP7K._YfjUM`Zu+&&bN~c>5mO6R*;f%<[Gx7o_DPj0.^},N+F$MLPWm_^w6ff/;=0\)rl1<HTYX>VOq>qWG*+Z9qeP;#>d!gOn)hMp.CDGn^HY$&c=lr9gx
::!dKtj&Vp*499#14V{9s[6}Q|K%JjK2\fsY79~QUYaJ!8a2pr92|r$)9#k3lq=;[xHh.Lmu03Son0?=/YZv0V#j~*dMYMhXzyBW,{NR}/BC0Yqi\zG{a*0VHhlrB*r^4#t;
::Vuo_2~5#`r_5v|N9$5=GVrO~6b_8.I%Kmah*RRt=-9g*60*Y6LQ3E|HJ/6?S(Wi2i[A+0[L&]OyM7=\(@xhls^ITnAjoy}[(pcHNA$zy7dVF(EW62&CLZ-[bN@V@s*#;7C
::E2fYp-Zf&7pee/2ZJ1|yhqXGM}TbR,`j/>8X$i6%~_d|4%Qom[qgP3atASF}gEmA{{\Z+07S]n})>m,m>SVJVoKuyz=a9$6O;I8qqHoc6%VNK*QRI,DDD=Hh]$@[*F|;i4
::UP6h$j|V@2A?CxXI`4`38fi9T>yt+vk&W7P.,N&B[KXG]D#5>mJ_Mo$;loj1*5sAH3xUuw&0RKNI=|UK9<1gGk&9st;4;=_brrSmE-.`f#?(^GCs#;r9G5|K*}6Wz&+M]G
::xYew]wa4Tjv[8vpuFIMJf\xWBX$Q%W%V?4=2C#J5Zy;6P#Pa2^Q~&ND9nE|R/IHDeqUP)mi2$dj\H`aD/o-/hKr-`|TlPO%a<kvMc5**>sAtBym@Do+Iw=I1*4Rks|5!Yg
::>m}Cu&<X}\5J!inZeR]O%~}y*tDa2_$;E<*H{cMWi~Z&jJ*GfkCg*lFxnTnZt$0*GqDoE*D2jJ;Y7Rx/[YpSd@h<?Bj/yq+0A;f#;Xa8amt),ry8L+BtViG0I,F-|(I#.-
::T]H,]M~YdsQ1l~IQ\j;Y3\y~I0}*SN[}OVe&c5DC(l3|}/ECDZJeYj,vq4_p,Qcx$3a3>[2xgE(gF\gSg}-;l7XhX?A~mQd<7*V4Hd)L^kCc&`*Lw)o9-Bz(h.]uB($`/R
::[{V}/2+9x,3k!m!u08inu+6t{/RZydc4*%50in6o,,\DR3L.r*DslhF8)4gGT-h&iK^-ztd4VcggHZ7|`W<IPmK!MmnFpt(8isI6lAh<]l}q+*K;MoQRTTJu)pc}.#hP=-
::Ne~{hQ>En}iL9sE#g+*Go|rmXs[.XIy~gQdZMX4&Ak-k%AJ3XjRslSs6+R&Zd|wszvv/5U3P!33a+]QLHI/4(0#dAo>2$G+0BVnD4f8lgx`n]f^v/LEoa|]9@MwL+=]W/h
::j2$|qK*4w,P^MM|r,_JzU|>L5fYG-deN+-xNHb@)R%Rt.>vTF_;G`wC,Le2-A=P<=sS]Ui`Y$DD_@ReB?,)HJY<`;s$jpKq|sjB&4e%xY[Y7oMGMC+,%Qk<J<`qqtp[u8Z
::I>IH0xAT9pk=+V<3G*zI.u#&e=M\!ms1lF+P|x#\7izRkfU[#][Fa-q^ot~mkLJK1Z]pXDMiG!pF{xi9_Zhs_+<J!T39|p*0VE!Iga7YF@Bi-JRbm?8Zg26.ElY#y}Og?F
::s$pUR1gzwCAl4^|%{qn~Z{L6kdlv)8BU~^OKUbS\P$<II4hC,y?]0)`6QM!=eoTqmd&gUzNhJm6ee1u&.~LoP+?CIcixu18aT(mn.F^gUlOEmrL_,AAKZl_!j|=hl}Z5ln
::,xqs\FCkRT/#@OXlkN~g]tEL*Y$~ew@(`X**lbGR,b,_~&Vu,lq]$y6cs/0bpRXk7j>NdjN@G2lDAfpUN6>dHTq&JJj{|<uC\asmv<^7^95b>oO5O`x(QLb(*UXGmkl|2Y
::tB/7A_;%i#;Vxgg]n?aT{rop%`6Z)3%$tT_B]nTl<z6DXC<EdRZ%7Q|xX4|V\Oh*)Di[gp(9TTQMpl}x*R7;Xzxe@xD71HeCKMO&OAO7emy$KPqfn(Tx!]!.(BT!p%(_Qq
::tp?HNv*}0%Rz%(cap)d\uzgS*o}e%c]Ncf!u.rD2HLy]E{wz6EGH3)0?<wl40$WdSj8U#a=-~-VNv{D&XA~_~L^aNl&}L4jO?Aq6lyYaqhj0/gK;c@aLLef5m?YQOk;.Er
::lfGHBk_+2ya[z4N3[OCgwtd[f%0x`QjdTHKP,55R*^/ZsnKn)D{C+_cf~7%b5xbnKbUTJU!Z$yO0IX7N(r)4E[ClJ$8>/%j8;<SNgiTkAg!b8A}X85PoFe;s7YcD?|RYxK
::(FR[}!DVsvo-r%bm&siKN;3[}+;vL`Ef.IxD-|,n9mqUY|nBl]Hoo@?}Z[E@S-B#4kj^eKRubTS$Q[KF2X~lCA|,@ox~Zd@09D2Ua~=HK,z-*Ub2Q\I*01Vd{tuR~/E`D_
::=h4<UDPK/x2kGxQL(Ec5!]!r9#xPgt~!<MmhCtVZd6eDc4%+l`mtU61=~ktHOTV0+g|rK0M)RW=+4+O$Sj8&Khnq=Wt<&LuI@rUssJyfjou)0f0!Ny-ViM>RBWiK+#iOX_
::py#=LLB9~hCQ&b@l[rU4mV2GVr|4/+a`&K3%!)B.j<sB;=$,T~G-w[2#EpI|e1-TXIA<{2ejq3k0%h5k{{F{,4c!v|{<Ze}h={$20,Y!q^U9jzUMuVRA0Sb(.\h%N/Shwg
::N\+Gz?%6Lto${v5AZod+J|Q{pS.!\q+q&e;w9dgbHHz32<aUhRh#dSSk`1<uR)M]Z`+pn^8>YpX@?Klm`>(JT+fq#Q?8(]0zIn,r\0E&DPat}+uJ0x9~>ftMtkyq(]/L47
::Wlb/hnIMpVgM7^4`D+7se(WLRa,?&%P(y$Q*_D;Z(]_1;t#mm0o3!76-wj]qvTrF89gA3_r[O/wkn$ZHufk?ND6Qv4KB_mUxc.M)Ln[{c.WmfT,]!C!/?S[b(~g2>fwC=&
::!_+Poq6(svE^EcaM=9cNsK=Va{ku5=g*1{1]HNDI5=1qa7q4PXpJ-nQtW2j43;*@QvF<{MSZ7`_p#In3Y;[wpt>tN\72DQ]B?6._XuyTjxCa.DN]{wspqDf/w?[7@?#JsM
::H{xzugR?}WtY.b?4^%XmS@,nX?Az`Kt[lZ$-#VN`~^a0DPrc/iC7igv7N5;@wT~~w?vit`W<Q5=qQ%bg~_ExPkPKizX+XgL&VETJN<9vIXc~NK,ReFB).g%kf69IRk4c7O
::VKBV}vzB/&nw}OK`bupl252%%bUvy@b<>~<PDrn6qy|4d?u|LU#/Gr0#;1m]2E.N\F=d3_~ID/QD(p2_&}%o#3ukR91%\._}Zjb)fWWe4M2I#|lpgF6%_MQddOY+^;a(+r
::>y59-c&E+y<X!Lb=1dd{zL)NR77}6EVM)?{@*,GuZ~rVQQYNK*Rtn}iwfWDF,gM2(^&=BR{phLfAlCf(e`,mTm4qFP;{Q_&U._ZkuxrxVp/rIA%}!xaIts+#S..$,Tnc5<
::EY)zfyLjACQw$F_+b7K2;aWW!ao-[h62HBJZ!IN.-XEZR,d/DiXml6M\K?65(=z`,<))7_V$#Xf?;^23+U(L@Z$0jE*9ZRTL%vQAjMGy7.We]W\NOe}=/OC0XOpW_a}L}E
::A[_(@E$R7[DHi#W}9;)Fg=\3]\Nd,&cx-gP72Pb1Q/.L=+9bVmt(Q`v7Ji+x*x~%buj,&mMh5A`bqJ?XL{Pn+5uV4k#.i&Vs`Td7<,O%UdOL4d<b]<|$\b?DIJ}N@<=Bhb
::`v7Oo`_6juON6Yg3M<tg~N6Y_BnVKSoE./R4_1N9iiSsP8(kG=mpPysVOO[gA)[Y8tCSjQ^=D~?DJ<vQVPm(~zX#C@PcuJ75kPNbL6@taX_r*Lspy^rbQ3`L_FX#,%MlOP
::UtJ1odngKe-Su/&`xF6LL)4Y;n87fhQwupNT6[#byq-()^RmiX!p|M`j3A=xH_mJxB#ASOF&67l&7k3|aF9}OW^zxoBSq9_G>wTzL.!RxDYt.L]c\wt^j{lZ=PH9eI3L2&
::R(|)OeY%ViDO!3OA/QOH=Pu22]wp}ok<(I(7]),_X*%NXve>{<Xw>D#Tn[!QC%PFPE\IF7,xI;6|3S*!Xmaq&ZOg!L;8cmBGR+uF.hNd30`Oy<GiR8WcPt.VU$GC!sRPnI
::j6j]-/2^vqt6L7LACJDpfD%KgW0$>NKYS$1<Z1SO`ujKm-a,ZG0C6!)(1}|^.#-m|+7fpR1Lu^=kpdvYCF-2zfIFjt`e`O@v*M&U79qFeZfB\)2#PS1m{>c#DErBChJzs7
::|N>QhPKU+I_+&M/rQ4,\GxG_9)p!bGMF$*5M=2Kmne+msLL{1xZ[3Z(@WQJ!&?;q{Qw)w<RL@aEz>bCXRycAeMx05oX;Jwwud7unA2hfdDJGhwj|fz>$JaM$~~,Qf4+%4}
::cB6fplYW.zK,8r6bWdU9acRQ^??m|/o$;OIfRNta;v<Dz!BnAvQ8=0ectzo0|D|/Hj9gh7JLjJ?{D%PkkQ}G=S~2muw{e%J?bg^$HC2^qYO2D!{lV8]([`Iv-/}!+XHS}7
::/g|wp(HAM14Nl#{OCLb@g@;c>3ojYuTI*7VuK~[ht1wY/0Vuz1>M)8^H|7z``hK`Pv!rkekV^L~-Rj%xWoZs;7Xm,I+zJS,i)GeQ!_A\)tX-]d;T`G6wxd6A=Raupvq`9&
::?%RDI<z;?CZj__Uy!?)zkcN*=8|l#<B<M0zZcj>JxGtXMVFRulnL]NjEvM$Pd|`Aul`4E<Yq4(>X}>%oWRbGI![BSFB,AM)K/CRHp?;1,0RVditfrpOjEHQp``ir+5Q{0j
::ra%~xxlu)qc.JcB}fPT_9=0,eNxv6dQ.-@k9iB&D2[jlj>opruOz_MPzoIn]Ud0o>[a,Sb$c#ZEh/kw|J]A=|ULd0q-{L\y$bK]Ec;Bs.]PBq*t(p/7+q]!Bs(ATFM|]N&
::E*PhHq]V=FLI)dgVgRj?4ZS~p]^8_1YBw\_)P{e!K~_$kX2,RuWDC9P[`mbj+wRXPa_!zzG;9qwKpK,sC%ND][6QuJNc.jBP05-Br[_t$+yuKBDA{f@f2rMBSDL$)`r2?v
::d|B}`MbZdxu{.c%sn@%9Cc3k[#G+@b/i\70zel0KkJULx^y0{!B`Bq1N-,pP;_OY1sSI;$jr(D.a8y4*y|aTmgP`P[590lJ7pUys_VB5z$U!ZLhzhV<S_!;`-2viU)*tON
::-\zS{E9;?taiBdu{Xwqahb<sC}C_kCQ5WU}h,3Fq4T7~E>){9*1!Yxm#4w,bI(+Y05&y.zw?Suq`;(n\bf[1M/)\m04RHQU*|I$]S,Qng0WaC\~>a;M-CJG1BVj-XC%Sc\
::8I;GewS|c,%HXd\rjXSM/|C_Be-8|d>*S3<?By4dxSs|N9TLcu~FT}Y##UOB!`yuj@EWNqI&fge)?UlE<OFEeN((lM5$g#s`8=>A<|kZkW&48ma`$Ed)}r1wO?LooB*2wV
::O~c_Fy/FX&2(wMk.uS>hsf\.hShVUDz9>aIgK0C,\]-_O3\X)*u$M-j%#4xwlC5G,vf!%)ksJ<8J\7NE>X(K&p.<!_`NoadF1rPj$F=TM*?R_nsmaP&S5+eqR!u;~/611l
::U5|r-X(STG`{&b`S>nqy;s2H+RlxXQ&p[9U9fDY?cy3*wzgNcZxnW;G27X/bQg?e7|]!uyBT<<mi&*ng*U#R^|bVvaq?vM`=LS=aWW?XM<y\VltCFf^1L|`|[DS(E~KTZO
::2!@j2{n8Z*vRKk|rzQC~w,G*.T\+iXZ!Bvs4`]}).-etAydg9x-E{J$t?%N>F~9BEH->QJDv?i*5n,I@=*HAt+;0.E#$*6-%5G]M)Bxu,7q-y9QtdXp|2#Rl^Q33p1bU(i
::K`8I]=h~Ef,GBC4jk|09,}4=COdv#xb<{BV/#U/rFW2Rnu?^w{}I_tyyAp5AY!}cA+,E[daAH$QuH$4q>P?SKF}Z]@S]W;y<Fl@q4{}kkq}{@ME6d<ILxT1EHhs1=h;$oZ
::>IK`H4+rr+GdJDqn`4SMa=Vs;uvSudJf6mQ`un;3Nc#i5v>*IETbO)l*fP^bj*6@^Z,j!GP]KJO\vTv0\CoAvxlg^^EYiE~{q7u9FZWhX}wM5gjIS)g+,qMUj9]i#isF4!
::^%e*]_}Af#F31\~#MiI}hcsmQb5z^w8^Pv.|bx=(WPMl5[etdRA@Pz$,&WVzAdp#]M]7Xj*=ZAsk`R&!TDq9?y?2bg+{G~O#jTI5fg`zmZ_B!Jx/yS7&o[~}|\Z1oB{/c-
::8H-%7r>Th*.DQYvD&(n]BA`w]9}t=CDY;2RdKGp$},.NMA&tWvNXrAiZ)[*zibLS,*KqM(qfX)jAm@@RE&_T!Yq`zOG=*<ZtK#@x|_wL0Vie6U]izxc|]GF(l}e?d8/|a3
::5g]s*j,fOZ$Wo&a;_}1PD`_JLM7p,vl!1GXBWT@]=zF5TabPEriR97MMZs.qY2+OycOsUANjf`hmxq.!K`!ggtcx|LT#7[9NXkk0tY7Sxp,fSGM]$\4gCkz$RdsC;#!4FV
::BQf3Ssf+,Wadmn3k}=}^g(2Z}B5lL+N/o`wow==(Y%ca*D3qSkxFRinNoaOV1B%aPpYnpmyqpn]{hgEG..N7mLjK.>V1nBQ*|Bmz$A4GpyFN|)K=hN=NNdlbJZ,xX?X;[@
::0dnH2JV`/$Bg{Lk5=/v/I0acv$Uz3eQ}5!}K+SpJ35-IIve(a[^+)E]]-l1xx6{z-<,^?WA%LRL0+vM7M&l|csq7#O#cIpFkV+H!_!AD\+rQO,%uP=^(4ZbhfdoVHL;X[>
::*6.pIrkK{.F.B?bM#Ys)qM1AQK1ywit]^Q=ix+DpFz8x.ky9XDV=>vEW2LKukNm7{}/(r&a?}7sG1[uU$I.d$Q7P/6d+G;-/>yZ}P^2zaRvfcY\GECqF*}!f/qE(&WQHs6
::ez2HC|^7$piywH>nev*F`ZE<_E15RK1GnlNBUs857doWZ&SU,yw%?$F|2=Qdj2C[jbH.ksA^E.4VVlc/(M{UGGNaHXBZp$WX#qGUyfo+=j2iZZ(\81TxgCK{p03Bv_IAVY
::)J{?eps=*7?f&pClVPZMIX]{i3\4[=>~brvldQF\5(dw]gEVx+HH1L46xKa@/(9&Bp&)t!nCvq?~F`jhw|zW@E,z2_Y~L$KCy#Uip75k~j)N7;{L.jIp-l<WW5a3Gl`Zqe
::vM%ykeO_rY8jW@33(+}5Vf]cv4&G`Il)+{B^aF}zZ!?Qd*LQ>-/?|<4=[+,QrihPTE8^>E4f5Y6PG8#I_[<>D@G2fhe(g*%{Hl-!D%cGP|z%.uJd]tTX[Y[WVdDVX{fT=E
::LkX{^pX2Qq#E>@YIYTErG!\)gGX4<N1)Z{8-(?ac]~\S0t/aL_bw6sZ04\N8UKgw$<uw\~}d.CWpvRAq!H&][B)ePy/`XsG|D^d_rB]XquZpmReYc)X49G%#*Of9H3C$54
::oy<z(E{7jkivSf+4m)=V#j_&J_M~2[=WX}y-mI[vYCrq.,)TR?B}9li8t4Jhszl7lP96GJQl8H?RpXdvxX^0;vSbqSjsX0|kO[WN+sBv5\HD4)A&z|HRtJ=n.BtMLuomcT
::ni]KBFle5]_opj63uHH[lbO4mS_M(dcW6M$Ur@(PjznJJMbs32)zSL6)qZftgnDx.{~|3OZSx^SdFU4R#woh9JjG27KAK2H`Drqr@3JYX1kD2I6_?C7*Esvi${CFGJ==5D
::C&iSvGqyVw%lo_d<t=Kxk+X4CnMRJxO\MjM^CPDIF#hY}VJ1*po&?!mjFu0?YZ8W{&j*a%tb%4HUFFE%MtAlX]6kT#=4SD;D7H0qeZzF\/[~EgXrYR8(Mv$f4=hqXJkc$P
::HxLJ/ZS8}uJCVCs>h$?z{Y1a9~#Xn$d~[?l5c!}+C=]Dz_x3mMhtx<Q7cg^@<0g4vU<u66*gQ3,3O&SSIr7F_ce8DI!BHbe<U[Mhk8Kn|cbA2F/61/Xy>Zl3Z#R$)R87)O
::4Q`|dBB9B@xz;AH[i2Rbt&v<F*_1i2-aJVA{00}!=m#Fq^P4P4hj`n]8rN@5G{@>#[sCO=Q\Ii$r)wuYx>p1IJ`Z*-u@vF);{6g@tki`j4_#\L@{6Z(aE1+nioXd>Y),Y7
::vu{%7N]Yuo%M_7Zqp2zyelQr0ORVQPw@Z2Q(!r(Uj75B-EOg*_;uhZUw)%t=gEF%4mSi#l|vM-B2(ZH9BXAhl(vd.\J?83Gmm?J=&p*EH$nK6nx$I\p&uu\bNB#[4zyx}g
::mKx=PZvV,1wq-}dS,cmTZkg&c&t}7dvYx*uq.c8dBbsNU[;IdZ5FWuRvWu?s4^RO%\5;.D{*b(kY2jX[sd(SA#X2&<GwdL7Ez**<CN4s%#B?}XbyEZ6)N=Rq._F<!)f33N
::]B@vFc3`k(sGoBB2EAXvFY]-GKe|+%-)^wsTYq8Aph-3H>6|E[sd3h`u$rli3{L8-Xa>0r|%Ag&w?r/{.q3Q8J-f>O`|ljB_bMN-5&$M%Vu)RBX-;58jk3u])zjDIY9e@s
::dM+iNk[M$Hj,VO8q-K(yS*fs+m,r$m9xZMp2sSMDYItdva2f8~z#{}`SU`Hq$rZ0Mb3Lz>k`$x#A/ocE)Oy^*NE/)&<dj%$@eSk2!dmnNc<F@3*1S9EbF2FB<>s4~(PWOD
::*(P9*vVaLA*Gv>r91jXjl!SMag[Q|}+$.7U/2S?~3E8W=lU8j,~?|jsRy<@R7|1[$v4x9j!ouO2#jvZO+\7eLepiY&}=>KuYqWd*++sEjZhG(UmC?,sc<+H1-hv+g#)-|0
::u`Oj/\YQ?!p7I-1VG<;`C9A2T|RXi;nYFWe^%I=4\&Xr4M\6N*poZreA[sa0<j-~)3g\A5M-nH$v!cqak-sfLtUq\byKX=Q1<vb42\%{-@NZ29D60IFu3vp3&p5%#0O%ee
::qhYNhbQWcMRN(f5zi,NJ*_h<H)0wB\!\`{9`_gUKxoj6jvibdPm(Qco$Dpj;cXlDdFEJ5+%Xd|a4?D*-;QjqFSM9uv}]90^J]L=w8!**OBL842VwV@GaV#EFw_1O*IIB~l
::*w8}7;GV`=nJHF=YuE8q6B6N~bS[qqf/hfT9X[5.\V?SZh,UehVdbr#G#-_AigAFcjso3a}OSJ`QT*`xTD];eQw`=9?G+N#~XIzIJX;F;h+(EM;rmkjhDo%Rly>NL[.0(I
::XZ]5=<]6SSYI$`|by5OmmA`1W79bz9W4yP!{5Q6zo$Ude8YnL$dZ6o2,P%cP@Z<4Qed})i<FI-bC{p9Ug<=u};^/0*b4gMWZ!1ERCGXKZRJnAkgw;D9])mFnZS-5@~qvYc
::>*%=6z<GTd6?;!E+1$[4akOV1aA$e/_s;5O5@FwG{g91iSdqif$8&co`XkG<f5=i~~GF=t);j|`6)HJU=dGmd;Y,OAn^93_HHi_JA*dNEQiCw#cGYN5V&T}G55iVn=4t}D
::Y53$N@5POVD9-?/SOItnL/N2$ZN.n^CZZ*N#ekU_W^XZB[Z^ACzG3,h$q*o1*U0dfPZb8`LWNPRA!lZ`BqMmS]d1?C!iwD+,;%p}1Wht]JnLE1g}?c;fW}F!$)wz^WTe6(
::SVhs}4p3Wv3u}TnRfzVW%B~zo7ZOUhOEn\iK(i|`G[DkTCLBQP&#/$@p$d$}~fJ7&6Sv3|vw3*@nSuJic@wf5wYS4nkt2]R51lkBViQIZiZu6XkE!znQ=Cl_j?IX@=%3[m
::Hg`<&zS26=S0~8oPM-siDu-[||`3J4|!EQFc`LUtuUnP51GI/Wu?zr3j^a9|]3`Z$1,Ie?aqeS;-}VPn5JD1]-vUJd5O0IeWQy[P?\|mxsc<T}5Eac%FfWmn8VYMdpJ___
::I#1<P.`Q_,(%U_ZU%TXS-5R8292K(RPt)+,l?Ral[.xi=+tkTT.B/3\\2`6euNfPy*SCOk`3<Ud]B,(eYxF*O(IbLj9=<hnCjesjN4H=Dft()Ljm2/HcK%Gn2I1#Q,JQ%!
::w|^=.n4qfbT[VL^]R6M#zS}[<k{TWajJlj*ghL&ZG0ZkY]A!h+ciKu7(Rgt=iT@x%u*&)YkM1.d!rp[!GR3Kj@~#h`*L4)hyX^T?2/\0E2Oi_3SQ}evryr[49/5uE\KIN@
::8jcaC[gRprakMKay|L*/)Wx?L1#Hrn/!a=gO0=|(IpT[[HF%fO5HS9SV-TLcthFCKZ;V!eL=vp,LFZY9Nghq=KLe!feeb6)L20m%xGC-676*1j,ExgdOgL8t\`CJ~Jkw[(
::wh(!qp~8c_g@ic5I8I<9SB-`=(r.6hhM~BWgR3Nbgmov!s};X3txdBKIV_I`I;Hj#!SpR_\lHForyGkA^<STS4CeriprizOZwYL<+C/Ad}nj[$v2+aZe(%ztyXyLfe3)lE
::XDY9P/Tou[`Do6)qpf|(L%W&cio]evYN0Gkkk4p)ARU/\MM|%coj/8p&jCY2BQI[7?e4C%lw;-wOR]_JX{D4%-VoKk4jhYPa}?C;B1D;v-U]w{X7UJC2ku%S6xn<2;?!-1
::lA2@Kp}hu[x7GY25jc8}3^>b+g@@8QL]sNxStUh~t;%{<={nORbIN!=o!zAYtPkJ;x.7gQY@H2Lm(5~,HA\8e]rn8sCm\8Nxey8Ykvz^b%Ai3R,$3NXnwM#LaBP=42zU?]
::MS!Chr0rJ+I`uCU8\[tYLPYG;K|nE!FR=TKd#w82)zJg;s%rZ(stHd2iGN+17ys\3k=h=Sv+++htOSW2HVnS*L,cUgMV;lGFC`Ft{wt<%{Q\,Y`PlsL>;[2R+,=}M?+ySC
::^6^+5a=mZXJ+^+OY0_=g,yIQI-Q3No/i82S-Gy>%oA@w#{I3=U%H(T[kuzKSoa?kG3n%c~I/0Lw?NwS2&<8jiA@l%[w%[T)iJk*xqE%sgw?}f*gWbqA5D>eb|r)FhdyGdL
::CJZ@]A%$)rhj.%B|jJ_eRhF?CFv\b6ZMX*uHyS*KEFi5^!1\@yA{7f)U%fQ7jiayr)^)%nPm*c2]27V$sC]IUQ<xJ`1TF9y(GIy!a#Uc72>J3}#zj|Y9@/VZQ.s*wdeEC-
::k3\FErL\zT]N9&UN1f[1(O5UA(EQV1^&J|*f8%mfeOIOH\^N)dCP,~OOG#AC&~(ZRN{-J7`bNmg;T%LpoSXo>_mrCNZqpiT@n%E}qN(2&qlb#2Rqw.Y@NVZb-EzlZ_?EDW
::Ee.E[gjlatzgZ,V\s*F7Yp(ExlA<tu&q(DrN%uT>1ktF&ha#Ejd-5k-Su.7/-%xen1f+,UWmS>+S~=ln4o>QRr,7g_A`<\eUz|SoL~Q-+VUCZ__=[XlMT.0P29`9B>qtx?
::j3QZt\yT)?)7P*{5E2&|!&EKh/+OJAZ8CM}`f@P|(6c46AjkJ^>O33\bGQ&[G7`>gAB8>anG_rN0zA~7r@{/R`obY+8*@}*Ca~_o<rj__f`9mfx?f{9&]8RJg\CfAZgj]k
::d~TV%LwPVEF0EO\H?fnu(_*FS4aM>[{LaDo|*vTF]dro2n7=^9mx}FFsKCuPbLTMLc4S%HzgB6l?3OnrzQ+9E=&}\{4ShSz{p~;INv3e8dPN&T?jhcoy?%E-Le@,d?M5]^
::n%|q1AOVY5BU_,21;!lQ*wFyw%V8LezP?[qb8JF5?Ne5ne>z|zZ{;*5^lWYrzkD@s{8<Y,0W}hP;WvbktZtvP<z-^p7PJNRJZx^vV,aJ}%}>RjixH$F!#3pg,[yY!Fr~QQ
::HdX$aU.Pq2AqQL4J7ujQJDn|K1)ou}@=-38;O!daI5lDHY=C0bkn>WQ,Q9e!X#ujmk59x\tv!-J6E]l,4mp-pmPtbq/!%}r.eE{F.y8cW[p]cW>ZL@0glu`w]Fx5Ci;zl%
::ksDaD~[/Z`EdSv*s+#&K3,54tw95rf`|Km1UJ*3{K;`\0h=bsc#Okop3uM#P1V~o_QB=Y/AU@8ZezyG5tVp$c_s^I~Pe6}uB+i,/$SO]*n-2_1ef.&wMGym6K))m5X-;9)
::NeC,I(T&O{!*h?)KCnf3ML}u?docO!1ply{`;)}igsr+DqT*Vp@ul^G?Te,MdDqS40$*`93-P^=e|2sVpy\(c5}kLX=j|,w;)toA%x&AMj=F)6Z7tvR_&MhNI^[{U|=/wk
::+!BT3#YJXd,~+!/6[eOQ8[-|DSwtc7i\/|0%K\0/,<{tV)+A$(3l8$+k+3eOBKI\\8LJJS}.$\t`BqP`2|lrdYgANn?eOS?#2P.u]hC@2PubwU9hkNYR#0!;v?mj>=H`Z7
::d27J3nhdR$R?2@phYrjR,,\?mw$8MtGwHb8#?+c<5vHrO}gDvNKjpuK7Q^3YO-g^b*rJz0FN<YU/P,Dxxl4112.*g,U7,5|R#-n,.ffc{m=_9E)v^X,Iu[4kXsQ2&In@ei
::Ji/p}In2$scX*D+^t0_/wa%E06>{B07*FG<KFsmC2kpH|U|79V;<Dn~d3?-]>Be1Q<w**j9Ke&S=ZJ_mQ1$C0+2{sj+L.?jB@6@K3xgG;L&IE}}!-}+q]PobUZOn.+<=~\
::!%}c>wb]g-3oI{aRc*0;$T5Nh/o40w(_4*8Zv4ZQzma+VSa%T$$=&Cu7-B%;JmtkdA~\x%L~_[.Lu%KESJ?raH,6xm6E(%+xPOXubkZhR@{-$2a!KZKN.)^ydI*EJsuNd[
::xF4/j#Egc8l|yTi;`uj*32H}sfn@|E[jDs@49aY=}7]7bu_r=ffUX&z|.k3DcKBO`;Y?4m3w/uGKBJUT_2JT5rseokGXoC`-OMK3ra^)=&Ad+QGI.6el*mQ~*~oSIhuBmD
::7W~l0kFc@|*<bu1|^nk@ZTyr2<<Ev3V9/D~Ysq_*s)}+!X^=z4@hBe!yRyDg8v/[q7>oy(DVF/*}Cv${Gj5\AV|Xd~shGLme2!KUNh~o[t*)=iqrQg~o7VsIF/VdHLM5=_
::|S80L@?&f6R%=Z;cIRV)kH!l&P>8^}jxnLGEhd/h6UI5(;%>$B#tqnKAv<\{q$j0Ry\)^3PpC=<&{MpO|OzL3Q7uovKIYN/KfGbc{){E@(A$^dGKTQcYxoPctRXZ-T3wcD
::+wvHV1nAd}lp3f+9PdDZUIu!1fS%;%-t%bOgFy]}F()=/?f{jLDuoxb1[h7}wce>k{Uh\tBefqCw>9m(~,jr>`Y~dcemV[;N-e=ay)R$k#2d)W]b=/sF!0u(J<TXZZtkRZ
::zu!G|qujQNI=U2RthIDtJbd=^lZcyQ&-Ex/-Yl?c7NBsxzJqJ|;lhZFop)<6Kq2V{u0&7^,bFkU8=k)O`az~frJ}.k{nypOH}4+OMWSO`wbG&.=r}HG[2[`Z8r#hPQ_a1V
::\D?D];KT6tP8?y!4r7R$DTg_h1N$rUQ61R>Ji<6Qga1Bm^$.LG0XXt{)\gRi?FzQ*v\!a1s$BRgSs4]~vf]Q%V+e{=u96n}X}Pe\giV/dWl1xmH&PDNH%beX]vl-vs;r\g
::SuP%jF+BLoR#]g*WXWu;Hpwp{=C4k/L=DTi/dAQv[wg#jzYI>fkA3Bi9=Z]xR|/IW$zK(MOBr+AE[@.k#7v!Z~(/WA5j~IZV<rU9hRdTHH,#*/C]YwIJ8b7Jg[]YK%6MO<
::=GP~dB#?G{x*wiDKhC@xAeBPtejeVXL;cSh/L4t0Z/|-@i.NeCbh5d)Z?60Lo@,9L[)Q83j=w=b[ofuJ=|VYD>#v)is&w_4]75{&21kK4@eco0`g?fdR1<-mYb0@dNWd%-
::=vz3S|=eGAojZ?%eaF9UZ$0D.Wb$]{~OGX/1k6`yr0v$gN2`h{C8Lt&F*T|f/)jSWOMGqoQFvgtFjt*!-;&`0$aMN^mk5WbByYhy|T5/N0yoQdErX/}6LZ{]7$*YNSbIN!
::REB!LxIzUa>F6NE>l,Cd5ZLwaUCZMkQ&I._|JPNaJx_Bg!$BtJg59SCHf$[-Mq!Nu_8391*UH]!K}}x/UJGvi;Sxv)QJjPNc_9A<tm507/B9xi*J|}7@R@G~z>>fAJ}NS;
::|`Ip4[vkU]zc%v+_g}[ql3ihs+5LS*xS/DUb3p_(nEb#1jx(`e<ZUwd4q[gf%#Z<OhwpU#F%<t91Uu^QMnjsS]oH4c?v<h3]2c@!hqF*c\pNom%T<[u4kZ|owFK}C!(mv%
::^ov%i\s=`21C6olvM6,]RRR`o{oqxs)ou_YYjR}xQa#Rc%.{24pxfN)hipJ&~8!t,S_I*IwYhT2y#AAKe<YY`G\iXwO|l~$%/x9c#Lf3x80/g1>M<>iQ]yDac4_*#o8Sy>
::CxwjJWv|ZoBKND==D)zB~[<V2lnSqAY2B=DH?<`+mugN7S$6^q]_bE>0y;d.U+W0twt\#zd]S=zn0,Sm2pg9zUEcCAB//MM;h7m(2po%[%MY;\/nHBm<QAaBd`l6?87oW,
::*?G}T3*f#SPKICch$m>%WnzBc9Gs%%VzV%T9%l2T#~y0C+@ic[T4roT~|7=6jWll(Chq^xj.>h$~w.?Hsgx(^2{\ry5lYu/BmoiW[x6tibL`sNWLNGIzbY^@Q;XbPL&m\f
::zunr?rQ/*=+~fa[Es8dEz,TMB4\5DzGkkGR?xNV`BPXMFs.}Vf`|8T^Gx{f>~&*2/jQkeTgQ#+C;CEP@[)@<rwGE;+ri065A5[!AU[$l{Q3CzI(v>WJ,*|[Sn?\v$R#Wp-
::P#xCZoq!]mq*&G*0G(S[l)S&{=*;!V56%DluR3]C.%LS(x,&.1Hm8j!NH)x.@;{tQ_Xq[x#^fEHzf[b*!(@z=?8!<f2vmWFUJ;KZ;{^n7O]<$=[h.{OIEPKQyb(IJfkb@.
::CptDvChZ0CZsnvEO#)tC(KRRb]Fr>1EVYOXUhG;sbN>=^A7CCa+wn1IG&bf7Z!23p)=hMh-/6^,h(Y1Q#eAsCu?2uk7u!0iT1;w~a+iLoSG9j=1%T3zVA{Wa#/9%}&aW>?
::TGf$T02#9+lAQU(mqT~8/b2d[Xz.<!8Z4s]Y]nB2F5Q}DvPwx~m0O&[a#))jt;>@j!,99SM?x%kh*n_!RLc&g(&p1TR^z4>oR=Q\y34ZiF8,fzj*e4T+3?GR0dU}OYmW|@
::3qNv;6j2~{]$s?~5VOp9[EXwU@;xGJD~+X7s.W1O)?c4H7cQbXeD[DDwxs(+@jQtLWV),R<@!R.n2%cnJ8M@T[Co,YY-$z<Q/phfuNNA=\Mq,VYOFz;u@Sp6oh!i0$!{!H
::K-ZDVpF+lo6IVWO<3N+zTP~vJ.zm9{L?W_c;g;j+s&zM>wz65GbJ+0Z8lm?}K7s3f}.8!K+)uM0$P0-wsJ1%e`Xy$cSf-w0ss+Zuq\Jw;ip.ZnF[DZFt,~s7$hGs&=kLTC
::.#9=s9V<![{6*m%Tq74HWRFJiZ{Yw?O~@479DXz|C0tn#kz^|&r!(a0)(T0@]!s[dDn2>Il+khEauT^9!D0Y]{z!<dC%*BPjrW)`.srx6GgrJQQ/oj!09ER9h\=Y1GeLKw
::P+LKmCIRy(ZL4Zh|@wu(P7eSVhN7rSg?.*&yj7$~Oq_=R{wuPtt}hUJeIEJ*8f!`wC1~()h`.IM}7P<Q.Y9I00&O]tLp`>[J6,o}hj|*gF(;X_fbu`,zl,;<~sEG+,?qSC
::*+7Cu(wY6?pG#q<Z$Q+WLrf!E6n|\R*`2Cu#ml,dE^tFb#=}oDLm\5{Y|Fh@xXV!Nn?.xWPXchZB<d9d|(\h1H8;Y-p.SHv~;7[RWEtWY?PJJ]{QW0Xs&MBu~Wx0HEc5.O
::VxnhkrnY)3D2;97-X`8{~+/=9{fN=\&W.,(Dl>A1E>7?5|Iy(R7-s|^n.vDjUX/Nen>z_bCgb6wb[jfIZvw<?v{}azGs)rlFDFmn\}$Pnxp.k){|j4I5~X3B`G%]z]l{!#
::Bkt!)t2-?3*Q`&]*P-).~mS=+F3OEfJyfXR%;|*S?SnQ`O08TUQDnN(~=-4f8W5(P6._abts@\hKxk7mWGB]+eH=k;~MrK!0<wuq[U9\])2BXP$i1GY#+~N!Lwn!@M,zVI
::njFGbKCFQeuH+%tBhlD%z*lF_k3%p,{7wc?Ccmj=fBf4.;ez>D?w\@ao3/SoX\=7&LXlMnZes\s6@$JSIQYQx@wynUUu[kCp\QBsAWZ0hY_E5<pgD8x/gv1cYoT=zT0#{Z
::*O9pjd%xG0Y>{NP=QxJR_1cYLhhD?+Xp36It$aC]3NyqwOQ]^VNBNQcL1,Po_-oi`u,,$95&SK\|7rK<5PH/x_9YP<W5gG;xyIvrVUbv~,]juInu%Ua![0K<M.p{Z{w/`v
::-=-L(b,<1hij<|U}ctjdn7n3Dmy\^)Lc3b70|BW1S9*CPp.Ya/dF7{kjXX;1w]69v;,AD!K\iP[_N/CMakX}z50OuBjYrVlSn1L-7Qtx1TzxQ1^]jAI=qj}$pY=r\k[}[|
::5vP+uB]/I2qzpTHhFf-`,7nMKIe+CL)?{,?x*gY/xq-t@p~g{t[C%fFx0F<YeRqM%K;Hlqa]_ilU%Ql|,8r+aUhxzmtaV+tfgmaBJq%<Nql[VX(EWyFiPT$yOAt^E-0W~f
::)Col%p?S|#\i|W];dS~pe~b/U`jt+GS4]z^qF/721qKZ~l_kqcmofdD%h?j5w?fyLF&dbcW}.jV7U&y}%iW%/F#eu?kX)Ke>os&H`D>;bnc9Mf=PA1^tj=M;?dzwPWOWR{
::+witQ~/,BHQ1gZDP00R[u\9g6>OClnYct/#C~BQ>\.&9B<q{i&`pN<|R`*[0XD^==*t}dOCX-GP-=SETHj_bl^|c,_h=wbN]fhxb,=78\$[5={\z-w)`,62fp\~z}<n_4@
::AUB5mWN+2eZA3v_p1N[@APDBQ4X?B2yS/c#LFSp=7dh@T8y-;RQO#N9s#KjxFh=\E*p@3GrWGY.2H({+}&=)s|y]hc(?[$1`~(0\q(koW[oV/(Q[>v;4v+=td5),D@(7_4
::;+#[\8AGr%~W&e?8KDqT}A;h-bD{/OO4Vv&#vh@40arRFZ;dhhYJ,3B\?%\Pb{rUZ6)n(!\d21-2#3K);aK=~kF#*ZpPs2paof`\^MT07^Islm`omYk5Mce$3tw`^f;O_D
::htByWk?)*1]2a;U~W~SxQ%vBIs+Uer;Lfaj0VQ^Cf=8<z;WnmU40cVtzK%$>wfMZCgeI1aHxOam%dWi{o{C;2|}oh}%XG)EhCWpa+68A3/N013{qU{~aWLUiZ9sGP-Qvhx
::hB!Os2k>d5^Bm7g?ctrl\u;sP5A5?<S35d.E/q^EM+CBEoRa.6Nx<0#g#16[?cQ^]k9x_gl]aDUvA\<;)(MM@<UOt2vMYaujKh/\\>YJl+^)d$4>FRt|;4}}T<P=p`\4hA
::#cI(wAun<1~0E&3S64MMe3!\]9FNDc!PFehZi2$v>we4`~TmFa}YZQ+w-tZb},~yg)7,mnId5^l?l0x<Fy=Pk%X;`{pDK1LJ[8nO!E/cLoBmp;kKITsW?PGg7)Z$i,igvl
::s68vG5<dw|H87N-k0ngeTU_X2pL_)&iv1GvR@\f6x?aS4M,EC)16)0,8]SD!5K.*d\;6L#-2pQT}H==O/T?9q($qqT*!_Av(0C_8?$2-yC=gjN~iH)In0AIV2u6=M$r=YS
::s8O}(nIPkN//,!4yeQG,[oJr&f}`Vo%%(H>fd#fRMc$6l|NWdQz|9cY`J@fSH@7}|u`o~hjn|27*%h@9z9^1YAL=6N|>s4AEO#^T7qChXi4,RnZ*n&Cu+gt?/LYSBLuS5^
::A;Y9k6%7^79[\lEvH]fY,,Y655~.)dfYn_Af_^mi\~E0a}-=;Mic8o$?}Nu{4qA;~(F=5zS0<_V5IoyBox)!}<F+;qZr^M>BGu/S>L4lP}JH(5e)}Dhcbk.>!7_wd[\!YY
::0|t;8{Zl{^(G[{5.<48eDTgT4&9bJ1fdD6(?qlbR}*.%TJ2|vz4mxS=aXyy)eQR,pv.>W92G8(F6jbl1!7(WbOz~oGVO/8](a!VGq/L_w0Y9s$m+sCD*84TCd`5=Q&kC7Q
::D5I]K`RB$n!?IOxP;=lw3Gi|8<B\rXN1w`7(g!;zpoatrMzr%lV;L6;~,|w45^CdP_;4Fi?ac48W\gjysI;EgsF2I6]og5?cIx025_Z_6?C0r3d1[vQ(\a|/d#6Gi=P+sb
::Xn@dK]}Nx8>HVE.m^)klT728=As9f2CZNv7PgeefGY1lmi,$|.`\Z|(^uWGlK#lZ,)H}y8z=L_LX1\`]FP%}Youdnv;S,4hW*%B!=?EM&<wX0~bxJ$6#2$;#o)g&l>q~cU
::BM_1*`wym1-=;boF+nA]lXFZYL<jkM+bT*esZGnkH<&2CN>CTgj\195VY|JjEZ<ti2MxL58lW+l\O2gUyeZB_>n$fdCeN(kHt/0!t7Y;`x3pD}_I$?,]>tc=lOGLrB)f?;
::l9B<g&+oL/x!FMkE$8\\J1FsYdYMd{`al2/~%D&-pR6H!R_{zMR%8V[GJN=~D,|?tyY]HaBmnd-DY0u;ii||mS5fMs`iT+6m4{l76+Nn08e_@Y#^6UnFn[|EY1@&gGzD;p
::E!%]+6q@ljAs{{]VJ8VN3(?\v_Bp;+4A6EvfxC(XTE@I?9jWC-CUMqX\3XJqjHHj^q8U<!o<3@PI-lo^`I;b`H8?6vr9wPD\k9tBh\pE>096FPyoVmZ|5Ks%.n|,d]X=(G
::)s|ywDUJWXuGx8lyD|pW{F[p`,JP-3GCTXlkiYWnyJyT6K\XvGMVw|[d6D\~Zowgm)+g.#Cz+A|5E8<7Ry5-$!U%i!4ob1f*|x`-fo/(6veF`[\G!51ry4n!sBO/Nv}}C)
::7YZq$cq=k0@4_jV$Du>B#2+zV<7A=~4@er=M|Hy+Pi5MI$LJ!S5a\_JZ]|E|w;o3U\8|K$AfiFcdlA~P)iy0$6]ywZZ]8]IWYZb7[-\j7/@3/P/&^>COqELTwBRXT)|oJt
::4Y[@1@%UX/vsp_q06yogOicHhp{[Eoa`6NR*2|Z(Mvyr|gX#,>en--V,N<Q88myGx<OpD-t!O@#(>vQ{/grC};3Wge91QnBbW*KSyfQeX0[JM)s_~`D#R7?$1hGOqPHw*H
::%/rL7F#y#4#r^~/yNj!#QDc}#O,>_#p2KZN|.}fYG`~[~f#i>TG}]SB7/&OmDh]W<n[=.L#fZ46aCCeg6X27lK1!!,V7{{r6Ga4q4v\H?F/7Q}dZI1<RU)192\FckyS/Cb
::uA>PS_(,BEg__,L>EWW)=BSW~p@!cmHNA;shI6,)g]H|F)6_PDT+g68Nt~C1%{D~e@^.&+kI$jm*i2B?=o-t,70*LbyZvA+2!dRqKMFHFOZZ;}=mJ<R<\YYE^.4{1oOH,w
::C-=Eef$j?XCxG6pF!^joz`1Y1<rA&#b<*]oN3@1X\4<&le5Y\)H;}!&5O<BlitT!~t9O{5BP8i4(I~ZJ6mw&H<+v9jNO#kVYY&st>E^3LX\5*yR|c(Hw/A|#9D1Thj}Qxn
::*maQv+1[zCkx?d6Fdp*72UTg</0+`8<pS45g9u4r1cg$vbglFk2Sz^j\Cwjq32pi/D2z(if|%Y{[OiH$p]],j+_Z#;+A-`e(Cu&\/UnVN{Y|27\2W+[gSON5?\^2n&`Oe+
::q4aXXOys4a42?%`-BC}tsL;Me=u[[rrA,X-;-#G9es;Ph]QMU4?h_=YeS4Y*RY0KZwQ>8KqA)=FFjA<K^,\}?L%DE`C]vQb}6}{N/35]F.xGGT`vD!#I0ajWCXe(Aa<lJF
::xbSV5v08Dyd1W)ac<\+n`1|=,ul!M*Mc`dXk#De1$pN<U58A]))}7BP~s&n0xW;)RUYkNo]f_BPg1tP8RdFufB[xn!RxdQ]`?[r4EtRUGG?p;uHe(qx04wz$,>J2?`W0g+
::|*tOkm0s9NKrkYbVr@Tt?I]VM?._\SK7X`*.XP(iP!(~NOt6UPJ<v!RpiF053S+($OC\b^;FZdy5Sq=],vadeyU{LRJ>CbULA-HJu|{j1mW2kw0/5UA-KQ{mr}D?s@?yeD
::O`Y/r#8XX)+F177`8eWo\Au#3z.3f3(XG*\{K<~s*Xe<UE,2M&9lK~]uL\wOLBrNB*;P*V)lw$5&.x^(1W`!x.q}6f1sZYMC@Ma(tS2bN%_?vt`8}x;g12>DXn4u=`uv8&
::>h%vE{7bFk_[>9T=@C,A`9sK@U?(3aFzgJ,]E<66+8OyNz-bTtVxL|jSMUO2][-[.BX}!76b4rfu?q)pDOl7Dw=jGR@6a!<1NE0|t$%sBmY(mwxtc)g6RKA}dBOuyG+jO~
::deiP}(8YZF6ZP|B5z`]_hj*&-W51PURYd{E*F!&3BxO#Zr3<)uW$j!^+;6&EJOjOeF^\5)|MMIdLl%6]9Em9%hK\}.[!{m%JT]VGDrs%c!2k>02E/I0MH<>/0f{1.LG56+
::s|<p~52TM}g|2n[5]_>^V9}vy[d4[kSHkxj^n9}ip#g;N5qD@\!=9X};g;%xvp26n\bf<<-h<#kO84&cc8yAxydh4C-OTey!\;Q`Zm1bu5^J[__|Uajo)77$iwr$bx~WHT
::fEI{Um}VLg)<@GJcnXLJAiOzUi]1e#5#n1#=H><4yM7~dVcBr{DQkmg,ZQ#=x?])Hi8M5XOR|AGq8ATw<a[J!zlo!?2\8V@?T4PoC4oS4YPYTEO6zJo|{nBtY#Tb9kH#96
::RLp]Kc\CEA=Mi0c8j\3\.yhY6RQ16i})V-F{2T`@]*G[zbOJK)2CY&3dGSD$hP>`ZZ]r}.($i~-=cFRVl0_[B%S3tc,oY]$El/BzsM=-|/]p;n[NfYoG5=Toyq#Bf\!P@k
::WR#~=ed8@]e7(y=q,f*XQ&^WL;,P@?K@$K!DV^!1|hT(B]^,]{/8MI]p@2_7r2L\_(l=UiWRXNM_1`HW);j?-2/Bg`oBMc2>H^IR$io9C0.aw@jNjq!%)E#jlPtZdr-N_%
::T~ewXN}Pp3~dFFR,)Vd!-lk(FWRA,(>L*h)gc~GaqVJYv_eJ^yix*|at,vGsm>38-^1,jVV7F0lL6CJ5^t(xitiZa1/,;DrWaTCEqt2biJl0~a*O6VkVv+yPj(xQaU?^SS
::a/y55><}M3/GVFE+<y}7>rHagaqK0-X*AX]X]IhxHw&Vj9eh%PzP<q?,FW&<a(K^peVM^!LqTu]r%S}Bv+kFIMRA+~FMtcC;$Qn!~.*#/ym@5,Ns1k~}{qO;BP6I*4)5IK
::Y]fGV(DI=nlS1yHL*3#h_BM\Ep*Dc!$UUH)Oafl!RJPJ6yZDL3s}IMKSDoJ@7Sv%2V#XiXrMq2;<Z))Ta{a2Lp1if)HuqRySy`w@/pj3$UT{PSYBYIbLg#a/{V%TLOKPLS
::eVE|iS>4_p!\Fo#j`j{)D)gHk]hVXnXv*x_-!GHco!99y(!eXie]4c@DSFU2[lgfC_x+H*n4XR0v]>.npc!gH1f+q$|>I=4}+obkvfK&}kSHh3E^8k!evJgNwW_I?|qssE
::|8r^]<A]m-EZ4AWN>uv?=NZe`5u4[.syY1+w;_j&[e3P?X7Nk]`N1(!^OlAfGpBSFbt{-}W`$_$spm$K#zQ47;y0!NKO@(1/KV+q^y~cyJVXK=lc#r>qrc,Ul|Ap~`^2S;
::UH{`+p#%fcG[&S-y&d=9*YT?/WRE>HH2loYqwbKT._Pptw&,hXeGev[9MR7TpvP1b9Q4[2\mioJj>^8RSb}?mmUr{4k4xtLf?dz6d`+[[HV,>ZK=FkG7Uk{qy/b`)8r75,
::R][@Fn54A#{OX7n!~mBuDJq$j4&Zh&<2pz0i[up8R5Vns[,?I9$D<yXw_yieXC|R5R*iT<;V@6ljtMdAW6297.hc6P4<vD^^D$)i5*Z}^BD)cJf[RzOlco,[])$Y3#`&2<
::YC@sZZRzg(rIJ?0jZN2#ch5{Uf!&c_QQMLL2EOcA!anX?9*{0!_q+!2yUdf<8Z}lpZq\csW;75K{;`[xUIVG8m6ILCF<,nm[@oCTr\>Ng4uv7V8iQMfu$SL7{rU#-W,Oy%
::S(W=yHU`-gGoB7F~Cjt{7ujK=q)_12h4JLEN=ti<N[6Tq2wRuhCcx[,8Vu+^lv*;Wb]90[pymAg&NB`S~gr3!4I,}1Ki]QzS?h_`9r$yww9YMQkZN9Q11nZ`}kN11(Y9YS
::Lh1mqKN%_I!U|LY%4])S[j|a{wgwvBfCHUT`G*JU0gUv]OO,+t(KGh^Z/r8`%Oj!@H9FC=J9JPu8_}gQ3#B8#NZ5Jprf370p_fmXB9^T1L0\#.QJllXF#!4Kn-M82oom<y
::GfM[]))[oV`8$K#Ut\{!pxo4Eb(;%)[86x#Y~pH*^ow84@z!7ofluXxmuqDI)L!y\Wb9ex9foDD?QU-risvUjJZsi~N*^<$Np0abXNfFS>bN0\.P/X<yHL#\EOt&.dv%7P
::\1z*\QQddGuz@/.H*C\0^SLx46*TQ]/5QW6aYYG^@ZZ.K9@H]d]!?.[Z_XD&0H<x;aCO&;J9;TB7f2@p9C.K]=BD.&dTNfK[yR5@Ar5ku3[<FXdAa@irqZQI|ie4I4F]b[
::<).y{B,oI;pR{IvCG^y|I8T`&c3%jnPBw8)czn)vHWMyYX9M{9!;k928*BI=If{}6bcDnRb+B?/htkf)yvm1N+v,c[?AEPnC`8o^UE)|}ODyW.NW`p{n&FNW*g49==,j.H
::+oOpq-FcxBu55{faGj[pXO8uV;^%M>G.VJiyB`*9}(N?+t@6k*`uXnREw-a!i}b.k5Y;_\lRmOv}Zvtx&\JGVRZH/*{j;SRYyF!4#aG+k|<AX$8jz~+$CBNRy0PY,/{%Xp
::e<W`xZyNXj[`nWCaZG\FbU,D^\G]UP5?YGY6-Pxv0*H8KUIx20[lg@9@%]TiK%f}.Wm*@?m5]oV1AN3?Fa>Da(wTcyJFV4<QSckI9,.p9KE47QY6+^F@h[,0>x\T4/NPk}
::!7WFI8AKFvvzFpuUj#NFbDNTXb.|$}k4smMxR@c?KaB)&atyDt`@@P2L,46=4h>DMom2\uVMEtX*Rc=WS;Ylw)\|+]D5tgte@Jxc{C,WTIT}o(HkwHUM>S.KKt!~Apf4lb
::Q4`\vHMwj^C$ZCunYeHV\V?oL1A*MK+=*vH9L^<Zn0J\6QlyY#f7]^tUw3f5CMyfev@]rk\)x5k0/xn%A?2xK>icZi!d[8e93qJ1o0mZ~7gQK}`<@EC_g/B(]-Ra#8$QdI
::oA5]8xB6]D&a@wT6;#B2Wp`oxNHI;GU{H5l_uOw8wS(blgmyM.gPGmY@3}+92kJ_<V/oU0QQvH.#vT{!jKGGHwsa~ZLXV<@//oyEDlNgsI^?8X14\)kfvBI[@1FsVFp6(0
::p18rV^,4a\0^,DAMcx,uX;D,LID,UH=L[<D8E7zY?t%bqz}%GJ<SC,P48U{%Qe34c/qsLz4MV?Skj`X5@rjj@4jU}C}t{m]m;=q.5!Q^(Z@6-#[pjyreTgjYck(lVQk{`w
::}zzRYDV!az_Hj<NB<j&bgy4_D6tj>#\&D%DKw<.s%=v2lx_&2_/(X\-/`6qAsfXMHc,$4KmoRH<sDZm2K,KbMPNLi{4R(SWlYI`H/|a`*nmsg,8%R@7kX?6*Hw4pwZ8SRf
::U^P/{sGlVru$ZfqA-h$JdJK/DytiH7gk;wp;DJ(yb,I*Ud;zdM|tPYX;`SlWASkG3gT=U#z(I\BcnV_mK5zQ3^~NMM2]^#Xh0&AJOmXJ`p-ZZHgT[$Qqn%faE;[;KeL!bN
::7)Cq0D_PLZuvV[2A`tD9dLgJz4W[7\j@NYu_rN;sBq}*|5Lk&\zr`|BGw&&3dHf(fDe+|p?r\CBtE2zjCx*%0y^n3\(I!,-sOSMd-1Hj[z,|#G![Lnv/~z</AwU#[&R*oX
::t\2c-#Doe^f\$GEz~+5LXY^t$M~}bGn@8h>oJ^*YN.f5n2^m]3Y&A}4(9T[ruvv3/Y7$/@8Nw!%}Wp]~eq9j<~5=I$(XdZfY9J[~/T6!3\M0YaKER`C^M6\iS$h^Y{H%fn
::{Bgh[Imn+`xSg{,gqzd&Kg;Gj`3\7~T$W4BXpTZ&c9Cww$3\Jl#w.-M~foyz$62|brh@B\aF)I?d}xhu^n9U2/1N{W~H=rJn~3wNnaf!N%\nH=YV`h$u@0rS.B@&8&tHn0
::35Kw@;SgPeWJ;s[RW#C<MGI9yCty&P%cw+tXgh=`f0D%,jsyy7isl\+fdtK5bMZ7#&6x^Y(xd[UcWk7W+(b&AGp^IWsG2P@IHZo9akaN@lHidN=mq`-=<NXi<#*k<Lu>SS
::s(zyztSB{FvzE0UOtxqUnIT.S_p)0-cwbNHU,(sJIynPs!5^GQ)3%_.`gY!4]5iZPfKHPl?y5VAEqS^+<S\fqB&0$faa;HI/;2PV7Vli^]1wzW-DhsvnOuKNBV@hDR*j%|
::1f{;rB{H9}z]uwps&%|(KLb46l_KAu5(q/jm;4d$=F2t~{Y=#||M6-[qs`t9>acXp^lKgYHg4;?lgS5QxZ{6`$hu}Q$7s{m,nI!Rro9}X<+8|tjajKp5H_>Z[_i(k3B2w0
::[-!\eQD!cddZB\AB/7JKQY^mi1q%c}L^;gH8&(B)La>^(_*1^BHH?pqX,f,.mov0#Vm7/>4$fy~G>s6i[\IE(/FW;{#Yyb/xp/{qu)nf>oQcZ2*+7Wc8sdypP\N5Hv;Lj^
::Gy&Q\im=.SHRVOv\_]s)~f53=]8vre%4u(JmR<8p$A<#|2^2d#B~=40bvZ>5Mc,$I,P~WqkpfUeq}23=EfC~51Ss1}}tJC!{m5gv~V;hld`=j&rkr{h-3Xf|hJzs+Y{qoQ
::6Q$J!Wj.njcY_><.[+vogb8K_o7nn)@R(_~%0_3E*2SRK9~+*[OB8R8?#y.(<l$$&b6/Z9z$-NQ$1TslBN,c}a_=c*l~eb]YD5zVyWsP522Hh<$I!+ND2<^/4K!R>b7c9B
::(?ly\)GKa=cH|w!s=#bVj]va3pMju|fXYqFnp+vTZ9h54`k]^XV--G#3YhLw0H\N]=cJ,+ht+?#!;ySNeKN3YgHc^)#Rx$~OtQ[QLn3BxgZ~}>_7u5c49R8g,CH34{)uMw
::ohLA#5AVMXu@Ia}}t.9kbByx+Dc9+[4_%0vwY6xDQ*`S{8?+qOMb(G*.u4.!Y9a~hy.$MHVsE4x#c&yAV?^nwP\[~11gRmW*W(8x-.eAq]{E{y%Znq4q*3-Jn[D3ozao/g
::X3t5J)tQ)(*?.EJPCKRT>LR`$p1Vr(5[pG4+jZXxiHeH~_0{g!CGhLO-hC+9PqSUfx~UJ2Z;Bn/GTlJu5iK%U$wp4NF&SU(>`oHemk@8CGgvdf4\mvSK$QNKX(KVNos8.!
::X%04``T%A;!6O)ix<X0\Z|o(oUL!?8#;VVYk@LUiIH1{0};[`^G^Gtj@X4H_)$/W%>HpKdjn5DQpKi=BwHmz<]<Bfj@T8A/k>G6P_r^$<G~<L&iLV>cfFbml>PR5lZmweA
::8K[s7nK.V/]zy6c2,Yqo#?lcPmfDZY1C~;+,DtXA~NbfEgz-aZc1s$Zsl>eW>I-*dAU4){zfa=557ZvnRwQW7i7*iKJ/4?T}87HUquJY;#^CXGce?>q\;>PsyVh3;&VI>p
::wHSJ*(@\|OQ!z~6{HxsvVD!CBrVpw~O/kdZrgFUcgZun]=a`Vy8;=Ql[x-~c+Pp^YY(jARmG~%bJQO@T[vz#@!a;%v83%I]QUN@MJn&vC7xW.8Ir>oKw0eUh5k9s%=sPiD
::88bkbe6`TyrV8Y-J@4DTf5~^{xg\yEzPPD0RRZFYaD>*o[88oWp{\Fa*%U-90)}b1tQvM_+{=q36>Qqc*np~gNbzbOd85Sy|tWcPv.[rQJ5%tp9svq?y;\0Z-^KJTijW.o
::NxAj4_1H@JACs<C$N|jh%iapH&}NeJjR\1dii_QUQ{J]n#7|+dSs&>9L[bhM-%*=^QkUBe|i;0$_z=W@*u<z5L[<de>Y|h!PhE#|r}Kj^?H2y&D255EGHr4YFq]M`aaiW@
::sl,QH[0a&&q%E$!d-f>8ef5xf*y=$uD)9Tc/U(?9X8HM#_a!gm_L#dV<BTr!?#/=X9_YbY;)m]/Nw2*_1oxMSV]W*&sM?p#`L%V%0d/EG7i{1$|?hM|$,my|p06I-H00V^
::\`&-]H_)^EXC[|(|/iT#oYukEx;6vz>!TOYmT45e[e5H%$m6?7-*.unr/,pF4?~0Cu6E3li%I#G%pRu@/l\`~W_q>nIsi,p32]C`Vo49jp+8+<Ll)|SS1a3kZM|s_2GFn(
::}T/a=\3n,;b3j~R7nK|=]oO60eB[uO65=HtaO`Q4+B!+l+_{9zZIWi=(,$Im$9rptceN,qb/)>oc`Zr3?w,z?&&pL}bdswzztVUu`uP-Gr,Q$&6]Qbb+#^QeUcV(dR{yya
::kNzO&R+^Dl*xi[/}lnX50kQv!wp\|swuJAZ<UF+>6]s#a!#[N9IB%~|*oywPi]-B;H~_[P~W0hsszn<[b0FUz_B8Qg04[O^Q$(%<dy`_DK3su?sUlzuo/V^RWh//Ma~wn\
::)!3]1&r\Sh${nQX`/BR1bP-zJ4CrdDX2`3^LRk7SJjw>hbW}n-=z<X<-r{WS_#%sFA|~xmqwak9Ck>K#JX-T0$+UUF,5+4>>mkeJ?T!znejV)g;eC4V#Q22Evd=G+IjT0U
::wR{$|0pVe]W__v>%Qnfox(FX(SenVs,>(DtzlyqVEjLrG9Nrs5-fAV/q~2;!BC`i95\M]_.C%k01@7>$RAkF2oS,aD}<tX%%Ks!hf+^B.v1t|~>o`vLKqp6Q$arowqP)cl
::jI]$C},cc+=h`3XJWH-,<I,j)ZMT7QYC$L]%iL}4EDD\_}_ufd|QuwJ7JY$aRK(vasrv@i{q~iOu)zG`)r*Bu;B&snuXj8VUn]i(E(4IFXgfj~\tq&8*Irs.lw5xht[0kk
::Zx;glJ%l21AEoO%_X8iuV6E*_ZMXtu)w_ZI/U.F<n21F~oXA=O-s`7osT2}yfAp@>q42GWj/#5R&TF/BR;(Pdxh])~rlb%Ac7Q(;zB$Yj.GtVYvl$9k`TSovMfl28nT$b?
::#T3M>4\p*ZVaabyE?|zD-^B}>au]PJTSzi+8N&yAbdV9C^*vd-95#\BtdQr7]65aAxdWh9#%\0v47xr*o18dCbRZH7Esh_Y,dS&Oyazi5&NV4MVYo+OJ%3K6.YK1aSC\[u
::m8u\7EZ}2LO8Se4P5h[!Z#e\+`aG~$,uWz4zxzMh7mo#-&,oG+7ajo}$evOo~$^PW7GBX9CYlJx=w<GumM[drE?!%1F_y$w(]<nb@mZe4}P45W_MZ@;mazaAic#ttzX(P_
::{OlsmT}M=23B;n&A2GL</G]=\hLX.}i@}/IFch`dTR@r~!b2w]~C)VwoZ[}-`yERbFo;Hop@P5]#RVqZ%/$SY#Np}XjK=BSU>~QPL\7ae3Pb,Psy)#$D_spO`G<T%rwvUs
::.*^SfN28&]qed5zls95V]S0M`wAPMFx(8Or3}O<?%W$&R)$ZC}{$z9cfkma76=$a\csFt>T!|ZUut-L7?J41Cc.`G1I=;F)YP@OAS/rIf7FRj/`ETixtF{JJu!0y!OrE=>
::IX>NSL-^cj2n@>%rk7I^qC!&5BV|[Th(ymnf(ZB`)*b|vhT6t%6C!#6<C;&n>9O@Z{lvr|Xo&Rw%MKLPSA~_FidC{WHinfRiEvfTa$VG(/{,^#^A/J_f$\J}(m#;/b8/l;
::bFjNi<q2ozGr@9F1rm{N>]pjD}\^p;AO(&&aF2W*d;pRaq]7C#Cjh%j<7n5<Uix@n)gscW{W(o>E_;c9Bv|!;LXU7?l)lPM#HkEf]p<(*iBI)Rb7zcPxwZio/-[MAVg68a
::m~AP>q0dEp1bI8Hy&ck|7aym&UZYCfCTHU9n/tfA\mE1`jGa16`kPTN)H=^F@]Mr,Y3RO)tMXQ)4knk#u;X<2+[^Ga,$[IUq^-mkK`/N$G1[^+A]blw0R6F>Q*qDQ45t3f
::9?xv#eF|u&fK(@maphj2jH^L.l/ud~m^!NNt-A4FCydpaM`Nv3xNnQNn]D8Zxu)LPRydH1G0u$S~x$s3Ty`3~2W`-mX>N$PkxKv!MsZTln#BcF&i)En\9K~n%kIJ%GS*p7
::Wz|7B9]50w5q&FK``!_Qq`ZjA`xdHEQ</9OB%UYqSeY!@j]hdp+d1;9F=/<ZV{#7%B*xni%P`Y=CX;6|zM4rP]{#tY$6?Hc_X{hJ+VqJC+<=HytY_RAJA~@_WZ=2NpAR=<
::_p?&PQmm8JkJFbg6hNeW}fQ6Ft/5qm!pr1-pmQi^m`2m$W5n7vFmZa|?)N5*z>>&nMwiNOu^gyR<Bsl^^v\t/vo(xF8,7f,[cYdl7Fn_|Pd)FIwycfTb{D-xGbX^>q=?5C
::8ZKw5kEWcs|)1IrzU~OdJ\n-|)o1|8dn=`-gSCROghHUcWZc~}wZ(X>&+^P9qRH,]V$y!W;v_`UvtR]a9^BbRjQddfXpw^_UMn/[x|~9P=@hD.W_V_8vIrL+;6K#PJ*lyo
::GTw+JxcqwXTGqeP*[*n0=-zTxt}emJ;2_L2oms,t3`Tc-x#-hkct#OHP|r,J{,IU`q/!gl-#1b/h$bq}w#)k6vQVtWRYYc!V)]dhHWQ=(4xzRlrhIvDw^T-\26jAzR~RPy
::j2mGskV`~9l`l@uHB\>30WXz4bf97i~vL~i$P\YVecw^qqO7,dh~;q+iCipn+HXgCY.jG}fa%n&jr69Oz;T}YH0Po\Pu#zO-o#0&al!0IHnhw$H?])5N<EYIq\D2m*bh5J
::aqCP9o/[M53]v3Tz\Q4&n$-PpMKMSuL3>*2z[P#7}P9]QZv,`irK?XxN^~a0,BS[v0m<Eqxo3OUp@F$mXvS6z{!0NNuEBr!v5tp0SL!pca($cweAq!$QauMq{AEyGPI2PD
::2i~Sb%]5>M&VssG]REsU~nYPXB!Tyy]&Rj+nK<BBKkMD|VPi)zruty;bk^}|NM#=MM(qms})1RtrAY\g^Z9GT&M2&K-~vX\^ZJFk757zL8Lx28+Bp%&(Vu~jg8a_Jzz`<5
::-l{;M{Z@0lj<>f`\{DqRi++oXxM{qhS(hS;vKz)/#Bt%z*Q--&Q)uw.f3RtN*hseTbZL>c5}6\x`-Bq(&kd5*O3eL?1*[ViKY-M~`3r<Udx2P#|J%%8oef3^-tM4fR+7`&
::dgcxzN<Ow!o*xVr_u<+gky);3cI`LWgXtcY5_JQl7{mOA*im}xbTzkXam9G0~A2UY,o,_GpHKsm#CnOf1I-}P?)C>LCjl];a6D3#*,!?,Xf<lLS@|V]{15>VA*@7Wf?KTs
::wR`lX5\Ta{#-/cYqdWWb!]Nk684?4fWhL!9A,G=TbgrPKb]KP]e\LJHs&I[NN#cP`cge~zjKSCoVX7pjdw+NhH3,BiTAjXr_fn[>g-$kmc2`9qAL1!`\PRSS){t?E6U5&|
::ZZo)R\R~y5D;[v!U;_6wB#/&)D#pXQ\3&L]fT1^Zk#Mwp6~w(24~+g|f0.(+5Q!(.8i2bppCtZy6l/nnk$64fNFJ>,x/zXq-uHSEP~xEP[^!slMs4w>lUbT[=N3Zl9?=>8
::QiFD(@o]fs4T+?uj2in!XDPIG6ybK)8#Le|GU%i_|.,aH~&1+^29/~mv4Oe8C5,cwyucPJd[wPLL}<#Bk%rytiWn>|#,]JW?S#<)$%g]p2\JU6ZljATtKO]qU|Tqv]*Buo
::3$Nh03Wrb4pJ(g}eJs(eFD+,2W5|#k2v!WKpZ?<UHI[HFV.qmX8pF9g%@@\w(66HCB{5?,$V&p0Kr9eew_tPy}u\_A#$;.#J(z(cF;7GVi?6B_yOxe6L1Yd&9X<y\F2t-/
::vpZptNZV>JSyrtm#M9o+Or]ecxa5E#}2o9|,pLuow@MlZ/rF5L9TQ96j~XQq!*(]l~49`j?8-4V%[I\9&Fc]9BkR7U>X?(uWfYgYlKkm%mY|LK7~v~^X)u/f9e3SBR7S[A
::tCJxtgQ5XuY^_VSvhcR0QUo@Iag}T.AIW`C~oiVNiE[ywY6yjVQ8v4&+c-P~hO15dfXJ<2li,GRNgzk,JL;}WGb9q}qo}Z{n43t*+#NKEw\_`)BK.n&`BUH`j;s3sNtQiO
::!Bc=%wtbJLN<.E9\@kf4jY]J}#[Wcwb=%VJl&<Oo`wLi;PXt]a4yWR80jLC6azwuo#U~On!u<ur$Bk5_@&xAoPyq3fn~PcS]Kax[{6(*$#2aBM[z@[}%Y?Y[kL)BXjd||f
::`$h&|k7lvtxM;|/uK_E#=&vR&+fQfG-NKo{-VV*qmVDfs`}lljS_Sr~?@4z1f|,qk*I2^2}ncy}N;hjtOfxKXz8Tn9v*hEXqsb.g*^T;?o0ABD|2`x%q.!5#]Z!h+vigq1
::26b>Hzt=8!AzJa^.^?Fi;m7?}wk5$yB&P9yB/Yhf2ViP/xAdr(/+!gv\yRP52dN6?9o~*bi&XUzVCZNfQ=.SI&T$U[B2wSNZ}mHNd&9(]pV4^A+hmG;%GP<nKwe8]Arz?>
::)aZV5+Q.2&ZR<_hn9B=6V9pRh{!B93Miufu0)1*5Lj&GFwHaWOW(P};17tXXUkmw=ogz\]Sk0rMpvGU6L*S$HNbtoz0a6B(Yr}]}qA&$.yKM$9Rmk@[dswQ](MthM^~I2%
::m~e1]jP^AJGTl9^-kH3h1Au~Kl49$UU1s?77%PsyC^LLYrSM|UZ!Z=1\4T)dn{73l1.eFH09A0[7BVGLB~{@c~P_/}$P7!9/jyX\VBi1c&uKg7T_RHo)@NvY#rvP&tL^&+
::9l0<*nqdbhD7HZBt}^!awD&,Y/X1>JX=/qSRF$74z)Xe_jL#~c!)a#!Os_u49{)Y6NKeR8L}O/O~YCGj_#n0|EAhF$AHn]bZS1)hOg%(\b6w&1=&jVE=@P!`HI7nCGD]nt
::nV]Q*C.lxX|3V^%XXUtemm|CQ%{OJ^7,R(g7P+JnF9|BIubqCt^HO819^/6Wd7ee*39m`q)^up2Zmyc4j0}I[|V/}tdkz3U~A2*FJ&!1,Jxg5CLj@Z@G=Z[X9\jC7@TU+}
::H~u;Cy8k//vUl/H5K%{DQcj)s3[Z2+mi\B@W8N{}U~#|3?sY!;U[&2Bt2G]ThtR~$$1Dl7W/>Wy=;X.9/6kYqp|*ZF4a&i1wsCWLQM@S.FByvmeF$SHO^}Y%K[;NEuIX(.
::b3`B2EW}o5QK@PdH~7jnjYQn2aS?jyCwRn&AL4ZtC]E02;Hv?~2v;Q;{f>7K*OlVK`_G@0Ghe4PxBCX9?63tDPD88L6trttokGeTd9qJzR.eh<5sW5FZIp]%4o(6Sm>VQ,
::-hns<2=eK`zmfk|`}/b]c.9s7VwS|=K92r2*||uJO6f|d&Wr+@7z0Ql_HGBqHCxd\9m?;yx?-YJhhnO*uRPnLlGU+damYBLFUV>hg;v]I6b~$DxV[tS_DGf*eP$~~Pq,gx
::~u[U*H@}Hs]t7p]<dqq,;e6B1$@_sM!f>iMr,Lr;F@CLs@b&Y2iM,bz{<)Bj.pS3C`|ZWlkw(/%7\$_mS@CAITTpCQ!<0}a~FF7A0q#5)8OYdKmFu9dpm,^;yUR@_J!#]P
::rXQiH9Rn%Ax6z.s{82VA=yNp(x5.$~}WE8m4Xx0`DU;g\/#]~B@K2&BK(xAooZ_AF0l5rOCqBY],CU[NkiP^)M3;]KJDiTfh!c(Y)IPHx4_^pbrz7kiXKJ3W=K7+%ggDy+
::e/Nv-=}b=uA=T9=k^G2T3tHbfV\\4EtF,yc/vhH;2K=WVaZ4S&|F]tLI[`N$/_Nk\1vEE`gYuh3EGn3kQ/aF7E;wky/zK6QJM8h+5$F(la=<<&WN*X~1IV@>7eCRBJ=YP<
::Ab^)%*^6wl$S7xj8(%L&ei`)rC6S8#W#1i6=csMU*IBHnu9K3yy6o23u`Y\BW#4MnXO}=js#?,>[AJa6%$9uB35z=o6&e,<qpT@uRxLqpY9!V;p-~b*5Vow]9i;jg-!4DY
::k->7/TpFd`YY.v5Q$B$,po&l/g//Iy~huP=[$/GB7sg{^1teS]!>._xK[TNFs@/]`kTq@m6Ms[b*!{01|*tR1Et=|^P^b~+3QC\XT8zL]IfWvB58(NnoqP^3|CEbYv3#Ek
::%Dbv=*_7jmB*=7}gk[MXs{zF070\92e#p5Xt4I-1d.8?gdMf]NrQW[C8/.2.D^@V4(G#4Q&OArfs/+#&uK)_!0Q~(nX}M-sQGKS5AGH+vamu0bvp_tWq8uz^dGWCbWyOdC
::W(p6jZxc^;j}=YL-8#EA<Z)pc@\/gy^r/`l5&e,PXN4P}Ue;76PNB4m~f\AvPb)Kq`=H+i>4fS3^_Nl2#^$JuF4Cttqyb5@L|PL<b!xzb>b@e-$!|q@1\}#lXjeh>W~+t?
::MNVL#%9kURgQ&K-|Ys(;W,~CirAYD^olcl}OZB#rx/1S9=n~n.3v%sH]MV|G=<B|n\~m]ZR(Nm}4o`RL.9nv&([PE>B75+Ff%bb3Hat,{C>1Iu;ML8)oxRCQSh|uy}Caoh
::!T[kWjBu,>>NXt=RRg)G4q[D{Mht%|lBk.Aa2=o`Q}l>L{.]hjX@d5jG>p[)aIZGS=ETxfUPVK&$6xHa-wrPy7cr*!\9tmm@17yE0PW939N%6\tQ__89Y8R*bpf3\8?TgL
::I/]S_vZ4)(XDSS+B?TUPP5Q6`<QuuXlvnq3$Dpd?XMy-GqLF$miF(;H}dj3E,q6%OZ@(t6&hdSI5>F{+@-grNPvIGer]LEKE3IE@uQg95b*hOb\/Q0DvTro&kt4HOC=xX_
::rYc6yHt|>|(72n(IfhDxR0,6|pGyTII)aiItH=&;[Y~z>~@WcqI^$f1_~2qk]F+;,KvmV+d2\*jHMjwRx\L-6u%7hJ1`-_s;o%5RrJO_dk6-TKJGyk4.`%5@,EUkWOQ&L!
::>%.Gb<D7?yWw.%2q!mP9*m9n<P$^}Tj<cFEc-h}%XED\`X71b!Em6};FlQ+x_^lgH`]P<s`p~4%7uD9VS$1%;bk~cs|`RYB=l2Z*34m4*w;@f<B4e/nhSYXu@{1EvCF#yh
::f;m*C?4a`w+&\=t/mZ&&x~2wnHkK\=E)rnBNtcDh[xPoTIO_*=#!9P{B_?2n@`iv<Bsbz}R5%Xb\9~HhXrRG`@4!QdUZBLj_(C/<8wZtsd-(o}tL\hZ!b]jqY32d@k4)oG
::2^{ND~T6_;$u.A.a^2oHk~ST@5$90e?I27>$u%F%P89o>d_eCLKW?D4h;syuXIFL#guRym_8/2D5HA]=>&_+YR+Q$Tj*Vm={I^VvP~%hdmZ$4B$J3PoB]{T%u4SEB%Nak(
::e.K~7%WXqgw|^Cd;W?+ng[d,z!N0!7{vt~9-X]n<l$rBw-_PHmRt&i?LqHw4^CRp=x-*&=uH.SWrXmqnW=b8h*,n!5cty_ZC7zOBybF3NMGK8#]]3)!yJ5.!(oPEx&iRZm
::-|z2a,dR#QYU!++[FS3D2T(i=.AB1zy<M3wGmQ.uRdV%FU.!Cr,vf[2pyrH^n2,P}|RU#?&.a,}l7zY]|wxY0emFnz[hz2f2rGY(LH@9yc)4ToTNJSd;TUzrzP%vPRT}p}
::UU2f3_,qHdiVY6FQIx.+sKJPVDStD*z7P-V5+$KbTymR[CEcxiLA>k2yIw%O5RIeBv7,_,a/cVaZ4doOhBcie{r`%Hr#s1n56+>Ai,y}!3<29p74@XiV!ENBYy4WXZrfcd
::*hLV@k^,!,ihYr?P?6w6Lp7!R?A;8ep`d2J!HJDB0P*cL+9p%cca_WiG7p9hL{A$Z+>o,=+~FjH<(YC4H1E<Cra)_Zw-k)??=F}mk}NflVhOD?)sR?,.{Ch@4|`d2A[hX)
::%F4@Zj16[7PbMA|&f}5F-!#b$w#(}$,;Kb(g}C22dvi0Hqq^D_D2y2;Y;7r{w8<KX3rMHo]Poc}1Vdm7OU0Rq9bH\(XlB`$v3@~=5_lHavSh-_b@v@9nwcYm*#Y(P\nz-w
::3kNAvSO-V`X*fbGn=2}kg`N=REx_g+R.(F2@!V@#[hJAX`a(1~<K@Z;,h5HkidpweE_@$y.KNIE=xY3Qy$<#t[fO0jhjGu>8{W&Wa%qR5Xhs[y^[f,[_`%f0xk2ytRSb.6
::}x0`T`,bYWm8K|+$R@dD`nUA}{;XV/,^GS8fj16o=A6%KF4%n*RG4KlT*,.o|-,bD_@xrt;cPCK#7rT.FuG-6Y.mAV81[n(wbaz9E[`F)SGlhzS=a70nzoQCLmWen>Trh<
::#F?tqF@0BL<R;,~5~!,e~h=#U>x>w<d<)U]J1F5utLlt@T2(@^c_9{?Sh5_IZw}UPnx)kGTgW^[<<H9|9+&,hix><ZqWQP-@gW>-Op76CsNLAopTaT)W.];!l8<c#a>\dT
::3^rx}Y|/Uy@1Nxy[\/qW|q/h`Pw1)CMTgRNf;U!KRJVI$A{za4??NSsFwqo]]JnC\Ng,g)yV6&O?qk`gEa]bm`y58mRj]&Vr~}Jy`au\2i4lt45,MQymc{%t6W=E$+ZwrS
::Jp%_FIAn*MlEOKHLL\.IZxNAZE@QE;s6Q&>R{Kbo8n+?AnI(48>NUfU4\3iV=#O|0~OD.pU`ii+`Zn~_[1*Aq`uO_\=A!&CQAq=|bG0aRd-iJ@Hg>Z$M7ei[8q[m!4Lx2S
::k!~(lD|jh~dO2.*df!h_o=9H0[EgKfrE78jUtHf\cWVtf^PGmc<!+u|NS@\vxuCy*Rh8cM`kQ3?PpjdJH4I^cE\t}VM58QoH(vq)X*i2~l.({bJo6u9htXawa}f{n-mA]w
::DrQC.OR;UP!cQpXmZm^+e#VL.|Vd+<$#~P|9)e&`4EG$l)dk-q4}zfm!Cx5%4W7%s804KgzKyFrM{wLaQ|~}c75->G65L+bm_/K)wCNw;QTCvFy<x}V}pw.>!s|E9X{}w#
::f-oCF4\KlN*-gD}Q6i/;y10+3%pfn|},6j[DzOGoe?x#\#,J+vL}A1hQ\ovRX|NBCV7#^#@Vp3?$L5Hc|`!V#X@7{;[!zuAn%iRKoHC^=ljP`{1JJ5w}^?j[=dA}n49zaF
::>vN`+QnVXKEx_`h%ea,{5(u#WAcaRb{@>z+\rqsE^+XmogNIP;eFFFo0U<bju9*uM#1V0i\DHZ2G,P>0.[0gAB}s(`UuExN|&Z{0>wsFC8>b1@fO;sM4T7<GN`8Q=K[#3K
::gEBWH/d70u.`-J)!Sr__<Ea]=mt3)FPeF|5.5k)za/k_ng.upz2vR-*YaG\bqSZ\]xD`eF`Q4K`Yb4~2UsBZ\.UG$/qcm(IimhAF2BA\5QnLeIbQsqXjDI_fQ\7Lgq9ru4
::D=B\HaT;Lwja!NCL0H3xsO-XvXkDfIQx678)d#Dw`WNDG}r0g2uznB1]X7sl}pD1re~bT5[E&n=ZK-|6AD>vOBi3!UHF//>Hv?0H;jBvOR2eoB2{-`t!@fm^E_$N]-u5r=
::jusK@^.JBWkWb@@efPhu[[yxZd||BW=VKsv<r6A8X=eqcqsB7t;;PSY/?r*ksTTANg=$G}$pBDWj=t)]q$JqYA<#9YdPj|o[qp*<ac^qF`7lJ!#,n5^m4OYu2&H?KYdd|%
::&]KYl,n26G~E#2mk]4g,us|`G;V`pkEzS?FTW$%,CmZ`h>xCaITIqKlplL]mslcfj/fAQ9Fs.J}<c|tW2H>y@59/a!e]wguY*@L-Z&{$qtO4g|$u$M@PCSTL[2>D&E;2@0
::c&30]`OE@h1^T/F&Kh7|2>o.Ipm|$lcV1KxBI,elK)]dn6-/xfEX}Q>5gch0nB5fVDj,GsNNUMAW`xh*^poEr5rn_^p4g7r?uP[no^h-C|`8EA_EB{N)mD\V&RS!},wTPh
::cbo5=?g*K1238;m]FCn%WMlD7Ek-&Ic[t6<q+M/(-9mnFEHwSj`sz[sijCQn#5.`d.6,%WA_F0br!`P5Ug$*y3!]DpS{<8SQ~[EFzjnQZ=z\3`wo{>L`vY]\5!_Bex[~\<
::kO-{w_Lh+7Z#}f~P5D4@s2{DWQDhL[]L*W#LNdL,VrDjB;eS?^aKna*PS,+{hBGbB/&]cDNdMQ$BGSlh!oI>cd?$jcHabnLr8Ew;QojJv;![J|s8?_w!5Qg_H7Obz,=<!T
::uPMo)^&5%oJYNIEn_Msu*4-0s_TfMX`sD21iFiH0Nub8=vkUc91]QT,{`WiDX|fOjJC2\7lw2lI{\XW73E<S%,kF]fcaij)$B,6s{2{!gi8/#}zFNid|.NW*VVi!7Af={|
::4yWHsN-/6Ohdm%xfM*\^OzEwI#l@FRr<et9ra~9wq]KzHcvFf]Pjtua6(mWCDX?Wzb^&9Omt^J${=N6*z4NKUoL<!,(;8]!|YHP@P@x$Q2yfb2xRF?E`HA>^W$VikNKozo
::Lx,S)^S4|4#jDn*>in2N@\\?z^?cYA2&Z*PsWUy9EH<~+_U^}xgKiouE{_tSR|p+%WTYEy&CufV+92#|W7wAG~FwPs~UO7]rOl#5BkzMCf]WE],S6716{,y*jW%irQ?&#E
::k%Lm=T5Vkxjg\WR^yS^Yh3*)oikNW(Wa>#p;ES$PfEe1--+Q}*.eB-/Q#</GA+db@<jeCM7=HI0sd5{Hge/p[H3X{{GcBLBqFD!s9]El2oMmFtcl}LMt!WzrB]eSxLvxFt
::J7l@rWwNe]a?(=*Mizx-t1l@rWJoWOa?P6t~|$1F195QV@=m~+fU+@doT?9;%blMAcg3Sx~9,K{ZZ_o=n-MCe#S+ZPM&AmUr+.Z/i,<a|-8Hh}WAJ;Uby/Ju3>J1[o[+/M
::s[uQI5C]Uxu=_5rEx$javHT9Rg7<b=ECZWQ3v@hqD~(+cR5pf~NX+cF``vDBFd3[yHs3qqrh%7;`j)ddIi8eVp`g5c}s^)uaz3LqCag_7XT|hda;Hz8RoDc+YViV)Q*)Ot
::#vysynMNAf~i+cN%?!$8m?Ipw7o\?-Q)zaqV9@(fxB5t!N+^Nf8En?N61Y`m?-,6_s,jRq00Hqml;c@.-ciL;G7L_,soUG=X?TSLz&5l[0Ltdt)nPuc/{Z1@HUW0~/_pD]
::$6+JBmW?_-s.m8^G9][;QP\I^GAX[;R.`pP<0I@aQ.j(mlZEM#Ao@+Omm]gI6Hb)AUjQk?H_MAip7N\~(.K!PE(#o{lq@pi>22/wCY3He+e1+amOw$!wK1bdu!gf$u2/I-
::_vWh~2rN;=l(3s}g.(m_Dt|Wa]6wM$[;OL3;.*9K|Rb?b~<%{$&}|By}.R,Kh)<+>Zxv9-suFGM&`R?{x\?<Lja8C8NdT;y!&5ny*>3E~WyQ(oyPHZW;MMjAq2%l09hta]
::VEXw0#}E|7DwJXD{Po6s]-%vm}>B>!+cbnb5+v$YTf!5WyU/&f_mlCsozg[-HFo]?pa3|T>C3]}+K#rgP8*k(^BLpj@,v4!rB_`wrkz,kM(0r#B2GnllL;I/c)ZEs0qR]A
::7m=kvd^K1@FJ2<.,2Tl&6_2Fgh<\{=DR85Z}/A!]IpC=M~%YTI|!Qlms`&u_#TZO?n8j`]o#4\X4VU4s9lhTj`Qa}<I}XXJjrtlc*XIF]<1ZmOTP=q41\FdsAQ|@foSJGx
::9Gv~-5$z%oKu<q|%azvKt{LL5SR{k?KjI{&uh%$i^p0oD.dEC-=2U9)hFzc3M](/#??W<ZN@ZMU%B^Hp6?N.8ZNq4>HItS7BjD5]sG5(D|7$]?)-7?Nk5?4R{M&Mjr%@9k
::7s(Xv#o_FA!/{TS61-]Tyy\k$JN?#k/d)90TO&<~[WKx-c+Z9v%Pvs<3UZ?~T]^NuI;AB,IVoc`w0;9t1&>n^8N/Zw,}DdmM9[x?>ty,V]Dh`w$O+VK=F[+.%3pkD\@b,g
::!!k2W_F,9y,=vNnPinK3w/8|_eO#{]91YBa*Q5tnjfZ-omQ][LR[?,[NMs+m<z2RSdbM9D_ysv%,3a1fQb-x`wHk]1P9,1a8~rT!Wt!F>&N{KDZS3-k?)\,jS12jCBHZJt
::M[.,v*_Z^%SQ)PWK74/w)uM_.XuoegyD4!w^lCkPCb@Umabi3mytJr4K)$fh{5O/S6l`_Rt,6+vE7ZYRh@X\|8W1>4bd<{xot$keL=/LB0jFm!3}<%d1+rOR(/^q_p20!`
::z$CTd]Tc&]7,-*T<hYu$E0.B[2=4w6@T56TbY2,n8xnE7f?[z!>/\/JWOk;s1MxH8PQ8|!rPm9)n]HZ{I7lNG?qU_C0Np>?-`5WF@g,^A).@P7e5}R6L|g3i~R{p9T+T,M
::@S\<<6H^~8/`2;Y+6{i@]M@Vw{xz/[KG%SW#)d)5L)f,UuhM?e<az#3?z`h&cTX]2O[gF,>Tzi*GYL~~B,Y&EQm/vH8bjC@e$L8]H9NI#GXKAfw6>T0w,S<@F~U;)wH,Sn
::mK{;zKI7<Q<P6*|/;9D)B-bPVm\S_s)W<Au}y,A!HMTS8bSl&M{6+l=mjY255lK#2%bP[]/-g#41FXBF(Wx_rRt@h`2t0)5NH|2wdiIG]K%KOyh?07a#FOe]]WT>0Hh?c~
::vO@Xa{aiEbVC%Z6lQ)2Ns^GwojIG[PY.QKgm~={=yWnmaa{-L@iQN\oUTf`w#Z~0C8d3a2ky<-Mh9mHQ(,arIl;Thn-/2Nce,={p@s,L&cn0}]2CD8Icn/A[]!tOIwX=$%
::#l2+T8G{uBxfi!#Xe~$2lpL/5Fw&2np990tM!0i-[LW+1t%D%{qxvb[Ut#[U#C;U~y#A^G4AxA;Z@&!G8Hq#@.AYw@e1#58Ye/\l-^)e+w6I=uuVz4qW3*>eZR-w??f/Zq
::t,Lb3-;K3gjd>)GL}kj1eQpKJcySKQ.BRawtX5foDH3}YS>FXs&6._E-XbXv|z~9jX4rv\4QSFXDbPQuj3iq~=rX[EzX6{~?Al3wz5$Sb,1@FHthL>fdy&^X*B-NYqF1bh
::=M%\>)c5Rd!AxO8FlmFgj|8ND{,nW<;g-w%fUDx+<B7CjaMp7nBW8>AY$]|bFKH(LQr(dI@,bNWSlwM5ulB;#*@zBm4?),laDGV}}G8F^lLnIs**%=!x<-5&pld6G_dZYu
::Yb0P.?O;lTL]%GW,lpkjRpteZ{14{tO3=9R^8S%zBWqy9\[WWyM\>RTW=OmG4@6u]DQx]bIcw_{CY$@VuZ(y[opu{WgG|R!\K7G!_cIJYquZO,AgAqXFzY>^]#<T7Y,>CE
::l}$Qa]`uyFzd$%$;HI>0&~)pv,Q^DjXP>^N+mc-sln`hh.L.>^A+(4|=X(6>@,2Q{|MXq2?g()0gh5?ls_?7Sy]Pp-2<..!RhxQS1\%,;FE7vdfSTNtnU-b<Kf]PZ>\jB9
::oPI/s%iF^=$[athY%!,(wNY`jAP90LOreMfvbYn\|^c%6lZXfR@h._\``3RueEo8=38F&19I$ra6fMBk<n^&)3EvBrw{`Xg!g@W6j+BxD@-g[_qSv]..4,DrmQ7ac1sfz,
::H[;[,P!6q4!~oM.42EjYL,(.k.,V_\PCrhwPqCM8FKFMr_KXfP6yA)UnDbg_.U[jMxK|${Y8[vnTC(,(\ilH.U+@fyA,.[6J/IssOD&7Rw+cbM]DWHArSK|,Sk*F%HJr*8
::j{hj\;VDv~~6aIz[]J~nKz%Q3PxT=gb^ZN(d|Y`HQ*.g\zv1mMYf?`Rlr,sD(1LhM!!B4=<\R<[0FM;q}SWr$`!|Q$fw6L0n8;902_H.H1BO#(5^Br@)lyVBoCu9S\!Gyy
::Crgk>QID7PU*q+QreJme01st<a5`74x=F|R[EZtX<nVIi*Bj)Y/,S>M>p!*ju<%jaHgo55V(BH.<fsOv3_-\N\Vn][~LAmPoGlITjxg$kd9akh?v4kIFGdr]i]zVO@R00W
::%MONB![o_,*?OP*&~&LRFc?vaSf@@?SPe1Gd;zNgogf\n31YFcEvE`M=A6}xOcXn\&_OXZ\%rM*ecf<=v-is?=InVZ2k}&>~5-Qr!mV4%JK/Tz`#/ZXcEJk!*&zaqff;IX
::b\~#)EW0`i/NnWmN4]S6oA<.T&BD,?1_DD7sYW/hEafQ-w?A<CQo&bY+2ieO;g`yLs^czg{GZcFiLJ~C*a|o=`k3-lvlc\o~-%HEP<;ElEfAM!r#6geE}<D~V_<*aD5btD
::0)1=.L,_SdKgte0wjTkDE@]p6awgw$}S.D`KG!o3~dopbJJ$QWDn{dEwmBRDd0trug3EKp%ms{K5NFqW-{!j(lL6C9!jSsf1cC2@Gg\j*#n]R1T<-hNp`<6lKx^E#Q`41D
::kuMn@uo{zCs5w3|Hv,K7(=>~N~d~RsAn\&nL@gYJkj)w;!5xBjV&ch~yGg||4?/<eOG=@m`G^}|DqDpZU4-lL-cN;A6%<c-kt\H!#z!#C`8m3$;VgnopZ0(O{J>eT4%%.<
::cF$VJ4D~oR8g=E<Y[=0*Ei]p_^RHYNq||pY%~}Z\z1k$]h2IQ*]^,zB*0*[@W-Z%NIpghhk?3TA!Y~\VJz&GV!I`wVP\kcD2xGP.T*l$x${x=m&E<t)HMQn]?n\M/`5VD*
::@p%dL(APaeFNj*|aHR?*;S]S7A,``2k`qNsn1eU0;]QIrJ1Ux=K}(0k1eHnReRMt}%3TlFCY*k/e.\|8hUxw0\YYp$PM+?]}tnQKp{07X%0i]M.n,G>?zQNgo@GOr*~vK0
::*jjDCb`\N#@{4tj9@?e2pGd%DU?Q=Akf@(OZ0luP@x*=,o|#O2uO$+<spm]!9m#h22/ORa.cg6_J`aapC$,|8*%L7|h<}e@k$0\vY2,Bw$Eh6d;5,G`bKEBgVxEi0GhHkZ
::#w6PuYG#s<~dkPSZTlB*Ui3m`[g1z,0#bD]}2~;w!-]XqvrFEgDz_X9X{2Xl$9<\f|=uTDL\NN5d5K6wVP0kF2)}3t&3%b^1+oi%|2w/f!)49[Jua<f;3CLjn<9EDJ@Dj>
::}WX<VwX[mw-vj90!p3\1|I*CjtMP>&!^v-Be)J{mX\OcxqMD%87A*wdKt7i`9=G]BhTtS}|{\1#6JLA5`&uff&P!{Ez=[L5~X+6o7z>W<!?YvaMFFzc~cuJt>0(_xZA\ig
::2as7<e=oWwXY=XW@XYJ<k=r\1an?PJ6cGVEPlWEGa8SV-C+oy3q-[X>\Kxj%.,0@_8A5h2Gm+5-oyz;Bu;{%Lzjps6_<uy,0HZPVMd*0EDJ0s4[=VRQ+\DA*8Y!%7oykBn
::_%udE%q?<d|N,<%j^n$\Kn~L2Ilk|!LTB~ZdD9=HEl5-@==&<YNJ(!MDNr$&nYxdxARIW\~/B\v`<MDLdn$*fk\[Pe8Unp\;-l5)gmiR*\=,U#`aY]C-;)Xt6$wmP>KxfF
::9_7\Tsni(i.!]K5c}$+otX0sCrq(_81R)oZ\pzZ&`l^KZdbYKZ~KY`B$|-W!|)hz2#hGUV.w/sE5l;aj/ke%qWru)yHou-W$MgEb1EE&50{a%A>~v\)-z@K/Z4LD1PgA1y
::HGlJn?f[1\!sN?PI&Ka\Ap4p}]8ugMa2q7gq4TAIQJ16A$wyn`g{)O+)Fzg`=,2*FG)Gvd^)x*qzSPF<JlJN7jiS&7~SH_[pN56e6,u!ona%RlbIgQZD_<-jO!*Zf[}nxz
::lW!z2Xw5x<6Z_B;@P+WdfD_Ap5^~X4p1HYeh;DsVQ4+Aj{d@QI[#YYVeQ}Pst%V&QWD,cS8W8*X!Urcl`>QF>$eV(z(%HlKnjnZXya;.yyUx2bUIDX)KVGx=-(u\iAZ{^\
::%)uCwbK9`A*~?D9=`&d=5&<k3tu-zTk,=aNp*Ka!6%;(U#%dgP{+@hSC3D*y?`a$>FZ1A!?_^$!<yDdFEQ-AWgiL-GZS2A{5e^c%@0xyu!I&Jv%JHNwvS(]u~(3U(U}%s5
::^rSV&}xz;=I9gIyuIi*qtdJ4;,&l~qrI&`qO&_[v0pSs&Q%lQ]v4zFqD_<*p^b6iT)n*wo6_C4oig&uQ9MdA5hZ-rR+Y#HHME=(9J@xwA1(pa6)8l3/8CrjT}E.`jBwM(D
::=F^Z]m<4vR?KYrELCrExvi0`>~\H/$(##NKoYW2JWes[rj`oG9Sbrvu3X!Jg!tH6~d=9(<W(*P?eI>AncjA5X&/(=<?9-$\\IO7hCzn?DaJA!d16fq905q>s]yX4W8dY-i
::n0IWg~SN{J&ps`;3-=U7D4Z0d&<yA~w%V01wC<4c@h88>LD~fDfh2q9FyEVvD@RRjln3>WXQ#\TVts!%=b59RE5-lTJKV}@G))NZ+.i;>&5,G,^(l.26F.;_6U].{{P=U,
::\(mPtPcY&5$8GPM)(|$G7{;H5-i,A1!PFZJQ<5`A@G_+b}@;X{gYs,xA0=Q.X?e7jcLx!YeWsVNP8^)1|LRyf,haV5Vy!cu~U{}AJ\Vup^,5q.>^}+NQj{aB9|0>d+5b3H
::>^}7\-b#ofg_Ur<C{cTf==~bfqBLvC1Vby>f![;MM+<i7Q(U*^QBvO.D@f|spSU9H<<elMHw.-bJ7n)[]?&k8_Ye{8>>RH)?tlLKR7Sk3<{T,KV\6H??#n76mm>1(//]j@
::|e7_0FcTWq5l~)rn|XL#ca+=VzuWTpaF`X6BX9WLWK6Xz~uAK<G?yuB)uyNlK8b9*M/dO3tHiv.t/SRV/d0Oz2^]j7;r,$zG4TLL5;H-6YB@>XTO04%i$HnR{NI-vYYPJO
::>6$RM|Rr#].AxXP_qobO&9-[l7rr&^QTGxdObFr0DoR))t>i0ywZZ@<9<Xf5<0tF]SFfu)vO5Cjq<#rD>5|F/v5.-]=m(-k#nP{;?>!;@F;HQ)0?cnA]T~@;?-*`_;JQl.
::.pppU>CO>DW]k]F1H-d)^R2RFUbp6sRnKOEExk%]pI9-R-m29R[a4p,yWI~}I1e)X]7VRXz{Omm]HM!jipjd%J>(5t4hZrnVg+B>qI5tMhmz2[*1CmNbSd]oeo6A,ic}NO
::D*TRy;|xK+/{TV~H*KN2&sj}c|Hx^^;AUVky?OgV>yrswU8J&VRcEz2j&NwTFjxRJS?2@u6C%JseWA(/l1;j~M_Ivx[Yntzpf>=Z_Z`-^[HphE$ae3e4?X-8M$g*}}0u.)
::c.2/oXNL<M6f0[)Yju72g>5ZVbgPa3~9~BCI-&N=nQ^\^v+H4ZQcH~^1/MZZy$kM<Xg5gAcvwY]VV33CjL7*9c#`i4;k8v&0uM4!K}w~xs[<(4&|TTb/.!tlnLYN+NbH`t
::3E|*-)N@d>E)iN@R#|!\COv=E/[#/Na_sN[UB8q`]_0u%Z*EyF)(M\*scb#NMZ)x>Aq<W=a}q\i$B[>4#u5yQI[%tkj|Rh~;v[kxy{>KuAl,}3NHv0!K*kf]z|Mzm}l<|<
::0{gN9767Sny6MXN@|b%a+UaB;H9^F^u22+{_W{6Vk[v,y9}p(C^vnnc^.J|+V1M3i{os+,Ob^^l)nC1^A^dd`V-Q!vPu9.rTfjS)(/QY*67QSLQ5C8r^|,&Ra;hEkFX)p/
::gx$5@6T4&;&;%naa>)`6]WQQMTYcv}6[N4b)-_-Sk_fQoWQrxYk]F?v}p[\y!BG6iA7#/P.9xW<;U{%6?{laS^bOU5%CYz6b*eQH{7;TrJx$4]$#Aq7_j5-S=up_nzfiZ7
::GmFaDfD]I`iBEO;.1{3_vpQQ]SfX3+iuKOr3zfj7Hr)+QTzXUc?[!OY]EuG_$y(sp7;t(z(S(({5lr#[A1uQJ_/dc^}7fTvcLwP*CYX|Mwo[;A@lOL<8*2q_[U9IX,aQ~U
::!Ls$PUtAY#q_)Vim_q+W.Q;S,Cp9Q3[9.7Sfq8D^H(pUECV_wP/9!8B6SfS^i=4SZ^&O=H]cic@@_7F+gZ]&ZWpak5}ChC,U0c\f4C>L~d#aFHoJ}HD2ImX]OzT@x-A>no
::z2lZ3Q.!TP?d]ELua2@<>(z(0,p-*-.}\T2SPRfqQb,#0_;<_LvY.3Ge9B]/9Tkq{rn9R_?$-p,Lh<kEe4g5BTGh.b+r;v4pJv1&-qf1Gy>(;z~u$TMPA7.rRr7)qYDr4O
::Kl+qW/aUZS#tex787.K[NHoQG[@Rl8#5tQFyd_0@KUAUdPl8E9!_#_@^l[X9K,@_Nc[b#U[&l8m^vNQ[fa@RyejucQV^OL;%.A(*bV;J>f+1ZJSmi|\zhX`_NX2Cd(<9mV
::VMO&h2@*eqj|L!J&mAnsu.27z2v}UB5Ih@ueNAqq[\*r-3|_rU$MMy)bTA#@Ql37)Z&X%863+1wEucR$ee>_atGu\_CZLcTrdC/M9L/btHrvjvwT+l%f4[p2d+Wb(,eRHa
::+W#L6s[76Y2@If!/X#?Mcb)P[9]7v}~P#B=7sb@fWrg]mC;Uq6ZlEBl8p1Nc7S>^BWv8JOuFPfU|zx#B{Awz_s\9da9^qC|WiTS^7^vOWy$%cw@1_%1AwhtX.i.y`H#\o;
::[.n;Q;r-<G=y9aV`H$d,42Qe`xoJ+1!jTE6aL5u{^piGX,^m/j/`B#s\.2q^Oo]m]iTm]!2f`Yt-+L{)79AY1-w{N]b>}96xOSMBY}~%ttD>&HUFMZKYh11QB()tSw<MaZ
::rb,eZ&_1rV<w5;X1<E@vgPF/`yMt,6(]f4PqYco8^8=OcSli(Cj=>~JEM-G06&L(-GqsF96N!xOcQv(}[7QNAOJZe~PE[%>|54+&OJ67nw\L.qxh?0nJrvwdA~.ses#s`^
::-8~[.&X~R5o;2#D-.}orj~JseUDP_-)@_9m@lWnDitH]%FmlfB9YB`S,t/2#nLd!fja/HTNt#`GiY/+zL5AF;H!;QAv*0A}[?-nmKwL8TRUOFx=(9ch?ei@jz>0^w4$E.=
::@c;]3K~*hX]Cn5uyR\$NFDr{xD^qbx]o)l,H[RIGM\{zk$uSqo,A&HNlXv=!o4[VjxgdIw?D@IkLewBEspMMNM6?sBQZ;ETd3((]o2O)cT;P7Rel)wF~n$xULkE>z)XVMP
::ozLS-ZX({a/r_+OG%W76r>BkiJgvvS_=|\.r&urUzitW~xRTa4#hbiMgCr.cx{pLD(Y{~aKZQ[TGIG1{\U-H)EDP,A0U`hXPkG*Uv43nvzTid)50%h4_X~oET[#v%ApNtr
::Fu.kYB*@+<5+9Am6ux1bXnbqYE~,<eRmGx)y+BlR\8?5?BJGU2yS5y/}tk!QkU}b+zA&i(meTW\yJ%ex&fXYjJwqN[>8ml$kXyNjb8ZqZ[.V$^0S2=N3`-?%n%`OS}v3*o
::hFLYs4cLEs`^FbWb2*2(x!A=eLnoT.p3uLhcMn6syo.@82CIT~~K$<qZ*NJBn9+o^px/CMfDpoR}^vjiK#{@0bBdm8FG!z@nh@)`_`QiWxDD**Q(!\l%F~JHw?u_#;,Kq(
::/jTt~3@(g)z-?P|4X_,A_%tH1}1QoX?th1K#%&)abO6G}opS/#w{a(#5o_gVP<2~Xd{<#5[cPM}}fplK7GXY8@(8A|WjPyUN]t&#[/ro|QVBa]2mC7H,IAWVx/v=vVtK{(
::=w[5g]>B5n0!gZ`l)6@fcYK5B(xH6GrRVLm[#X&\Zajla9dKbg4q2C|LsQ3[H?M7pe(BB/s8-wV?Y<Wpwo<uht>rNdb08)31/~70S=ou#4Gq@=2Mm#k/9ZgxzO\jD$g5gu
::Y7KFx~F2H$|rXYPhA4HrDF,^Ah5cw`HB~oDXlg_-\r-0/@ouWRpo\lAB*N5&&Q+}UX4S-V#?vmNS*ABmi!prPveNUTW(+/.0D6y-q0PMFdeRc?-9^nUl7-5`g+Nn--a5V8
::A=l#lMiRhLz1oE_1Hx&<NFgQ&/<3#eCCs\Jq3}.hCmrfV}hDq/u|,*oD?`-WSMwrSRSV/W$[8F,oAm?vu/FlT!l<+luCw(|hEvYzp6b25M,&A+]b~q8ky71;*zj8N}W*lU
::niisjeC4Y<$=vQ!r7bZ&jqq}$#)t0)bY1u10C\`N2RcT?raso02q{T3?3JI;[oK`Gk>fYfjZZCmdp[;2)KKk2p\t0ljwv,0_u?vh|tjhuh|3w?bt8M<e+2=HJYpX;a?A14
::.i20ZmHYPc{A_KZ~q/pUPK@wg#zyiny+;%wCK|#|gD2JsB*4m/v=O0Pdn?C=m*vEi;l3{vnUiC`Xdpj60ODW;\!8qo=\kB{]CMy`EyoNS+w`nryS|rdyzJ|$Vuf#+;D}NH
::wFt`d_SgS!Ra_%S-Y9&(8~g1TzWc<v>GuvF`&8k3-&gbYh_\O,[hu@LL7ql6($M@~_{N*wt=};=<#^P>AgEe/\r@FCr[}s28)whT(>/DXS2;Y!S%h&1/S};&0p[tW#vlwk
::ib2Dr+LSD!&!Z#E5!(f&3&[w;pIN`2B#cpl4vN>q}9x}^3kQE@2x+){3jn*kMO~@A&(`x\[LApupr?4B#F7jwRSqE]h2-Ac/X3UYEiTVClP4yFfDjHW?o~*!4[UWP/pZtS
::ewpF$iUfkXKY5fn;nWZ*)`90%}wTQj-kTj_w=~8eFbYbk=Z!!XF|}nR@=7=S<B0W?Ua0x9PDj[lC[S~z>OBAu3emGV3d~Zj`Nwboj=R1]h&G]1Z#nO/cLCKmKS;#AW>FjV
::.-Ww^(@nR6<GlnA|uYF,{!.ZXLS2Jm#~7L%<<i2uM6[aB~&iSAX$ESPUz|mMVprK?7BNEonx*{pNI#tC8W-~h=t$hZeE[ATX188sak3rj]\QQHl\3PfK}HnV3PGQ}2}d4e
::)Jxv2GUGDZ^}S1myo~DwUO^)s\!*MDWTH@I%?k]}Uk,B*|z~PmB9?U(S]S!<Y7F4l~Id|vFWQIq0&I!y~yG&d<1Xk{fG(Bdlbe?=thL)W5T;|MPd)G?<cUQGc%P(pMLkgq
::^65Y$M7VRx~plQHZ*CXwaVqgBZo{Ui,Yw?Z_bS?mYFt8,WD9TjjX,T6X%i;JId4rsM(<+}F\=h_~f|ERa+Ct?!d<)R!}}mgX>8AA6$XFNd1[-1}H+;S9=nauw?BJ>djBUT
::41AUz9*7`y<Z7P(yamPYg6VqM24gR!?\}k^<=XA3>X%$7AvJAN3z}t`1fU3ek3#M_H>WD!TX,3qAOMDQFdcg0CXr&D;HdUESa3cX~IEAxg\h~J0@@avJ5bjFmY!<{X;z2^
::|kScCc?k3#z))Rsl%sO]#3C<_@>,)oofhx#Dj3XQ`g}kI\tB;YJS#e1~EQ{8UJ~~.ib-kOAc.dGp}Lo1D68cTNdPjXhJj0\Q4\_`?3ko@V|[kGF%rd[_eHVmeeO=W@wO64
::h/$%`Ab)xi#jv9L21O<r&L4^f=^eQy_hI!bZcgei+c[HlN`QVLet7HS+lV_q,~>\rho)H8Kp-(7oUX*6sdo2RUkghs/Ue+QE=\Jq|I53H?PDm_yN=t&gL(LxPPH|JY+o1x
::_KVn}^{I++}v(a[\BsWlSIu0EqqR\|@+!j#-%l_Hs{zZY&bnAu6N3=1lqD+q3&)#R!dE^gUs|kSa$/a[|9f|T!smCDjKeYNx2Tw?Amr&reUpeXSsT8WtjU1Oiv1I;V^rcR
::.278KdUn&8<2tM>M[k+-cfMkki7I|v4(m;2J<W%Ih?N=&n_qaXP}f]BJzhyCDA*U;?.yDo;S^A#X3kTtw3H)XM*RpS~wt{$eblIuo]YzBfiy8+u7-y)XH%=Bd0{I1dgV&8
::cyJ/;r.xrgoMm!/6=IlN`YuaGoKch^E~0W0l#a50X*(lyDyxUX{[^C>U^pGi~20uK/0@Uyc@*D<S[X0f^jHS<OSno+,s*G.C>UAku|?q@d5=Hz-K6M<RSdzC}rF&YfsVwz
::*dCn{[,k^$WI^>GI*MUx^hZKW{~]g+ng4lnqpqEe>=_Vr]6a9|+t!OXZ$f^6Pix5ew.u0~bP$H+xhFC)fR$jeY*nC|9K+lb!IqPV40O[-YSGq[{W*Z$d,sB2D$HtxSgxgo
::q)w>s`apvKPUJl?AiSPCbSQz0q?c=Fe*;HNE/wELd;#zrr~?*7-4CXW+{Tq62/_&weHjBwCx5BIJc!&BN_119fqOD!wt~I~dim+__U,1tqCO*X^sZUlnXfS8GZ3~dAQiOB
::kHf*7e!/c<Y%ZnU,>iK07HcR8ED9@47pJs)y,5&r.\>93[Y~5zVJQV*J$<Y9XnFwK9rpOgj+Z[Z?H*|Xq7kil=[F13ejGDdR+x%];#J_L4<ZVK71wA4H3*n<F4Z}n^9Aum
::8G^s*ciV}j>^pg]UHWC9Tt@ERXeq0s)sj4<^j^nAqLTfhHGWzcr3Txdx?9Z%9\G0@hDIZ()`hx;r9imND+6<p3LF^f.,sGttFa?KqkugdD+%AQ]4WIT5sS9hkLhau[-=jg
::S!i-U\QB%>=Eb{|&TIevdy3jB&VpLR}ak[eoIraerNe5%cIsZ&a5*l&kniTJ*o79?kqB}4;u/P-<O}l~u$7K{ZwU\MBV[Z$p]5/s<cB5b%n0SC?aI\G<cZ>=&MQaPSV+xj
::M{w!rEBO}eOMX_=#23;B3s0PeQ5Y<~zd8-2E]F^[i%Y1iGB!v@W$)xmbJwv[TdkCRY)<thhSRZKXM{j$W$n|h#{..
:bat2file:]

:MainMenu
@echo off
echo Initializing...
cls
pushd "%~dp0"
title WACT [AIO Version]
echo:
echo:
echo:
echo:
echo:       ______________________________________________________________
echo:
echo:                              Activation Methods:
echo:
echo:             [1] HWID        ^|  Windows           ^|   Permanent
echo:             [2] KMS38       ^|  Windows           ^|   Until 2038
echo:             [3] Online KMS  ^|  Windows / Office  ^|    180 Days
echo:             __________________________________________________      
echo:                                                                     
echo:             [4] Get Information the Activation Status
echo:             [5] Check Windows Expiration Date
echo:             __________________________________________________      
echo:                                                                     
echo:             [6] Extras                                               
echo:             [7] Read Me
echo:             [8] Exit                                   
echo:       ______________________________________________________________
echo:
powershell write-host -fore DarkGreen Enter a menu option on the Keyboard [1,2,3,4,5,6,7,8] :
SET /P M=jfhajksfkfjajk >nul
IF %M%==1 GOTO HWID
IF %M%==2 GOTO KMS38
IF %M%==3 GOTO ONLINEKMS
IF %M%==4 start wscript %windir%\system32\slmgr.vbs -dlv && goto MainMenu
IF %M%==5 start wscript %windir%\system32\slmgr.vbs -xpr && goto MainMenu
IF %M%==6 GOTO EXTRAS
IF %M%==7 start https://rr.noordstar.me/e655b6e4 && goto MainMenu
IF %M%==8 goto QUITTER

:HWID
@echo off
title WACT [HWID Version]
pushd "%~dp0"
cls
echo:
echo:
echo:
echo:
echo:       ______________________________________________________________
echo:
echo:                              Editions:
echo:
echo:             [1] Pro         ^| [7] Enterprise N   ^| [13] Home
echo:             [2] Pro N       ^| [8] Education      ^| [14] Home N
echo:             [3] Enterprise  ^| [9] Education N    ^| [15] Home China
echo:             [4] Home S. L.  ^| [10] Pro WSTATION  ^| [16] Team     
echo:             [5] S           ^| [11] P. N WSTATION ^| [17] S N
echo:             ==================================================                                                       
echo:             [6] SE          ^| [12] E. LTSC 2019  ^| [18] SE N
echo:             
echo:                  
echo:                                                                     
echo:                                                       
echo:             
echo:             
echo:       ______________________________________________________________
echo:
powershell write-host -fore DarkGreen Enter a menu option on the Keyboard: 
SET /P M2=jklsdjgkljsdfgkljgkldjlksgjkl >nul
IF %M2%==1 GOTO HWIDPRO
IF %M2%==2 GOTO HWIDPRON
IF %M2%==3 GOTO HWIDENT
IF %M2%==4 GOTO HWIDHSL
IF %M2%==5 GOTO HWIDS
IF %M2%==6 GOTO HWIDSE
IF %M2%==7 GOTO HWIDENTN
IF %M2%==8 GOTO HWIDEDU
IF %M2%==9 GOTO HWIDEDUN
IF %M2%==10 GOTO HWIDPWSTAT
IF %M2%==11 GOTO HWIDPWSTATN
IF %M2%==12 GOTO HWIDENTLTSC2019
IF %M2%==13 GOTO HWIDCORE
IF %M2%==14 GOTO HWIDCOREN
IF %M2%==15 GOTO HWIDCOREC
IF %M2%==16 GOTO HWIDTEAM
IF %M2%==17 GOTO HWIDSN
IF %M2%==18 GOTO HWIDSEN

:HWIDPRO
@echo off
title WACT [Activating...]
cls
echo Installing Key [VK7JG-NPHTM-C97JM-9MPGT-3V66T]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk VK7JG-NPHTM-C97JM-9MPGT-3V66T >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDPRON
@echo off
title WACT [Activating...]
cls
echo Installing Key [2B87N-8KFHP-DKV6R-Y2C8J-PKCKT]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 2B87N-8KFHP-DKV6R-Y2C8J-PKCKT >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDENT
@echo off
title WACT [Activating...]
cls
echo Installing Key [XGVPP-NMH47-7TTHJ-W3FW7-8HV2C]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk XGVPP-NMH47-7TTHJ-W3FW7-8HV2C >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDHSL
@echo off
title WACT [Activating...]
cls
echo Installing Key [BT79Q-G7N6G-PGBYW-4YWX6-6F4BT]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk BT79Q-G7N6G-PGBYW-4YWX6-6F4BT >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDS
@echo off
title WACT [Activating...]
cls
echo Installing Key [V3WVW-N2PV2-CGWC3-34QGF-VMJ2C]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk V3WVW-N2PV2-CGWC3-34QGF-VMJ2C >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDSE
@echo off
title WACT [Activating...]
cls
echo Installing Key [K9VKN-3BGWV-Y624W-MCRMQ-BHDCD]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk K9VKN-3BGWV-Y624W-MCRMQ-BHDCD >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDENTN
@echo off
title WACT [Activating...]
cls
echo Installing Key [3V6Q6-NQXCX-V8YXR-9QCYV-QPFCT]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 3V6Q6-NQXCX-V8YXR-9QCYV-QPFCT >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDEDU
@echo off
title WACT [Activating...]
cls
echo Installing Key [YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDEDUN
@echo off
title WACT [Activating...]
cls
echo Installing Key [84NGF-MHBT6-FXBX8-QWJK7-DRR8H]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 84NGF-MHBT6-FXBX8-QWJK7-DRR8H >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDPWSTAT
@echo off
title WACT [Activating...]
cls
echo Installing Key [DXG7C-N36C4-C4HTG-X4T3X-2YV77]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk DXG7C-N36C4-C4HTG-X4T3X-2YV77 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDPWSTATN
@echo off
title WACT [Activating...]
cls
echo Installing Key [WYPNQ-8C467-V2W6J-TX4WX-WT2RQ]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk WYPNQ-8C467-V2W6J-TX4WX-WT2RQ >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDENTLTSC2019
@echo off
title WACT [Activating...]
cls
echo Installing Key [43TBQ-NH92J-XKTM7-KT3KK-P39PB]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 43TBQ-NH92J-XKTM7-KT3KK-P39PB >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDCORE
@echo off
title WACT [Activating...]
cls
echo Installing Key [YTMG3-N6DKC-DKB77-7M9GH-8HVX7]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk YTMG3-N6DKC-DKB77-7M9GH-8HVX7 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDCOREN
@echo off
title WACT [Activating...]
cls
echo Installing Key [4CPRK-NM3K3-X6XXQ-RXX86-WXCHW]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 4CPRK-NM3K3-X6XXQ-RXX86-WXCHW >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDCOREC
@echo off
title WACT [Activating...]
cls
echo Installing Key [N2434-X9D7W-8PF6X-8DV9T-8TYMD]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk N2434-X9D7W-8PF6X-8DV9T-8TYMD >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDTEAM
@echo off
title WACT [Activating...]
cls
echo Installing Key [XKCNC-J26Q9-KFHD2-FKTHY-KD72Y]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk XKCNC-J26Q9-KFHD2-FKTHY-KD72Y >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDSN
@echo off
title WACT [Activating...]
cls
echo Installing Key [NH9J3-68WK7-6FB93-4K3DF-DJ4F6]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk NH9J3-68WK7-6FB93-4K3DF-DJ4F6 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:HWIDSEN
@echo off
title WACT [Activating...]
cls
echo Installing Key [KY7PN-VR6RX-83W6Y-6DDYQ-T6R4W]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk KY7PN-VR6RX-83W6Y-6DDYQ-T6R4W >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul
set pfn=
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions" /v OSProductPfn 2^>nul') do set "pfn=%%a"
%systemdrive%\WACTFILES\gatherosstatemodified.exe Pfn=%pfn%;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38
@echo off
title WACT [KMS38 Version]
pushd "%~dp0"
cls
echo:
echo:
echo:
echo:
echo:       ______________________________________________________________
echo:
echo:                              Editions:
echo:
echo:             [1] Pro         ^| [7] Enterprise N   ^| [13] Home
echo:             [2] Pro N       ^| [8] Education      ^| [14] Home N
echo:             [3] Enterprise  ^| [9] Education N    ^| [15] Home China
echo:             [4] Home S. L.  ^| [10] Pro WSTATION  ^| [16] Team     
echo:             [5] S           ^| [11] P. N WSTATION ^| [17] S N
echo:             ==================================================                                                       
echo:             [6] SE          ^| [12] E. LTSC 2019  ^| [18] SE N
echo:             
echo:                  
echo:                                                                     
echo:                                                       
echo:             
echo:             
echo:       ______________________________________________________________
echo:
powershell write-host -fore DarkGreen Enter a menu option on the Keyboard: 
SET /P M2=jklsdjgkljsdfgkljgkldjlksgjkl >nul
IF %M2%==1 GOTO KMS38PRO
IF %M2%==2 GOTO KMS38PRON
IF %M2%==3 GOTO KMS38ENT
IF %M2%==4 GOTO KMS38HSL
IF %M2%==5 GOTO KMS38S
IF %M2%==6 GOTO KMS38SE
IF %M2%==7 GOTO KMS38ENTN
IF %M2%==8 GOTO KMS38EDU
IF %M2%==9 GOTO KMS38EDUN
IF %M2%==10 GOTO KMS38PWSTAT
IF %M2%==11 GOTO KMS38PWSTATN
IF %M2%==12 GOTO KMS38ENTLTSC2019
IF %M2%==13 GOTO KMS38CORE
IF %M2%==14 GOTO KMS38COREN
IF %M2%==15 GOTO KMS38COREC
IF %M2%==16 GOTO KMS38TEAM
IF %M2%==17 GOTO KMS38SN
IF %M2%==18 GOTO KMS38SEN

:KMS38PRO
@echo off
title WACT [Activating...]
cls
echo Installing Key [W269N-WFGWX-YVC9B-4J6C9-T83GX]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38PRON
@echo off
title WACT [Activating...]
cls
echo Installing Key [MH37W-N47XK-V7XM9-C7227-GCQG9]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38ENT
@echo off
title WACT [Activating...]
cls
echo Installing Key [NPPR9-FWDCX-D2C8J-H872K-2YT43]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38HSL
@echo off
title WACT [Activating...]
cls
echo Installing Key [7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38S
@echo off
title WACT [Activating...]
pushd "%~dp0"
echo This Edition does not support KMS38! But it does support HWID =)
del gatherosstatemodified.exe
pause
goto MainMenu

:KMS38SE
@echo off
title WACT [Activating...]
cls
echo Installing Key [37D7F-N49CB-WQR8W-TBJ73-FM8RX]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 37D7F-N49CB-WQR8W-TBJ73-FM8RX >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38ENTN
@echo off
title WACT [Activating...]
cls
echo Installing Key [DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38EDU
@echo off
title WACT [Activating...]
cls
echo Installing Key [NW6C2-QMPVW-D7KKK-3GKT6-VCFB2]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38EDUN
@echo off
title WACT [Activating...]
cls
echo Installing Key [2WH4N-8QGBV-H22JP-CT43Q-MDWWJ]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38PWSTAT
@echo off
title WACT [Activating...]
cls
echo Installing Key [NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38PWSTATN
@echo off
title WACT [Activating...]
cls
echo Installing Key [9FNHH-K3HBT-3W4TD-6383H-6XYWF]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38ENTLTSC2019
@echo off
title WACT [Activating...]
cls
echo Installing Key [M7XTQ-FN8P6-TTKYV-9D4CC-J462D]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38CORE
@echo off
title WACT [Activating...]
cls
echo Installing Key [TX9XD-98N7V-6WMQ6-BX7FG-H8Q99]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38COREN
@echo off
title WACT [Activating...]
cls
echo Installing Key [3KHY7-WNT83-DGQKR-F7HPR-844BM]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38COREC
@echo off
title WACT [Activating...]
cls
echo Installing Key [PVMJN-6DFY6-9CCP6-7BKTT-D3WVR]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:KMS38TEAM
pushd "%~dp0"
@echo off
title WACT [Activating...]
cls
echo This edition does not support KMS38! But it does support HWID =)
pause
goto MainMenu

:KMS38SN
@echo off
pushd "%~dp0"
title WACT [Activating...]
cls
echo This edition does not support KMS38! But it does support HWID =)
del gatherosstatemodified.exe
pause
goto MainMenu

:KMS38SEN
@echo off
title WACT [Activating...]
cls
echo Installing Key [6XN7V-PCBDC-BDBRH-8DQY7-G6R44]
pushd "%~dp0"
mkdir %systemdrive%\WACTFILES >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 6XN7V-PCBDC-BDBRH-8DQY7-G6R44 >nul
move gatherosstatemodified.exe %systemdrive%\WACTFILES\gatherosstatemodified.exe >nul


%systemdrive%\WACTFILES\gatherosstatemodified.exe GVLKExp=2038-01-19T03:14:07Z;DownlevelGenuineState=1
clipup -v -o -altto %systemdrive%\WACTFILES
cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr
echo Done!
pause
goto MainMenu

:ONLINEKMS
@echo off
title WACT [Online KMS Version]
pushd "%~dp0"
cls
echo:
echo:
echo:
echo:
echo:       ______________________________________________________________
echo:
echo:                              Editions:
echo:
echo:             [1] Pro         ^| [7] Enterprise N   ^| [13] Home
echo:             [2] Pro N       ^| [8] Education      ^| [14] Home N
echo:             [3] Enterprise  ^| [9] Education N    ^| [15] Home China
echo:             [4] Home S. L.  ^| [10] Pro WSTATION  ^| [16] Team     
echo:             [5] S           ^| [11] P. N WSTATION ^| [17] S N
echo:             ==================================================                                                       
echo:             [6] SE          ^| [12] E. LTSC 2019  ^| [18] SE N
echo:             
echo:                  
echo:                                                                     
echo:                                                       
echo:             
echo:             
echo:       ______________________________________________________________
echo:
powershell write-host -fore DarkGreen Enter a menu option on the Keyboard: 
SET /P M3=jklsdjgkljsdfgkljgkldjlksgjkl >nul
IF %M3%==1 GOTO ONLINEKMSPRO
IF %M3%==2 GOTO ONLINEKMSPRON
IF %M3%==3 GOTO ONLINEKMSENT
IF %M3%==4 GOTO ONLINEKMSHSL
IF %M3%==5 GOTO ONLINEKMSS
IF %M3%==6 GOTO ONLINEKMSSE
IF %M3%==7 GOTO ONLINEKMSENTN
IF %M3%==8 GOTO ONLINEKMSEDU
IF %M3%==9 GOTO ONLINEKMSEDUN
IF %M3%==10 GOTO ONLINEKMSPWSTAT
IF %M3%==11 GOTO ONLINEKMSPWSTATN
IF %M3%==12 GOTO ONLINEKMSENTLTSC2019
IF %M3%==13 GOTO ONLINEKMSCORE
IF %M3%==14 GOTO ONLINEKMSCOREN
IF %M3%==15 GOTO ONLINEKMSCOREC
IF %M3%==16 GOTO ONLINEKMSTEAM
IF %M3%==17 GOTO ONLINEKMSSN
IF %M3%==18 GOTO ONLINEKMSSEN

:ONLINEKMSPRO
@echo off
title WACT [Activating...]
cls
echo Installing Key [W269N-WFGWX-YVC9B-4J6C9-T83GX]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSPRON
@echo off
title WACT [Activating...]
cls
echo Installing Key [MH37W-N47XK-V7XM9-C7227-GCQG9]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk MH37W-N47XK-V7XM9-C7227-GCQG9 >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSENT
@echo off
title WACT [Activating...]
cls
echo Installing Key [NPPR9-FWDCX-D2C8J-H872K-2YT43]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSHSL
@echo off
title WACT [Activating...]
cls
echo Installing Key [7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSS
@echo off
title WACT [Activating...]
pushd "%~dp0"
echo This Edition does not support ONLINEKMS! But it does support HWID =)
del gatherosstatemodified.exe
pause
goto MainMenu

:ONLINEKMSSE
@echo off
title WACT [Activating...]
cls
echo Installing Key [37D7F-N49CB-WQR8W-TBJ73-FM8RX]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 37D7F-N49CB-WQR8W-TBJ73-FM8RX >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSENTN
@echo off
title WACT [Activating...]
cls
echo Installing Key [DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSEDU
@echo off
title WACT [Activating...]
cls
echo Installing Key [NW6C2-QMPVW-D7KKK-3GKT6-VCFB2]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSEDUN
@echo off
title WACT [Activating...]
cls
echo Installing Key [2WH4N-8QGBV-H22JP-CT43Q-MDWWJ]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSPWSTAT
@echo off
title WACT [Activating...]
cls
echo Installing Key [NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSPWSTATN
@echo off
title WACT [Activating...]
cls
echo Installing Key [9FNHH-K3HBT-3W4TD-6383H-6XYWF]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSENTLTSC2019
@echo off
title WACT [Activating...]
cls
echo Installing Key [M7XTQ-FN8P6-TTKYV-9D4CC-J462D]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSCORE
@echo off
title WACT [Activating...]
cls
echo Installing Key [TX9XD-98N7V-6WMQ6-BX7FG-H8Q99]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSCOREN
@echo off
title WACT [Activating...]
cls
echo Installing Key [3KHY7-WNT83-DGQKR-F7HPR-844BM]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSCOREC
@echo off
title WACT [Activating...]
cls
echo Installing Key [PVMJN-6DFY6-9CCP6-7BKTT-D3WVR]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:ONLINEKMSTEAM
pushd "%~dp0"
@echo off
title WACT [Activating...]
cls
echo This edition does not support ONLINEKMS! But it does support HWID =)
pause
goto MainMenu

:ONLINEKMSSN
@echo off
pushd "%~dp0"
title WACT [Activating...]
cls
echo This edition does not support ONLINEKMS! But it does support HWID =)
del gatherosstatemodified.exe
pause
goto MainMenu

:ONLINEKMSSEN
@echo off
title WACT [Activating...]
cls
echo Installing Key [6XN7V-PCBDC-BDBRH-8DQY7-G6R44]
pushd "%~dp0"
cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >nul
cscript //nologo %windir%\system32\slmgr.vbs -ipk 6XN7V-PCBDC-BDBRH-8DQY7-G6R44 >nul
del gatherosstatemodified.exe




cscript //nologo %windir%\system32\slmgr.vbs -ato >nul
cscript //nologo %windir%\system32\slmgr.vbs -xpr

pause
goto MainMenu

:EXTRAS
cls
@echo off
pushd "%~dp0"
title WACT [Extras]
echo:
echo:
echo:
echo:
echo:       ______________________________________________________________
echo:
echo:                                  Extras:
echo:
echo:             [1] Do Nothing
echo:             [2] Extract $OEM$ Folder
echo:             [3] Do Nothing
echo:             __________________________________________________      
echo:                                                                     
echo:             
echo:             
echo:             
echo:                                                                     
echo:                                                          
echo:             
echo:                                                
echo:       ______________________________________________________________
echo:
powershell write-host -fore DarkGreen Enter a menu option on the Keyboard :
SET /P M4=jklsdjgkljsdfgkljgkldjlksgjkl >nul

IF %M4%==1 GOTO MainMenu
IF %M4%==2 GOTO EXTRACTOEM
IF %M4%==3 GOTO MainMenu

:EXTRACTOEM
cls
@echo off
pushd "%~dp0"
title WACT [Extract $OEM$]
echo:
echo:
echo:
echo:
echo:       ______________________________________________________________
echo:
echo:                        Method Selection:
echo:
echo:             
echo:                         [1] Online KMS
echo:             
echo:             __________________________________________________      
echo:                                                                     
echo:             
echo:             
echo:              		    More coming soon =)
echo:                                                                     
echo:                                                          
echo:             
echo:                                                
echo:       ______________________________________________________________
echo:
powershell write-host -fore DarkGreen Enter a menu option on the Keyboard :
SET /P M5=jklsdjgkljsdfgkljgkldjlksgjkl >nul


IF %M5%==1 GOTO EXTRACTOEMONLINEKMS

:QUITTER
MSG * "Thanks for using WACT!"
pushd "%~dp0"
del gatherosstatemodified.exe
rd %systemdrive%\WACTFILES /s /q
exit /b

:EXTRACTOEMONLINEKMS
cls
@echo off
pushd "%~dp0"
title WACT [Extract $OEM$ Online KMS Version]
echo:
echo:
echo:
echo:
echo:       ______________________________________________________________
echo:
echo:                        Edition Selection:
echo:
echo:                        [1] Pro
echo:                        [2] Enterprise 
echo:                        [3] Education
echo:             __________________________________________________      
echo:                                                                     
echo:             
echo:             
echo:              		    More coming soon =)
echo:                                                                     
echo:                                                          
echo:             
echo:                                                
echo:       ______________________________________________________________
echo:
powershell write-host -fore DarkGreen Enter a menu option on the Keyboard :
SET /P M6=jklsdjgkljsdfgkljgkldjlksgjkl >nul
IF %M6%==1 GOTO OKMSPROOEM
IF %M6%==2 GOTO OKMSENTOEM
IF %M6%==3 GOTO OKMSEDUOEM

:OKMSPROOEM
@echo off
cls
title WACT [Extracting...]
pushd "%~dp0"
del gatherosstatemodified.exe >nul
mkdir $OEM$
mkdir $OEM$\$$
mkdir $OEM$\$$\Setup
mkdir $OEM$\$$\Setup\Scripts
echo @echo off > $OEM$\$$\Setup\Scripts\SetupComplete.cmd
echo call "%WINDIR%\Setup\Scripts\WACT.BAT" >> $OEM$\$$\Setup\Scripts\SetupComplete.cmd

echo @echo off > $OEM$\$$\Setup\Scripts\WACT.BAT
echo pushd "%~dp0" >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -ato >> $OEM$\$$\Setup\Scripts\WACT.BAT
goto MainMenu

:OKMSENTOEM
@echo off
cls
title WACT [Extracting...]
pushd "%~dp0"
del gatherosstatemodified.exe >nul
mkdir $OEM$
mkdir $OEM$\$$
mkdir $OEM$\$$\Setup
mkdir $OEM$\$$\Setup\Scripts
echo @echo off > $OEM$\$$\Setup\Scripts\SetupComplete.cmd
echo call "%WINDIR%\Setup\Scripts\WACT.BAT" >> $OEM$\$$\Setup\Scripts\SetupComplete.cmd

echo @echo off > $OEM$\$$\Setup\Scripts\WACT.BAT
echo pushd "%~dp0" >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -ato >> $OEM$\$$\Setup\Scripts\WACT.BAT
goto MainMenu

:OKMSEDUOEM
@echo off
cls
title WACT [Extracting...]
pushd "%~dp0"
del gatherosstatemodified.exe >nul
mkdir $OEM$
mkdir $OEM$\$$
mkdir $OEM$\$$\Setup
mkdir $OEM$\$$\Setup\Scripts
echo @echo off > $OEM$\$$\Setup\Scripts\SetupComplete.cmd
echo call "%WINDIR%\Setup\Scripts\WACT.BAT" >> $OEM$\$$\Setup\Scripts\SetupComplete.cmd

echo @echo off > $OEM$\$$\Setup\Scripts\WACT.BAT
echo pushd "%~dp0" >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -skms kms.03k.org >> $OEM$\$$\Setup\Scripts\WACT.BAT
echo cscript //nologo %windir%\system32\slmgr.vbs -ato >> $OEM$\$$\Setup\Scripts\WACT.BAT
goto MainMenu