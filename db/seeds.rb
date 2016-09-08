# Users:

User.create!(email: "kevinbacon@gmail.com",
              password: "kevinbaconthebacon",
              first_name: "Kevin",
              last_name: "Bacon",
              date_of_birth: "07/08/1958",
              gender: "M",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1472773077/kevin_bacon_rfieaq.jpg"
              )

User.create!(email: "taylorswift@gmail.com",
              password: "onceuponadecember",
              first_name: "Taylor",
              last_name: "Swift",
              date_of_birth: "12/13/1989",
              gender: "F",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1472773085/taylor_swift_sa8vhf.jpg"
              )

User.create!(email: "conan@teamcoco.com",
              password: "teamcoco",
              first_name: "Conan",
              last_name: "O'brien",
              date_of_birth: "04/18/1963",
              gender: "M",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1472773086/conan_o_brien_mqnz38.jpg"
              )

User.create!(email: "jschlansky@teamcoco.com",
              password: "starwars",
              first_name: "Jordan",
              last_name: "Schlansky",
              date_of_birth: "04/13/1973",
              gender: "M",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1472773091/jordan_schlansky_esou6k.png"
              )

# Routes:

Route.create!(
  name: "Kevin Bacon's First Trip",
  description: "Going to Hawaii.",
  author_id: 1,
  distance: 4.63046963351436,
  coordinates:  [
    "21.31176522472058, -157.83782958984375",
    "21.282976338263616, -157.8247833251953"
  ],
  polyline: "anbaC~hib]FBDLBXAj@K|@y@zAKz@An@BVDLRFRCRMrAeAbBuA^a@RSx@g@TGL@DLCjBIpBI`@c@`AiCnFON[RWJ_@F]@g@Gg@Mi@a@Ya@_@y@[[SESCS?[HUROVC\\@b@LlAj@fDZrAZv@t@r@hAdAp@x@^z@X|@h@jBLz@Bj@Ap@MjAQhAAVMz@E|@@h@L|@Rp@V`@hAvAAVFNDLD@NJHz@b@hHMnA]fAc@pAOfAEjCKdAa@nB]fA`@t@JC?FDNTZTXNXJj@Rv@LNh@^Th@Tn@vAv@n@`@\\Lj@Ht@Nt@V^H^Hh@JrAFdA@d@B`@DhATh@HP?RGl@i@^_@XK`AOXMb@g@ZSl@If@EpB]Z?fA_Ex@mDfHxB|EzAVJHBXJDa@F_@j@mC`@uB@g@?WZqApCoLtByIbDsMTmALaAhAeOLgBRsA`@}ATm@d@gA|BaEhHgMhCsEl@qA^cAv@sCvH{Yv@{B|BcFxA_DrAsC|AoB`BcB|@s@jHkFt@s@fByBjBcDrCsFtAqClB}Dp@mAb@{@\\e@dBmBlAiAzDiDxAcB|AcC~@sBtCgH`Nq\\~B{FlAyCNKFGlB_E~AyC`@y@p@eBFQbAPn@Pt@gBvDkJtDiJ|AsDdIvDvRnJjEvBdEpBdEvBpDbBx@l@c@l@_@h@x@h@LHH?NIn@g@b@OhAKv@AnAMrASx@IJIVQd@E`@@XLJLNb@jDdNlA~EBf@Ef@iBlE"
)

Route.create!(
  name: "Kevin Bacon's Alaska Trip",
  description: "Going to Alaska.",
  author_id: 1,
  distance: 1218.5548112891,
  coordinates: [
    "58.309488840677645, -134.296875",
    "61.18562468142283, -149.6337890625",
    "64.8115572502203, -147.6123046875"
  ],
  polyline: "ubzbJ|zlsXgfNhvg@_LnjGp_Fx{AyqEh`TquxAd{jAupYh{Bw~k@hq[e`NzsTrX}}@rmBcg@brCjLoKhxDc|@ttI}fFfb]eqQ|u]ihGh~a@s|FnrgAkjPz`NcaIm`Bc~Fz|B}|AbjHslHp}Og`I}_BegOrbKs`Sfx[sgQl|NkiLfqFsaFhvI_eI|uA_|F_pEoiD|aBitEvqJsxTzeBoyItoAsjMrfIarPlxa@gfQ~cYkeCpdMmoRrft@y~JvjLyaFpu]abLdgp@_Jx~a@nqBvwKg~Exe@}dMhrJu}KzaBswFz~Uq|EbnPa_Qzib@}lF~vPelBvcUifGvcIefKboLwtInkIwwG``R_rBfmZ}zCtaW_eFz|DsgM`td@s}Y|br@agItm^sdIpzh@owEjlA_aEzhKwrN|gG{rWzEmnF~qRktHvgMou[tTonDbhR{bDzqBspGo_BahEvsJemEzbF{iCtsKsdEjlKsgMb}OueJjb`@k`Wtwe@yrJhda@q`HpeXcxOvj[gvKzdZedAhjUmrOzow@snAvxdApoStnKz~KhlW~dAn`Jz_C`pIt|DzFznJzgO|~GuyArdG`xAlxBlvQhsBpfd@`dJ~}Et~FvxC`lGzqLtlHfhRd{@p`}@h}@lj`@|yNlng@|yIhqNp~AlwNbmTdv_@foExb^xmKddUl`Jpa_@tsFliNv}ObbExxIpcBcBlsKxIbaa@`|Bpi{Bn_Jth{@rlExaQbp@ntb@hgHhdj@loHtia@ldHjwJ|tFjwXrb@fj[hq@hni@iuB`bs@n_Cnmk@blJlukAl{Ih}s@blIvjMz{L~qJgCbdL~lKBtkDjuRpdOpla@zfLhuI~aOhn[jiAbyYcE|tF`KgiFeYejIkbEit[}uEklK_fGu`Bu~FqdIijPmv`@gyDc`UavKnIqoBtiWmgA~hd@dzAleW_bDxbM{eI~oViqJxlWs~NbeMyoEtPayT}]{cMwxB_dDvtBuhKynAqsGke@uwElqTghIztLehKl}@}yY|pBihKn~@gkIuvFo}O{e@wzKdr@{iP{rh@gfO}f`@asDkuUurSyuXcdOoqO_qLakUewPiw]mlIs}GapM}fj@uuNiy^azDr[mnFacCa{GfyAmnJqsEgxM|oQcyJ`sD{{MphSwjSf_TyzH|fAseMfmLwgMpeLukNl{CeuBuhLioE_eS_cLsyMyaLukDitL`cJydGiT{iIv_Fk{Ekp@{uNctm@awB_pf@aeDgwi@wyFkz_@y~Dqf_@oxGsyRlp@gxv@"
)

Route.create!(
  name: "Kevin Bacon's Nebraska Tour",
  description: "Going to Nebraska for promotions.",
  author_id: 1,
  distance: 236.724371481477,
  coordinates: [
    "41.25303244065319, -95.9930419921875",
    "40.82212357516945, -96.6851806640625",
    "40.36747374615593, -96.185302734375",
    "40.5847565470127, -98.3770751953125"
  ],
  polyline: "u~xzFbb{hQt`AK`F?jK~JvHv@|AbAXlFrArHvO|W^nY?xEnC@hQAdh@AxNHtErMTrfBShxBvHtv@FdhBqFn_AmBzl@nEjOhOfLpg@gA~_@`M`l@bJr_@xDdMbFpb@zm@rs@~jAxi@bq@nb@vg@h]~h@zr@zpA`RjWna@|]|w@nu@xRxf@j^|tArp@tgCfMv\\~cAbvAr^ny@bl@tyAvu@nlBvPlZjZh\\ljBxwAb\\dN`RbBnSeAv}Ae]fUlDbSnPh^l\\~e@`[hj@dZjVhYrHtPzw@liDvg@zyBdVne@n_ApsAxv@`vArq@|kAhmBb_Chk@hs@rYbt@lrB|{F~FnUfOxwAf]xiDpKhm@te@fuB`@~LkAxQuOnk@uBnPrB|yCZjmKbEb^fz@h}Ahw@t_Arb@zh@fFrLnX`p@l[dn@NvE{CvAoBwFds@mVlRoCfn@}@~UZt[VChEmCwF_Faq@lAqPpGBfR?fMeAjSgJ|VuQpKgPtByIj@}GP}C?gFvAs@VaHxE@lZB~E@?eFJy@Ny^Aw^Aqo@LasAPe|Dd@yeKJwyDFmx@?_EpDC`BCbHGpMIpOLnmA?|oBHdnC?l_CIbq@MxIyDzFgMt@u\\~@yWpHmM|LiCdNfD|lBW~hCSlECz[[pLoCtUsP`YeEhcCR`oL_B`tKfAb|C_@hz@a@vREAoRTgbBBqgF?khCsH{v@dFiu@rAioDn@k\\|EcLvGoEjPkAbNqIhc@czB`EsTtk@e|Anp@c~A`Pwh@nVw_At[_m@pJmP|CwQTufBKulCOurDHkgBxRcBrgEKzx@Ihz@KdB@\\wE?gJ?fJ]vEeBA}H@kJB_e@D{x@HsgEJgSA?rRHntCFnmCJtgDyAz~@o\\bm@yRzh@sZljA{|AntD{F|VmFlYa^tlB_F~HeMbEcPnB_GtFuDbMc@buDoCt_@aCnn@jF`b@v@r^IzzCSjtJwAbbFr@hsFMbpTm@`hAyAfCgDfCv@nDjDlN`@|FDp~AzCje@hCvHaCfBqBjEGdwBOn}EFnmGg@vwMIx~AsDrP_JxH{p@b@mM`B_IpHyDxLi@ba@ObmC@`l@vEvPEh_LPjmIoAx{Gl@tfFA|IgK?yU@wf@@}y@D_]BkQA@bWJxwAKv|@[bqCGbqCcAljLIbaVVb_\\kEha@mItG_{@CaLPErI@x{@@|rBDnpEUjgE[teUIhz]c@duMCn`A?rGcBhGaQ@iN@ueA@ugDL{sAGOrEOb}AGthCLriCKbbHvAf`Xo@z{KChzCCnl@@~VqGCcMI_D?AtFxB@\\@"
)

Route.create!(
  name: "Kevin Bacon's Vacation",
  description: "Going to France.",
  author_id: 1,
  distance: 501.277542346552,
  coordinates: [
    "48.821332549646634, 2.373046875",
    "48.796008904140365, 2.1368408203125",
    "45.73685954736049, 4.8779296875",
    "43.61221676817573, 3.88916015625"
  ],
  polyline: "if`iHqukMlxA_GrRfd@p|Ah_AhxA_NjwCnUl[{PyMzdB{NdnJaG|rBou@lp@mk@tsBa`A|qM{uA|hBvaAkJb~@qhGpZq}Hxv@c_Bfl@yxEcSibDxf@{|CxhAtl@tzAtt@xrClu@bp@ej@hsBqwBnoAadDnhDm}Ef}GupH`|EavGnuFkgBnbE}r@xhCuT|lBejAhcIcbD|tBek@faDcvCbqD_oCl_BoyGjyFoqKjcJw`L|`FevL~{FgjMzmEkzQvdJ{vPdaI{cKjoJovLd`CkwG~n@azHfbDqqTt`A_wEba@y{Fxm@saJj}@mkC~aD}yAbbBenAvr@ydDlrB{fFviAkvDnrBvInjBipBxnBgkFhlEc|Mf|EahHlcIwt@|tFq_G~yFi|Ffl@qmHoBezG~tFca]jjDqfJ|yKyfQv`DwhKjeE{mF|wEwnAzxBguAx`Ao|F`tFstHtdCe~I|bC{~CvxCmd@p~BlAvhC}vBjGoiCnnBa_CfkCuqAvEuzD~O_iCxcAmdA`zAwbEzqDp_AziKj~EfeKvc@|qDmbA~kHl_@jvDnRzxDupAvuL}zA|sFegA`jBsx@pyAa~B~oAw~@zwAnVtkAcG|aAmrAzsCgi@~hM`yGrrKpfCrsJ`pFjgB|kBlaEvi@zsCon@vyDfZpeIteCdrIfg@`hD`sBhjD~d@j`CfdAx~ClI`qDsbAziEzpBn{Bwc@~hAehE|pBs}F`c@erC{n@_iDzs@ykDpgCarCdmEgpAfgEkY`qB_iAvwAjaFn`CwkB~yCpi@fd@p_By^z`@hc@[nl@}NfSdh@jTxtE`cDkJvjCnDz|BnkAnsIb~EdoGo~E|e@azBlsAox@dnApSxjAdsBdqDfk@|iIra@dwEvdCjbCgMh_Ko`@~yBiu@dgDyxAt|CigA|kCybBja@}aAb}@oGllBes@`_E{VrpCus@`|Bz|AbwBjVfrAnx@ruB_v@rkJcF~aGi|@`qHllAf`FxbArcHpe@bwEttC`sA|}DjhGl`BfyE~@neDwt@rbFp]hzFmi@rzEgkAtwDbmAhgDjzDvuD~QvkJnxEloL{i@~`F_v@vgBjLxsDtxCtiD|nAnkCseBvnAyThy@sbB~lG_gEloCy}A~eC~CniFhuC||Bx@vk@zDz|BfoEhhD|wGpmCjfGzqC~hDt`Gt_Mnf@xdE|`Bv{EzjAxsFn~DpdD`aF|rQ~xEldHfuBzjCaNncEzaBjiCd`AtwCf_@biDjdCjwEndC|fNtpE`rIx~Cx`D|z@xqBaD`yEsLld@"
)

# Route.create!(
#   name: ,
#   description: ,
#   author_id: ,
#   distance: ,
#   coordinates: ,
#   polyline:
# )

Route.create!(
  name: "SoCal Course",
  description: "Going to beaches the the Carlsbad flower garden.",
  author_id: 2,
  distance: 138.536915754284,
  coordinates: ["34.04469442222683, -118.28258514404297",
    "33.66606814261825, -117.98458099365234",
    "33.15709799197017, -117.3226547241211",
    "32.70411114440741, -117.14824676513672"],
  polyline: "wuxnExi|pUtCaOsAw@gEuBr@aLrBoFpCiEfCdBtGxF~K~ElUfAtd@jA~Rs@hXbKjq@vZzc@rAfz@_@vyAuAr~DdAbq@iGtYlAhuAvDbo@|CxX`ThQdGbxApAdm@mEz~@aBtsAKp{@X`KdDtHsIxb@ym@ro@g}@~k@ek@~h@{g@|Ra]xC_dD{FulAx@gY|Osf@hUwi@~SqZ|Lkm@d@{aAtMep@zSsd@~Gw_@dKo}@hJqStA{UV}sAbCm_@~h@ay@p~@wrAlIqE`j@wMzJqQdA}K\\mpEQkv@xF}O`iAaxA|eBczBzbAgrAxLkIxFgB|ZS~x@WjqBEhZl@n^~c@x[n^fTnGrh@GbRCdNiDtg@_K|JAVFbCEjBsChBaBnBy@`A}BMmJE_k@Dk]PqSjZMjIExBCrAiCGaS@iS?qCEif@OkbA[u]_I_Yo@ma@DwiBOqoAxCmIsHkJqKyIea@s_@sl@kl@iTkb@xAcKh]g[hr@{dA|\\wd@jTqGbx@wNnR}ObN_T|Nm^vTofAd^qg@pNe`@`NmUta@qR~NuPhEiLbHyo@pXqaArHkXnDe_@lFk\\jKw]lBi^dJgZr\\mn@bGmk@lMis@fDcp@fCiX~IiVbVo_@b[eo@tTut@fZyb@t_@ma@xZqZ|N}}@vJgOji@gNfe@cFhg@tClRo@dNeH|RiYl]_PhuAyc@bg@}KhZvAna@jQtn@vc@vf@ba@tOlGxLz@bP}BlK_JtFoNbd@ax@h\\yv@lXuv@nSu\\`Sgd@z[_c@d\\eo@x_@}W~YqYdm@c]vr@c[voByz@hf@}a@r`@enAlRcp@nI{Lpv@w}AxyBosDvxC_sElXqPpf@cFjyAygBf[ea@di@w_@~bBonAvn@y}@~cBynAr[mLzNoMpTu`@vjAosAfPsO~n@_Ozv@kb@fNuTvZcdAffAw{@lpAcaAvq@u`@pPqEjK|OtMfX|EyDr@bJqAv@cHsLeTqc@~f@}Vl{@{^jXcAz[uLz_A{b@nmAcn@`|D}wBhxBue@dlB}_@lc@gJbRsJnd@cXbk@o\\~h@{JjQoHtSaTzs@_y@fYkGri@qEt`@gD~r@kMvu@uSr`AgW|u@mJhv@sIroAuHji@qLla@oXxNsSlOgKxt@y\\tXZpm@nN||ExTdq@n\\bh@lEvZkIh]iJph@qAhPwHlf@ig@~YsUfYoSxZqUdgA_g@bW_C~~@|Hbi@uGnmAeShU_G|PyTl^i_@t]y}@pPy\\nh@ic@l}@gw@nE{XiG{^@kWbEsHpYeK|MO~bAi@tO}IaE~I"
)

Route.create!(
  name: "Yearly New York Trip",
  description: "Going to visit friends and family around NYC.",
  author_id: 2,
  distance: 45.9909031031354,
  coordinates: ["40.73685214795608, -74.1848373413086",
    "40.775341832372675, -73.97335052490234",
    "40.677513627085006, -73.93077850341797",
    "40.727486422997785, -74.18209075927734"],
  polyline: "uqrwFxoycM~A}LzInC|v@zUva@pMdDGdCr@dBx@dJ`GpBRtCgAtB_FxFaUl@iF`@iHCcKwBwQeEwSiBmNi@kMKme@l@g[j@yMlBiQx@aE`CgIv@sAxCuKxAoEfAaEfAaBlDqCzA}BI}B{@oAeL}EkFaFgIoMsGyRyDiN{CsIaGwL}EyGcGgEmFaBoIgAmRaE_KsEeGsFcOoS}KeM{FeDoEsAsEs@aQ]uJ[uF_AkYoHkNaIgJcJ{G}JaDaH_Qcd@yE{NgDwNcCyVm@g~@o@aMcAkHeEkP{Qeg@wLs]cFwNcDoHmE}HmHuJ}K}JoLeHuT{MuBkA_BmBgDiBeFeC{AuAaByDg@gHp@kGdEsOzEgMhC}Fh@eFdAcJdJq^bKu]hDuIvLs^rJaYrAsBxB_ApDPlIhBrFtBdAdA\\hBStB}@hAqB?USgImFqBmBmB}B]uAYuCBgBnA{F|Wax@f]ufA|DiP_@_AqAo@}EsCeAhEk@pBkC_B_G{DsNmJwNgJaWuPsNmJwFuD{BaBrCsIdAcDPw@zFaR@cASgBXcBbF}J~FeLlCcMv@iBPg@\\cA|BzAvFmQ^iAfMo`@`K{[vBvAbAwC\\e@rDnE|C`BbQbMzDnFtJrIp`@~[|J`JbG~EpHdEtHrBlNpBrEhCnHbEzCRfScD|FqAtDoD~DyDbEq@|Jx@tHbDvLrGdDbArZfC`KpD`T`JvCfDxAxEpA~\\fFnv@dCh[|@lFg@zDqCpFmG~Ik@zDi@p@o@YAgAz@mBnNmR|LsPp\\{c@zJeOlAg@fPT~Zz@xFdAvIhFv@qBhAsEhWq}@`DeLx@{CnAqHjHuk@vFud@rJuu@`Aub@z@sa@|@sa@h@sa@a@CFnCiA~i@aBjw@aAlb@gFlb@_RvyA}BxSy@zCgAdCwA~@oLxHgKjG}l@`VgXpLwVdLyf@xU{O`HsFhCcJbE{@jCcCnKmExI{Y~c@gGzIw@S{B{AsBQoAr@s@tAe@fDuCnk@kIl`AaB~]w@fIoEdRuBbDkBfEw@vMuAta@`D|]]zGmAjCcg@~m@kDhKq@vFEdIfBxm@|LtlAhAtHtCtZj@pQhAdXf@zOHfLFdRq@lg@eAjx@`@vLlApHhBdGvLdWlLfXfM|WzMlYnVxg@~Qd`@hBpBjQdJrSnKdCdEz@~CPvDgB`]Op\\\\hm@jAhNfAfGjDjQvBbOHvPq@pFoB`JmE|L}AxCu@\\uAJqCaAmQiFi@mBxAyLN}@}@m@cEaCeOoHqO}GuHcE_@w@?hB`@~Az@dFjUhHhHzB"
)

Route.create!(
  name: "Vegas Trip Route",
  description: "This is the route that I usually take for my trips to Vegas.",
  author_id: 3,
  distance: 452.153677905228,
  coordinates:
   ["34.052659421375964, -118.23348999023438",
    "34.48109002095169, -114.3208122253418",
    "36.17779108329074, -115.12985229492188"],
  polyline:  "q}ynElkspUwL_uABmwBkAw|A}c@wvAeu@soC_JemHhIedIrYc{D_Iq~Ey\\{vIfMieK`FalC~_@okCox@msEnIy_D}s@cdC}a@ujHwK}aEfNonCdyAg|CtPq_Be@gwHwrCwGaz@ia@{_C}yCyeCwaDk`FakH_mA{aBi`Bw`AecBgUqe@f`@ccBj~Byt@tpAejAxCqeDtS_tAp~AglBlwAmxAsPiK{}Ayy@cuC_w@oUkeFgdE{uNchKceEgvBevCut@iuAmtAss@wcAs`H}hF}zEwkDoeDgpAwaBLecBcMgkCyiAseAko@m{E_{E}hDmqEa}BepCczD_v@_qBs_@_tAet@ggAouAaKofAmAykFyBenBxf@wpCd~@ksA`x@coFbcBoyOb{@c`Nvg@yeM`hCcqWhvBa{S`oAkaMlf@inB~qBk_D`oAooDht@mlGpWgmHaBeaIsKqiMvS}jB|s@ysCmEgaD{Xw`BkBatAwN{jHwIeeD_`@uvBoVgbB`IaxBvkA}pJjXqbIwj@uoScs@_pOoqCyyKueB}pEqeCexIe~@arGdNo{HipA{oZgdBgdWvBqxCsmD{rRzIk~Foa@inDkzBytKkH}hAnUi}AgXosEyr@gjEpb@uvBt`Cu_FxyB{rDdeA_j@zy@g}@jrGqvA`bCueA~~EcgExd@giAvAylAyAmuEcj@efLa[qyOhGccAhcD_xAdiC`Zx~EpfBj{Abg@tr@fcAx}BfdDlqAzN`vAw[n~Gq~Av_D]l_@yMIo_@iCgn@hHwBnTiJde@ma@nJeVp@rQkc@xSaPh]{XXp@|l@DzSiPx\\mdDXcu@xFo_Cjl@uhF~gAakAoe@ey@apA_lAmnBe|@al@kvFuiBoaC{i@ysDjrAm_@lLxD`jBvQ`dLro@n}LPz}Iax@f~A_|C~aCyrAhfAafCnr@{oFloAgiA|mAk`Ark@c_E~}GacAnnDlAncB|bA~xGcgBzkAifBtf@gqAz`AgcAbvCqYhtAaCnWmbDdx@e{GgFoyAaEg_A{g@ojHlYuoIlGygDpfBmyRfyCgw^rqFy_FnaA}~@`T}wBof@}wBaKmmFyNihF~MuhBvQ{nClaB{~DdfCgmB|VcsIyL}kZ{|DulGow@kvBmq@mtDa~AeRrEG|l@e\\nz@ieAjh@mjA~bB_XhxAgCvbDek@rfAgdCzhCmaAfcAyyA|c@a|@zb@yeAni@mp@rbAo`@niBki@`gA{yAzXgfA~CobAng@qbEpT_Xvr@}AzdCaVt~@oI~QiCsJlV_HhStP"
)

Route.create!(
  name: "My Recommended Italy Route",
  description: "These are the places that one should definitely visit when in Italy.",
  author_id: 4,
  distance: 487.126399642089,
  coordinates:
  ["41.9022770409637, 12.498321533203125",
   "43.72347489611479, 11.2774658203125",
   "40.74309523218185, 14.503326416015625",
   "40.85537053192493, 14.272613525390625"],
  polyline: "}ow~F_khkAosBk_CvJed@un@_Fk~@tmAwb@zn@ijDxMiuA}b@bEu}@mJwe@g~FwYuiF{Xc`BqwBuwEudF{tGaaDo_Ahd@mqCxk@yrB~Q{jApw@esCbtAyeBndDqyBb`Fqf@hbBquApi@uoBn]o_BbdC_aEoWobDvo@_iEt~DeaBlxAg{@zgBopAtjC{`@juDikAvyAsxC`uF{cAbnBcaAnfBi_FvjAw{KxzBqrDli@gbAvw@{mBpTi`AnoBemAlsF{{CjfIgrEnsHotEpbAwaAlt@ez@kw@wgEbQk{AriBifEphD}|ClvEkkFh`C_zEz_CodCt^_iF~hA{gLv_EojSpqNmcBfsBu|BzOotF`m@wxHsJ_wDhl@wkCiv@oeBynAo`B|b@sgBlxBa{Bv_Cqb@xjDijAtxF{`BjgCeNzhDq_D~dHw{BnfDijA`Oqt@d}AchG|nGeoCx~AikBdd@o~CxnB{TtgDa~DvsFua@~`CaApkDui@tbEgn@fvAvd@oeAtfAipDkVwv@bS`n@ge@rtCg|@tpA|B~e@jOwj@nfAahKe@arCdhBytBbnBahBgAi|Abc@{xBvqAi_AnsDyiAlsCufB~mB}aB~_EyxFtdBm_@zuFquKn^ajE|_ByoCdlB{zK`vEsnFt~As~@diBhdA|dEraAfgDyp@n|EdStdEmQjeGubA~kPecMxgJckFdfI{gClhBcYffB|GldDojAn{KmoGd|@a}@p|CgiFjkCwcCpfCkh@jeBk@jv@~w@tzDacBxpBui@p}CqlEvcB_rFn_CupE~~@_oGbqBqh@|zCckAjeWstFfhEyvI`qDg|Fle@uhFhcD{dDpvCczC~pCisCznAuGngEpEru@hSdi@glAlxBs{AneAsMpmA{wBnkAmmDpzAefAruAcmDxsE{uBrfC{ExsDsvBj_En_@tzG}jBlmDilA~eBs|Bv~@qcAf}@bEdgDtZb}DsgDncCo_DfxB_yBdiEueBxfK{lG~mBsq@~pC{iG`yDmkV|b@eaNhuDcpLtkNwzZl~C{}JtuB{dApfAocB|bB{xExjBygKpeA_zXruLod_@toFqa]pbFakOpkMwcRxcLex@pnE}d@js@wjA~sCm|GxiGmtF~}HkjNz_E{zE~cBksA~oCt@n}HuXdqJt^~jJpR`}@wIt{A_xCrpEcmDlrBobCjgAgmElu@m`EdjBa}CxP}}Awl@{TiD~gAytBzhJopA`hFkfBb|BszEpvDw_BxzC}DbdBs@nj@ws@dt@CCEF_AjxAvB|I"
)

# Trips:

Trip.create!(
  title: "First Time Going to Hawaii!",
  author_id: 1,
  route_id: 1,
  start_date: "09/12/2016",
  end_date: "09/18/2016",
  expenditure: 708.93,
  log: "This was an aswesome break from work. Got to snorkle and even rode the acrobatic glider!"
).update_attribute(:created_at, Time.now - 86400 * 3)

Trip.create!(
  title: "Northern Lights Trip",
  author_id: 1,
  route_id: 2,
  start_date: "12/26/2016",
  end_date: "12/29/2016",
  expenditure: 856.72,
  log: "Always wanted to see Aurora Borealis. It was freeing, but well worth it."
).update_attribute(:created_at, Time.now - 86400)

# Trip.create!(
#   title: ,
#   author_id: ,
#   route_id: ,
#   start_date: ,
#   end_date: ,
#   expenditure: ,
#   log:
# )

Trip.create!(
  title: "SoCal Trip with Friends!",
  author_id: 2,
  route_id: 5,
  start_date: "09/02/2016",
  end_date: "09/04/2016",
  expenditure: 500.24,
  log: "Had an awesome time with BFF's at Huntington Beach and got to spend some time at the Carlsbad flower gardens. Hit up San Diego briefly before heading back."
).update_attribute(:created_at, Time.now - 40000)

Trip.create!(
  title: "Short Layover at NYC",
  author_id: 2,
  route_id: 6,
  start_date: "09/06/2016",
  end_date: "09/08/2016",
  expenditure: 724.9,
  log: "Spent some time at Manhattan with my cousin and worked my way down to Brooklyn's famous pizzeria and to Long Island."
).update_attribute(:created_at, Time.now - 86420)

Trip.create!(
  title: "Vegas Trip with the Kids",
  author_id: 3,
  route_id: 7,
  start_date: "09/02/2016",
  end_date: "09/05/2016",
  expenditure: 873.25,
  log: "It was meh. Had to take the kids somewhere for the long weekend. I guess I got some shopping done for my wife."
)

Trip.create!(
  title: "My Italy Trip",
  author_id: 4,
  route_id: 8,
  start_date: "08/18/2016",
  end_date: "09/05/2016",
  expenditure: 2310.45,
  log: "Italy was beautiful, as expected. One could taste the sunshine in the wine from their wineries, and the gastronomical centers all had service and quality of food on point. I also got to witness Mount Vesuvius with my very own eyes. I would highly recommend this trip to others."
).update_attribute(:created_at, Time.now - 90000)

# FriendTaggings:

FriendTagging.create!(
  user_id: 1,
  friend_id: 2
)

FriendTagging.create!(
  user_id: 1,
  friend_id: 3
)

FriendTagging.create!(
  user_id: 2,
  friend_id: 1
)

FriendTagging.create!(
  user_id: 2,
  friend_id: 3
)

FriendTagging.create!(
  user_id:3,
  friend_id:1
)

FriendTagging.create!(
  user_id:3,
  friend_id:2
)

FriendTagging.create!(
  user_id:3,
  friend_id:4
)

FriendTagging.create!(
  user_id:4,
  friend_id:3
)
