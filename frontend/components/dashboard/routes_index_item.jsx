import React from 'react';

class RoutesIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    // debugger;
    let coordsParam = "";
    this.props.route.coordinates.forEach( (coord, index) => {
      coordsParam = coordsParam + "|" + coord;
    });

    const staticMapUrl = `https://maps.googleapis.com/maps/api/staticmap?size=500x500
    &maptype=roadmap
    &path=color:red|enc:${this.props.route.polyline}`;

    return (
      <div className="item-static-map">
        <img src={staticMapUrl} />
      </div>
    );
  }

}

export default RoutesIndexItem;


// c`aaCv_ob]hHbLnApBhAnBv@tARVrAs@jBcAv@]d@OfAK~@H~@VlBt@z@Xn@HpA@rJi@d@Cf@Ml@EzCQhBI`@CTGVM|@m@vAaAz@u@bD}CtBoBX]vAsDhCoHL_@VUhAuDdA_Dn@sAfC_FvAoC`B_DZw@f@aBTsAHu@JwCBc@\eCbA}DjBqGnCgJ`A{F~@_GzAwJh@kB^m@d@_@`@ShB[fASl@Sf@UfBuA|EwD~@w@j@u@Z{@Hi@F_A?o@Ec@i@{BOa@BMBGLYFIPOh@GrDk@^Gp@]LMJML]f@_BLi@g@i@kA_BkAeB
// c`aaCv_ob]hHbLnApBhAnBv@tARVrAs@jBcAv@]d@OfAK~@H~@VlBt@z@Xn@HpA@rJi@d@Cf@Ml@EzCQhBI`@CTGVM|@m@vAaAz@u@bD}CtBoBX]vAsDhCoHL_@VUhAuDdA_Dn@sAfC_FvAoC`B_DZw@f@aBTsAHu@JwCBc@\eCbA}DjBqGnCgJ`A{F~@_GzAwJh@kB^m@d@_@`@ShB[fASl@Sf@UfBuA|EwD~@w@j@u@Z{@Hi@F_A?o@Ec@i@{BOa@BMBGLYFIPOh@GrDk@^Gp@]LMJML]f@_BLi@g@i@kA_BkAeB
// c`aaCv_ob]hHbLnApBhAnBv@tARVrAs@jBcAv@]d@OfAK~@H~@VlBt@z@Xn@HpA@rJi@d@Cf@Ml@EzCQhBI`@CTGVM|@m@vAaAz@u@bD}CtBoBX]vAsDhCoHL_@VUhAuDdA_Dn@sAfC_FvAoC`B_DZw@f@aBTsAHu@JwCBc@CbA}DjBqGnCgJ`A{F~@_GzAwJh@kB^m@d@_@`@ShB[fASl@Sf@UfBuA|EwD~@w@j@u@Z{@Hi@F_A?o@Ec@i@{BOa@BMBGLYFIPOh@GrDk@^Gp@]LMJML]f@_BLi@g@i@kA_BkAeB

// }wneFvzejV@hAeBF_Kd@ePr@uBJGoCOaHIwBDc@MgE@{CHgCJiALsBFKPSJIj@WV@NLXVNTHZBVCZEZS\WRQFc@ASIY]Mc@Ce@LaBPeC@g@Ew@HeDJ{LPqLHaB^sE\aEPaCHqBFuDEsBM{@Wo@g@i@a@Sm@Ku@Ay@Fy@Xu@Va@Fk@\eAp@o@ZmA^gAP}@D_@?_@A_@Bk@KmAYoAg@qAq@mAw@_Au@eAiAi@k@u@eAgAoBsByE_DqHo@oAoAmBaAkAuEwFsCoDeHsIaGyH_@e@_CiDyBaE}AcDg@aA[i@k@{@yAcB}EmFcK}KmAoAeD}DyEgFsAqAcB{B{ByBqDcEaBeBqEmFeDeDmC_DsAwAiAqA{BeCoCoCwJqKyHcIuN_PmCqCwDgEuFiGaCcCiGeHiAkAcBoBkDeD_CkCuBsCoAyB_BcDgLiViF{Ke@mAq@qBcAmDw@yDg@gDUuBk@kH{AyReBoUcC_[{Cy`@YkE]yGYiHuAc^IwAi@iG}A_PsA{M}AcOm@{Ge@yEO{AWcEy@iPc@wF]{C}AiOoAeLoBkOu@kEaAkDk@wBQ_AQ_BEsA@mBRwB^oBhBuF^}ATkAJ}@B]D_@Bq@?KEQBm@?w@?g@CmASqCqAmLgAaKKsACeA?iBJ}BJmAzD}WX_@vAaIvCyP|@eG^}CBe@BcACi@CUOiAWgAm@sAw@gAw@u@YSaBu@mCi@WEYE[KuDg@sFk@YC]CMKMCiBUgCg@YEEEKMa@EwF_@yBU_AUgEm@cAEaEEwEa@sBSi@KSoCW@uBNwE^sIl@uLx@w[xBaZrBaOdAeJh@eJj@gAgPy@aMsDd@kAoQ~CT
// }wneFvzejV@hAeBF_Kd@ePr@uBJGoCOaHIwBDc@MgE@{CHgCJiALsBFKPSJIj@WV@NLXVNTHZBVCZEZS\\WRQFc@ASIY]Mc@Ce@LaBPeC@g@Ew@HeDJ{LPqLHaB^sE\\aEPaCHqBFuDEsBM{@Wo@g@i@a@Sm@Ku@Ay@Fy@Xu@Va@Fk@\\eAp@o@ZmA^gAP}@D_@?_@A_@Bk@KmAYoAg@qAq@mAw@_Au@eAiAi@k@u@eAgAoBsByE_DqHo@oAoAmBaAkAuEwFsCoDeHsIaGyH_@e@_CiDyBaE}AcDg@aA[i@k@{@yAcB}EmFcK}KmAoAeD}DyEgFsAqAcB{B{ByBqDcEaBeBqEmFeDeDmC_DsAwAiAqA{BeCoCoCwJqKyHcIuN_PmCqCwDgEuFiGaCcCiGeHiAkAcBoBkDeD_CkCuBsCoAyB_BcDgLiViF{Ke@mAq@qBcAmDw@yDg@gDUuBk@kH{AyReBoUcC_[{Cy`@YkE]yGYiHuAc^IwAi@iG}A_PsA{M}AcOm@{Ge@yEO{AWcEy@iPc@wF]{C}AiOoAeLoBkOu@kEaAkDk@wBQ_AQ_BEsA@mBRwB^oBhBuF^}ATkAJ}@B]D_@Bq@?KEQBm@?w@?g@CmASqCqAmLgAaKKsACeA?iBJ}BJmAzD}WX_@vAaIvCyP|@eG^}CBe@BcACi@CUOiAWgAm@sAw@gAw@u@YSaBu@mCi@WEYE[KuDg@sFk@YC]CMKMCiBUgCg@YEEEKMa@EwF_@yBU_AUgEm@cAEaEEwEa@sBSi@KSoCW@uBNwE^sIl@uLx@w[xBaZrBaOdAeJh@eJj@gAgPy@aMsDd@kAoQ~CT
