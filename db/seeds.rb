# Users:

kevin = User.create!(email: "kevinbacon@gmail.com",
              password: "kevinbaconthebacon",
              first_name: "Kevin",
              last_name: "Bacon",
              date_of_birth: "07/08/1958",
              gender: "M",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1472773077/kevin_bacon_rfieaq.jpg"
              )

taylor = User.create!(email: "taylorswift@gmail.com",
              password: "onceuponadecember",
              first_name: "Taylor",
              last_name: "Swift",
              date_of_birth: "12/13/1989",
              gender: "F",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1472773085/taylor_swift_sa8vhf.jpg"
              )

conan = User.create!(email: "conan@teamcoco.com",
              password: "teamcoco",
              first_name: "Conan",
              last_name: "O'brien",
              date_of_birth: "04/18/1963",
              gender: "M",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1472773086/conan_o_brien_mqnz38.jpg"
              )

jordan = User.create!(email: "jschlansky@teamcoco.com",
              password: "starwars",
              first_name: "Jordan",
              last_name: "Schlansky",
              date_of_birth: "04/13/1973",
              gender: "M",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1472773091/jordan_schlansky_esou6k.png"
              )

steve = User.create!(email: "steveharvey@yahoo.com",
              password: "porcupine",
              first_name: "Steve",
              last_name: "Harvey",
              date_of_birth: "01/17/1957",
              gender: "M",
              profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1473440889/steve_harvey_hyzd5z.jpg"
            )

ironman = User.create!(
  email: "ironman@gmail.com",
  password: "teamironman",
  first_name: "Robert",
  last_name: "Downey Jr.",
  date_of_birth: "04/04/1965",
  gender: "M",
  profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1473441547/ironman_pcgwin.jpg"
)

scarlet = User.create!(
  email: "blackwidow@gmail.com",
  password: "blackwidow",
  first_name: "Scarlet",
  last_name: "Johansson",
  date_of_birth: "11/22/1984",
  gender: "F",
  profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1473441615/scarlet_johansson_rgp3gt.jpg"
)

adam = User.create!(
  email: "adamdriver@gmail.com",
  password: "kylorenthedarkside",
  first_name: "Adam",
  last_name: "Driver",
  date_of_birth: "11/19/1983",
  gender: "M",
  profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1473441682/kylo_ren_cvmr7u.jpg"
)

hugo = User.create!(
  email: "hugoweaving@yahoo.com",
  password: "vformegatron",
  first_name: "Hugo",
  last_name: "Weaving",
  date_of_birth: "04/04/1960",
  gender: "M",
  profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1473441800/hugo_weaving_ocelhu.jpg"
)

natalie = User.create!(
  email: "natalieportman@yahoo.com",
  password: "blackswan",
  first_name: "Natalie",
  last_name: "Portman",
  date_of_birth: "06/09/1981",
  gender: "F",
  profile_picture: "http://res.cloudinary.com/davinkim93/image/upload/v1473441919/natalie_portman_grkasz.jpg"
)

# Routes:

route1 = Route.create!(
  name: "Kevin Bacon's First Trip",
  description: "Going to Hawaii.",
  author_id: kevin.id,
  distance: 4.63046963351436,
  coordinates:  [
    "21.31176522472058, -157.83782958984375",
    "21.282976338263616, -157.8247833251953"
  ],
  polyline: "anbaC~hib]FBDLBXAj@K|@y@zAKz@An@BVDLRFRCRMrAeAbBuA^a@RSx@g@TGL@DLCjBIpBI`@c@`AiCnFON[RWJ_@F]@g@Gg@Mi@a@Ya@_@y@[[SESCS?[HUROVC\\@b@LlAj@fDZrAZv@t@r@hAdAp@x@^z@X|@h@jBLz@Bj@Ap@MjAQhAAVMz@E|@@h@L|@Rp@V`@hAvAAVFNDLD@NJHz@b@hHMnA]fAc@pAOfAEjCKdAa@nB]fA`@t@JC?FDNTZTXNXJj@Rv@LNh@^Th@Tn@vAv@n@`@\\Lj@Ht@Nt@V^H^Hh@JrAFdA@d@B`@DhATh@HP?RGl@i@^_@XK`AOXMb@g@ZSl@If@EpB]Z?fA_Ex@mDfHxB|EzAVJHBXJDa@F_@j@mC`@uB@g@?WZqApCoLtByIbDsMTmALaAhAeOLgBRsA`@}ATm@d@gA|BaEhHgMhCsEl@qA^cAv@sCvH{Yv@{B|BcFxA_DrAsC|AoB`BcB|@s@jHkFt@s@fByBjBcDrCsFtAqClB}Dp@mAb@{@\\e@dBmBlAiAzDiDxAcB|AcC~@sBtCgH`Nq\\~B{FlAyCNKFGlB_E~AyC`@y@p@eBFQbAPn@Pt@gBvDkJtDiJ|AsDdIvDvRnJjEvBdEpBdEvBpDbBx@l@c@l@_@h@x@h@LHH?NIn@g@b@OhAKv@AnAMrASx@IJIVQd@E`@@XLJLNb@jDdNlA~EBf@Ef@iBlE"
)

route2 = Route.create!(
  name: "Kevin Bacon's Alaska Trip",
  description: "Going to Alaska.",
  author_id: kevin.id,
  distance: 1218.5548112891,
  coordinates: [
    "58.309488840677645, -134.296875",
    "61.18562468142283, -149.6337890625",
    "64.8115572502203, -147.6123046875"
  ],
  polyline: "ubzbJ|zlsXgfNhvg@_LnjGp_Fx{AyqEh`TquxAd{jAupYh{Bw~k@hq[e`NzsTrX}}@rmBcg@brCjLoKhxDc|@ttI}fFfb]eqQ|u]ihGh~a@s|FnrgAkjPz`NcaIm`Bc~Fz|B}|AbjHslHp}Og`I}_BegOrbKs`Sfx[sgQl|NkiLfqFsaFhvI_eI|uA_|F_pEoiD|aBitEvqJsxTzeBoyItoAsjMrfIarPlxa@gfQ~cYkeCpdMmoRrft@y~JvjLyaFpu]abLdgp@_Jx~a@nqBvwKg~Exe@}dMhrJu}KzaBswFz~Uq|EbnPa_Qzib@}lF~vPelBvcUifGvcIefKboLwtInkIwwG``R_rBfmZ}zCtaW_eFz|DsgM`td@s}Y|br@agItm^sdIpzh@owEjlA_aEzhKwrN|gG{rWzEmnF~qRktHvgMou[tTonDbhR{bDzqBspGo_BahEvsJemEzbF{iCtsKsdEjlKsgMb}OueJjb`@k`Wtwe@yrJhda@q`HpeXcxOvj[gvKzdZedAhjUmrOzow@snAvxdApoStnKz~KhlW~dAn`Jz_C`pIt|DzFznJzgO|~GuyArdG`xAlxBlvQhsBpfd@`dJ~}Et~FvxC`lGzqLtlHfhRd{@p`}@h}@lj`@|yNlng@|yIhqNp~AlwNbmTdv_@foExb^xmKddUl`Jpa_@tsFliNv}ObbExxIpcBcBlsKxIbaa@`|Bpi{Bn_Jth{@rlExaQbp@ntb@hgHhdj@loHtia@ldHjwJ|tFjwXrb@fj[hq@hni@iuB`bs@n_Cnmk@blJlukAl{Ih}s@blIvjMz{L~qJgCbdL~lKBtkDjuRpdOpla@zfLhuI~aOhn[jiAbyYcE|tF`KgiFeYejIkbEit[}uEklK_fGu`Bu~FqdIijPmv`@gyDc`UavKnIqoBtiWmgA~hd@dzAleW_bDxbM{eI~oViqJxlWs~NbeMyoEtPayT}]{cMwxB_dDvtBuhKynAqsGke@uwElqTghIztLehKl}@}yY|pBihKn~@gkIuvFo}O{e@wzKdr@{iP{rh@gfO}f`@asDkuUurSyuXcdOoqO_qLakUewPiw]mlIs}GapM}fj@uuNiy^azDr[mnFacCa{GfyAmnJqsEgxM|oQcyJ`sD{{MphSwjSf_TyzH|fAseMfmLwgMpeLukNl{CeuBuhLioE_eS_cLsyMyaLukDitL`cJydGiT{iIv_Fk{Ekp@{uNctm@awB_pf@aeDgwi@wyFkz_@y~Dqf_@oxGsyRlp@gxv@"
)

route3 = Route.create!(
  name: "Kevin Bacon's Nebraska Tour",
  description: "Going to Nebraska for promotions.",
  author_id: kevin.id,
  distance: 236.724371481477,
  coordinates: [
    "41.25303244065319, -95.9930419921875",
    "40.82212357516945, -96.6851806640625",
    "40.36747374615593, -96.185302734375",
    "40.5847565470127, -98.3770751953125"
  ],
  polyline: "u~xzFbb{hQt`AK`F?jK~JvHv@|AbAXlFrArHvO|W^nY?xEnC@hQAdh@AxNHtErMTrfBShxBvHtv@FdhBqFn_AmBzl@nEjOhOfLpg@gA~_@`M`l@bJr_@xDdMbFpb@zm@rs@~jAxi@bq@nb@vg@h]~h@zr@zpA`RjWna@|]|w@nu@xRxf@j^|tArp@tgCfMv\\~cAbvAr^ny@bl@tyAvu@nlBvPlZjZh\\ljBxwAb\\dN`RbBnSeAv}Ae]fUlDbSnPh^l\\~e@`[hj@dZjVhYrHtPzw@liDvg@zyBdVne@n_ApsAxv@`vArq@|kAhmBb_Chk@hs@rYbt@lrB|{F~FnUfOxwAf]xiDpKhm@te@fuB`@~LkAxQuOnk@uBnPrB|yCZjmKbEb^fz@h}Ahw@t_Arb@zh@fFrLnX`p@l[dn@NvE{CvAoBwFds@mVlRoCfn@}@~UZt[VChEmCwF_Faq@lAqPpGBfR?fMeAjSgJ|VuQpKgPtByIj@}GP}C?gFvAs@VaHxE@lZB~E@?eFJy@Ny^Aw^Aqo@LasAPe|Dd@yeKJwyDFmx@?_EpDC`BCbHGpMIpOLnmA?|oBHdnC?l_CIbq@MxIyDzFgMt@u\\~@yWpHmM|LiCdNfD|lBW~hCSlECz[[pLoCtUsP`YeEhcCR`oL_B`tKfAb|C_@hz@a@vREAoRTgbBBqgF?khCsH{v@dFiu@rAioDn@k\\|EcLvGoEjPkAbNqIhc@czB`EsTtk@e|Anp@c~A`Pwh@nVw_At[_m@pJmP|CwQTufBKulCOurDHkgBxRcBrgEKzx@Ihz@KdB@\\wE?gJ?fJ]vEeBA}H@kJB_e@D{x@HsgEJgSA?rRHntCFnmCJtgDyAz~@o\\bm@yRzh@sZljA{|AntD{F|VmFlYa^tlB_F~HeMbEcPnB_GtFuDbMc@buDoCt_@aCnn@jF`b@v@r^IzzCSjtJwAbbFr@hsFMbpTm@`hAyAfCgDfCv@nDjDlN`@|FDp~AzCje@hCvHaCfBqBjEGdwBOn}EFnmGg@vwMIx~AsDrP_JxH{p@b@mM`B_IpHyDxLi@ba@ObmC@`l@vEvPEh_LPjmIoAx{Gl@tfFA|IgK?yU@wf@@}y@D_]BkQA@bWJxwAKv|@[bqCGbqCcAljLIbaVVb_\\kEha@mItG_{@CaLPErI@x{@@|rBDnpEUjgE[teUIhz]c@duMCn`A?rGcBhGaQ@iN@ueA@ugDL{sAGOrEOb}AGthCLriCKbbHvAf`Xo@z{KChzCCnl@@~VqGCcMI_D?AtFxB@\\@"
)

route4 = Route.create!(
  name: "Kevin Bacon's Vacation",
  description: "Going to France.",
  author_id: kevin.id,
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

route5 = Route.create!(
  name: "SoCal Course",
  description: "Going to beaches the the Carlsbad flower garden.",
  author_id: taylor.id,
  distance: 138.536915754284,
  coordinates: ["34.04469442222683, -118.28258514404297",
    "33.66606814261825, -117.98458099365234",
    "33.15709799197017, -117.3226547241211",
    "32.70411114440741, -117.14824676513672"],
  polyline: "wuxnExi|pUtCaOsAw@gEuBr@aLrBoFpCiEfCdBtGxF~K~ElUfAtd@jA~Rs@hXbKjq@vZzc@rAfz@_@vyAuAr~DdAbq@iGtYlAhuAvDbo@|CxX`ThQdGbxApAdm@mEz~@aBtsAKp{@X`KdDtHsIxb@ym@ro@g}@~k@ek@~h@{g@|Ra]xC_dD{FulAx@gY|Osf@hUwi@~SqZ|Lkm@d@{aAtMep@zSsd@~Gw_@dKo}@hJqStA{UV}sAbCm_@~h@ay@p~@wrAlIqE`j@wMzJqQdA}K\\mpEQkv@xF}O`iAaxA|eBczBzbAgrAxLkIxFgB|ZS~x@WjqBEhZl@n^~c@x[n^fTnGrh@GbRCdNiDtg@_K|JAVFbCEjBsChBaBnBy@`A}BMmJE_k@Dk]PqSjZMjIExBCrAiCGaS@iS?qCEif@OkbA[u]_I_Yo@ma@DwiBOqoAxCmIsHkJqKyIea@s_@sl@kl@iTkb@xAcKh]g[hr@{dA|\\wd@jTqGbx@wNnR}ObN_T|Nm^vTofAd^qg@pNe`@`NmUta@qR~NuPhEiLbHyo@pXqaArHkXnDe_@lFk\\jKw]lBi^dJgZr\\mn@bGmk@lMis@fDcp@fCiX~IiVbVo_@b[eo@tTut@fZyb@t_@ma@xZqZ|N}}@vJgOji@gNfe@cFhg@tClRo@dNeH|RiYl]_PhuAyc@bg@}KhZvAna@jQtn@vc@vf@ba@tOlGxLz@bP}BlK_JtFoNbd@ax@h\\yv@lXuv@nSu\\`Sgd@z[_c@d\\eo@x_@}W~YqYdm@c]vr@c[voByz@hf@}a@r`@enAlRcp@nI{Lpv@w}AxyBosDvxC_sElXqPpf@cFjyAygBf[ea@di@w_@~bBonAvn@y}@~cBynAr[mLzNoMpTu`@vjAosAfPsO~n@_Ozv@kb@fNuTvZcdAffAw{@lpAcaAvq@u`@pPqEjK|OtMfX|EyDr@bJqAv@cHsLeTqc@~f@}Vl{@{^jXcAz[uLz_A{b@nmAcn@`|D}wBhxBue@dlB}_@lc@gJbRsJnd@cXbk@o\\~h@{JjQoHtSaTzs@_y@fYkGri@qEt`@gD~r@kMvu@uSr`AgW|u@mJhv@sIroAuHji@qLla@oXxNsSlOgKxt@y\\tXZpm@nN||ExTdq@n\\bh@lEvZkIh]iJph@qAhPwHlf@ig@~YsUfYoSxZqUdgA_g@bW_C~~@|Hbi@uGnmAeShU_G|PyTl^i_@t]y}@pPy\\nh@ic@l}@gw@nE{XiG{^@kWbEsHpYeK|MO~bAi@tO}IaE~I"
)

route6 = Route.create!(
  name: "Yearly New York Trip",
  description: "Going to visit friends and family around NYC.",
  author_id: taylor.id,
  distance: 45.9909031031354,
  coordinates: ["40.73685214795608, -74.1848373413086",
    "40.775341832372675, -73.97335052490234",
    "40.677513627085006, -73.93077850341797",
    "40.727486422997785, -74.18209075927734"],
  polyline: "uqrwFxoycM~A}LzInC|v@zUva@pMdDGdCr@dBx@dJ`GpBRtCgAtB_FxFaUl@iF`@iHCcKwBwQeEwSiBmNi@kMKme@l@g[j@yMlBiQx@aE`CgIv@sAxCuKxAoEfAaEfAaBlDqCzA}BI}B{@oAeL}EkFaFgIoMsGyRyDiN{CsIaGwL}EyGcGgEmFaBoIgAmRaE_KsEeGsFcOoS}KeM{FeDoEsAsEs@aQ]uJ[uF_AkYoHkNaIgJcJ{G}JaDaH_Qcd@yE{NgDwNcCyVm@g~@o@aMcAkHeEkP{Qeg@wLs]cFwNcDoHmE}HmHuJ}K}JoLeHuT{MuBkA_BmBgDiBeFeC{AuAaByDg@gHp@kGdEsOzEgMhC}Fh@eFdAcJdJq^bKu]hDuIvLs^rJaYrAsBxB_ApDPlIhBrFtBdAdA\\hBStB}@hAqB?USgImFqBmBmB}B]uAYuCBgBnA{F|Wax@f]ufA|DiP_@_AqAo@}EsCeAhEk@pBkC_B_G{DsNmJwNgJaWuPsNmJwFuD{BaBrCsIdAcDPw@zFaR@cASgBXcBbF}J~FeLlCcMv@iBPg@\\cA|BzAvFmQ^iAfMo`@`K{[vBvAbAwC\\e@rDnE|C`BbQbMzDnFtJrIp`@~[|J`JbG~EpHdEtHrBlNpBrEhCnHbEzCRfScD|FqAtDoD~DyDbEq@|Jx@tHbDvLrGdDbArZfC`KpD`T`JvCfDxAxEpA~\\fFnv@dCh[|@lFg@zDqCpFmG~Ik@zDi@p@o@YAgAz@mBnNmR|LsPp\\{c@zJeOlAg@fPT~Zz@xFdAvIhFv@qBhAsEhWq}@`DeLx@{CnAqHjHuk@vFud@rJuu@`Aub@z@sa@|@sa@h@sa@a@CFnCiA~i@aBjw@aAlb@gFlb@_RvyA}BxSy@zCgAdCwA~@oLxHgKjG}l@`VgXpLwVdLyf@xU{O`HsFhCcJbE{@jCcCnKmExI{Y~c@gGzIw@S{B{AsBQoAr@s@tAe@fDuCnk@kIl`AaB~]w@fIoEdRuBbDkBfEw@vMuAta@`D|]]zGmAjCcg@~m@kDhKq@vFEdIfBxm@|LtlAhAtHtCtZj@pQhAdXf@zOHfLFdRq@lg@eAjx@`@vLlApHhBdGvLdWlLfXfM|WzMlYnVxg@~Qd`@hBpBjQdJrSnKdCdEz@~CPvDgB`]Op\\\\hm@jAhNfAfGjDjQvBbOHvPq@pFoB`JmE|L}AxCu@\\uAJqCaAmQiFi@mBxAyLN}@}@m@cEaCeOoHqO}GuHcE_@w@?hB`@~Az@dFjUhHhHzB"
)

route7 = Route.create!(
  name: "Vegas Trip Route",
  description: "This is the route that I usually take for my trips to Vegas.",
  author_id: conan.id,
  distance: 452.153677905228,
  coordinates:
   ["34.052659421375964, -118.23348999023438",
    "34.48109002095169, -114.3208122253418",
    "36.17779108329074, -115.12985229492188"],
  polyline:  "q}ynElkspUwL_uABmwBkAw|A}c@wvAeu@soC_JemHhIedIrYc{D_Iq~Ey\\{vIfMieK`FalC~_@okCox@msEnIy_D}s@cdC}a@ujHwK}aEfNonCdyAg|CtPq_Be@gwHwrCwGaz@ia@{_C}yCyeCwaDk`FakH_mA{aBi`Bw`AecBgUqe@f`@ccBj~Byt@tpAejAxCqeDtS_tAp~AglBlwAmxAsPiK{}Ayy@cuC_w@oUkeFgdE{uNchKceEgvBevCut@iuAmtAss@wcAs`H}hF}zEwkDoeDgpAwaBLecBcMgkCyiAseAko@m{E_{E}hDmqEa}BepCczD_v@_qBs_@_tAet@ggAouAaKofAmAykFyBenBxf@wpCd~@ksA`x@coFbcBoyOb{@c`Nvg@yeM`hCcqWhvBa{S`oAkaMlf@inB~qBk_D`oAooDht@mlGpWgmHaBeaIsKqiMvS}jB|s@ysCmEgaD{Xw`BkBatAwN{jHwIeeD_`@uvBoVgbB`IaxBvkA}pJjXqbIwj@uoScs@_pOoqCyyKueB}pEqeCexIe~@arGdNo{HipA{oZgdBgdWvBqxCsmD{rRzIk~Foa@inDkzBytKkH}hAnUi}AgXosEyr@gjEpb@uvBt`Cu_FxyB{rDdeA_j@zy@g}@jrGqvA`bCueA~~EcgExd@giAvAylAyAmuEcj@efLa[qyOhGccAhcD_xAdiC`Zx~EpfBj{Abg@tr@fcAx}BfdDlqAzN`vAw[n~Gq~Av_D]l_@yMIo_@iCgn@hHwBnTiJde@ma@nJeVp@rQkc@xSaPh]{XXp@|l@DzSiPx\\mdDXcu@xFo_Cjl@uhF~gAakAoe@ey@apA_lAmnBe|@al@kvFuiBoaC{i@ysDjrAm_@lLxD`jBvQ`dLro@n}LPz}Iax@f~A_|C~aCyrAhfAafCnr@{oFloAgiA|mAk`Ark@c_E~}GacAnnDlAncB|bA~xGcgBzkAifBtf@gqAz`AgcAbvCqYhtAaCnWmbDdx@e{GgFoyAaEg_A{g@ojHlYuoIlGygDpfBmyRfyCgw^rqFy_FnaA}~@`T}wBof@}wBaKmmFyNihF~MuhBvQ{nClaB{~DdfCgmB|VcsIyL}kZ{|DulGow@kvBmq@mtDa~AeRrEG|l@e\\nz@ieAjh@mjA~bB_XhxAgCvbDek@rfAgdCzhCmaAfcAyyA|c@a|@zb@yeAni@mp@rbAo`@niBki@`gA{yAzXgfA~CobAng@qbEpT_Xvr@}AzdCaVt~@oI~QiCsJlV_HhStP"
)

route8 = Route.create!(
  name: "My Recommended Italy Route",
  description: "These are the places that one should definitely visit when in Italy.",
  author_id: jordan.id,
  distance: 487.126399642089,
  coordinates:
  ["41.9022770409637, 12.498321533203125",
   "43.72347489611479, 11.2774658203125",
   "40.74309523218185, 14.503326416015625",
   "40.85537053192493, 14.272613525390625"],
  polyline: "}ow~F_khkAosBk_CvJed@un@_Fk~@tmAwb@zn@ijDxMiuA}b@bEu}@mJwe@g~FwYuiF{Xc`BqwBuwEudF{tGaaDo_Ahd@mqCxk@yrB~Q{jApw@esCbtAyeBndDqyBb`Fqf@hbBquApi@uoBn]o_BbdC_aEoWobDvo@_iEt~DeaBlxAg{@zgBopAtjC{`@juDikAvyAsxC`uF{cAbnBcaAnfBi_FvjAw{KxzBqrDli@gbAvw@{mBpTi`AnoBemAlsF{{CjfIgrEnsHotEpbAwaAlt@ez@kw@wgEbQk{AriBifEphD}|ClvEkkFh`C_zEz_CodCt^_iF~hA{gLv_EojSpqNmcBfsBu|BzOotF`m@wxHsJ_wDhl@wkCiv@oeBynAo`B|b@sgBlxBa{Bv_Cqb@xjDijAtxF{`BjgCeNzhDq_D~dHw{BnfDijA`Oqt@d}AchG|nGeoCx~AikBdd@o~CxnB{TtgDa~DvsFua@~`CaApkDui@tbEgn@fvAvd@oeAtfAipDkVwv@bS`n@ge@rtCg|@tpA|B~e@jOwj@nfAahKe@arCdhBytBbnBahBgAi|Abc@{xBvqAi_AnsDyiAlsCufB~mB}aB~_EyxFtdBm_@zuFquKn^ajE|_ByoCdlB{zK`vEsnFt~As~@diBhdA|dEraAfgDyp@n|EdStdEmQjeGubA~kPecMxgJckFdfI{gClhBcYffB|GldDojAn{KmoGd|@a}@p|CgiFjkCwcCpfCkh@jeBk@jv@~w@tzDacBxpBui@p}CqlEvcB_rFn_CupE~~@_oGbqBqh@|zCckAjeWstFfhEyvI`qDg|Fle@uhFhcD{dDpvCczC~pCisCznAuGngEpEru@hSdi@glAlxBs{AneAsMpmA{wBnkAmmDpzAefAruAcmDxsE{uBrfC{ExsDsvBj_En_@tzG}jBlmDilA~eBs|Bv~@qcAf}@bEdgDtZb}DsgDncCo_DfxB_yBdiEueBxfK{lG~mBsq@~pC{iG`yDmkV|b@eaNhuDcpLtkNwzZl~C{}JtuB{dApfAocB|bB{xExjBygKpeA_zXruLod_@toFqa]pbFakOpkMwcRxcLex@pnE}d@js@wjA~sCm|GxiGmtF~}HkjNz_E{zE~cBksA~oCt@n}HuXdqJt^~jJpR`}@wIt{A_xCrpEcmDlrBobCjgAgmElu@m`EdjBa}CxP}}Awl@{TiD~gAytBzhJopA`hFkfBb|BszEpvDw_BxzC}DbdBs@nj@ws@dt@CCEF_AjxAvB|I"
)

route9 = Route.create!(
  name: "Texas Trip",
  description: "Going around the great state of Texas.",
  author_id: steve.id,
  distance: 522.004051350243,
  coordinates:
  ["32.75032260780972, -96.7840576171875",
   "29.726222319395507, -95.3558349609375",
   "29.420460341013133, -98.48968505859375",
   "30.240086360983426, -97.69866943359375"],
   polyline:
  "qvvfElyymQnQY~OoJfD{`Ari@_oE`gDy|@rjD_bDz~@_wAxxCmkAxaJ_lDzuDuq@bwDv[njFyNnxC`UnlBge@bkA`ItzAc\\xgC_p@`~BocBhlHqwEdbDm|IxqAmnDv_CwnAtyHk`DrlHki@lqEoeCfyEeh@`iC`pAfvH}iBt_HcyA|{DjYdv@gv@jjCisEl_BapD|mByiBh|@{yCzlCgmCp_CklAz}AqcBbhGyaIlfD_~Cp|Cex@heBaj@bbIcx@llHaf@nkCa~@hqBujAf`IemEhxFkrAnrHsdGzbFqhC`dJm`B`kGqeBb|@wAx`Dr_@dvEjPdkEmm@~tIm`BbmDanA`yH_uBprEe{CtfFy`EhrBk~CheCgiFzjB}{DttAkmAnsDaqCptBs_Cb~CexDzlD}cDd_Ca`E|wEuiIhyB_sCb{CwkBpk@kaA~xAszCp|Aup@deBsIfgK_b@|bAiEreEwk@dpEcVr{FhZtxEyI~qEen@hdHyR|lJe~Bn|Aog@~aK@~vI{k@`fGe`Axr@uTr~Bh@xdEsTjtEaUr`M{hAlaB{^`}Ez@`aCuAfn@_YhuFm_DpaBof@hkCuWj|AqNxjA_Ijo@xj@fk@}LtQ}]~~@wmBdi@y@hT|c@iv@ck@aI`Ggt@n}Aeh@fz@wcAcZgj@{]uh@zX?`sBgNtgKg_@vlASlcFq@d{MuAjzWxC~pSxi@f~@pAjbEKrgMsIvgHiO`mCp`AfoGsKbkFuOtdHnK`iAns@|iBpa@hdCaXtlBlqC|t[bbC`eSf|@bsKlhB~zEdBneRbW|pKuWboGhFf{F|Rn~Gur@|kC|OlmH|ZjpH_NnbGee@luHjEhsMxAvnD`X`vFoAjyI|hClnIdaCvkd@yVvwRb^fbEoNvbFaB~vBroAniH`pCzfOxAh|EnVv_DjfAnwHdFpzIbdF`tJ|`Al`Af`B|yG|bEbuPl`CpmJdiFlsVflAtsF|ZtlB|i@~x@f|BhfCzC|dCnTlq@dB`Y_]fLay@yDcg@rj@mFhs@{Shd@ck@_Cg`AieBxJ}_DgEewAew@_pB_l@cnAirAcj@ilDwe@seDsg@geAqe@ct@qyAuiAm{CsgA_uAw}A_|C{lAugCseD_rFiqDqkIwyCg_G{u@qrAia@mnCyt@o`Ckw@gk@gxA}VmmBcwBy}FkiEg|BelB}cFa}FupFqsG{yAeeB}wBmbBy_FyrB_kBq`@wdE__@akGsaDknJezD}bIsfCmlEqaBg~DwmCcd@ud@z@ybApLisAuGkwAc_Aqk@"
)

route10 = Route.create!(
name: "Yellowstone Trip",
description: "This is my route for going to Yellowstone National Park.",
author_id: ironman.id,
distance: 323.489753563573,
coordinates:
["43.492782808224995, -112.02484130859375",
 "44.64520822374404, -111.09100341796875",
 "43.51668853502909, -109.61883544921875"],
polyline:
"kmmhGhrxjTcb@xg@wB~Ggk@f\\ggAon@}yCegEsgDidCumEewCa_JqsF_yAceA_qByn@cmC{iBm`DisC}cIueGuaB_p@o|CiHgeAaGsu@yg@wgAikCgLgnAoyCkzCetAi{A_xE}iDgqBa[wd@icC{r@wwFsnAqlD__BipFo_A}rEqsAwwDwvAopAyrCepDqn@or@uiA_@ggB_BkhB_s@ykB{hAqvBedAwp@|FmeA{BalA`o@ch@xeA{jAh[atJdvB}iApIs~A_q@cmEev@spGwzHkhGmcD{oE_t@}oIafDyhB{hAaoEvUwrEz]koGyK{x@oVgdBqcBqtAod@cXgt@e`AgjDsc@q_@{e@qdDveA_eJzy@uiIx[{aDaj@prFwdAloIce@pjDhDbgEzf@ffAnd@t_Anz@nxC`X|d@`vBp}@tfAxqAdhEnQ`}CjFt`H}x@huBfU|}BznAvhJv~C~zD|cAbbGpoDttCr{DpdAxkAvbAlTznCrd@r~A~p@`zGclAxoF}oAleA{~A~kAy^naApCldE|gBv_DhyAfgB~Avt@T`ByuAbH}f@riAfArj@xM`sDk@|Cwh@~e@gm@dcBaKlBmkDlAmxHjc@kj@dqAwxBpZcrBjg@o`Ai[op@rIesA~GuqGvHc}BltAy_@rNwqBfiB}NhzAdN|wD[ngKxClRiEC}d@@kz@d{@uVrZcLjDe}@tTscBpI_~B||BkD~{HZhdImBhzMhDv~@_Kp|B_tDfxCwcCngDaoHpqA{lC~x@yl@_Iy`@nNhI^{{@uA_b@rI_]NykBkl@ivAvO{Nbh@fOhb@}dAgT{a@ki@siC|UuyA{GkaEjVckAp_AqGtf@c`DvBkx@jZaTcFwpAmZmy@uTiXwg@Y}lCmaAyfBqjAsmBsg@csDb@auB{j@mhDqa@eqCyq@asAgcAk~AakB}dA}`A{|@kLkyAmi@crA_p@cpDo~Ds^wq@nL}bAeQwtAke@c}Agk@qo@oMocAw^yhAiuB}cAw}@ot@q~@wQmbBqkA_m@kLvEwp@jAk}B{H_sB^_oAfj@}oDgDsrF`g@igAfQowCpAweCg@qaBjOqaCbj@a`CqDkvB{@awF}LkdC`}@ihCdmC{pDpeBsiFhPc{D|sAoQ`\\ct@jk@{}@dz@mfAxZ}Fn@el@re@ywAja@}|Aah@}XlpAawBsCul@ng@ci@jy@Hx}DmqBv_Acq@|dA}hCl~@ssDtOwjEpA_pFbrAkuAvsAyv@|a@q`BvmA}aAjUslBvrAcjG`bCw{GjeAmvD"
)

route11 = Route.create!(
name: "Chicago to Toronto",
description: "I usually take this route when I visit the Midwest.",
author_id: scarlet.id,
distance: 519.589396895622,
coordinates:
["41.86137915587359, -87.63519287109375",
 "42.317939454468494, -83.03192138671875",
 "43.65197548731187, -79.36248779296875"],
polyline:
"e~r~Fbu`vOaAyhB`e@kB~vBcFrq@oCzPcq@f`@a\\vkCsBtbEhD`fAuWp`BuH`vFgF`d@cQvF_qCne@ef@nx@pTzeChd@z_DccC|vE{GroAb\\f`CyEfZkzBtTk`P~XgpGrMuqOyh@aoMc{Bq|Iun@mhIm[__E{Cm|DqfBymEqPa~G}|DayIiJshAmCesOqxA}}BiS}~BoeA}oB}jFcy@gbJ{eOi~Dc~CqbEu~HeyC_aGgpAeGy`EyuCanAuk@a|@jGqlHuwD}qF{nAopD_~FkeBy|HwvAomCefF}rCe~Eo~HoeBi`Cw\\{oAs]guLkhAeqLuV{_Yje@guE{gAk`GiXm`Jke@yiEke@wdCc_@ijSgrAosFqFc{FjEqmNiyAibG{pBk{DGyyI{x@}cJeVubIbjBwuQ|RwkIySidBuvByrE{PayDymAcyF|U}lTvbA}zBpQ_fD}AucXzfAgzA|g@qx@vNgeZoi@utCV{jT_Cg`Kg^{kHmd@wcQecA_bFI{`IqCauGa`@keI|EuwBp]qm@uQiuJ{ZgoN`FisIuB{aE|z@kuD~c@qxGvoBy@reBqkBn_AqxA`GawA~GwhEf|@maC`HgtEy[}zE{HsvF`pA{~BsHssGeE{yHo@kuCwd@mxGm~BidOueBabDwVklJeU}~AizAcwAerCm`Ck`CkaC{}@kvEkrByiGvqAkt@liAuc@jg@_bAmRww@xqAwe@jUuEjaBu}@`jAmm@ns@eL|jC_{Azz@wbEoRmjAb^coCnLo_Mbl@mdk@jDimEiy@}}CoGieE_dBifI}FejEkg@qeAgkAsvLgRkiC_hCktEcoAisGcgA{jHouBoiGgeAuqBgkAguFapCqsO{lBimEo|HgdMipCw~E}a@opEahAyxB_dHwpMgb@qiDe|CoeFepAccDtBo|C}aCemEavBstEed@oxC_`DgiFicJ{`OsiJo}NchFirIc`Dy~D_bGepE_pDccDsqByrC}m@c_Eod@y}Iow@wmC_tB_uUy{@syIgiAm_BaqGqnK{eLslQq~AqmHu_AoeO{g@{aHfa@mcEwgAojOo`AcgF}gBcyT~g@yiI}S{oHw`AymJykAazFop@ssHo{@mnF`UeeBsUa`DazCmpCs`Aah@wz@suDof@}rBsvAsQcnAxX{`@aMic@ilAizA{hC}jCkvCes@_aB_rCofEs|DonEoyGwtHgzDwdEklCqAafBybAcmFehGqqJcoKif@obAwr@mqGmuAewEcMasAhb@_oBsYu|Cc`AkpHeVdH"
)

route12 = Route.create!(
name: "Germany Route",
description: "My path for my Germany trip!",
author_id: adam.id,
distance: 609.653646836591,
coordinates:
["50.10648772767335, 8.7286376953125",
 "48.13676667969269, 11.6070556640625",
 "52.496159531097106, 13.4307861328125"],
polyline:
"gjwpHubqt@th@}eHlhCkbLzdA_FjXygD`aDosCb{EqdNuWshRkCgzLeTsfInqCqiF~vFwdLv~DomD`pA_iEn|DipMfgFygJv{CejHrhA|rAllBcn@h_@{{L{d@iwQ~uCogKik@e|Yt~AsdEikBeoLyaDklIwb@}hKpp@qoX`c@maLg}@srMlbCiqRhy@cfM|hCkkJqNowMd_@}fMz_HozGrjDojEl_FgxCnbFue@~_C}dD~NkeF`xBmmEbaFkkR`~DkfJdn@ieFnsA{{BpgF|oFfjEkJxuPan@vcHqu@lzMqxGniQwnE`{GofLp~Ajc@h~A{t@bkEinGfhGefJptI}A`sFc_@bsDfn@`lGzj@ddUcmJliFquDr|DeaH`fHtDjlBtp@ttAq`AzqBzh@|zEsMp{QyoAbmLqpFbeG~S|vF~zBrkCp`DdvCam@dpBhpAtr@}qA{r@chBgsBtGeaApoByaAkAkwGm~DedFyqB}fIxzBsrE|xBg}Gb{@kjM`l@gnBdYibC{o@{_BjbAmbB{w@}qCvO_aCuS}~AnvCcoDpmF{fHp~B{oKxfF}hF~lA{dGsb@gyK}Ke|Ilf@ypFhxHgxDztGcqAniA}uAigAujE`dGyrCd~E_aGjvAoiJ~wBw{GrlEedIjuAirN~g@{rE~HcbBba@mxA{gAgvE{~EmaDslDqjJyoHukLejIc{DmkJ_kDmlFw{DdWosCmkCi~AgmDk}Czm@w|C_EwmAn}AusBoScyG_dCkbBcnEsM}hFkaCu{AcyKsJqsKuKyrEscBuu@{mDuwEilJ{`CodE{|Cml@wjBe@ydBmdBszC_fBi|ApY_vFyeDieDq[ogDlhBebCnZefAxf@gnAyw@snAtb@sz@|xAcjAxXcx@gmAo~Ak`BcsCia@ijGcO{rBx[gxBsi@ypBbfAa|BhkBo{A{SkvL_iEmsFumD}eEwq@gsCoxAe~FooEwtCjTknBd`Bw`D~gC}oFr`A{wHp|@ktAclBopDefJcpMglG}zLi|AqoUyoSu_FoiJikKgcJ}aHpf@cyDidBi}HumBqqJhwBwxJlhAw~SimD}sGmpAwcEswFiiMq`MmdCaxH}eH_}Iu|FkpCc|A}iG{uHcaQwvTow]{gEckI}kCowHknCelFsyCknBwnD~r@kgCix@k|@w}S{Cm`FpF}mB{tAgpAcoC{{FyoCep@}wDebBqoAo}Da|As|@ou@n[irCcvBobEsoFubCmxDln@saAlhBc_Jpd@epC`BybB{`C}Fqj@mhAbPycE"
)

route13 = Route.create!(
name: "Cancun Route",
description: "Travelling in Cancun!",
author_id: hugo.id,
distance: 9.03786645457144,
coordinates:
["21.17672864097083, -86.83696746826172",
 "21.15623836610943, -86.8905258178711",
 "21.137026157523156, -86.83756828308105"],
polyline:
"ovf`Cfe`qOyAp@l@dB`BbEkFdC_M~FsEtBOFzBfG|E~LjItSjI~SvExLvBlFnBbFzEvLnFnNxAjDjB`FzE`M|E|LnBbFrErLtGpPtCzGdD`I|BxFpB`F`AdC`DrHxAxDZrAVlBLnA|@nCdBvEqCnAkAj@i@_B`DuAaDtAh@~AjAk@pCoAFPPEUy@wAyDLGlB_AlCoAtCmAfAk@zCyAkB{EdB{@hAs@tAo@nAm@|Ag@`D}A|AcA~CyAlD{A|A_AfDaBlDsAlDcBjBzEnCiFNo@JqBK_CKcBQqFIqEI_DO{EOcD?_BS{EKcDKoEQ_H[sIMgEyB}t@UwBQ_A]}AR_AwAuGaD_Oy@yDrBgAhCuA`Ak@`GiDpCyAlEyBjEsBdDsBVK`B_ArE}Bd@QT?AqAA{C@_BE}EEoIGeKAmDEuFdC?REBGBWCaF"
)

route14 = Route.create!(
name: "UK Route",
description: "Visiting friends in the UK!",
author_id: natalie.id,
distance: 302.887519107212,
coordinates:
["51.49506473014368, -0.11810302734375",
 "51.44031275716012, -2.55706787109375",
 "51.74743863117571, -1.22772216796875",
 "52.1874047455997, 0.14556884765625"],
polyline:
"_khyHt~UcA|QtMx\\vi@hrA`CrbCxO|dBzDng@qs@xbAuL~fA~AtiAc@f}A~WtzBcHbgCuRpnB|I`eDkd@lsBpQdlC`^zyCmUzbCaWxxJxL`lHbd@b}GySp_Cmw@r{@qOf~@c{@bzJrlA~~GzF`aCzsAl{Dh}B|iC~hAh~Cn}Cp_Jnk@hzLjb@hiB|I`oCsj@jtCuX`}EkiAz|CwwAxsBon@dzAaP`hB_@vsEvI|{I{]vbJHx{Cnp@`cBzBdxGsHpbCj`@reErS~dEkJfrGwe@dnCoyAz`EkdBvgHuyBdmDcwA~vKui@poCdGxiDst@juJkd@rcDbB~zAwQpkDik@|kCaz@reGbjAbmGhcAfeHpsBrbKfPr_Kd`@hjHoUluJq[x}Gx~Ap}IxY`kHrAfwFsSj_G_`@roDdCrgC{f@tu@xYtl@pbBfkBfs@jcBbs@~G`s@doAxbBwl@|[qc@rLdCdRw\\iP``@wr@bg@}m@tRyf@t^og@}rAahAaWmr@qeBgdAwuAwu@igAhd@_h@}@shCtt@i~JuUsjLqSenFinA{oGwDutB~b@owEdJgjLwXsjHbA}qCio@koFqeCorL}}@gjIka@kbBtQqsBvyAk}HdUs}Hvn@ggDj[s{FuDakEdd@o~Bn|AqbLjwAorBlfAacDrgAa|E|dAadCzbAwgIwZ_pIk^mkDdHajCjC_{DksGmkBedCyImnBjOk{Cdq@ouD{iCgp@eB{u@de@q|@zkB}yCtiBemCen@i_Awk@ksBcwCc`@akBm}@co@klAcCk\\n\\iW_y@oTqSs]ciAmbAlv@gMyt@{aAesF_Aw`CzJ}tAn}@qkC~uAwnFtc@egD|qAsqGtpBelF`vCmuDhv@{l@na@crB^qbCx|@kkC~sAi}@``AmzBnOaqDpgAccFlTa~AeZetDpVukFxu@a`EbXmnCtBi|Cht@ixDvg@wfCnf@ii@vy@waC|V{uAcWadAs}CyEu`FkjAchC_kCw|@aZc`Aif@oUijCaw@idBkcAiO}dA}w@qx@gpCaMy|FiZm|@qr@sqAoUql@vH{~C`Ai~CasCwdHijDsmCi~Cfd@et@m^ok@oaAcaA}\\i_CwkAyqEpaAgnAnrAikAdr@}aBqt@s_Dmu@wx@yf@jEu\\eW}f@wVmbA}nBgrAqrBifDmfBydDapCs`Ko}AutC{GctAbFsXeo@al@umCadCyvAc`DchCysCyaAqdBup@{u@}n@uBae@{gAe_Aiz@qw@ySzDgoCqAa~@ul@eV_Tfi@}PiE"
)

# Trips:

trip1 = Trip.create!(
  title: "First Time Going to Hawaii!",
  author_id: kevin.id,
  route_id: route1.id,
  start_date: "09/12/2016",
  end_date: "09/18/2016",
  expenditure: 708.93,
  log: "This was an aswesome break from work. Got to snorkle and even rode the acrobatic glider!"
)
trip1.update_attribute(:created_at, Time.now - 86400 * 3)

trip2 = Trip.create!(
  title: "Northern Lights Trip",
  author_id: kevin.id,
  route_id: route2.id,
  start_date: "12/26/2016",
  end_date: "12/29/2016",
  expenditure: 856.72,
  log: "Always wanted to see Aurora Borealis. It was freeing, but well worth it."
)
trip2.update_attribute(:created_at, Time.now - 86400)

# Trip.create!(
#   title: ,
#   author_id: ,
#   route_id: ,
#   start_date: ,
#   end_date: ,
#   expenditure: ,
#   log:
# )

trip3 = Trip.create!(
  title: "SoCal Trip with Friends!",
  author_id: taylor.id,
  route_id: route5.id,
  start_date: "09/02/2016",
  end_date: "09/04/2016",
  expenditure: 500.24,
  log: "Had an awesome time with BFF's at Huntington Beach and got to spend some time at the Carlsbad flower gardens. Hit up San Diego briefly before heading back."
)
trip3.update_attribute(:created_at, Time.now - 40000)

trip4 = Trip.create!(
  title: "Short Layover at NYC",
  author_id: taylor.id,
  route_id: route6.id,
  start_date: "09/06/2016",
  end_date: "09/08/2016",
  expenditure: 724.9,
  log: "Spent some time at Manhattan with my cousin and worked my way down to Brooklyn's famous pizzeria and to Long Island."
)
trip4.update_attribute(:created_at, Time.now - 86420)

trip5 = Trip.create!(
  title: "Vegas Trip with the Kids",
  author_id: conan.id,
  route_id: route7.id,
  start_date: "09/02/2016",
  end_date: "09/05/2016",
  expenditure: 873.25,
  log: "It was meh. Had to take the kids somewhere for the long weekend. I guess I got some shopping done for my wife."
)

trip6 = Trip.create!(
  title: "My Italy Trip",
  author_id: jordan.id,
  route_id: route8.id,
  start_date: "08/18/2016",
  end_date: "09/05/2016",
  expenditure: 2310.45,
  log: "Italy was beautiful, as expected. One could taste the sunshine in the wine from their wineries, and the gastronomical centers all had service and quality of food on point. I also got to witness Mount Vesuvius with my very own eyes. I would highly recommend this trip to others."
)
trip6.update_attribute(:created_at, Time.now - 90000)

trip7 = Trip.create!(
  title: "Texas Trip with My Kids!",
  author_id: steve.id,
  route_id: route9.id,
  start_date: "08/28/2016",
  end_date: "09/07/2016",
  expenditure: 1678.23,
  log: "It was great to see my kids again in Texas. Got to spend a lot of time with them and ate some great steak!"
)
trip7.update_attribute(:created_at, Time.now - 200000)

trip8 = Trip.create!(
  title: "Yellowstone Trip",
  author_id: ironman.id,
  route_id: route10.id,
  start_date: "07/28/2016",
  end_date: "08/04/2016",
  expenditure: 780.92,
  log: "Finally got to see the great geysers at Yellowstone!"
)
trip8.update_attribute(:created_at, Time.now - 180000)

trip9 = Trip.create!(
  title: "Traveling with Friends to Chicago and Toronto",
  author_id: scarlet.id,
  route_id: route11.id,
  start_date: "08/12/2016",
  end_date: "08/20/2016",
  expenditure: 893.33,
  log: "Got to shop on Michigan Avenue and went up the CN Tower in Toronto with my girl!"
)
trip9.update_attribute(:created_at, Time.now - 100000)

trip10 = Trip.create!(
  title: "Quick Layover at Germany",
  author_id: adam.id,
  route_id: route12.id,
  start_date: "08/22/2016",
  end_date: "08/25/2016",
  expenditure: 800.94,
  log: "Got to briefly stop by Germany and packed in a lot of miles in four days!"
)
trip10.update_attribute(:created_at, Time.now - 50000)

trip11 = Trip.create!(
  title: "Vacationing at Cancun",
  author_id: hugo.id,
  route_id: route13.id,
  start_date: "08/15/2016",
  end_date: "08/26/2016",
  expenditure: 2560.13,
  log: "Vacationed with my family at Cancun!"
)
trip11.update_attribute(:created_at, Time.now - 90132)

trip12 = Trip.create!(
  title: "Visiting Friends at UK!",
  author_id: natalie.id,
  route_id: route14.id,
  start_date: "08/20/2016",
  end_date: "08/31/2016",
  expenditure: 2400.32,
  log: "Went around to London, Oxford, Bristol, and Cambridge. Met up with a lot of friends!"
)
trip12.update_attribute(:created_at, Time.now - 132404)

# FriendTaggings:

FriendTagging.create!(
  user_id: kevin.id,
  friend_id: taylor.id
)

FriendTagging.create!(
  user_id: kevin.id,
  friend_id: conan.id
)

FriendTagging.create!(
  user_id: taylor.id,
  friend_id: kevin.id
)

FriendTagging.create!(
  user_id: taylor.id,
  friend_id: conan.id
)

FriendTagging.create!(
  user_id:conan.id,
  friend_id:kevin.id
)

FriendTagging.create!(
  user_id: conan.id,
  friend_id: taylor.id
)

FriendTagging.create!(
  user_id: conan.id,
  friend_id: jordan.id
)

FriendTagging.create!(
  user_id: jordan.id,
  friend_id: conan.id
)

FriendTagging.create!(
  user_id: kevin.id,
  friend_id: natalie.id
)

FriendTagging.create!(
  user_id: kevin.id,
  friend_id: hugo.id
)

FriendTagging.create!(
  user_id: kevin.id,
  friend_id: adam.id
)

FriendTagging.create!(
  user_id: kevin.id,
  friend_id: ironman.id
)

FriendTagging.create!(
  user_id: conan.id,
  friend_id: steve.id
)

FriendTagging.create!(
  user_id: conan.id,
  friend_id: ironman.id
)

FriendTagging.create!(
  user_id: conan.id,
  friend_id: scarlet.id
)

FriendTagging.create!(
  user_id: conan.id,
  friend_id: adam.id
)

FriendTagging.create!(
  user_id: conan.id,
  friend_id: natalie.id
)

FriendTagging.create!(
  user_id: jordan.id,
  friend_id: natalie.id
)

FriendTagging.create!(
  user_id: steve.id,
  friend_id: kevin.id
)

FriendTagging.create!(
  user_id: steve.id,
  friend_id: taylor.id
)

FriendTagging.create!(
  user_id: steve.id,
  friend_id: conan.id
)

FriendTagging.create!(
  user_id: steve.id,
  friend_id: adam.id
)

FriendTagging.create!(
  user_id: steve.id,
  friend_id: hugo.id
)

FriendTagging.create!(
  user_id: steve.id,
  friend_id: scarlet.id
)

FriendTagging.create!(
  user_id: ironman.id,
  friend_id: scarlet.id
)

FriendTagging.create!(
  user_id: ironman.id,
  friend_id: kevin.id
)

FriendTagging.create!(
  user_id: ironman.id,
  friend_id: conan.id
)

FriendTagging.create!(
  user_id: ironman.id,
  friend_id: steve.id
)

FriendTagging.create!(
  user_id: ironman.id,
  friend_id: hugo.id
)

FriendTagging.create!(
  user_id: ironman.id,
  friend_id: natalie.id
)

FriendTagging.create!(
  user_id: scarlet.id,
  friend_id: natalie.id
)

FriendTagging.create!(
  user_id: scarlet.id,
  friend_id: ironman.id
)

FriendTagging.create!(
  user_id: scarlet.id,
  friend_id: adam.id
)

FriendTagging.create!(
  user_id: adam.id,
  friend_id: natalie.id
)

FriendTagging.create!(
  user_id: adam.id,
  friend_id: conan.id
)

FriendTagging.create!(
  user_id: adam.id,
  friend_id: kevin.id
)

FriendTagging.create!(
  user_id: hugo.id,
  friend_id: kevin.id
)

FriendTagging.create!(
  user_id: hugo.id,
  friend_id: adam.id
)

FriendTagging.create!(
  user_id: natalie.id,
  friend_id: kevin.id
)

FriendTagging.create!(
  user_id: natalie.id,
  friend_id: taylor.id
)

FriendTagging.create!(
  user_id: natalie.id,
  friend_id: conan.id
)

FriendTagging.create!(
  user_id: natalie.id,
  friend_id: jordan.id
)

FriendTagging.create!(
  user_id: natalie.id,
  friend_id: steve.id
)

FriendTagging.create!(
  user_id: natalie.id,
  friend_id: scarlet.id
)

FriendTagging.create!(
  user_id: natalie.id,
  friend_id: ironman.id
)

FriendTagging.create!(
  user_id: natalie.id,
  friend_id: adam.id
)

Comment.create!(
  author_id: taylor.id,
  trip_id: trip2.id,
  body: "Wow, I've always wanted to see the Northern Lights! Let me know how it was!"
)

Comment.create!(
  author_id: kevin.id,
  trip_id: trip2.id,
  body: "Taylor! The weather was definitely cold, but it was so worth it!"
)

Comment.create!(
  author_id: ironman.id,
  trip_id: trip2.id,
  body: "Looks like you had a blast!"
)

Comment.create!(
  author_id: natalie.id,
  trip_id: trip3.id,
  body: "Huntington Beach sounds awesome right now!"
)

Comment.create!(
  author_id: taylor.id,
  trip_id: trip3.id,
  body: "It totally was! We should go together next time when we get the chance!"
)

Comment.create!(
  author_id: steve.id,
  trip_id: trip5.id,
  body: "At least you got to spend some time out of the house!"
)

Comment.create!(
  author_id: kevin.id,
  trip_id: trip8.id,
  body: "I'm totally jealous! I've always wanted to go to Yellowstone!"
)

Comment.create!(
  author_id: natalie.id,
  trip_id: trip10.id,
  body: "Very productive for 4 days, Adam. How have you been?"
)

Comment.create!(
  author_id: kevin.id,
  trip_id: trip11.id,
  body: "How are the kids, Hugo?"
)

Comment.create!(
  author_id: hugo.id,
  trip_id: trip11.id,
  body: "They're doing well! Thanks!"
)
