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
