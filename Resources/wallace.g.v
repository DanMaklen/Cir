/* Generated by Yosys 0.5 (git sha1 c3c9fbf, gcc 4.8.2-19ubuntu1 -O2 -fstack-protector -fPIC -Os) */

module wallace(r0, r1, r2, r3, result);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire \fa11.c_in ;
  wire \fa11.c_out ;
  wire \fa11.sum ;
  wire \fa11.x ;
  wire \fa11.y ;
  wire \fa12.c_in ;
  wire \fa12.c_out ;
  wire \fa12.sum ;
  wire \fa12.x ;
  wire \fa12.y ;
  wire \fa13.c_in ;
  wire \fa13.c_out ;
  wire \fa13.sum ;
  wire \fa13.x ;
  wire \fa13.y ;
  wire \fa14.c_in ;
  wire \fa14.c_out ;
  wire \fa14.sum ;
  wire \fa14.x ;
  wire \fa14.y ;
  wire \fa15.c_in ;
  wire \fa15.c_out ;
  wire \fa15.sum ;
  wire \fa15.x ;
  wire \fa15.y ;
  wire \fa16.c_in ;
  wire \fa16.c_out ;
  wire \fa16.sum ;
  wire \fa16.x ;
  wire \fa16.y ;
  wire \fa17.c_in ;
  wire \fa17.c_out ;
  wire \fa17.sum ;
  wire \fa17.x ;
  wire \fa17.y ;
  wire \fa18.c_in ;
  wire \fa18.c_out ;
  wire \fa18.sum ;
  wire \fa18.x ;
  wire \fa18.y ;
  wire \fa2.c_in ;
  wire \fa2.c_out ;
  wire \fa2.sum ;
  wire \fa2.x ;
  wire \fa2.y ;
  wire \fa3.c_in ;
  wire \fa3.c_out ;
  wire \fa3.sum ;
  wire \fa3.x ;
  wire \fa3.y ;
  wire \fa4.c_in ;
  wire \fa4.c_out ;
  wire \fa4.sum ;
  wire \fa4.x ;
  wire \fa4.y ;
  wire \fa5.c_in ;
  wire \fa5.c_out ;
  wire \fa5.sum ;
  wire \fa5.x ;
  wire \fa5.y ;
  wire \fa7.c_in ;
  wire \fa7.c_out ;
  wire \fa7.sum ;
  wire \fa7.x ;
  wire \fa7.y ;
  wire \fa8.c_in ;
  wire \fa8.c_out ;
  wire \fa8.sum ;
  wire \fa8.x ;
  wire \fa8.y ;
  wire \fa9.c_in ;
  wire \fa9.c_out ;
  wire \fa9.sum ;
  wire \fa9.x ;
  wire \fa9.y ;
  wire \ha1.c_out ;
  wire \ha1.sum ;
  wire \ha1.x ;
  wire \ha1.y ;
  wire \ha10.c_out ;
  wire \ha10.sum ;
  wire \ha10.x ;
  wire \ha10.y ;
  wire \ha6.c_out ;
  wire \ha6.sum ;
  wire \ha6.x ;
  wire \ha6.y ;
  wire o1;
  wire o10;
  wire o11;
  wire o2;
  wire o3;
  wire o4;
  wire o5;
  wire o6;
  wire o7;
  wire o8;
  wire o9;
  input [7:0] r0;
  input [7:0] r1;
  input [7:0] r2;
  input [7:0] r3;
  output [7:0] result;
  wire w1;
  wire w10;
  wire w11;
  wire w12;
  wire w13;
  wire w14;
  wire w15;
  wire w16;
  wire w17;
  wire w18;
  wire w2;
  wire w3;
  wire w4;
  wire w5;
  wire w6;
  wire w7;
  wire w8;
  wire w9;
  NAND2X1 _153_ (
    .A(\fa11.y ),
    .B(\fa11.x ),
    .Y(_006_)
  );
  AND2X2 _154_ (
    .A(\fa11.y ),
    .B(\fa11.x ),
    .Y(_007_)
  );
  NOR2X1 _155_ (
    .A(\fa11.y ),
    .B(\fa11.x ),
    .Y(_008_)
  );
  NOR2X1 _156_ (
    .A(_008_),
    .B(_007_),
    .Y(_009_)
  );
  NAND2X1 _157_ (
    .A(\fa11.c_in ),
    .B(_009_),
    .Y(_000_)
  );
  NAND2X1 _158_ (
    .A(_006_),
    .B(_000_),
    .Y(\fa11.c_out )
  );
  INVX1 _159_ (
    .A(\fa11.c_in ),
    .Y(_001_)
  );
  NAND2X1 _160_ (
    .A(_001_),
    .B(_009_),
    .Y(_002_)
  );
  OR2X2 _161_ (
    .A(\fa11.y ),
    .B(\fa11.x ),
    .Y(_003_)
  );
  NAND2X1 _162_ (
    .A(_006_),
    .B(_003_),
    .Y(_004_)
  );
  NAND2X1 _163_ (
    .A(\fa11.c_in ),
    .B(_004_),
    .Y(_005_)
  );
  NAND2X1 _164_ (
    .A(_002_),
    .B(_005_),
    .Y(\fa11.sum )
  );
  NAND2X1 _165_ (
    .A(\fa12.y ),
    .B(\fa12.x ),
    .Y(_016_)
  );
  AND2X2 _166_ (
    .A(\fa12.y ),
    .B(\fa12.x ),
    .Y(_017_)
  );
  NOR2X1 _167_ (
    .A(\fa12.y ),
    .B(\fa12.x ),
    .Y(_018_)
  );
  NOR2X1 _168_ (
    .A(_018_),
    .B(_017_),
    .Y(_019_)
  );
  NAND2X1 _169_ (
    .A(\fa12.c_in ),
    .B(_019_),
    .Y(_010_)
  );
  NAND2X1 _170_ (
    .A(_016_),
    .B(_010_),
    .Y(\fa12.c_out )
  );
  INVX1 _171_ (
    .A(\fa12.c_in ),
    .Y(_011_)
  );
  NAND2X1 _172_ (
    .A(_011_),
    .B(_019_),
    .Y(_012_)
  );
  OR2X2 _173_ (
    .A(\fa12.y ),
    .B(\fa12.x ),
    .Y(_013_)
  );
  NAND2X1 _174_ (
    .A(_016_),
    .B(_013_),
    .Y(_014_)
  );
  NAND2X1 _175_ (
    .A(\fa12.c_in ),
    .B(_014_),
    .Y(_015_)
  );
  NAND2X1 _176_ (
    .A(_012_),
    .B(_015_),
    .Y(\fa12.sum )
  );
  NAND2X1 _177_ (
    .A(\fa13.y ),
    .B(\fa13.x ),
    .Y(_026_)
  );
  AND2X2 _178_ (
    .A(\fa13.y ),
    .B(\fa13.x ),
    .Y(_027_)
  );
  NOR2X1 _179_ (
    .A(\fa13.y ),
    .B(\fa13.x ),
    .Y(_028_)
  );
  NOR2X1 _180_ (
    .A(_028_),
    .B(_027_),
    .Y(_029_)
  );
  NAND2X1 _181_ (
    .A(\fa13.c_in ),
    .B(_029_),
    .Y(_020_)
  );
  NAND2X1 _182_ (
    .A(_026_),
    .B(_020_),
    .Y(\fa13.c_out )
  );
  INVX1 _183_ (
    .A(\fa13.c_in ),
    .Y(_021_)
  );
  NAND2X1 _184_ (
    .A(_021_),
    .B(_029_),
    .Y(_022_)
  );
  OR2X2 _185_ (
    .A(\fa13.y ),
    .B(\fa13.x ),
    .Y(_023_)
  );
  NAND2X1 _186_ (
    .A(_026_),
    .B(_023_),
    .Y(_024_)
  );
  NAND2X1 _187_ (
    .A(\fa13.c_in ),
    .B(_024_),
    .Y(_025_)
  );
  NAND2X1 _188_ (
    .A(_022_),
    .B(_025_),
    .Y(\fa13.sum )
  );
  NAND2X1 _189_ (
    .A(\fa14.y ),
    .B(\fa14.x ),
    .Y(_036_)
  );
  AND2X2 _190_ (
    .A(\fa14.y ),
    .B(\fa14.x ),
    .Y(_037_)
  );
  NOR2X1 _191_ (
    .A(\fa14.y ),
    .B(\fa14.x ),
    .Y(_038_)
  );
  NOR2X1 _192_ (
    .A(_038_),
    .B(_037_),
    .Y(_039_)
  );
  NAND2X1 _193_ (
    .A(\fa14.c_in ),
    .B(_039_),
    .Y(_030_)
  );
  NAND2X1 _194_ (
    .A(_036_),
    .B(_030_),
    .Y(\fa14.c_out )
  );
  INVX1 _195_ (
    .A(\fa14.c_in ),
    .Y(_031_)
  );
  NAND2X1 _196_ (
    .A(_031_),
    .B(_039_),
    .Y(_032_)
  );
  OR2X2 _197_ (
    .A(\fa14.y ),
    .B(\fa14.x ),
    .Y(_033_)
  );
  NAND2X1 _198_ (
    .A(_036_),
    .B(_033_),
    .Y(_034_)
  );
  NAND2X1 _199_ (
    .A(\fa14.c_in ),
    .B(_034_),
    .Y(_035_)
  );
  NAND2X1 _200_ (
    .A(_032_),
    .B(_035_),
    .Y(\fa14.sum )
  );
  NAND2X1 _201_ (
    .A(\fa15.y ),
    .B(\fa15.x ),
    .Y(_046_)
  );
  AND2X2 _202_ (
    .A(\fa15.y ),
    .B(\fa15.x ),
    .Y(_047_)
  );
  NOR2X1 _203_ (
    .A(\fa15.y ),
    .B(\fa15.x ),
    .Y(_048_)
  );
  NOR2X1 _204_ (
    .A(_048_),
    .B(_047_),
    .Y(_049_)
  );
  NAND2X1 _205_ (
    .A(\fa15.c_in ),
    .B(_049_),
    .Y(_040_)
  );
  NAND2X1 _206_ (
    .A(_046_),
    .B(_040_),
    .Y(\fa15.c_out )
  );
  INVX1 _207_ (
    .A(\fa15.c_in ),
    .Y(_041_)
  );
  NAND2X1 _208_ (
    .A(_041_),
    .B(_049_),
    .Y(_042_)
  );
  OR2X2 _209_ (
    .A(\fa15.y ),
    .B(\fa15.x ),
    .Y(_043_)
  );
  NAND2X1 _210_ (
    .A(_046_),
    .B(_043_),
    .Y(_044_)
  );
  NAND2X1 _211_ (
    .A(\fa15.c_in ),
    .B(_044_),
    .Y(_045_)
  );
  NAND2X1 _212_ (
    .A(_042_),
    .B(_045_),
    .Y(\fa15.sum )
  );
  NAND2X1 _213_ (
    .A(\fa16.y ),
    .B(\fa16.x ),
    .Y(_056_)
  );
  AND2X2 _214_ (
    .A(\fa16.y ),
    .B(\fa16.x ),
    .Y(_057_)
  );
  NOR2X1 _215_ (
    .A(\fa16.y ),
    .B(\fa16.x ),
    .Y(_058_)
  );
  NOR2X1 _216_ (
    .A(_058_),
    .B(_057_),
    .Y(_059_)
  );
  NAND2X1 _217_ (
    .A(\fa16.c_in ),
    .B(_059_),
    .Y(_050_)
  );
  NAND2X1 _218_ (
    .A(_056_),
    .B(_050_),
    .Y(\fa16.c_out )
  );
  INVX1 _219_ (
    .A(\fa16.c_in ),
    .Y(_051_)
  );
  NAND2X1 _220_ (
    .A(_051_),
    .B(_059_),
    .Y(_052_)
  );
  OR2X2 _221_ (
    .A(\fa16.y ),
    .B(\fa16.x ),
    .Y(_053_)
  );
  NAND2X1 _222_ (
    .A(_056_),
    .B(_053_),
    .Y(_054_)
  );
  NAND2X1 _223_ (
    .A(\fa16.c_in ),
    .B(_054_),
    .Y(_055_)
  );
  NAND2X1 _224_ (
    .A(_052_),
    .B(_055_),
    .Y(\fa16.sum )
  );
  NAND2X1 _225_ (
    .A(\fa17.y ),
    .B(\fa17.x ),
    .Y(_066_)
  );
  AND2X2 _226_ (
    .A(\fa17.y ),
    .B(\fa17.x ),
    .Y(_067_)
  );
  NOR2X1 _227_ (
    .A(\fa17.y ),
    .B(\fa17.x ),
    .Y(_068_)
  );
  NOR2X1 _228_ (
    .A(_068_),
    .B(_067_),
    .Y(_069_)
  );
  NAND2X1 _229_ (
    .A(\fa17.c_in ),
    .B(_069_),
    .Y(_060_)
  );
  NAND2X1 _230_ (
    .A(_066_),
    .B(_060_),
    .Y(\fa17.c_out )
  );
  INVX1 _231_ (
    .A(\fa17.c_in ),
    .Y(_061_)
  );
  NAND2X1 _232_ (
    .A(_061_),
    .B(_069_),
    .Y(_062_)
  );
  OR2X2 _233_ (
    .A(\fa17.y ),
    .B(\fa17.x ),
    .Y(_063_)
  );
  NAND2X1 _234_ (
    .A(_066_),
    .B(_063_),
    .Y(_064_)
  );
  NAND2X1 _235_ (
    .A(\fa17.c_in ),
    .B(_064_),
    .Y(_065_)
  );
  NAND2X1 _236_ (
    .A(_062_),
    .B(_065_),
    .Y(\fa17.sum )
  );
  NAND2X1 _237_ (
    .A(\fa18.y ),
    .B(\fa18.x ),
    .Y(_076_)
  );
  AND2X2 _238_ (
    .A(\fa18.y ),
    .B(\fa18.x ),
    .Y(_077_)
  );
  NOR2X1 _239_ (
    .A(\fa18.y ),
    .B(\fa18.x ),
    .Y(_078_)
  );
  NOR2X1 _240_ (
    .A(_078_),
    .B(_077_),
    .Y(_079_)
  );
  NAND2X1 _241_ (
    .A(\fa18.c_in ),
    .B(_079_),
    .Y(_070_)
  );
  NAND2X1 _242_ (
    .A(_076_),
    .B(_070_),
    .Y(\fa18.c_out )
  );
  INVX1 _243_ (
    .A(\fa18.c_in ),
    .Y(_071_)
  );
  NAND2X1 _244_ (
    .A(_071_),
    .B(_079_),
    .Y(_072_)
  );
  OR2X2 _245_ (
    .A(\fa18.y ),
    .B(\fa18.x ),
    .Y(_073_)
  );
  NAND2X1 _246_ (
    .A(_076_),
    .B(_073_),
    .Y(_074_)
  );
  NAND2X1 _247_ (
    .A(\fa18.c_in ),
    .B(_074_),
    .Y(_075_)
  );
  NAND2X1 _248_ (
    .A(_072_),
    .B(_075_),
    .Y(\fa18.sum )
  );
  NAND2X1 _249_ (
    .A(\fa2.y ),
    .B(\fa2.x ),
    .Y(_086_)
  );
  AND2X2 _250_ (
    .A(\fa2.y ),
    .B(\fa2.x ),
    .Y(_087_)
  );
  NOR2X1 _251_ (
    .A(\fa2.y ),
    .B(\fa2.x ),
    .Y(_088_)
  );
  NOR2X1 _252_ (
    .A(_088_),
    .B(_087_),
    .Y(_089_)
  );
  NAND2X1 _253_ (
    .A(\fa2.c_in ),
    .B(_089_),
    .Y(_080_)
  );
  NAND2X1 _254_ (
    .A(_086_),
    .B(_080_),
    .Y(\fa2.c_out )
  );
  INVX1 _255_ (
    .A(\fa2.c_in ),
    .Y(_081_)
  );
  NAND2X1 _256_ (
    .A(_081_),
    .B(_089_),
    .Y(_082_)
  );
  OR2X2 _257_ (
    .A(\fa2.y ),
    .B(\fa2.x ),
    .Y(_083_)
  );
  NAND2X1 _258_ (
    .A(_086_),
    .B(_083_),
    .Y(_084_)
  );
  NAND2X1 _259_ (
    .A(\fa2.c_in ),
    .B(_084_),
    .Y(_085_)
  );
  NAND2X1 _260_ (
    .A(_082_),
    .B(_085_),
    .Y(\fa2.sum )
  );
  NAND2X1 _261_ (
    .A(\fa3.y ),
    .B(\fa3.x ),
    .Y(_096_)
  );
  AND2X2 _262_ (
    .A(\fa3.y ),
    .B(\fa3.x ),
    .Y(_097_)
  );
  NOR2X1 _263_ (
    .A(\fa3.y ),
    .B(\fa3.x ),
    .Y(_098_)
  );
  NOR2X1 _264_ (
    .A(_098_),
    .B(_097_),
    .Y(_099_)
  );
  NAND2X1 _265_ (
    .A(\fa3.c_in ),
    .B(_099_),
    .Y(_090_)
  );
  NAND2X1 _266_ (
    .A(_096_),
    .B(_090_),
    .Y(\fa3.c_out )
  );
  INVX1 _267_ (
    .A(\fa3.c_in ),
    .Y(_091_)
  );
  NAND2X1 _268_ (
    .A(_091_),
    .B(_099_),
    .Y(_092_)
  );
  OR2X2 _269_ (
    .A(\fa3.y ),
    .B(\fa3.x ),
    .Y(_093_)
  );
  NAND2X1 _270_ (
    .A(_096_),
    .B(_093_),
    .Y(_094_)
  );
  NAND2X1 _271_ (
    .A(\fa3.c_in ),
    .B(_094_),
    .Y(_095_)
  );
  NAND2X1 _272_ (
    .A(_092_),
    .B(_095_),
    .Y(\fa3.sum )
  );
  NAND2X1 _273_ (
    .A(\fa4.y ),
    .B(\fa4.x ),
    .Y(_106_)
  );
  AND2X2 _274_ (
    .A(\fa4.y ),
    .B(\fa4.x ),
    .Y(_107_)
  );
  NOR2X1 _275_ (
    .A(\fa4.y ),
    .B(\fa4.x ),
    .Y(_108_)
  );
  NOR2X1 _276_ (
    .A(_108_),
    .B(_107_),
    .Y(_109_)
  );
  NAND2X1 _277_ (
    .A(\fa4.c_in ),
    .B(_109_),
    .Y(_100_)
  );
  NAND2X1 _278_ (
    .A(_106_),
    .B(_100_),
    .Y(\fa4.c_out )
  );
  INVX1 _279_ (
    .A(\fa4.c_in ),
    .Y(_101_)
  );
  NAND2X1 _280_ (
    .A(_101_),
    .B(_109_),
    .Y(_102_)
  );
  OR2X2 _281_ (
    .A(\fa4.y ),
    .B(\fa4.x ),
    .Y(_103_)
  );
  NAND2X1 _282_ (
    .A(_106_),
    .B(_103_),
    .Y(_104_)
  );
  NAND2X1 _283_ (
    .A(\fa4.c_in ),
    .B(_104_),
    .Y(_105_)
  );
  NAND2X1 _284_ (
    .A(_102_),
    .B(_105_),
    .Y(\fa4.sum )
  );
  NAND2X1 _285_ (
    .A(\fa5.y ),
    .B(\fa5.x ),
    .Y(_116_)
  );
  AND2X2 _286_ (
    .A(\fa5.y ),
    .B(\fa5.x ),
    .Y(_117_)
  );
  NOR2X1 _287_ (
    .A(\fa5.y ),
    .B(\fa5.x ),
    .Y(_118_)
  );
  NOR2X1 _288_ (
    .A(_118_),
    .B(_117_),
    .Y(_119_)
  );
  NAND2X1 _289_ (
    .A(\fa5.c_in ),
    .B(_119_),
    .Y(_110_)
  );
  NAND2X1 _290_ (
    .A(_116_),
    .B(_110_),
    .Y(\fa5.c_out )
  );
  INVX1 _291_ (
    .A(\fa5.c_in ),
    .Y(_111_)
  );
  NAND2X1 _292_ (
    .A(_111_),
    .B(_119_),
    .Y(_112_)
  );
  OR2X2 _293_ (
    .A(\fa5.y ),
    .B(\fa5.x ),
    .Y(_113_)
  );
  NAND2X1 _294_ (
    .A(_116_),
    .B(_113_),
    .Y(_114_)
  );
  NAND2X1 _295_ (
    .A(\fa5.c_in ),
    .B(_114_),
    .Y(_115_)
  );
  NAND2X1 _296_ (
    .A(_112_),
    .B(_115_),
    .Y(\fa5.sum )
  );
  NAND2X1 _297_ (
    .A(\fa7.y ),
    .B(\fa7.x ),
    .Y(_126_)
  );
  AND2X2 _298_ (
    .A(\fa7.y ),
    .B(\fa7.x ),
    .Y(_127_)
  );
  NOR2X1 _299_ (
    .A(\fa7.y ),
    .B(\fa7.x ),
    .Y(_128_)
  );
  NOR2X1 _300_ (
    .A(_128_),
    .B(_127_),
    .Y(_129_)
  );
  NAND2X1 _301_ (
    .A(\fa7.c_in ),
    .B(_129_),
    .Y(_120_)
  );
  NAND2X1 _302_ (
    .A(_126_),
    .B(_120_),
    .Y(\fa7.c_out )
  );
  INVX1 _303_ (
    .A(\fa7.c_in ),
    .Y(_121_)
  );
  NAND2X1 _304_ (
    .A(_121_),
    .B(_129_),
    .Y(_122_)
  );
  OR2X2 _305_ (
    .A(\fa7.y ),
    .B(\fa7.x ),
    .Y(_123_)
  );
  NAND2X1 _306_ (
    .A(_126_),
    .B(_123_),
    .Y(_124_)
  );
  NAND2X1 _307_ (
    .A(\fa7.c_in ),
    .B(_124_),
    .Y(_125_)
  );
  NAND2X1 _308_ (
    .A(_122_),
    .B(_125_),
    .Y(\fa7.sum )
  );
  NAND2X1 _309_ (
    .A(\fa8.y ),
    .B(\fa8.x ),
    .Y(_136_)
  );
  AND2X2 _310_ (
    .A(\fa8.y ),
    .B(\fa8.x ),
    .Y(_137_)
  );
  NOR2X1 _311_ (
    .A(\fa8.y ),
    .B(\fa8.x ),
    .Y(_138_)
  );
  NOR2X1 _312_ (
    .A(_138_),
    .B(_137_),
    .Y(_139_)
  );
  NAND2X1 _313_ (
    .A(\fa8.c_in ),
    .B(_139_),
    .Y(_130_)
  );
  NAND2X1 _314_ (
    .A(_136_),
    .B(_130_),
    .Y(\fa8.c_out )
  );
  INVX1 _315_ (
    .A(\fa8.c_in ),
    .Y(_131_)
  );
  NAND2X1 _316_ (
    .A(_131_),
    .B(_139_),
    .Y(_132_)
  );
  OR2X2 _317_ (
    .A(\fa8.y ),
    .B(\fa8.x ),
    .Y(_133_)
  );
  NAND2X1 _318_ (
    .A(_136_),
    .B(_133_),
    .Y(_134_)
  );
  NAND2X1 _319_ (
    .A(\fa8.c_in ),
    .B(_134_),
    .Y(_135_)
  );
  NAND2X1 _320_ (
    .A(_132_),
    .B(_135_),
    .Y(\fa8.sum )
  );
  NAND2X1 _321_ (
    .A(\fa9.y ),
    .B(\fa9.x ),
    .Y(_146_)
  );
  AND2X2 _322_ (
    .A(\fa9.y ),
    .B(\fa9.x ),
    .Y(_147_)
  );
  NOR2X1 _323_ (
    .A(\fa9.y ),
    .B(\fa9.x ),
    .Y(_148_)
  );
  NOR2X1 _324_ (
    .A(_148_),
    .B(_147_),
    .Y(_149_)
  );
  NAND2X1 _325_ (
    .A(\fa9.c_in ),
    .B(_149_),
    .Y(_140_)
  );
  NAND2X1 _326_ (
    .A(_146_),
    .B(_140_),
    .Y(\fa9.c_out )
  );
  INVX1 _327_ (
    .A(\fa9.c_in ),
    .Y(_141_)
  );
  NAND2X1 _328_ (
    .A(_141_),
    .B(_149_),
    .Y(_142_)
  );
  OR2X2 _329_ (
    .A(\fa9.y ),
    .B(\fa9.x ),
    .Y(_143_)
  );
  NAND2X1 _330_ (
    .A(_146_),
    .B(_143_),
    .Y(_144_)
  );
  NAND2X1 _331_ (
    .A(\fa9.c_in ),
    .B(_144_),
    .Y(_145_)
  );
  NAND2X1 _332_ (
    .A(_142_),
    .B(_145_),
    .Y(\fa9.sum )
  );
  AND2X2 _333_ (
    .A(\ha1.y ),
    .B(\ha1.x ),
    .Y(\ha1.c_out )
  );
  NOR2X1 _334_ (
    .A(\ha1.y ),
    .B(\ha1.x ),
    .Y(_150_)
  );
  NOR2X1 _335_ (
    .A(_150_),
    .B(\ha1.c_out ),
    .Y(\ha1.sum )
  );
  AND2X2 _336_ (
    .A(\ha10.y ),
    .B(\ha10.x ),
    .Y(\ha10.c_out )
  );
  NOR2X1 _337_ (
    .A(\ha10.y ),
    .B(\ha10.x ),
    .Y(_151_)
  );
  NOR2X1 _338_ (
    .A(_151_),
    .B(\ha10.c_out ),
    .Y(\ha10.sum )
  );
  AND2X2 _339_ (
    .A(\ha6.y ),
    .B(\ha6.x ),
    .Y(\ha6.c_out )
  );
  NOR2X1 _340_ (
    .A(\ha6.y ),
    .B(\ha6.x ),
    .Y(_152_)
  );
  NOR2X1 _341_ (
    .A(_152_),
    .B(\ha6.c_out ),
    .Y(\ha6.sum )
  );
  assign result[0] = r0[0];
  assign o1 = \ha1.sum ;
  assign w1 = \ha1.c_out ;
  assign \ha1.x  = r1[2];
  assign \ha1.y  = r2[2];
  assign o2 = \fa2.sum ;
  assign w2 = \fa2.c_out ;
  assign \fa2.c_in  = r2[3];
  assign \fa2.x  = r3[3];
  assign \fa2.y  = r1[3];
  assign o3 = \fa3.sum ;
  assign w3 = \fa3.c_out ;
  assign \fa3.c_in  = r1[4];
  assign \fa3.x  = r2[4];
  assign \fa3.y  = r3[4];
  assign o4 = \fa4.sum ;
  assign w4 = \fa4.c_out ;
  assign \fa4.c_in  = r1[5];
  assign \fa4.x  = r2[5];
  assign \fa4.y  = r3[5];
  assign o5 = \fa5.sum ;
  assign w5 = \fa5.c_out ;
  assign \fa5.c_in  = r1[6];
  assign \fa5.x  = r2[6];
  assign \fa5.y  = r3[6];
  assign o10 = \fa17.sum ;
  assign w16 = \fa17.c_out ;
  assign \fa17.c_in  = r0[7];
  assign \fa17.x  = r1[7];
  assign \fa17.y  = r2[7];
  assign o6 = \ha6.sum ;
  assign w6 = \ha6.c_out ;
  assign \ha6.x  = o2;
  assign \ha6.y  = r0[3];
  assign o7 = \fa7.sum ;
  assign w7 = \fa7.c_out ;
  assign \fa7.c_in  = w2;
  assign \fa7.x  = o3;
  assign \fa7.y  = r0[4];
  assign o8 = \fa8.sum ;
  assign w8 = \fa8.c_out ;
  assign \fa8.c_in  = w3;
  assign \fa8.x  = o4;
  assign \fa8.y  = r0[5];
  assign o9 = \fa9.sum ;
  assign w9 = \fa9.c_out ;
  assign \fa9.c_in  = w4;
  assign \fa9.x  = o5;
  assign \fa9.y  = r0[6];
  assign o11 = \fa18.sum ;
  assign w17 = \fa18.c_out ;
  assign \fa18.c_in  = w5;
  assign \fa18.x  = o10;
  assign \fa18.y  = r3[7];
  assign result[1] = \ha10.sum ;
  assign w10 = \ha10.c_out ;
  assign \ha10.x  = r0[1];
  assign \ha10.y  = r1[1];
  assign result[2] = \fa11.sum ;
  assign w11 = \fa11.c_out ;
  assign \fa11.c_in  = w10;
  assign \fa11.x  = r0[2];
  assign \fa11.y  = o1;
  assign result[3] = \fa12.sum ;
  assign w12 = \fa12.c_out ;
  assign \fa12.c_in  = w11;
  assign \fa12.x  = w1;
  assign \fa12.y  = o6;
  assign result[4] = \fa13.sum ;
  assign w13 = \fa13.c_out ;
  assign \fa13.c_in  = w12;
  assign \fa13.x  = w6;
  assign \fa13.y  = o7;
  assign result[5] = \fa14.sum ;
  assign w14 = \fa14.c_out ;
  assign \fa14.c_in  = w13;
  assign \fa14.x  = w7;
  assign \fa14.y  = o8;
  assign result[6] = \fa15.sum ;
  assign w15 = \fa15.c_out ;
  assign \fa15.c_in  = w14;
  assign \fa15.x  = w8;
  assign \fa15.y  = o9;
  assign result[7] = \fa16.sum ;
  assign w18 = \fa16.c_out ;
  assign \fa16.c_in  = w15;
  assign \fa16.x  = w9;
  assign \fa16.y  = o11;
endmodule
