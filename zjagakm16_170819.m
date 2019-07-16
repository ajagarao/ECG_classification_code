%function [EE TEST4CR]= jagakm15_170804( Afile1trains, Afile1test) 
 if 33,if 32,if 31, if 3,if 2,if 26,  if 2,if 2,if 1, if 21,if 1,if 1,if 1,
if ~exist( 'Afilemit' ,'var' ), clc; close all; clear all; pack; end; ENS=0;BE=0;
PAM=0;BTIME=10; wtr=1;bcv=0;BFIXP=0;BFIX=0;BFIX201=0; BCLUST=0;Bdeep=1; dum=0; 
if  BCLUST, BI='INTRA';else  BI= 'INTER'; end; if ~exist('Bdeep','var'),Bdeep=1;end; 
if Bdeep, BSVM=0; ELM=0;PAM=0; BCLUST=0; BA='deep'; end; 
if 0,BFIX=10;BFIX201=0;BI='INTER'; end;if ~exist('BSVM','var'),BSVM=0;end; 
if ~exist('Afile1test','var'),Afile1test =233; end;if ~exist('BDT','var'),BDT=0;end;
if ~BTIME&&~BCLUST&& ~exist( 'wFranks','var'), wFranks=16; end; 
if ~exist('zbestc','var'), zbestc=(2^-2); zbestc=(2^0); end;Bdeep
if BSVM, ELM=0;PAM=0; BCLUST=0; end;  if ELM,ELM=10; BSVM=0; end;
if BTIME &&BCLUST, wlamd=10^-1;end; if ~exist('zsigma2','var'),zsigma2=2;end;
if ~BTIME&&BCLUST,wlamd=10^2;wFranks=12;wNN=wFranks-0;wNE=wNN-5;end;
 if PAM, BSVM=0; ELM=0; BCLUST=1; BA='PAM'; BTIME=1; end; 
 if   0, sup=0; wtr=0; BDT=0; end;  if 10,sup=10; wtr=10; end;
TTFILE= [100; 103; 105; 111; 113; 117; 121; 123; 200; 202; 210; 212; ...
213; 214; 219; 221; 222 ; 228; 231;  232; 233 ; 234 ; ]; BNORM = 10;
TRFILE = [  101 ; 106 ; 108 ;109 ;112 ;  114 ; 115 ;116 ;118 ; 119 ;   ...
 122 ; 124 ; 201 ;  203 ;  205 ; 207 ; 208 ; 209;  215 ;  220 ;  223 ; 230 ; ];
PATXL='C:\FINAL\dropbox\'; Broc=0; 
TFILE = [ TTFILE; TRFILE  ] ;  PATXL='C:\FINAL\dropbox\'; 
PATFIG ='C:\FIGURE\' ; PATFIG ='C:\FINAL\Dropbox\MAIN\FIGU\' ; 
% PATFIG ='C:\FINAL\Dropbox\AJRSBR\ELM\' ;  
% if (232==Afile1test)|| (222==Afile1test), BI='INTRA';end;  xls
if  isequal(BI,'INTRA') BCLUST=0; PAM=0 ;end; % BD= 'SMALL' ; 
if ~exist('VER','var'),VER=0;end;  if ~exist('BVER', 'var'), BVER=10; end; 
BRAN=0 ;  xlr= 1; znum=0; Bran = 12; BDA = 1;  BD= 'LARGE' ;
if  exist( 'Afilemit' ,'var' ) 
if ~isempty(intersect( (Afilemit) ,TRFILE)),  BO  = 'TR' ; BOMIT = 'TR' ;
 elseif  ~isempty(intersect( (Afilemit) ,TTFILE)),BO  = 'TT' ; BOMIT = 'TT' ; 
else  BO='MANY'; %BOMIT = 'NONE' ;%TraceSegmentation;%randint(NC,1,L) 
end;end; if ~isempty(intersect((Afile1test),TRFILE)),BOTEST='TR';BOMIT= 'TT' ;
elseif   ~isempty(intersect( (Afile1test) ,TTFILE)),BOTEST = 'TT';BOMIT= 'TT';
 end;  if  ~exist('BO','var'),   BO = 'MANY' ; end; %RabinKarp
if ~exist('Afile1trains','var')&&ENS&&isequal(BOTEST,'TT'),
Afile1trains = '203'; end ;%addpath(genpath('c:\FINAL\dropbox\libsvm-3.17'));  
if ~exist('Afile1trains','var') &&ENS&& isequal(BOTEST,'TR'), 
   Afile1trains = '233'; end ;   dir =pwd ;  archstr = computer('arch') ;
codefilep = mfilename('fullpath');  sqr = @(y) y.^2;  x=quad(sqr, 0, 1) ; 
 [ comp , maxsize] = computer ; maxsizeint=  int32(maxsize )
 if (~isequal( comp, 'PCWIN')) && exist('G:\jaga','dir') , 
elseif (isequal(comp ,'PCWIN')), PATF ='c:\data\mitdb\mitdbset\'; 
else PATF ='D:\data\mitdb\featurenew'; 
end;   PAT ='c:\data\mitdb\feature2017' ; PATF ='c:\data\mitdb\mitdbset\'; 
Ap1=prefdir; Ap=pwd; fonts16=16;  which svmtrain -all ;%winopen(Ap); 
rand( 'seed' , Bran ) ;  randn('seed', Bran ); Aold=  [ ] ;  FS13= 13 ; 
 
wmethodID =1; Amatlab = matlabroot ;  [staus,sag,eid ] =mkdir( PATFIG);
 if 0, if  Afile1test ==200 ,    BNORM= 0 ;   BTT= 0;  
  elseif  Afile1test==213   BNORM= 0 ;  BTT= 0;  end; end; 
 if  ~exist('BCALIBR','var'), BCALIBR =0; end; BUPDT ='NOUPD' ;tic
BANN= 0; dir = pwd ;  FS4=4; FS6=6 ; format short g; global g;
 ERRORh=[];   if  ~exist('BVER', 'var'), BVER=1; end;  dbclear at  2666 ; 
 if ~exist('BAL','var'), BAL = 'B'; BAL = 'U';  end; FS1=1; FS4= 4; 
 % [left bottom width height] =get(0,'ScreenSize'); z1s= savepath('p.m') 
codefile = mfilename ;  FS13= 13 ;  if  ~exist('BREV','var'), BREV=0;end; 
  if ~exist('B2696', 'var')  B2696 = 2 ;  end;ALL = Afile1test ; tic 
DBUG=0; zFPIR= []; oldpath= addpath(genpath('stats')) ; paths=savepath ;    
if 0,    dbstop 910; dbstop 840; dbstop 1500 ;dbstop 2666;
    dbstop 2530; dbstop 3360; dbstop 2180;dbstop 2670; g=0;dbstop 2480; 
elseif ~exist('Adrive','var'), dbstop  2004;  g=1; dbstop 2670; 
 dbstop 3265;DBUG=10;dbstop  2724; dbstop 2530; ;
 dbstop 2684;dbstop 2766;  dbstop 842;  
else dbstop 2748;  g=0; dbstop 3481;  dbclear all;  dbclear at  3205 ;
end; end; if 1, if 10,   %loadecg161115 ; 
loadecgfeat17AUG ; codefile = mfilename 
% save('d:\mymfiles\june10','vol','temp','-ASCII')
znum=0;znum2=0;  z=[];  BTT =0; if sup,alpha=0.25; else alpha= 0.25; end; 
if  isequal( BOTEST , 'TT' ),   sheet = 1 ;  
elseif isequal( BOTEST, 'TR' ),    sheet = 5 ;  
end;  warning on verbose ; warning('off', 'NNET:Processing')
KM=1; newpath =PATXL;  cg='g'; cb='b'; cy='y'; cr='r';
 legh=0;  hlegend=0;  BTT =0;Fonts12=12;  cm='m'; % cd(PATXL); 
  MFD2037=[]; wzze2695I= []; zze2695Is= [] ;  yzze1595= [] ;       
  NSVF=1; if NSVF,  BS=2; BV=3;  else  BS=3; BV=2;  end;  cm='m'; cr='r'; 
 if ~NSVF,  co2= 'r';  co3='m'; elseif NSVF, co2='m';  co3='r';  end; 
 if  BCLUST, BC='clust';  else  BC = 'class'; end;   which laplacian -all ; 
if ~BVER,  PATF='G:\data\mitdb\feature2016' ; end;  zze2695c = [] ;   
 if  BTIME, BM='Time'; else  BM='feat'; end;    PATX= [ PATXL ];  
 Fonts12=14 ; ze3965c=[];  m=0; zze2695I= [] ;   clear SM2; 
 True_class2 = { '1 norm1' , '1 Cbbl2' , '1 Cbbr3' ,   '3 aaP4 ' , '2cvpc5' , ...
 '4fusio6' , '3Jnp7' , ' 3apc8', '3Svp9', '2VE10',  '1j11' ...
 , '5/P12',  '5Q13',  'noisTilde14' , '15' , '16' ,  '17',  '18' , ...
  '19', '20'  '21' , '22' ,'23' , '24' , '25',    '26', '27', 'rhyc+28', '29', '30', ...
  '31', '32', '33' ,'1Ae34', 'n35', '36', '37', '5f38',}; 
CLASS= { 'AAMI1 N1' , 'AAMI1 L2' , 'AAMI1 R3' ,'AAMI2 a4' , ...
  'AAMI3 V5',  'AAMI4 F6 ' ,  'AAMI2 S7' , 'AAMI2 A8', ...    %8
 'AAMI2 S9',' AAMI3 E10', 'AAMI1 je11', 'AAMI15Q PSlash12', 'AAMI5 Q13', ...
    'cnoisTilde14' , 'QRSW15' , 'fORART16' ,   'RRR17','STCH18' , ... %16
  'TCH19', 'SYST20','DIAST21' , 'noteq"22' ,'meas23', 'pwav24', ...%24
'bbb25', 'pacesp26', 'twavefor27', '+rhycplus28', 'uw29', 'learn30', 'flwav31',...
'vfon32', 'vfoff33', 'AAMI1AEsc34', 'nsvesc35', 'link36', 'xbapc37', '5QfpN38',};          
  CLASA= { 'AAMI1N1' , 'AAMI1L2' , 'AAMI1R3','AAMI2a4', ...
  'AAMI3V5',  'AAMI4Fusion6' ,  'AAMI2SupJpre7' , 'AAMI2AtrPrec8', ...     
 'Aami2Svpre9', 'AAMI3VentEsc10',  'AAMI1Je11', '5QPSlash12', 'AAMI5Q13', ...
 'cnoisTilde14' , 'QRSW15' , 'fORART16' ,   'RRR17','STCH18' , ... %16
  'TCH19', 'SYST20', 'DIAST21' , 'noteq"22' ,'meas23', 'pwav24', ...%24
  'bbb25', 'pacesp26', 'twavefor27', '+rhycplus28', 'uw29', 'learn30', 'flwav31',...
'vfon32', 'vfoff33' , 'AAMI1AEsc34', 'nsvesc35', 'link36', 'xbapc37','5QfpN38',
};   
FEAT= { 'R' , 'S' , 'C' ,  'PWInt' , 'TW' , 'PR' ,   'BLPRE' , 'TePb ',...%8-3
 'QTP' ,  'QRSW' ,'STb' , 'STe'  ,'Pb2Te' ,'RTe', ...%14-3
'GRL', 'QRH', 'RSH', 'RH', 'INVR','RSslope',  'RSXA' ,  'RPSTP'  , 'RRR', ...%15-23-3
'RRPRE','RRPOST ', 'RR2DUR','RR2AVG' , 'RR3AVG' ,'RR4AVG' ,'RR7AV','RRpreAV',... 
 'RRpreAN','RpostAVN','RR2NAN', 'RR2AVN','RR3AVN', 'RR4AVN', 'RR7AVN','RRpreAVN',  ... 
  'FOURT'  ,  'TMAstd' ,  'TMAmean', 'TMAmin' , 'FMAstd' , ...%27-34
 'FMAmean' , 'FMAmin' ,  ...    %41-44
  'FSTDstd' ,  'Fstdmean' , 'FSTDmin'  ...%47-50
 ,  } ;  mfilename('fullpath')


fprintf('h 100 =%d colu =%d mfile =%d\n', Afile1test,Afilemit, ALL); 
if exist('AXQRS222','var')&&size(AXQRS222,1)==1,AXQRS222=AXQRS222';end;
if exist('AXQRS203','var')&&size(AXQRS203,1)==1,AXQRS203=AXQRS203';end;
if 1|| isequal(BI,'INTER'), %  userpath(newpath); 
    addpath(genpath('c:\FINAL\dropbox\libsvm-3.17')); 
  if ~exist('Afile1test','var'), Afile1test=Afilemit; end;rname=num2str(Afile1test); 
  Afile1tests = num2str(Afile1test) ; %addpath(genpath('D:\jaga\libsvm-3.17')); 
  AA=eval(['AX' num2str(Afile1test) ]);  AQ =eval(['AXQRS'  (Afile1tests)]);    
 if exist(['AXQRSYM'  (Afile1tests)] ,'var'), APM=eval(['AXQRSYM' (Afile1tests)]); 
 end; if  exist( [ 'AXQRSTF' num2str(Afile1test) ] ,'var')   
     AP = eval(['AXQRSTF' num2str(Afile1test ) ]); 
end; end; if   exist('Adata1','var') && exist('Adata2','var') ...
  &&  isequal ( BO , 'TT'  ),  CLAS = K;    AA = Adata1;  AQ= Adata2 ;
  if   exist('Adata4','var')    APM = Adata4;   else  APM = AQ ;   end;
 if   exist('Adata3','var')   AP = Adata3;  else  AP  = AQ;   end;
clear Adata2 Adata3  Adata4  ;clear AXQRS AXQRST ;
 % load([ FILEAX  ]); load([ FILEQRS  ]);
elseif isequal( BI , 'INTRA')  &&exist('Adata1','var') && exist('Adata2','var')
 CLAS = K;    AA = Adata1;  AQ= Adata2 ;
end; if 0, if 0, AP = [  AXQRSC100';  AXQRSC103'; AXQRSC105' ; 
 AXQRSC111';   AXQRSC113'; AXQRSC117' ; 
   AXQRSC121';  AXQRSC123' ;   AXQRSC200';   AXQRSC202'; 
   AXQRSC210'; AXQRSC212' ;  AXQRSC213';  AXQRSC214'; 
 AXQRSC219' ;  AXQRSC221';  AXQRSC222'; AXQRSC228' ;  
 AXQRSC231';  AXQRSC233' ;       AXQRSC234';  % AXQRSC232'; 
       ] ;  APM =  [    AXQRSC100';  AXQRSC103'; AXQRSC105' ; 
       AXQRSC111';  AXQRSC113'; AXQRSC117' ;
       AXQRSC121';  AXQRSC123' ;   AXQRSC200'; 
       AXQRSC202';  AXQRSC210'; AXQRSC212' ;
       AXQRSC213';  AXQRSC214'; AXQRSC219' ;  
       AXQRSC221';  AXQRSC222'; AXQRSC228' ;
       AXQRSC231';  AXQRSC233' ;     AXQRSC234';  % AXQRSC232';
] ; end;  end;  if 10, AFILETT= Afile1test ; 
if  size(AA , 2) == 50, AFILETTu = unique( AA(: , 35 )' ); FILE=  35 ;end;
 if size(AA, 2 )<= 49, AFILETTu =unique( AA(: ,  2 )' ); FILE= 2;  end;   
if size(AA,2) >= 51, AFILETTu = unique( AA(: ,  51 )' ); FILE= 51;  end; 

if ~iscell(AQ), AQ = struct2cell(AQ); end; if  size(AQ,1)==1, AQ= AQ'; end;
if  ~exist('AP', 'var' ),AP =AQ; end; if  size(AP ,1)==1, AP= AP' ; end;
if  exist('BLIN', 'var'), B =   BLIN ; end; CTTFILE_S =  unique( AA(: , 3 )' )
%if ~exist('APM', 'var' ), APM =AQ; end;
if size(APM ,1)==1, APM= APM';end;   [ ALTEST colu] = size(AA );
if  exist('Afile1train', 'var'), Afile1train= str2num(Afile1trains) ;    end 
 if BTIME, if  BFIX201,  AQ=APM ; end;  end; FS4= 4 ;  format  short g ;
clear X2 X2Q  AQrscell2  QRSC QRS name name2 nameq2 nameq2m ;
fprintf('h 150  AA=%d colu =%d mfile =%s\n', ALTEST , colu,  mfilename );
da =datestr(now);  SCR = get(0,'ScreenSize');  FS1=1;ERRORh=[]; 
dates=[ da(10:11),da(4:6), da( 1:2) da(13:14),da(16:17)]; 
for i =  FS4 :  colu    MeanAA{i} =  ( mean (AA( : , i) ) );
%[MINAA{i} MINAAI{i} ]=( min(AA(:,i)));
%[ MAXAA{i} MAXAAI{i}]=(max(AA(:, i)));
%fprintf('h1075 {%d}%sMAX= %.2f =%d =%.2fMIN=%.2f MINIR=%d\n', ...
%i,FEAT{i},MAXAA{i},AA(MAXAAI{i},1),MeanAA{i},MINAA{i},AA(MINAAI{i},1));
 end; AB = AA ;
fprintf('h 160 =%d colu =%d mfile =%s\n', ALTEST,colu, mfilename);
 if  0,   for i = 1: 8     %  219 :26 (  8 features  29 to 36  )
  AB( : , 28 +i ) = AA( : , i + 18 )/MeanAA{ i + 20};
end;   end;       [ NT FT ] = size(AB);  col = [ 1:FT];
      for i =  FS4 :  FT  
          [MINAB{i} MINABI{i}] =  ( min(AB( : , i) ) );
          [ MAXAB{i}   MAXABI{i} ]  = ( max (AB( : , i) ) );
          MeanAB{i} =   ( mean(AB( : , i) ) ) ;
 
 fprintf('h 171 {%d} %s = %.2f MINABI=%d   MINIR=%d Fil = %d \n', ...
 i, FEAT{i},  MINAB{i }, AB(MINABI{i },1) , MINABI{i} , AB(MINABI{i},2)  );
 fprintf('h 164 {%d}%s MAX= %.2f MAXIR=%d Fil= %d MAXABI=%d \n', ...
 i, FEAT{i},  MAXAB{i}, AB(MAXABI{i},1), MAXABI{i} , AB(MAXABI{i},2));
 end;  CT_AB = AB(: , 3);   Clen1 = length(unique(CT_AB') ) ;
PWh=  fix(MAXAB{4}) ;  [ I V ]=  find (   CT_AB== 0 )
 fprintf('\n h 182   AB Beats=%d  =%d mfile =%s  \n',NT , FT, mfilename );
 C_ABSUM =0; uct = unique(CT_AB')
 for i= 1: Clen1    C_AB{i} =    find(  CT_AB  == uct(i) ) ;
[ uctc(i)  uctcv{i}  ] = size( C_AB{i} ) ;  C_ABSUM =C_ABSUM + uctc(i)  ;
 fprintf('188%d %d%-8s%-8d \n', i , uct(i),True_class2{ uct(i)} , uctc(i));
 end; N =   length (CT_AB);
 i =7;   c0=0;  c8=0;  c9=0; c37=0;      c1=0; c2=0; c3=0;c4=0;c5=0;
 c6=0 ;c10=0;  c12=0; c13=0;  c34=0;  c38=0;
 for i= 1: N    if ( CT_AB(i) == 1), c1=c1+1;   % NORM  19843
     elseif  CT_AB(i) == 2, c2=c2+1; %LBBB 4125
     elseif  CT_AB(i) == 3, c3=c3+1;  %RBBB 3403
     elseif  CT_AB(i) == 11, c3=c3+1;  %RBBB 3403
     elseif  CT_AB(i) == 34, c34 = c34+1;
     elseif  CT_AB(i) == 5, c5=c5+1;  % VPC 2334
     elseif  CT_AB(i) == 10, c10=c10 +1;  % VPC 2334
     elseif  CT_AB(i) == 6, c6=c6+1;  % FUSION	6
     elseif  CT_AB(i) == 4, c8=c8+1;
 elseif  CT_AB(i) == 7, c8=c8+1; %APC  1382   
       elseif  CT_AB(i) == 8, c8=c8+1; %APC  1382
       elseif  CT_AB(i) == 9, c9=c9+1; %APC  1382   
      elseif  CT_AB(i) == 12, c12=c12+1; %Q 1382
      elseif  CT_AB(i) == 13, c13=c13+1;   
      elseif  CT_AB(i) == 38, c38 = c38+1; 
 elseif  CT_AB(i) == 37, c38 = c38+1;   else  c0 = c0+1;      
 end;  end ;   uC_AA =  unique(CT_AB') ;
  N1=  ( c1 + c2 + c3+c4+c5+c6+ c8 +c9+c10+c12+ c13+ c34+c38) ; 
  if ( N1) ~= length( CT_AB ) ,    fprintf(' 222 Error/ new class\n');
  else fprintf(' 200  NO Error/ new class    \n' )  ;
  end;    for j= uct       cla{j} = find(CT_AB == j)  ;   end; cla
  for j= uC_AA       cl{j} = find(CT_AB == j); end;  el=0;
for  I =1: length(CT_AB)
  if  CT_AB(I) == 1,CT_ABM(I)=1;
elseif  CT_AB(I)==2, CT_ABM(I)= 1;
elseif  CT_AB(I)==3, CT_ABM(I)= 1; elseif CT_AB(I)==11,CT_ABM(I)=1;
elseif  CT_AB(I)== 34 , CT_ABM(I)=  1 ; %
      elseif  CT_AB(I)==  5, CT_ABM(I)= BV ;   % VPC
      elseif  CT_AB(I)== 10 , CT_ABM(I)= 3 ; % VPC
      elseif CT_AB(I)== 4; CT_ABM(I)= BS ;  % Aberrated
      elseif CT_AB(I)== 7 ;CT_ABM(I)= BS ;  % Aberrated
      elseif CT_AB(I)== 8; CT_ABM(I)=BS ;  %  APC
      elseif CT_AB(I)== 9 ;CT_ABM(I)=BS ;  %  Aberrated
      elseif CT_AB(I)== 6 ;CT_ABM(I)=  4  ; % Fusion %FUSION	6
      elseif CT_AB(I)== 12 ;CT_ABM(I)=  5 ; %
      elseif CT_AB(I)== 13 ;CT_ABM(I)=  5 ; %
      elseif CT_AB(I)== 37 ; CT_ABM(I)=  5 ; %
elseif CT_AB(I)== 38 ; CT_ABM(I)=  5 ; %
      else CT_ABM(I)= CT_AB(I);   el = el + 1;
end ;  end;   uclctm = unique(CT_ABM);
  LTM = length( CT_ABM);
  TM1 = find( CT_ABM == 1);      LTM1 = length(TM1) ;
  TM2 = find( CT_ABM == 2);      LTM2 = length(TM2)  ;      % VPC
  TM3 = find(CT_ABM == 3);       LTM3 = length(TM3)   ;    %  8 APC
  TM4=   find( CT_ABM == 4);     LTM4= length(TM4)  ;%FUSION	6
  TM5 = find(CT_ABM == 5);   LTM5= length(TM5) ;
  fprintf(' h 250 Afile %d=%d Vpc=%d Apc=%d F=%d Q= %d= %d\n',...
 Afile1test ,LTM1, LTM2 , LTM3, LTM4,LTM5,N );
  zero = find (CT_ABM == 0); norm = find (CT_ABM' == 1) ;
 pvc = find (CT_ABM' == BV); pac = find (CT_ABM' == BS);  
  PACR= AB(pac, FILE); PVCR= AB(pvc,FILE); 
zeroR= AB(zero,FILE);   NORMR= AB(norm ,FILE );
    [pnorm1 pnorm2]  =  size(NORMR);   Fusion  = find(CT_ABM' ==4) ;
[sFusion  psFusion]  =  size(Fusion)  ;
 if length(Fusion) >=1   PFusion = AB(Fusion  , 1) ; end;
 if  exist('PACR','var')  &  PACR , PACRSTR  = num2str(PACR);
 [spac ps2]  =  size(PACRSTR); PACFILE= PACRSTR(spac , 1:3);
  fprintf('h 251 pnorm1=  %d spac=%dTotal = %d \n', pnorm1, spac , N);
 end ;  if  exist( 'PVCR', 'var')  &   PVCR, PVCRSTR= num2str(PVCR);
 [spvc as2]  =  size(PVCRSTR);  FILEPVC =  PVCRSTR( spvc , 1:3);
 fprintf(' 263 FILEPVC=%s file  =%s  \n', FILEPVC , mfilename );
   end;   if  exist( 'PACR', 'var')   &  PACR ,    end;
 [FI ] = find( AB(:, 3) ~= CT_ABM') ; [FI2 ] = find( AB(:, 3) ~= CT_AB) ;
    CT_AB0=  AB(:, 3)  ;    %     AB(:, 3) = CT_ABM'  ; %modi
    [FI3  ] =  find( AB(:, 3) ~= CT_AB) ;      uab = unique(AB(:, 3)')
    if ~exist('K' , 'var') K = length(uclctm) ; end;  uabo = unique(CT_AB0')
 end;  if 10,  uabm = unique(CT_ABM) %nana
 NANAA = isnan(AB);  sumaz = sum(NANAA); [n  nancol] = find( sumaz );
 lnancol = length( nancol);  % 
% if  lnancol ,  [colreq ] = find(nancol ~= col) ; else  colreq = col; end;
% for i=1:  lnancol      [colreq] = find(nancol(i)  ~= colreq ); % end;
  bfnan  = isnan( AB );   sum1 = sum( bfnan);  
  nancolumns = find(sum1); [noofnancol ] = length(nancolumns);
fprintf('h 244  step 1 NAN Analysis  =%d  =%d \n',  NT , noofnancol  );
           NR= [];   NaNCH=[];    [NAB, n]=size(AB) ; clear Nanrows;
  for i= 1  : n  Nanrows{ i } = find( isnan(AB(: , i) ) );
  if  ~isempty( Nanrows{ i } ) , NaNCH =[ NaNCH  i] ;
NANR{ i } = AB(Nanrows{i } , 1);  NR = [NR;  Nanrows{i}  ] ;
  end; end; NRSH  = sort(NR);  
       NRU840  =   unique(NRSH);    NANC =  CT_AB(NRU840 );
       NANR2 = AB(NRU840 , 1);  NANCM  =  CT_ABM(NRU840 );
       NANC1=  find( NANCM == 1)  ; NANC2=  find( NANCM ==  2 )  ; 
       NANC3=  find( NANCM == 3)  ;dcH = [1, 2, 3, FILE, NaNCH] ;   
 rowd= AB(NRU840 , : );   nanrow = fix(rowd(: , dcH) )
CT_AB1 = CT_AB;CT_AB1M = CT_ABM ; uCT_AB1= unique(CT_AB1')
 AB1=AB;  AQ1=AQ;     AP1=AP  ; APM1=APM  ;[NANH  ] = 0 ; 
 [NANH ] = length(NRU840) ; 
 end; end;  if 1,  if 0,  AB1(NRU840 , :) = []; 
CT_AB1(NRU840 , :) = [];  AQ1(NRU840 , :) = []; AP1(NRU840 , :) = [] ;   
if ~isempty(APM1)  APM1(NRU840 , :) = [] ; end; CT_AB1M(NRU840)=[] ; 
if   ~isempty(NRU840 )  && ~BTIME, return; end;  %AB1(: , 3 )= CT_AB1M; 
end; if 1,NAB1= length(CT_AB1) ;  
uAB1M= unique(CT_AB1M); CLEN=length(uAB1M) ; NaNCHlen= length(NaNCH )
 fprintf('h  280  AB=%d NaNremovedAB1=  %d nan %d,NaNCHol= %d\n', ...
 NT ,  NAB1  , NANH,  NaNCHlen  );   
clear    AB  AP  CT_AB ; clear TM*  ;  clear  bfnan Nc nan2 nan2v2; 
     clear TM1 NANAA  ;      clear kmdbel1v kmdbel2v; 
L2qc = length(CT_AB1M) ;  NZ= [];   NGF=[]; NZCOL1= [];  %  na1
     clear   AB     box1    IN2 M2  zX X7 XNAN  kmdbel5 kmdbel5v    ;
      clear  clas1 column_sum cent    ID  KI KIR kmdbel2 error kmdbel1 ; 
      clear   param   p pm    sum1 sum2 sumaz sumx sumxa ;  clear CAB1;      
      % f3 =find(CT_AB1M~=CT_AB1' )   ;
      fprintf('h  296 step  NegAnalysis1  [ 4 : 8, ]  from =%d \n', N1 );
      featuretest2=  [ 4 : 7  ] ;  FS1= 1 ;     sed= 1;  
for i=   featuretest2
 [ NZrows{ i } ] = find( AB1(: , i) <  0 ) ;   lnz = length(NZrows{ i }) ;
 if ( NZrows{ i } )  NZCOL1 = [ NZCOL1 i ] ;
 fprintf('hy 300 neg    colu i =%d , FEAT %s no.=%d \n', i , FEAT{i} , lnz);
end; NZR{ i } = AB1(NZrows{i } , :); 
NZRL(i) = length(AB1(NZrows{i } , 1));          NZ = [NZ ; NZrows{i }];
 end; NZS1  = sort(NZ);  NZUTT  =unique(NZS1);  
[NZBH nzbc]=size(NZUTT);NZC = CT_AB1M(NZUTT);ungc= unique(NZC) ;
NZRTTR=  AB1(NZUTT, 1);  NZRTT = AB1(NZUTT , FILE);
fprintf('hy 300  AB1>ABC   Neg  in  [ 4 : 8, 16: 32] are= %d \n', NZBH') ;
ABC = AB1; AQC= AQ1;  AQPC= AP1 ; AQPMC= APM1;CT_ABCM = CT_AB1M;
 warning off MATLAB:pack:InvalidInvocationLocation; 
 end; end;  if 10,if 00,  ABC(NZUTT , :) = []; AQPC(NZUTT, :) = [];
AQC(NZUTT , :) = []; AQPMC(NZUTT, :) = [];  CT_ABCM(NZUTT)=[];
 end;  YC= (CT_ABCM) ;  [ NABC  dim ]=size(ABC) ;
  [NZBH1130 nzbc] = size(NZUTT) ;
      %ABC(: , 3 )=  CT_ABCM; %fAB1D=  find(AB1~= ABC )   %modi
Flage3=  find(CT_ABCM' ~= ABC(:, 3)) ;       uABC= unique(ABC(:, 3)')
fprintf('hy   312  ;NT=%d NonNaN AB1=%d NonNeg/Z= %d Neg =%d\n', ...
   NT,  NAB1 , NABC ,NZBH  );  AQCN = length(AQC) ;
    YC1 = find(CT_ABCM == 1);   YF1= ABC( YC1, FS1 :end);    
YC2 = find(CT_ABCM == 2);   YF2=ABC( YC2, FS1 :end);% VPC  5
    YC3 = find(CT_ABCM == 3);  YF3= ABC( YC3, FS1 :end);  % APC 8 
    YC4=   find(CT_ABCM == 4); YF4= ABC( YC4 , FS1 :end);      
YC5 = find(CT_ABCM == 5);YF5= ABC( YC5, FS1 :end);
LMRF=length(CT_ABCM);      
IC12= (length(YC1)+length(YC2)+length(YC3)+ length(YC4)+length(YC5)) ;
    if  IC12~= length(CT_ABCM) ,    fprintf('y 325  Error  Class\n'); 
    elseif  IC12~= AQCN ,       fprintf('y 340  Error  Class\n'); 
    else  fprintf('y  340  NO  Error  Class ;Total beats ABC =%d\n', LMRF ); 
 end ;  UN= unique(CT_ABCM);  CLEN=length(UN);
  [snorme  s1] = size(YF1) ;  [svpc s2] = size(YF2) ;[sapc s3] = size(YF3);  
[sfusion  s4] = size(YF4);   [sQ  s5] = size(YF5); 
end; if 0,  h_3_box1= figure('Name', '330 BoxPlot',...
  'Position', [ 20  50  SCR(3)/2-50   SCR(4)/4-10  ]) ;
%,'labels',{'QRS','QTP','RPSTPA','RRA'}); %'QRS','QTP','RPSTP','RRRA');
 for i=1:CLEN    subplot(1,CLEN,i);  EFCi=[ 'YF' int2str( UN(i) )];
box2= eval(EFCi) ; boxplot(box2(: , 13:end));  title(EFCi) ; 
uab2{i} =  unique( box2(:,3))
end;     hold off; %    set(h_3_box1,'HandleVisibility','off')
h_d4= figure('Name',' 311 2D','Position', ...  % [left bottom width height]
 [ SCR(3)/2  0  SCR(3)/2-100 SCR(4)/2-100]);    col1= 13; col2= 14;
line(ABC(YC1,col1),ABC(YC1, col2),'linestyle','none','marker','+','color','r');
hold on;     str1= ['NORM# ' num2str(length( YF1))];  
strm1= ['NORM# ' num2str( length( TBC1) ) ];
 if  ~isempty(YF2)  ,  strm2= [   'VPCV# ' num2str(length( YF2) )];
  line(AB1(YF2,col1),AB1(YF2, col2),'linestyle','none','marker','*','color','g');
  hold on;   end ;      strm3= ['SUPAC# ' num2str(length( YF3) )];
 line(AB1(YF3,col1),AB1(YF3, col2),'linestyle','none','marker','o','color','b');
line(AB1(YF4,col1),AB1(YF4, col2),'linestyle','none','marker','p','color','m');
 strm4= ['FUSION# ' num2str(length( TBC4) )];
line(AB1(TBC5,col1),AB1(TBC5, col2),...
    'linestyle','none','marker','s','color','c');
     strm5= ['Q# ' num2str(length( TBC5) ) ]; hold on;
     if ~isempty(TBC1) && ~isempty(TBC2) && ~isempty(TBC3)  ...
     && ~isempty(TBC4) &&  ~isempty(TBC5)
 hleg = legend(strm1,strm2,strm3, strm4,strm5,'Location','SouthWest');
     end;% h3=figure('Name',' 3d plot','Position',...
%[SCR(4)/2+100 0  SCR(3)/2-100 SCR(4)/2-100]);
% [XI, YI] = meshgrid(0:0.1:6, 0:0.1:6);
 [s1B s2B] = size(AB1); [stotal dimE10] = size(ABC);
 [c1max  ] = max(TBC1) ;    FLAG = find(ABC( : , 3) ~= CT_ABCM') ;
fprintf('y 361 %dNaN removAB1 %d   nan%d\n', NT,  NABC  , NANH  );
[NE  cole] =size(ABC) ;  NCLEAN = snorme +svpc+sapc +sfusion + sQ ;
 end; if 1,   % Neg Removed Beats in [ 4  5]
fprintf('y 341 AB1>ABC%d NaNrem=%d Neg=%d \n',NT, NABC, NZBH);
yDATA= [];   yDATAC= []; ue1= unique(CT_ABCM' )  ; 
for i=  1: length(ue1)       j = ue1(i) ;
clasCT =   [ 'YC' int2str(j) ];   
clas1 = eval(clasCT); FCE{i}= ABC(clas1 , :);
 yFCE= FCE{i};  uyFCE{i}= unique( FCE{i}(:,3)) ;
 [ LLyA( i)  LLyAi{i } ] = size ( FCE{i} )  ;
   yDATA= [yDATA ; FCE{i}];   FCECyc{i}= YC(clas1 ) ;
 yDATAC= [yDATAC ; FCECyc{i}'];
 fprintf('y 373 i =%d j= %d LR= %6d LLyAi %d \n', i , j ,LLyA(i), LLyAi{i } ) ;
end ;  [ MA  mi]  =  min( LLyA)   ; yA = [];
for i= 1: length(ue1)     j= ue1(i) ;    FCC = FCE{i};
yA = [ yA ;  FCC(1: MA , : ) ;  ] ;  
end;  if  ( snorme  && svpc  & sapc &  sfusion  &&  sQ )
 TE = [ snorme svpc sapc sfusion  sQ ] ;    [ M5   I ]= min( TE)  ;
y5  = [YF1(1:  M5 , :) ; YF2(1:  M5 , :) ; YF3(1: M5 , :); ...
    YF4(1: M5 , :); YF5(1: M5, :);  ] ;
[NG  gfeatures ] = size( y5 ) ; TRUE_G = y5(: , 3);  
ucte = unique(  TRUE_G );
% fprintf('y 1190 %d M=%d  Z Nan&NZrem%d\n', NG ,M5,  NE);
end;  if  ( snorme  & svpc  & sapc &  sfusion  )  ,
T4 = [ snorme svpc sapc sfusion];  [M4   I4 ]= min( T4) ;
[ T5S  T43V] =  sort(T4, 'descend' ) ;     LEF1F=  fix( snorme/M4 ) ;
      if  LEF1F> M4   , EF1S = YF1( LEF1F : LEF1F -1+M4 , : ) ;
EF1SA=  YF1( 1 : M4 , : ) ;   else  EF1S = YF1( 1 : M4 , : ) ;   end;
yDATA4 = [  YF1(1:  M4  , : ) ;  YF2(1:  M4 , :) ; YF3(1: M4 , :); ...
    YF4(1: M4 , :);] ;      [ T2  T2V] =  sort(T4, 'descend' ) ;   T2= T2(1:3) ;
      [M2   I2 ]= min( T2) ; if T2V(1) ==1 && T2V(2) ==2 && T2V(3) ==3  ,
G123 = [  YF1(1:  M2  , : ) ; YF2(1:  M2 , :) ;  YF3(1: M2 , :);  ] ;  end ;
 if  T43V(1) ==1 && T43V(2) ==2 && T43V(3) == 4  ,
G124 = [  YF1(1:  M2  , : ) ;  YF2(1:  M2 , :) ;  YF4(1: M2 , :); ] ;   end;
  end;   if  ( snorme  && svpc  && sapc    )  ,
T3 = [ snorme svpc sapc ];  [M3   I3 ]= min( T3) ; 
yDATA3  = [  YF1(1:  M3  , : ) ; YF2(1:  M3 , :) ;  YF3(1: M3 , :);  ] ; 
 end;   end;   if 1,  ucluster  =  [ 1 2 3 5 8 ] ;  
 TBC1 = find( CT_AB1   == 1); FB1= AB1( TBC1, FS1 :end);  
 LTBC1 = length(TBC1) ;
TBC2 = find( CT_AB1 == 2);  FB2=AB1( TBC2, FS1 :end);
LTBC2 = length(TBC2)  ;   
TBC3 = find(CT_AB1  ==  3);   FB3= AB1( TBC3, FS1 :end);
LTBC3 = length(TBC3) ; 
 TBC4 = find(CT_AB1  ==  4);   FB4= AB1( TBC4, FS1 :end); 
 LTBC4 = length(TBC4)  
TBC5 = find(CT_AB1  == 5);  FB5= AB1( TBC5, FS1 :end);    
LTBC5= length(TBC5) ;
TBC8 = find(CT_AB1 ==  8); FB8= AB1( TBC8, FS1 :end);  
LTBC8= length(TBC8) ;
if ( LTBC1  && LTBC2  & LTBC3  & LTBC5   && LTBC8)
T5 = [ LTBC1 LTBC2 LTBC3 LTBC8  LTBC5] ; [M   I ]= min( T5) ;
[ TS TSV] =sort(T5, 'descend' ) ;TS3 = TS(1:3);  [M3 I3 ]= min(TS3) ;
z5=[FB1(1:M,:); FB2(1: M ,:); FB3(1: M,:); FB8(1:M,:); FB5(1: M, :);] ;
 [NZ1 colz] = size(z5); Z5C = z5(: , 3);
 ucte = unique(Z5C'); Kucte=length(ucte);
end; if ( LTBC1  && LTBC5  && LTBC8),T4 =  [ LTBC1 LTBC5 LTBC8 ] ; 
[ M4   I ]= min( T4) ; LDF1F=  fix(LTBC1/M4) ;
 z158 = [  FB1( 1 :  M4 , : ) ; FB5(1: M4 , :);  FB8(1: M4 , :); ] ;   
end;   if  ( LTBC1  && LTBC2  && LTBC3  ) ,                
 z123 = [  DFB1(1:  M123  , : ) ; DF2(1:  M123 , :) ;  DF3(1: M123 , :);] ;
end; if  ( LTBC1  && LTBC2  && LTBC4  ) ,          
 z124 = [  DF1(1:  M3  , : ) ; DF2(1:  M3 , :) ;  DF4(1: M3 , :); ] ;
end;    if  ( LTBC1  && LTBC2  && LTBC5  ) ,          
   z125 = [  DF1(1:  M3  , : ) ; DF2(1:  M3 , :) ;  DF5(1: M3 , :);  ] ;
end; fprintf('h z  432  AB>AB1  Nan Removed  = %d\n', L2qc );
 SUM =  ( LTBC1 + LTBC2 + LTBC3+LTBC8  +LTBC5 )  
   zDATA= [] ;   fprintf('hz 324  Nan Removed  Data = %d   \n', L2qc );
utest = intersect(uCT_AB1 , ucluster )   
 for i = 1  : length( utest )  j= utest(i) ; 
  clasd{j}  =   [ 'TBC' int2str(j) ];      clas1= eval(clasd{j}); 
 TBC1j{j} = find( CT_AB1   == j);  
  FCE{i} = AB1(clas1 , :) ;    zDATA = [zDATA ; FCE{i}];
  uhFCED2{i}= unique(FCE{i}(:,3) ) ;
 [LL1( i)  LL1i{i }   ] = size ( FCE{i} ) ;    [sc1 sc2]  =  size(clas1);
 maxclas1=   single(max(clas1)) ;
 end;    zA = [] ;  M  =  min( LL1)  ;   
 for i = 1: length(utest)    
 j = utest(i) ;   FCC = FCE{i};zA = [ zA ;  FCC(1: M , : ) ;] ;
 end; ID = isnan( zDATA);  sumz1 = sum(ID); nancolumns = find(sumz1);
 end;  if 1, QH = AQC ;   H = ABC ; 
HC= CT_ABCM ;  QPH = AQPC ; QPMH = AQPMC ;%QH = AQCDEF; 
%H = ABCDEF;  HC =  CT_ABCDEFM; QPH =AQPCDEF ;
  HC1 = find(HC == 1)  ;  HF1= H( HC1, 1 :end);  
  HF1C= HC(HC1) ;  uHF1C= unique( HF1C)
HC2 = find(HC == 2); HF2=H( HC2,1 :end); HF2C= HC(HC2) ;
uHF2C= unique( HF2C)
HC3 = find(HC== 3); HF3= H( HC3,1:end);  HF3C= HC(HC3) ; 
[LHC3   L3c]= size(HF3); 
HC4 = find( HC == 4) ;   HF4= H( HC4 ,1 :end); [LHC4   L4c]= size(HF4);
    HF4C= HC(HC4) ;   uHF4= unique(HF4(:, 3))  
    HC5 = find(HC == 5);HF5= H( HC5,1 :end); uHF5=    unique(HF5(:, 3));
    [LHC5   L5c]= size(HF5);   HF5C= HC(HC5) ; uHF5C= unique( HF5C)  
 [LHC1   L1c]= size(HF1);   [LHC2   L2c]= size(HF2); 
    uHF2=  unique(HF2(:, 3));  
if  exist('QPMH','var') ,if ~isempty( QPMH),QPMH1=QPMH( HC1,1 :end);  
end; end; QPH1= QPH( HC1, 1 :end); 
QPH2= QPH( HC2, 1 :end);  QPH3= QPH( HC3, 1 :end);      
   QPH4= QPH( HC4, 1 :end); QPH5= QPH( HC5, 1 :end); 
    QH1= QH( HC1, 1 :end);        uHF1= unique(HF1(:, 3))
    QH2= QH( HC2, 1 :end);     QH3= QH( HC3 , 1 :end) ;   
    uHF3C= unique( HF3C) ;   uHF3=unique(HF3(:, 3)');
    QH4= QH( HC4 , 1 :end);  uHF4C= unique( HF4C);
    QH5= QH( HC5, 1 :end);  clear AP AP1 AQPC  APM* ;clear clasCT;  
NCLEAN = LHC1 + LHC2 + LHC3  +  LHC4  +  LHC5
end;  if 1,  HA = [];   M  =  min( LLyA)    ; 
LHC=  length(HC) ;  uHC= unique(HC);  LHQ =  length(QH)
 for i = 1 : length(uHC)      j = uHC(i);  
 clasCT =   [ 'HC' int2str(j) ];  
 clas1 = eval(clasCT); if size(clas1,1)== 1, clas1= clas1'; end; 
 FCE{i}= ABC(clas1 , :);  FCC = FCE{i}; uhabc{ i }= unique(FCE{i }(:,3) );
  HA = [ HA ;  FCC(1: M , : ) ;  ] ;
end ;  hTRAINU = [];  hTRAINUC= [];  hTESTUC =[];
  hTESTU =[];   QPhTESTU = [] ; QPhTRAINU = []; 
 QhDATAU = [] ;   QPhDATAU= [] ;   QhTRAINU = [] ; QhTESTU = [] ;
 hDATAU= [];  [ MH4U IN]= min(  LLyA) ;  clear clas1 ;hDATAUC= [];  
 for i = 1 : length(uHC)       j = uHC(i) ;
 clasCTh=   ['HC' int2str( j) ] ;    clas1= eval(clasCTh) ;
strhfA  = ['HF' int2str( j) '('  int2str(1)  ':'  'end'  ',' ':' ')'] ;
FCE{i}= eval( strhfA) ;
 hDATAU= [hDATAU ; FCE{i}]; uhFCEMb{i}=  unique(FCE{i}(:,3))
 strC = ['HF' int2str( j) 'C(' int2str( 1) ':' 'end'  ')'] ; FCEC4{i}= eval( strC) ;
hDATAUC= [ hDATAUC ; FCEC4{i}'];   
uhFCE4C{i}=    unique( FCEC4{i})
strq =  ['QH' int2str( j) '(' int2str( 1) ':' 'end' ',' ':' ')'] ;   
qVCQ{i}= eval( strq) ;
  QhDATAU= [QhDATAU ; qVCQ{i}];
strq =  ['QPH' int2str( j) '(' int2str( 1) ':' 'end' ',' ':' ')'] ;   
     qpVCQ{i}= eval( strq) ;  
 QPhDATAU= [QPhDATAU ; qpVCQ{i}]; 
  clasCT=  ['HC' int2str( j) ] ;  clas{i}= eval(clasCT) ; 
 M4(i)=  length(clas{i}') ;   trh4u(i) =   fix( M4(i)/2) ;  MAu(i) = trh4u(i) ;  
 fprintf('h 495  i =%d j= %d LR %d LC %d \n', i , j ,M4(i), MAu( i)) ; 
  if MAu(i), strhfA = [ 'HF' int2str( j) '('  int2str(1)  ':' int2str(MAu(i))  ',' ':' ')' ] ;
   FCEhtr{i}= eval( strhfA) ;hTRAINU= [ hTRAINU ; FCEhtr{i}] ;  
   uFCEhtr{i}=unique(FCEhtr{i}(:,3)) 
  strhA  =  ['HC'  '('   'HC' int2str( j) '('  int2str(1)  ':' int2str(MAu(i))   ')'  ')'] ;
 FCEhC794{i}= eval( strhA) ;  uFCEhC794{i}=unique(FCEhC794{i}) ;
    hTRAINUC= [ hTRAINUC ; FCEhC794{i}'] ; 
    strhf =  ['HF' int2str( j) '(' int2str(MAu(i)+1) ':' 'end' ',' ':' ')'] ; 
    FCEht{i}= eval( strhf) ;   
   hTESTU =  [ hTESTU ; FCEht{i}] ;  uFCEht{i}=   unique(FCEht{i}(:,3));
     strh =  ['HC' '('  'HC' int2str( j) '(' int2str(MAu(i)+1) ':' 'end'  ')' ')'] ;
     FCEh{i}= eval( strh) ;  hTESTUC =  [ hTESTUC ; FCEh{i}'] ; 
uFCEh{i}=  unique(FCEh{i}) ;  clear strhf ;  
  strhf =['QH' int2str( j) '('  int2str(1)  ':' int2str(trh4u(i))  ',' ':' ')'] ; 
  qFCEh{i}= eval( strhf) ;  QhTRAINU= [ QhTRAINU ; qFCEh{i} ];
  strqtt =  ['QH' int2str( j) '(' int2str(trh4u(i) +1) ':' 'end' ',' ':' ')'] ; 
  qFCEht{i}= eval( strqtt) ;  QhTESTU =  [ QhTESTU ; qFCEht{i}] ;
   strhf=['QPH' int2str( j) '('  int2str(1)  ':' int2str(trh4u(i) )  ',' ':' ')'] ; 
   qFCEh{i}= eval( strhf) ;  QPhTRAINU= [QPhTRAINU ; qFCEh{i}];
   strqtt =  ['QPH' int2str( j) '(' int2str(trh4u(i) +1) ':' 'end' ',' ':' ')'] ;  
   qFCEht{i}=eval( strqtt) ;
  QPhTESTU= [ QPhTESTU ; qFCEht{i}];clear clas1 ;  
end;    end;  uhTRAINUC=   unique(hTRAINUC')
clear clas1 ;      uhTESTUC=   unique(hTESTUC')
 end;  if  ( LHC1  && LHC2  && LHC3  && LHC4  & LHC5 )
Tabc = [ LHC1 LHC2  LHC3 LHC4  LHC5 ];  [MH5  IMH5 ]= min(Tabc);
  trH5 =   fix( MH5/2) ;   TT =   fix(MH5/2) ;  TTb =  ceil(MH5/2 )  ;
 hDATA5 = [HF1(1: M, : );  HF2(1: M , :) ;  HF3(1: M , :); ...
   HF4(1: M , :);  HF5(1: M , :); ] ; 
  hDATA5C = [ HF1C( 1 : M)' ; HF2C( 1: M)' ; HF3C(1: M)'; ...
   HF4C(1: M )';HF5C(1: M )';] ;  
  QhDATA5  = [ QH1(1: MH5 , : ) ;  QH2(1:  MH5 , :) ;QH3(1: MH5 , :);...
 QH4(1: MH5 , :); QH5(1: MH5 , :); ] ; uhDATA5C = unique(hDATA5C' )
  QhTRAIN5= [  QH1(1:  trH5  , : ) ;   QH2(1: trH5 , :) ;  QH3(1: trH5 , :); ...
QH4(1: trH5 , :); QH5(1: trH5 , :);   ]  ;
hTRAIN5 = [ HF1(1:  trH5  , : ) ; HF2(1:  trH5 , :) ;  ... 
 HF3(1: trH5 , :); HF4(1: trH5 , :);  HF5(1: trH5 , :); ]  ; 
 hTRAIN5C = [ HF1C(1:  trH5 )' ; HF2C(1:  trH5)' ; ... 
HF3C(1: trH5)'; HF4C(1: trH5)';  HF5C(1: trH5)';  ]  ;     
   uhTRAIN5C = unique(hTRAIN5C' )
QhTEST5 = [ QH1( trH5+1: MH5 , : ) ; QH2(trH5+1: MH5 , :) ; ...
QH3(trH5+1: MH5, :); QH4(trH5+1: MH5, :); QH5(trH5+1: MH5,:); ] ;
   hTEST5 = [ HF1( trH5+1: MH5 , : ) ; HF2(trH5+1: MH5 , :) ; ...
HF3(trH5+1: MH5, :);HF4(trH5+1: MH5 , :); HF5(trH5+1: MH5 , :); ] ;
   hTEST5C = [ HF1C( trH5+1: MH5)' ; HF2C(trH5+1: MH5)' ;...
HF3C(trH5+1: MH5)';HF4C(trH5+1: MH5)'; HF5C(trH5+1: MH5 )';   ]  ; 
    hTRAIN5UC  =[];   uhTEST5C = unique(hTEST5C' ) 
   QhTRAIN5U = [] ; QhTEST5U = [] ; clear clas1 ;    hDATA5U  =[];   
   hTRAIN5U  =[]; hTEST5U  =[];   hDATA5UC  =[]; hTEST5UC  =[]; 
    for i= 1: length(uHC )    
 j = uHC(i) ;   clasCT=   ['HC' int2str( j) ] ; 
 clas1= eval(clasCT); M5(i)=  length(clas1') ;  tr4u(i) =   fix( M5(i)/2) ;
 strHF =  ['HF' int2str( j) '(' int2str( 1) ':' 'end' ',' ':' ')'] ;
 FCE{i}= eval( strHF) ;  hDATA5U= [ hDATA5U ; FCE{i}] ;
strC =['HF' int2str( j) 'C(' int2str( 1) ':' 'end'  ')'] ; FCEhc{i}=eval( strC) ;      
hDATA5UC= [ hDATA5UC ; FCEhc{i}'] ;   
strChtr4 =  ['HF' int2str( j) 'C('  int2str( 1) ':' int2str(tr4u(i) )  ')'] ;
FCEh5c{i}= eval( strChtr4) ; 
 hTRAIN5UC= [ hTRAIN5UC ; FCEh5c{i}'] ;
  strhf  =  [ 'HF' int2str( j) '('  int2str(1)  ':' int2str(tr4u(i))  ',' ':' ')' ] ;           
  FCEh1053{i}= eval( strhf) ; hTRAIN5U= [ hTRAIN5U ; FCEh1053{i} ] ;
  strHF =  ['HF' int2str( j) '(' int2str( tr4u(i) +1) ':' 'end' ',' ':' ')'] ;
  FCEht{i}= eval( strHF) ;        hTEST5U =  [ hTEST5U ; FCEht{i}] ;
  strC =  ['HF' int2str( j) 'C(' int2str(tr4u(i)+1) ':' 'end'  ')'] ;
  FCEC4{i}= eval( strC) ;   hTEST5UC= [ hTEST5UC ; FCEC4{i}'] ;
  fprintf('h 565 i =%d j= %d LR=%d LC=%d \n', i , j ,M5(i), tr4u( i) ) ;
  clasQHU=   ['QH' int2str(j) ];    clas1= eval(clasQHU);
  MQ5(i)=  length(clas1') ;  tr5qu(i) =   fix( MQ5(i)/2) ;  M5u = tr5qu(i); 
 strhf  =  ['HF' int2str( j) '('  int2str(1)  ':' int2str(M5u)  ',' ':' ')'] ;
  FCEh1053{i}= eval( strhf) ;  uFCEh1057{i}=unique(FCEh1053{i}(:,3))
  strhfq  =  ['QH' int2str( j) '('  int2str(1)  ':' int2str(M5u)  ',' ':' ')'] ;
  qFCEh{i}= eval( strhfq) ;  QhTRAIN5U= [QhTRAIN5U ; qFCEh{i}];
  strq =  ['QH' int2str( j) '(' int2str(M5u+1) ':' 'end' ',' ':' ')'] ;    
  qFCEht{i}= eval( strq) ;  QhTEST5U =  [ QhTEST5U ; qFCEht{i}] ;
  fprintf('h 578 i =%d j= %d LR %d LC %d \n', i , j ,MQ5(i), tr5qu(i) ) ;
end; [ T5SO T5V ] =  sort(Tabc, 'descend' ) ; 
T4= Tabc(1:4);  [M4   I4 ]= min( T4) ;
T3= Tabc(1:3) ;    [M3   I3 ]= min( T3) ;
H123 = [  HF1(1:  M3  , : ) ;   HF2(1:  M3 , :) ;   HF3(1: M3 , :);    ] ;
 if  T5V(1) ==1 && T5V(2) ==2 && T5V(3) ==4 ,
H124 = [  HF1(1:  M4  , : ) ;   HF2(1:  M4 , :) ;   HF4(1: M4 , :);    ] ;
elseif       T5V(1) ==1 && T5V(2) ==5 && T5V(3) ==4 ,
 H154 = [  HF1(1:  M4  , : ) ;   HF5(1:  M4 , :) ;   HF4(1: M4 , :);  ] ;
elseif  T5V(1) ==1 && T5V(2) ==5 && T5V(3) ==2  && T5V(4) ==3 ,
 H1523=[ HF1(1: M4, :) ; HF5(1: M4, :) ; HF2(1: M4, :); HF3(1: M4, :);] ;
 end; end;  if  ( LHC1  && LHC2  && LHC3  && LHC4   )
     Tabc4 = [ LHC1 LHC2  LHC3 LHC4   ];  [M4   I ]= min( Tabc4);  
hDATA4O= [ HF1(1:  M4  , : ) ;  HF2(1:  M4 , :) ; ...
   HF3(1: M4 , :);HF4(1: M4, :); ] ;
QhDATA4O=   [ QH1(1:  M4  , : ) ; QH2(1:  M4 , :) ; ...
QH3(1: M4 , :);  QH4(1: M4 , :);  ]  ;
     uhDATA4 = unique(hDATA4O( :  , 3  )' )
     QPhDATA4O=   [ QPH1(1:  M4  , : ) ; QPH2(1:  M4 , :) ; 
         QPH3(1: M4 , :);  QPH4(1: M4 , :);  ]  ;%dbstop 582; 
 hDATA4CO= [ HC(HC1(1: M4 ))' ; HC( HC2(1: M4) )' ;...
     HC( HC3(1: M4) )';HC(HC4(1: M4))';] ;v= version('-release')
 if isequal(v,'2018b') HF1R = randi(LHC1,M4,1,'uint32');
      HF2R = randi(LHC2, M4,1 ,  'uint32' ) ;
  HF3R = randi(LHC3, M4,  1 , 'uint32' ); HF4R = randi(LHC4,  M4,  1 , 'uint32'  );
 else HF1R = randint( M4, 1 , [1, LHC1  ] ); HF2R = randint( M4,1 , [1, LHC2  ] ) ;
HF3R = randint( M4,  1 ,   [1, LHC3  ] ); HF4R = randint( M4,  1 ,   [1, LHC4  ] );
 end;    hDATA4R = [ HF1(HF1R  , : ) ;  HF2(HF2R , :) ; ...
         HF3(HF3R , :);HF4(HF4R, :);    ] ;
     QhDATA4R=[ QH1(HF1R  , : ) ; QH2(HF2R , :) ; ...
         QH3(HF3R , :);  QH4(HF4R, :);];
hDATA4CR = [ HF1C(HF1R )' ; HF2C(HF2R)' ;...
         HF3C(HF3R)'; HF4C(HF4R)';  ]    ;
     QPhDATA4R=   [ QPH1(HF1R  , : ) ; QPH2(HF2R , :) ; ...
QPH3(HF3R , :);  QPH4(HF4R , :);  ]  ;
tr4h =fix( M4/2) ; tr4hc =ceil( M4/2) ;TT =fix(M4/2) ;TTb =ceil(M4/2 )  ;
if  ~tr4h , tr4h=   tr4hc ;   end; uhDATA4C = unique(hDATA4CO' )
     hTRAIN4 = [ HF1(1:  tr4h  , : ) ; HF2(1:  tr4h , :) ; ...
         HF3(1: tr4h , :); HF4(1: tr4h , :); ]  ;
 QhTRAIN4= [ QH1(1:  tr4h  , : ) ; QH2(1:  tr4h , :) ;  ...
     QH3(1: tr4h , :); QH4(1: tr4h , :);]  ;
     hTRAIN4C = [ HF1C(1:  tr4h )' ; HF2C(1:  tr4h)' ;...
HF3C(1: tr4h)'; HF4C(1: tr4h)';  ]  ;
     if TT==0 , tr4h= 0; end; uhTRAIN4C = unique(hTRAIN4C' )
      hTEST4 = [ HF1( tr4h+1: M4 , : ) ; HF2(tr4h+1: M4 , :) ; ...
       HF3(tr4h+1: M4 , :);HF4(tr4h+1: M4 , :);   ]  ;
      QhTEST4 = [QH1( tr4h+1: M4 , : ) ; QH2(tr4h+1: M4 , :) ; ...
QH3(tr4h+1: M4 , :);  ...
QH4(tr4h+1: M4 , :);  ]  ;
  hTEST4C  = [ HF1C( tr4h+1: M4)' ; HF2C(tr4h+1: M4)' ; ...
    HF3C(tr4h+1: M4)';HF4C(tr4h+1: M4)';  ]  ;
  [ T5S  T43V] = sort(Tabc4, 'descend' ) ;  hTRAIN124UC= [];         
  T5SM= T5S(1:3);[M3   I3 ]= min( T5SM) ;  hTEST4UCO=[];        
  hTEST124U = []; hTEST124UC =  [];QhTRAIN124U= [];  
  QhTEST124U =  [];  hTRAIN124U= [];  clear clas1 ; 
 if   (T43V(1) ==1 && T43V(2) ==2 && T43V(3) == 4  )  ...
  ||    (T43V(1) ==1 && T43V(2) == 4  && T43V(3) == 2  )
 H124 = [  HF1(1:  M3  , : ) ;  HF2(1:  M3 , :) ;  HF4(1: M3 , :); ] ;
tr4h =   fix( M3/2) ; tr4hc =   ceil( M3/2) ;
TT =   fix(M3/2) ;TTb =  ceil(M3/2 );
hTRAIN124 = [ HF1(1:  tr4h  , : ) ; HF2(1:  tr4h , :) ;   HF4(1: tr4h , :); ]  ;
QhTRAIN124=   [ QH1(1:  tr4h  , : ) ; QH2(1:  tr4h , :) ; ...
QH4(1: tr4h , :);   ]  ;
 hTRAIN124C = [ HF1C(1:  tr4h )' ; HF2C(1:  tr4h)' ; HF4C(1: tr4h)'; ] ;
 if TT==0 , tr4h= 0; end; uhTRAIN124C = unique(hTRAIN124C' )
 hTEST124 = [ HF1( tr4h+1: M3 , : ) ; HF2(tr4h+1: M3 , :) ; ...
    HF4(tr4h+1: M3 , :); ]  ;
hTEST124C  = [ HF1C( tr4h+1: M3)' ; HF2C(tr4h+1: M3)' ; ...
 HF4C(tr4h+1: M3)';] ;
QhTEST124 = [ QH1( tr4h+1: M3 , : ) ; QH2(tr4h+1: M3 , :) ;  ...
QH4(tr4h+1: M3 , :);  ]  ;  uhTEST124C = unique(hTEST124C' )
end; if 0,  for i= 1: 4        j= uHC(i) ;
 clasCT=   ['EC' int2str( j) ] ;  clas1= eval(clasCT) ;
 M4(i)=  length(clas1') ;  etr4u(i) =   fix( M4(i)/2) ; MAu(i) = etr4u(i) ;  
 if MAu(i),strhfA =['EF' int2str(j) '('  int2str(1) ':' int2str(MAu(i))  ',' ':' ')'] ;
FCEh{i}= eval( strhfA) ;  hTRAIN124U= [ hTRAIN124U ; FCEh{i}] ; 
[ uLL{i} ] = unique ( FCEh{i}(:,3 ) )    
strhfq  =  ['QE' int2str( j) '('  int2str(1)  ':' int2str(MAu(i))  ',' ':' ')'] ; 
      qFCEh{i}= eval( strhfq) ;  QhTRAIN124U= [QhTRAIN124U ; qFCEh{i}];    
strhA  =  ['HC'  '('   'DC' int2str( j) '('  int2str(1)  ':' int2str(MAu(i))   ')'  ')'] ;
 FCEhC{i}= eval( strhA) ;  uFCEhC{i}=unique(FCEhC{i}) 
hTRAIN124UC=[ hTRAIN4UC ; FCEhC{i}'] ; ueT4UC{i}=unique( FCEhC{i})
 strHF =  ['HF' int2str( j) '(' int2str(etr4u(i)+1) ':' 'end' ',' ':' ')'] ;
 FCEht{i}= eval( strHF) ;        hTEST4U =  [ hTEST4U ; FCEht{i}] ;   
strq =  ['QE' int2str( j) '(' int2str(etr4u(i)+1) ':' 'end' ',' ':' ')'] ;   
qFCEht{i}= eval( strq) ;   QTEST124U =  [ QeTEST4U ; qFCEht{i}] ;  
     strC =  ['EC' int2str( j) '(' int2str(etr4u(i)+1) ':' 'end'  ')'] ;
FCEC4{i}= eval( strC) ; 
eTEST4UC= [ eTEST4UC;   FCEC4{i}'] ;  ueTt4UC{i}= unique( FCEC4{i} )
 strC =  ['HCO' int2str( j) '(' int2str(etr4u(i)+1) ':' 'end'  ')'] ;
 FCECO4{i}= eval( strC) ; 
hTEST124UCO= [ eTEST4UCO ; FCECO4{i}] ;
 fprintf('h 680   i =%d j= %d LR %d LC %d \n', i , j ,LL(i), M4(i) ) ; 
  end; end ;  end;  hDATA4U= [];  hDATA4UC= [];QPhDATA4U= [] ; 
QhDATA4U = [] ; clear clas1 ;uhTEST4C = unique(hTEST4C' )
for i=  1: 4            j= uHC(i) ;  
strq =['QH' int2str( j) '(' int2str(1) ':' 'end' ',' ':' ')'];qFCEht{i}= eval(strq) ;      
QhDATA4U= [QhDATA4U ; qFCEht{i}] ; 
strqp =  ['QPH' int2str( j) '(' int2str(1) ':' 'end' ',' ':' ')'] ; 
qpFCEht{i}= eval( strqp) ;  QPhDATA4U= [QPhDATA4U ; qpFCEht{i}]; 
strHF =['HF' int2str(j) '(' int2str( 1) ':' 'end' ',' ':' ')']; 
FCE{i}= eval( strHF) ;      hDATA4U= [ hDATA4U ; FCE{i}] ;            
 uFCEh933{i}=   unique(FCE{i}(:,3) )   
strC =  ['HF' int2str( j) 'C(' int2str( 1) ':' 'end'  ')'] ; 
FCEC4{i}= eval( strC) ;     hDATA4UC= [ hDATA4UC ; FCEC4{i}'] ; 
  uFCEh935{i}=   unique(FCEC4{i}  )    
end;   hTEST4U=[];    hTRAIN4UC= [];  hTEST4UC=[];     
 QhTRAIN4U = [] ; QhTEST4U = [] ; clear clas1 ; hTRAIN4U= []; 
 for i=  1: 4       j= uHC(i) ;  clasQHU=   ['QH' int2str(j) ];   
clas1= eval(clasQHU); 
 MQ4(i)=  length(clas1') ;  tr4qu(i) = fix( MQ4(i)/2) ;
 M4u = tr4qu(i) ;tr4u(i) =  tr4qu(i) ;    
  if tr4qu( i ) ,  
strhf =  ['HF' int2str( j) '('  int2str(1)  ':' int2str(M4u)  ',' ':' ')'] ;           
  FCEh1053{i}= eval( strhf) ; hTRAIN4U= [ hTRAIN4U ;  FCEh1053{i}] ;   
  uFCEh1057{i}=   unique(FCEh1053{i}(:,3) ) 
 strhfq  =  ['QH' int2str( j) '('  int2str(1)  ':' int2str(M4u)  ',' ':' ')'] ; 
qFCEh{i}= eval( strhfq) ;  QhTRAIN4U= [QhTRAIN4U ; qFCEh{i}];    
  strq =  ['QH' int2str( j) '(' int2str(M4u+1) ':' 'end' ',' ':' ')'] ; 
 qFCEht{i}= eval( strq) ;   QhTEST4U =  [ QhTEST4U ; qFCEht{i}] ;  
  fprintf('h 687 i =%d j= %d LR %d LC %d \n', i , j ,MQ4(i), tr4qu(i) ) ; 
 strChtr4 = ['HF' int2str( j) 'C('  int2str( 1) ':' int2str(tr4u(i) )  ')'] ; 
 FCEC4h{i}= eval( strChtr4) ; 
 hTRAIN4UC= [ hTRAIN4UC ; FCEC4h{i}'] ;
 uhFCEh4UC{i} = unique(FCEC4h{i} )
  strHF =  ['HF' int2str( j) '(' int2str(tr4u(i)+1) ':' 'end' ',' ':' ')'] ;    
  FCEht{i}= eval( strHF) ;    hTEST4U = [ hTEST4U ; FCEht{i}] ;
 [uhTT4U{i}] = unique ( FCEht{i}(:,3))  
    strC =  ['HF' int2str( j) 'C(' int2str(tr4u(i)+1) ':' 'end'  ')'] ;
    FCEC4{i}= eval( strC) ;    hTEST4UC= [ hTEST4UC ; FCEC4{i}'] ;
     uhTE4UC{i} = unique(FCEC4{i}' )
   fprintf('h  673 i =%d j= %d LR %d LC %d \n', i , j ,tr4u(i), MQ4(i) ) ; 
  end ; end ;   end; if  ( LHC1  && LHC2  && LHC3  )    
TH3 = [ LHC1 LHC2  LHC3    ];   [MH3   IMH3 ]= min( TH3)  ;  
 [ TH3Sorted  TH3I ]   = sort(TH3 , 'descend' ) ;     trh3 =   fix(4*MH3/5) ; 
hDATA3 = [  HF1(1:  MH3  , : ) ;   HF2(1:  MH3 , :) ;   HF3(1: MH3 , :); ] ; 
QhDATA3=   [ QH1(1:  MH3  , : ) ; QH2(1:  MH3 , :) ;  QH3(1: MH3 , :); ] ;
hDATA3C = [ HF1C(1:  MH3  )' ; HF2C(1:  MH3 )' ;  HF3C(1: MH3 )';  ]  ;    
QhTRAIN3=   [ QH1(1:  trh3  , : ) ; QH2(1:  trh3 , :) ;  QH3(1: trh3 , :);  ]  ; 
   hTRAIN3 = [ HF1(1:  trh3  , : ) ; HF2(1:  trh3 , :) ;  HF3(1: trh3 , :);  ]  ; 
 hTRAIN3C = [ HF1C(1:  trh3  )' ; HF2C(1:  trh3 )' ;  HF3C(1: trh3 )';  ]  ;    
hTEST3 = [ HF1( trh3+1: MH3 , : ) ; HF2(trh3+1: MH3 , :) ;...
  HF3(trh3+1: MH3 , :);  ]  ;
QhTEST3 = [QH1( trh3+1: MH3 , : ) ; QH2(trh3+1: MH3 , :) ; ...
         QH3(trh3+1: MH3 , :);  ]  ;
   hTEST3C = [ HF1C( trh3+1: MH3 )' ; HF2C(trh3+1: MH3 )' ; ...
       HF3C(trh3+1: MH3 )';  ]  ;    
   QPhDATA3U = [] ;hDATA3U= [];   clear clas1 ; 
   hDATA3UC= []; QhDATA3U = [] ;
   for i= 1: 3            j= uHC(i) ;
clasCT3U=   ['HC' int2str( j) ] ;  clas1= eval(clasCT3U) ;
 FCE{i}= H(clas1 , :) ;     HD3UFCEC{i}= HC(clas1) ;
 hDATA3U= [ hDATA3U ; FCE{i}] ;
  [LL( i)  LLi{i }] = size ( FCE{i} ) ;  uFCE{i}=  unique(  FCE{i}(:,3));
hDATA3UC= [ hDATA3UC ; HD3UFCEC{i}'] ; 
uHD3UFCEC{i}= unique(  HD3UFCEC{i})
fprintf('h 777 i =%d j= %d LR %d LC %d \n', i , j ,LL(i), LLi{i }) ;
 end;  clear clas1 ;uhDATA3U= (unique( hDATA3U(:, 3)') )
 k3_1034= length(unique( hDATA3U(:, 3)) )
for i=  1: 3            j= uHC(i) ;
clasQHU3=   ['HC' int2str(j) ]; clas1= eval(clasQHU3);
VCQ{i}=QH(clas1,:);VCQP{i}= QPH(clas1,:); [LL8(i) LLi8{i}]=size(VCQ{i});
 [LRh(i)  LCh(i) ] =size(clas1) ;    u3{i}=  unique( H(clas1,3))
QhDATA3U= [QhDATA3U ; VCQ{i}]; 
QPhDATA3U= [QPhDATA3U ; VCQP{i}];
 fprintf('h 780  i =%d j= %d LR %d LC %d \n', i , j ,LRh(i), LCh(i) ) ;
 end; clear clas1 ;QhTRAIN3U = [] ;  QhTEST3U = [] ;
hTRAIN3U= [];  hTEST3U=[]; hTRAIN3UC= [];  hTEST3UC=[];
 for i= 1: 3    j = uHC(i) ;
clasCTh=   ['HC' int2str( j) ] ;  clas1h= eval(clasCTh) ;
Mh3(i)=  length(clas1h') ;    tr3u(i) =   fix(4*Mh3(i)/5) ;   M3u = tr3u(i) ;
if  tr3u(i) , strhf  =  ['HF' int2str( j) '(' int2str(1) ':' int2str(M3u) ',' ':' ')'] ; 
 FCEh3b{i}= eval( strhf) ;
hTRAIN3U= [ hTRAIN3U ; FCEh3b{i}] ;
uFCEh3Mb{i}=unique(FCEh3b{i}(:,3)) ;
         strhfC  =  ['HF' int2str( j) 'C(' int2str(1) ':' int2str(M3u) ')'] ;
FCEh3bC{i}= eval( strhfC);  hTRAIN3UC= [ hTRAIN3UC ; FCEh3bC{i}'] ;
 str =  ['HF' int2str( j) '(' int2str(M3u+1) ':' 'end' ',' ':' ')'] ;
 FCEht3{i}= eval( str) ;  
      hTEST3U =  [ hTEST3U ; FCEht3{i}] ;
      uFCEht3{i}=    unique(FCEht3{i}(:, 3)) ;
      strC =  ['HF' int2str( j) 'C(' int2str(M3u+1) ':' 'end'  ')'] ; 
      FCEht3C{i}= eval( strC) ;  
      hTEST3UC =  [ hTEST3UC ; FCEht3C{i}'] ; 
 end;  end ;  uk3_1047= (unique( hTRAIN3U(:, 3)') )  
 uk3_803= ( unique( hTEST3UC') )  
 for i=  1: 3    j= uHC(i) ;
clasQHTU3=   ['QH' int2str(j) ];    clas1= eval(clasQHTU3);
 MQ3(i)=  length(clas1') ;  tr3qu(i) =   fix(4*MQ3(i)/5) ;
 M3u = tr3qu(i) ; qFCEh3{i}= QH(1:tr3qu(i)  , :) ;
  QhTRAIN3U= [QhTRAIN3U ; qFCEh3{i}];
    strq =  ['QH' int2str( j) '(' int2str(M3u+1) ':' 'end' ',' ':' ')'] ;  
    qFCEht3{i}= eval( strq) ;
 [LR(i)  LLi8c(i) ] =   size(clas1); [LL8( i)  LLi8{i } ] = size( qFCEht3{i} )   ;
 QhTEST3U =  [ QhTEST3U ; qFCEht3{i}] ;
fprintf('h3 763  i =%d j= %d LR(i) %d LC(i) %d \n', i , j ,LR(i), LL8(i) ) ;
end;  if 0, if  (TH3I(1) == 1 &&  TH3I(3) == 3 ) ,
SF13=  fix( LHC1/ LHC3 ) ;  SF13b=  ceil( LHC1/ LHC3 ) ;
 if LHC3 >= SF13 , newHF3 = smote( HF3 ,   SF13b ) ; 
 [LHC3new   L3c]= size(newHF3);  
 end; if  ( TH3I(1) == 1 &&  TH3I(2) == 2) ,
SF12 =  fix( LHC1/ LHC2 ) ; SF12b =  ceil( LHC1/ LHC2 ) ;
if LHC2>SF12b,newHF2=smote(HF2,SF12b);[LHC2new  L3c]=size(newHF2); 
   end; end;  else SF12 =  fix( LHC1/ LHC2 ) ; 
SF12b =ceil( LHC1/LHC2);SF13=fix( LHC1/LHC3);SF13b=ceil( LHC1/LHC3) ;
  if LHC2 >= SF12 ,    newHF2 = smote( HF2 , SF12b ) ;
 [LHC2new   L3c]= size(newHF2);
 end;     if LHC3 >=  SF13 ,     newHF3 = smote( HF3 ,   SF13b ) ;
  [LHC3new   L3c]= size(newHF3);  
end;end;   if exist('newHF2','var') & exist('newHF3','var')
 hDATASMOTE =  [ HF1 ; newHF2  ; newHF3 ; ] ; trF =   fix(4*LHC1/5) ; 
htrainsmote3 = [ HF1(1:  trF, : ) ; newHF2(1:  trF , :); newHF3(1: trF, :);] ; 
 hTESTSMOTE3 = [ HF1( trF+1: LHC1 , : ) ;...
newHF2(trF+1: LHC2new , :) ;  newHF3(trF+1: LHC3new , :);  ]  ;
end;   TT = fix(MH3/5) ;  TTb =  ceil(MH3/5 );  training_set=zeros(3,trh3) ;
  training_set1=zeros(1,trh3);       htrainran3=[];  
for  j=1: 3  clasHF{j} =   ['HF' int2str( j) ] ;  
  clasHF1{j} = eval(clasHF{j});  [LHc( j)  LHCi{j } ] = size ( clasHF1{j} ) ;
 for i=1:trh3      beat = round( unifrnd(1,LHc( j) ) ) ;
 tr2(j, i)   =   length(find( training_set  == beat) ) ;
tr3(j,i ) = length(find( training_set(j,:)  == beat)) ; training_set(j,i)=beat;
end;   lut(j)  = length(unique(training_set(j,:) )) ;
 if j==1,     HF1ran {j } = HF1( training_set(j,:)  , : ) ;
elseif   j==2,  HF1ran {j } = HF2( training_set(j,:)  , : ) ;
 elseif   j==3, HF1ran {j } = HF3( training_set(j,:)  , : ) ;
 end;  htrainran3 = [ htrainran3 ; HF1ran{j }];
end;  testing_set=zeros(3,TT);  
testing_set1=zeros(1,TT);  htestran3=[];      
for j=1: 3     %   j= uHC(i) ;    
clasHF{j } =   ['HF' int2str( j) ] ; clasHF1{j} = eval(clasHF{j});  
 [LHc( j)  LHCi{j } ] = size ( clasHF1{j} )   ;  
 for i=1: TT   beat = round( unifrnd(1,LHc( j) ) ) ;
 te2(j, i)   =length(find( testing_set  == beat) ) ;
te3(j,i )=  length(find( testing_set(j,:)== beat)) ;  testing_set(j,i) =beat;
end;  lute(j)  = length(unique(testing_set(j,:) )) ;
 if  j==1, htest1ran {j } = HF1( testing_set(j,:)  , : ) ;
elseif   j==2,  htest1ran {j } = HF2( testing_set(j,:) , : ) ;
elseif   j==3, htest1ran {j } = HF3( testing_set(j,:), : ) ;
 end;  htestran3 = [ htestran3 ; htest1ran{j }];      
 end; end;   end;   if ~exist ( 'Adata1','var' ), 
 clear QhTRAIN5U  QhTRAIN4U  Flage3 newHF2  fjc H   NORMR;  
 clear  CMRF*  htrainran3 ;clear('-regexp', '^J|^Z');  clear   CB1  n f3;   
 clearvars AB*   DF4    zDATA   CE  E YF1  Nc   UF V1  Y XC  FB* ; 
end; if 10,    inF100 = ~isempty(intersect( AFILETT , 100) ) ; 
inF103 =~isempty(intersect( AFILETT,103)) ;
inF105 = ~isempty(intersect( AFILETT, 105)) ;  
inF111=~isempty(intersect(AFILETT,111));
inF113=~isempty(intersect(AFILETT,113));
inF117 = ~isempty(intersect( AFILETT , 117) ) ;
inF121= ~isempty(intersect( AFILETT , 121) ) ;  
inF123= ~isempty(intersect( AFILETT , 123 ) )  ; 
inF200 = ~isempty(intersect( AFILETT, 200) ) ;
inF202=~isempty(intersect( AFILETT , 202)); 
inF210 = ~isempty(intersect( AFILETT, 210)) ; 
inF212=~isempty(intersect(AFILETT,212));
inF213=~isempty(intersect(AFILETT,213)); 
inF214=~isempty(intersect(AFILETT ,214));
inF219=~isempty(intersect(AFILETT,219)); 
inF221=~isempty(intersect(AFILETT,221)); 
inF222= ~isempty(intersect( AFILETT, 222)); 
inF228= ~isempty(intersect(AFILETT, 228)) ;  
inF231= ~isempty(intersect( AFILETT, 231));   
inF232=~isempty(intersect( AFILETT,232));  
inF233 =~isempty(intersect( AFILETT, 233));  DQ = [];   DA = [ ]; 
inF234=~isempty(intersect(AFILETT,234));rname= num2str(Afile1test) ;
fprintf('h dbstop  825 ; Beats=%d  Afile1test= %d \n', NT, Afile1test);  

end;  for k = 1: length( TTFILE )
A11=genvarname(['inF', num2str( TTFILE(k))  ])  ;  
F =~isempty(intersect( AFILETT ,TTFILE(k)) ) ; eval([A11 '= F;' ])  
end;  if exist('Afile1trains','var')  &&ENS ,  
 F1 = genvarname([ 'inFj', Afile1trains]) ; eval([F1 '= 1;' ] );   
 DA=eval(['AX' (Afile1trains ) ]);  DQ=eval(['AXQRS' (Afile1trains)]);     
if 10,DP=eval(['AXQRSTF'  (Afile1trains) ]); end;
 DQPM=eval( ['AXQRSYM'  (Afile1trains) ]);  
 elseif ~exist('Afile1trains','var') &&BE&&~ENS&& isequal( BOTEST,'TT'), 
DA= [ AX208;   AX223;AX209 ;  AX207 ; AX106 ; AX119;    ];
DQ = [ AXQRS208 ; AXQRS223  ;  AXQRS209 ;%AXQRS203 ; AXQRS201;
    AXQRS207 ; AXQRS106 ; AXQRS119 ;  ] ;
DQPM = [AXQRSYM208';     AXQRSYM223' ;
    % AXQRS209'; %  AXQRS118';  % AXQRSYM203'; AXQRSYM201'; 
AXQRSYM209' ;   AXQRSYM207'; AXQRSYM106' ; AXQRSYM119';] ;
s(1)=size(AX208,1);s(2)=size(AX209,1);
s(3)=size(AX207,1);s(4)=size(AX223,1);
 end; end; if ~BE&&~ENS,if  inF100%| inF213 | 1  
DQ= []; DA = [ ]; %DQPM = [AXQRSYM209;];%DQPM= [AXQRSYM114;] ;        
if 10, DA= [AX208; AX223;% AX201; AX203;%AX124;AX118; %% AX220;
] ; DQ = [ AXQRS208; AXQRS223;%AXQRS201;AXQRS203;%AXQRS118;
   %AXQRS118;% AXQRS220;%AXQRS124; 
];     s = size(DQ,1); if s==1 DQ = DQ' ; end; 
end; elseif   inF103 %  | inF105 %  | inF105  | inF233  | inF111 | inF113 ,
if 10, DA=[  DA;AX208 ;  AX220; %
        AX223; % AX118;%AX124;
 ]; DQ=[DQ; AXQRS208;  AXQRS220;%
 AXQRS223; %AXQRS118;%AXQRS124; 
    ]; end; elseif  inF105,   s = size(DQ,1); if s==1 DQ = DQ' ; end; 
 DA= [ DA;AX201;  AX203; ]; DQ = [DQ ; AXQRS201;AXQRS203; ] ;  
  elseif  inF111, DA = [ DA; AX223;  AX207;  AX209;     AX208 ; AX223; 
]; DQ=[ DQ; AXQRS223; AXQRS207; AXQRS209; AXQRS208;AXQRS223;  
 ]; 
elseif inF113 ,DA = [  AX208;  %  AX223; %   AX207 ;%  AX203 ;%  
 ] ; DQ = [ AXQRS208;  %AXQRS223; AXQRS208';%AXQRS203;AXQRS109;  
  ] ; elseif inF117,DA = [ AX114 ;  AX223; ]; DQ = [ AXQRS114 ; AXQRS223 ; ] ;
 elseif    inF121,  DA = [  AX201;  ] ;   DQ = [ AXQRS201';    ] ;
elseif  inF123,  DA = [ AX108 ;  AX223;] ;  DQ = [ AXQRS108 ;AXQRS223 ;] ; 
elseif inF200,  DA = [ AX223;     AX208;   AX203;   %  AX201 ; 
 ] ;  DQ = [    AXQRS223; AXQRS208 ;    AXQRS203 ; %   AXQRS201 ;
 ] ;   elseif  inF202,  DA = [ AX109 ;   AX203 ;  % AX201;   
 ] ; DQ = [AXQRS109; AXQRS203 ;   % %AXQRS201; 
 ] ; elseif   inF210, DA = [ %    AX223 ; %  
   AX208 ;AX114; %AX201; 
] ; DQ = [ %   AXQRS223 ;%
 AXQRS208;AXQRS114;% AXQRS201; 
] ; elseif  inF212, DA = [ AX118 ;% AX208;  AX223; % AX207;  
        ] ; DQ = [ AXQRS118; %  AXQRS208;  AXQRS223; %AXQRS207; 
  ] ; elseif   inF213,    DA = [ AX201; AX208 ;   %   
   %   AX223; %   AX203; %  AX124 ;  %         AX207;  %            
 ] ;   DQ = [   AXQRS201; AXQRS208;  %
  ] ;  if 0, DQP =[  AXQRSTF208';   AXQRSTF223';     ] ; 
  DQPM =[  AXQRSYM208';   AXQRSYM223'; ] ; end; 
  elseif     inF214 ,   DA = [ AX208 ;    AX223; %   AX109 ;     
          ] ;    DQ = [    AXQRS208 ;AXQRS223;  %AXQRS109 ;  
 ] ; elseif   inF219, DA = [   AX201 ; %  AX223;% AX205 ; AX207;  AX223;    
 ] ;   DQ = [ AXQRS201 ; %AXQRS207 ; AXQRS223;  
] ;     %   AX207 ;%  AX203 ;% AX201 ; %   AX223; %AX215 ;  
  %  AXQRS223';  %   AXQRS215';  AXQRS208'; %     AXQRS201'; % 
     % AXQRS207'; %AXQRS203'; %  %AXQRS109';   
elseif   inF221, DA = [    AX203 ; %AX208;   AX223;                    
        ] ;  DQ = [       AXQRS203 ;    % AXQRS208;  AXQRS223;
 ] ;
 elseif  inF222,  DA = [  AX203;  AX208 ;  AX223 ; %    AX209;  
 ] ; if   size(AXQRS223,1) ==1,AXQRS223=AXQRS223' ; end;
if  size(AXQRS208,1) ==1,AXQRS208=AXQRS208' ; end;
 if  exist('AXQRS222', 'var'),if   size(AXQRS222,1) ==1,
  AXQRS222=AXQRS222' ; end;end;
DQ = [ AXQRS203 ;  AXQRS208 ; AXQRS223;%   AXQRS209;  
]; elseif inF228,   DA = [      AX201; AX208;    AX223; AX203;      ] ;               
DQ = [     AXQRS201 ; AXQRS208 ;      AXQRS223 ; AXQRS203 ; ] ;    
DA = [   AX220;      ] ;  DQ = [     AXQRS220; ] ;                 
elseif     inF231,  DA = [    AX124 ;    % AX207 ;  AX208  ; % AX209 ;% 
%AX212  ;    % %       AX108 ;   %  AX118 ;
  ] ;  DQ = [  AXQRS124 ;  %   AXQRS207;   AXQRS208;  %AXQRS209;
 ] ;
elseif  inF232,DA = [   AX101 ;  AX201 ;  %  AX108; %    
%    AX223;  %     AX114 ;     AX207 ;      %     AX118; 
 ] ;  DQ = [AXQRS101; AXQRS201; %  %    AXQRS108; %
   ] ;   elseif    inF233,  DA = [ %   AX203; AX207;  
   AX223;       ] ; DQ = [   AXQRS223;    %  AXQRS203; AXQRS207;  
   ] ;    
elseif    inF234,DA = [  AX124 ;  AX114 ;    AX207 ;  %AX201 ; 
  ] ;   DQ = [AXQRS124 ; AXQRS114 ; AXQRS207;   % AXQRS201'; 
] ; end; end ; if 1,if 1,  if  isequal( BOTEST , 'TR' ) &&~ENS ,
DA = [ AX233;% AX213; AX208 ;
    ] ; DQ = [  AXQRS233 ; %AXQRS213 ;AXQRS208 ;
    ] ; 
elseif  isequal( BOTEST , 'TR' ) &&exist('Afile1trains','var') &&ENS ,, 
DA=eval(['AX' (Afile1trains ) ]);  DQ = eval(['AXQRS' (Afile1trains)]) ;     
 elseif  isequal( BOTEST , 'TR' ) &&~exist('Afile1trains','var') &&ENS ,, 
 DA = [    AX201 ; ] ;  DQ = [AXQRS201;
 ] ; end;  if 1, cols = size(DA , 2  ) ;
 if size(DA,2)== 50, FILETR=35; end; if size(DA,2)<=49, FILETR = 2; end;
if size(DA,2)>=51,FILETR =51; end; A1FILETR840=unique(DA(:,FILETR)' )
inFTR1965 =  isempty(intersect(A1FILETR840 ,  AFILETT ) )  ;
inTR_mit_empty =  isempty(intersect(A1FILETR840 , Afilemit ) ) ;
inFTR = isempty(intersect(A1FILETR840 , Afilemit) )  ;  
end; if  exist('Adata1','var')  && exist('Adata2','var')  ...
&& isequal ( BOMIT , 'TR' )   &&  BCALIBR, CLAS = K; 
DA= Adata1;  DQ= Adata2 ; AFILETR =unique( DA(: , FILE )' )
if  size(DA , 2) == 51,  AFILETR=  unique( DA(: ,  51 )' ) ; end;
end;   if 0,  if   exist('Adata1','var')  && exist('Adata2','var') ...
 && inTR_mit_empty &&  isequal ( BO , 'TR'  ) && ~BCALIBR
 DA=[ DA; Adata1;]; DQ= [   DQ;  Adata2' ;] ;DQP =[DQ ]; DQPM =DQ ;
 elseif  exist('Adata1','var') && exist('Adata2','var') && ~inTR_mit_empty
 end; end; if 0, if exist('Adata1','var') && exist('Adata2','var')&&BCALIBR,
CLAS = K;DA = Adata1;DQ=Adata2; AFILETR=unique( DA(:,FILE )' )
 if   size(DA , 2) >= 51,   AFILETR=  unique( DA(: ,  51 )' ) ; end;       
elseif    isequal ( BD , 'LARGE'  )   &&  isequal ( BO , 'MANY'  ) ,
 DA = [    AX101 ; AX106 ;   AX108  ;   AX109 ; AX112  ; 
 AX116 ;   AX118  ;  AX119;  % AX122 ;
   AX124  ;   AX203;   AX205  ;  AX207 ; 
   AX208; AX209  ;  AX215 ;   AX220  ;  AX223; %AX230  ;
AX201 ; ] ;
DQ = [AXQRS101';  AXQRS106'; AXQRS108' ;  AXQRS109';  AXQRS112';
AXQRS116'; AXQRS118' ;   AXQRS119';%  AXQRS122';
  AXQRS124' ; AXQRS203';     AXQRS205'; AXQRS207';...
  AXQRS208';  AXQRS209';
AXQRS215';  AXQRS220'; AXQRS223' ;  %   AXQRS230';
AXQRS201';     ] ;     

 elseif exist('Adata1','var') && exist('Adata2','var')&&isequal( BO,'TR' )
 if  0, DA = [  AX223; ] ;  DQ = [  AXQRS223'; ] ; DQP = [ ] ; DQPM = [ ] ;
 elseif 0, DA = [AX213;  AX233; ] ;
DQ = [ AXQRS213'; AXQRS233'; ] ; DQP = [] ;   DQPM = [  ] ;
end; if  ~isempty(DA ), AFILETR1 =  unique( DA(: , FILE )' )
 if  size(DA ,2 ) >= 51,  AFILETR1=  unique( DA(: ,  51 )' ) ; end;  
 inFTR  =  isempty(intersect(AFILETR1 , Afile1test     ) )  ;
 if  exist('Adata1','var')  && exist('Adata2','var') ...
  &&  isequal (BO , 'TR'  ) && inFTR
 DA = [ DA; Adata1; ] ;DQ=[ DQ;  Adata2' ; ];DQP= DQ;DQPM = DQ ;
end; else   CLAS = K;     DA = Adata1;  DQ= Adata2 ;
end; elseif  exist('Adata1','var') && exist('Adata2','var') && isequal( BO,'TR')
CLAS = K;     DA = Adata1;  DQ= Adata2 ;
if   exist('Adata3','var')    DQP = Adata3;   else  DQP  = DQ  ;   end;
 if   exist('Adata4','var'),DQPM = Adata4;   else  DQPM = DQ ;   end;
elseif BCALIBR,DA=eval(['AX' Afile1trains]);DQ=eval(['AXQRS' (Afile1trains)]);  
end; end;  if 10, si=  size(AQ )  
if ~exist('DQPM','var'),DQPM=DQ;end;   if size(AQ,1) ==1, AQ= AQ' ;  end;
 if  dum&&~BE, DA= AA(1, :); DQ= AQ(1, :);DQPM=AQPMC(1, :); end; 
 if size(DA,2)== 50, FILETR = 35;end; if size(DA,2)<=49,FILETR= 2;end;
if size(DA, 2)>=51, FILETR = 51; end;  
 AFILETR2= unique(DA(: , FILETR )' ); CAFILETRC =unique(DA(: , 3 )' )
if size(DQ,1) ==1, DQ= DQ' ;  end;    if  ~exist( 'DQP','var'),DQP =DQ ; end; 
if  size(DQP,1) ==1,DQP= DQP' ;end;if ~exist('DQPM','var'),DQPM=DQ;end;  
if  size(DQPM,1)==1, DQPM=DQPM'; end; size(DQ,1)==1,%pendingDQPM
if BTIME&&BFIX201, DQ=DQPM; end; 
inFTRTT2 =~isempty( intersect( AFILETT, AFILETR2) );
if inFTRTT2 && isequal ( BI , 'INTER'),   %   break;
end;  clear AX*   -except AX208 ; %clearvars  AQ* ;  
 [ LQV1   L1qc]= size(DQ)   ;   [ ALTRAIN coluE] = size(DA);
if LQV1~=ALTRAIN, fprintf('971 err %d %d\n',LQV1, ALTRAIN);return;end;  
 A1range = 'B24 : E24'             
 for i =  4 :  coluE
 [ MINDA{i} MINDAI{i}] =  ( min (DA( : , i) ) );
 [ MAXDA{i}  MAXDAI{i} ]  = ( max (DA( : , i) ) );
 MeanDA{i} =   ( mean (DA( : , i) ) );
fprintf('e 971   i{%d} %s Mean %.2f   MIN=%.2f MinR=%d minS=%d \n', ...
i, FEAT{i}, MeanDA{i},   MINDA{i} , DA(MINDAI{i},1) , DA(MINDAI{i},2)  );
 fprintf('e 1024 i{%d} %s MAX=%.2f  MXI %d MaxR=%d maxS=%d \n', ...
 i, FEAT{i}, MAXDA{i}, MAXDAI{i}, DA(MAXDAI{i},1) , DA(MAXDAI{i},2));
 end;  DB= DA; [ ALTRAINDA coluE] = size(DA);
 if 0, for i = 1: 8    j=26 + i ;
   %   for j =  27 : 34    % 19 :26 (  8 features  29 to 34  )
                     % DB( : , j ) = DA( : , j - 8 )/MeanDA{j - 8};
 DB( : , 26 + i) = DA( : , i + 18 )/MeanDA{i + 18};
 [ MINDA{j} MINDAI{j}] =  ( min (DB( : , j) ) );
                     [ MAXDA{j}   MAXDAI{j} ]  = ( max (DB( : , j) ) );
                     MeanDB{j} =   ( mean (DB( : , j) ) );
 fprintf('e 1023  j{%d} %s MAX%.2f  MAXDA %d MaxR%d maxF=%d \n', ...
 j, FEAT{j}, MAXDA{j}, MAXDAI{j} , DB(MAXDAI{j},1) , DB(MAXDAI{j},2) );
end;  end;  CT_DB = DB(: , 3);    PWe=  fix(MAXDA{4})
Clen2 = length(unique(CT_DB') ) ;  uct2 = unique(CT_DB') ;Ael118=0;  
 for I =1: length(CT_DB)
 if CT_DB(I)== 1 ,   CT_DBM(I)=1;
 elseif CT_DB(I)==2, CT_DBM(I)= 1; elseif CT_DB(I)==3 , CT_DBM(I)=1;
 elseif CT_DB(I)==11, CT_DBM(I)=1; elseif CT_DB(I)==34, CT_DBM(I)=1 ;
elseif CT_DB(I)==  5, CT_DBM(I)=  BV ;% VPC
            elseif CT_DB(I)== 10 , CT_DBM(I)=BV ; % VPC
            elseif CT_DB(I)== 4; CT_DBM(I)= BS ;  % Aberrated
            elseif CT_DB(I)== 7 ;CT_DBM(I)= BS ;  % Aberrated
            elseif CT_DB(I)== 8; CT_DBM(I)= BS ;  %APC
            elseif CT_DB(I)== 9 ;CT_DBM(I)= BS ;  % Aberrated       
elseif CT_DB(I)== 6 ;CT_DBM(I)=  4 ; % Fusion %FUSION	6
elseif CT_DB(I)== 12 ;CT_DBM(I)=  5 ;  
 elseif CT_DB(I)== 13 ;CT_DBM(I)=  5 ; %
elseif CT_DB(I)== 38 ; CT_DBM(I)=  5 ; %
 elseif CT_DB(I)== 37 ; CT_DBM(I)=  5 ; %
                 else CT_DBM(I)= CT_DB(I);   Ael118  = Ael118 + 1;
  end ; end ;   [LHC5, n]=size(DB);
NR= [];   NaNCE=[]; uclctm2 =  unique(CT_DBM)
  fprintf('e  1002 Nan  Analysis   Beats=%d fea =%d  \n',LHC5 , n );        
for i= 1 : n   Nanrows{ i } = find( isnan( DB(: , i )) );
    if  ~isempty( Nanrows{ i } ) , NaNCE =[ NaNCE  i] ;
 NANR{ i } = DA(Nanrows{i } , 1);  NR = [NR ;  Nanrows{i} ] ;
end; end;  NRSE  = sort(NR);  
NRU1940  =   unique(NRSE);   NaNCElen=   length(NaNCE )
NANC =  CT_DB(NRU1940 );   NANR2 = DA(NRU1940 , 1); 
NANCM  =  CT_DBM(NRU1940 );
NANC1=  find( NANCM == 1)  ;   NANC2=  find( NANCM ==  2 )  ;
NANC3=  find( NANCM == 3)  ;   NANC3=  find( NANCM == 4)  ;
dcE = [1, 2,3,FILE, NaNCE] ;  LCT_DB= length(CT_DB) ;
rowd= DB(NRU1940 , : );  nanrow = fix(rowd(: , dcE) ) ;
DB1= DB ; DQ1= DQ; DQP1= DQP;  DQPM1= DQPM; ...
CT_DB1M = CT_DBM; uDB1= unique(DB1(: , 3 )')  
if 10,  DB1(NRU1940 , :) = []; DQ1(NRU1940 , :) = []; 
if ~isempty( DQP1),DQP1(NRU1940 , :) = []; end;
if ~isempty( DQPM1) ,DQPM1(NRU1940 , :) = []; end;
CT_DB1M(NRU1940)=[];  
end; uDB1O= unique(DB1(: , 3 )')
[ NT FT] = size(DB); %       DB1(: , 3 )=  CT_DB1M;     %modi
L2qc = length( CT_DB1M ); uDB1M= unique( DB1(: , 3 )')
[NB   dim]=size( DB1); [NANE nnanc] = size(NRU1940);  clear XC ;
NZE= [] ;   NGF=[] ;    NZCOL1= [];      featuretest2 =  [ 4 : 7 ] ;
fprintf('e 1030 Total=%d NaNrem%d nanbeats%dNaNCEol=%d\n',...
 NT ,  NB  , NANE,  NaNCElen);
end;   for i  =   featuretest2
[ NZrows5{ i } ] = find( DB1(: , i) < 0 );
 lnz = length(NZrows5{ i }) ;
if ( NZrows5{ i } ) , NZR{ i } = DB1( NZrows5{i } , : ) ;
 NZRL(i) = length(DB1(NZrows5{i } , 1)) ;
fprintf('e 1075 neg  colu i =%d  FEAT %s no.=%d \n' , i , FEAT{i} , lnz);
    NZCOL1 = [ NZCOL1 i ] ;   NZE = [NZE ;NZrows5{i }];
end; end; if  10, NZS1  = sort(NZE) ; 
 NZU810 =   unique(NZS1);     [NZBE1960 nzbc] = size(NZU810) ;
NZC =  CT_DB1M(NZU810 ) ;    ungc= unique(NZC) ; 
NZFE=  DB1(NZU810 , FILE);        NZRE = DB1(NZU810 , 1);   
if  size(DQ1 ,1)==1, DQ1=DQ1' ;  end;
if  size(DQP1,1)==1,DQP1= DQP1'; end;
DBC=DB1 ; DQC= DQ1 ;  DQPC= DQP1 ; DQPMC= DQPM1 ; 
CT_DBCM=CT_DB1M;CT_DBCM(NZU810)=[];umCT =unique(CT_DBCM)
DBC(NZU810,:)=[];DQC(NZU810,:)=[];
if ~isempty(DQPC),DQPC(NZU810,:)=[];end;          
 if ~isempty( DQPMC),DQPMC(NZU810 ,:)=[];end;  
%DBC(:,3)=CT_DBCM;%zfDB1D=find(DB1~=DBC);
LMRF=length(CT_DBCM);%Flage=find(CT_DBCM'~=DBC(:,3));
E=DBC(:,1:end);ECO=DBC(: ,3);[NE1 dim]=size(E);
QE =DQC ; EC=  CT_DBCM ;  QPE = DQPC ;  QPME = DQPMC ;
 fprintf('1050 %d NonNaN %d%d Neg =%d\n',NT,NB,NE1,NZBE1960);
DC1=find(CT_DBCM==1);ECO1=ECO(DC1); EC1=EC(DC1);
DC2=find(CT_DBCM ==2);ECO2=ECO(DC2);EC2=EC(DC2);
DC3=find(CT_DBCM==3); ECO3= ECO(DC3);EC3=EC(DC3);
DC4=find(CT_DBCM==4);ECO4=ECO(DC4);EC4=EC(DC4);
DC5 = find(CT_DBCM==5);ECO5=ECO(DC5);EC5=EC(DC5);
EF1C=EC( DC1) ; EF2C= EC(DC2);EF3C= EC(DC3);uEC3=unique(EC3)
EF4C= EC( DC4) ; EF5C= EC( DC5);uEC5=unique(EC5)
IC12=(length(DC1)+length(DC2) +length(DC3)+length(DC4)+length(DC5));
 if  IC12~= length(CT_DBCM),   fprintf('e 1102   Error  Class\n');
else  fprintf('e  1072  NO  Error  Class ; Total beats Z =%d\n', LMRF );
 end ; UN = unique(CT_DBCM);  CLEN=length(UN);uEC2=unique(EC2)
EF1= DBC( DC1, FS1 :end); QE1 = QE( DC1 ); [ LQV1 L1qc] = size( QE1);    
EF2=DBC( DC2, FS1 : end); QE2 = QE( DC2 ); [ LQV2 L2qc] = size( QE2); 
EF3 = DBC( DC3, FS1:end); QE3 = QE( DC3 ); [ LQE3  L3qc]= size(QE3);           
EF4= DBC( DC4 , FS1 :end); QE4 = QE( DC4 );[ LQE4   L4qc]= size(QE4); 
 EF5= DBC( DC5, FS1 : end);  QE5=QE( DC5 ); [ LQE5 L5qc]= size( QE5);
  [snorme  s1 ] = size(EF1) ;   [svpc s2] = size(EF2);zedc = find( E~= DBC) ;
 [sapc s3] = size(EF3);  [sfusion  s4] = size(EF4) ; [sQ  s5] = size(EF5) ;
uEC1=unique(EC1'); uEC4=unique(EC4)
  if ~isempty( QPE)  QPE1 =  QPE( DC1 );     
QPE2=QPE( DC2 );QPE3 =QPE( DC3 );  QPE4 =QPE(DC4);QPE5=QPE(DC5);
end;  QeDATAU= []; eDATAU= [];   clear clas1 ;
eDATAUC=[];uEC= unique(EC);eDATAUCO=[];QPeDATAU=[];QPMeDATAU=[];
    for i= 1: length(uEC)       j = uEC(i) ;
        clasCTh=   ['EC' int2str( j) ] ;    clas1= eval(clasCTh) ;
        strhfA  =  ['EF' int2str( j) '('  int2str(1)  ':'  'end'  ',' ':' ')'] ;
        FCEh{i}= eval( strhfA) ;
 eDATAU= [ eDATAU ; FCEh{i}];   ueFCE4{i}= unique( FCEh{i}(:,3) )
strhA= ['EC'  '('   'DC' int2str( j) '('  int2str(1)  ':'  'end'  ')'  ')'] ;
FCEhC{i}= eval( strhA) ;
eDATAUCO= [ eDATAUCO ; FCEhC{i}']; ueFCEhC{i}=unique( FCEhC{i} )
 strC =  ['EF' int2str( j) 'C(' int2str( 1) ':' 'end'  ')'] ; FCEC4{i}= eval( strC) ; 
eDATAUC= [ eDATAUC ; FCEC4{i}'];   ueFCE4C{i}=    unique( FCEC4{i}) ;
strq =['QE' int2str( j) '(' int2str( 1) ':' 'end' ',' ':' ')'] ;   qVCQ{i}= eval( strq) ;
 QeDATAU= [QeDATAU ; qVCQ{i}];
 if ~isempty( QPE),   strq =  ['QPE' int2str( j) '(' int2str( 1) ':' 'end' ',' ':' ')'] ;  
qVCQ{i}= eval( strq) ;  QPeDATAU= [QPeDATAU ; qVCQ{i}];
end; end ; end ; if  ( snorme  && svpc  && sapc  &  sfusion && sQ )  ,
         TF5 = [ snorme svpc sapc sfusion sQ ]  ; [MF5   IF5 ]= min( TF5);
         TRe5 =   fix(4*MF5 /5) ; TRe5c =   ceil(4*MF5 /5) ;
         eTEST5 = [ EF1( TRe5+1: MF5 , : ) ; EF2(TRe5+1: MF5 , :) ; ...
EF3(TRe5+1: MF5 , :); EF4(TRe5+1: MF5 , :);  EF5(TRe5+1: MF5 , :); ] ;
         eTEST5CO= [ EF1(TRe5+1: MF5 ,3 ) ; EF2(TRe5+1: MF5 ,3) ;...
 EF3(TRe5+1: MF5 ,3); EF4(TRe5+1: MF5 ,3);  EF5(TRe5+1: MF5 ,3); ];
         eTEST5C= [ EC1(TRe5+1: MF5  )' ; EC2(TRe5+1: MF5 )' ;...
  EC3(TRe5+1: MF5  )'; EC4(TRe5+1: MF5  )';  EC5(TRe5+1: MF5  )'; ];
         QeTEST5 = [ QE1( TRe5+1: MF5 , : ) ; QE2(TRe5+1: MF5 , :) ; ...
QE3(TRe5+1: MF5 , :); QE4(TRe5+1: MF5 , :);  QE5(TRe5+1: MF5 , :); ] ;
 if  ~TRe5 , TRe5 = TRe5c ; end;
eTRAIN5  =  [  EF1(1:  TRe5  , : ) ; EF2(1: TRe5 , :) ;  EF3(1: TRe5 , :); ...
             EF4(1: TRe5 , :); EF5(1: TRe5 , :);  ]  ;
 QeTRAIN5 = [ QE1(1:  TRe5 , : ) ;  QE2(1: TRe5 , :) ;  QE3(1: TRe5 , :); ...
     QE4(1: TRe5 , :); QE5(1: TRe5 , :); ]  ;
         ueTRAIN5= unique(eTRAIN5(: ,3)' )
 eTRAIN5C = [EC1(1:TRe5  )' ; EC2(1: TRe5 )' ; EC3(1: TRe5 )'; ...
   EC4(1: TRe5 )' ; EC5(1: TRe5)' ; ]  ; 
      eTRAIN5CO  = [EF1(1: TRe5 , 3 ) ; EF2(1: TRe5 ,3) ;
          EF3(1: TRe5 , 3); EF4(1: TRe5 ,3); EF5(1: TRe5 , 3);  ]  ;
  QeDATA5 = [ QE1( 1: MF5 , : ) ; QE2(1: MF5 , :) ; ...
      QE3(1: MF5 , :); QE4(1: MF5 , :);  QE5(1: MF5 , :); ]  ;
  eDATA5  = [  EF1(1:  MF5  , : ) ; EF2(1: MF5 , :) ;  ...
      EF3(1: MF5 , :); EF4(1: MF5 , :); EF5(1: MF5 , :);  ]  ;
  eDATA5CM  = [EF1(1: MF5 , 3 ) ; EF2(1: MF5 ,3) ;  ...
      EF3(1: MF5 , 3); EF4(1: MF5 ,3); EF5(1: MF5 , 3);  ]  ;
eDATA5C  = [EC1(1: MF5)' ; EC2(1: MF5)' ;  EC3(1: MF5)'; ...
EC4(1: MF5)'; EC5(1: MF5)'; ]  ;  ueDATA5C = unique(eDATA5C' )
  ueDATA5CM = unique(eDATA5CM' )
 end;  end; if  ( snorme  && svpc  && sapc  &&  sfusion  )  ,
 T4 = [ snorme svpc sapc sfusion]; [MF4   I4 ]= min(T4);QPeDATA4O=[ ];
eDATA4O  = [  EF1(1:  MF4  , : ) ; EF2(1: MF4 , :) ; ...
    EF3(1: MF4, :); EF4(1: MF4 , :);] ;
QeDATA4O = [QE1(1:  MF4 , : ) ;  QE2(1:  MF4 , :);...
QE3(1: MF4, :); QE4(1: MF4 , :);] ;
if ~isempty(QPE), QPeDATA4O  = [QPE1(1: MF4,: ); QPE2(1:MF4 ,:) ;  ...
      QPE3(1: MF4 , :); QPE4(1: MF4 , :);  ] ;
end; eDATA4CM = [EF1(1: MF4 , 3 ) ; EF2(1: MF4 ,3) ; ...
     EF3(1: MF4 , 3); EF4(1: MF4 ,3); ] ;
eDATA4CO  = [EC1(1: MF4)' ; EC2(1: MF4)' ; ...
    EC3(1: MF4)'; EC4(1: MF4)';]  ;
if isequal( v,'2018b')
EF1R = randi(LQV1,MF4,1,'uint32');   EF2R = randi(LQV2,  MF4,  1 ,  'uint32' )   ;
EF3R = randi(LQE3,  MF4,  1 , 'uint32' )   ; EF4R = randi(LQE4 , MF4,  1 ,'uint32' ) ;
else EF1R = randint(  MF4,  1,[1, LQV1 ] ) ; EF2R = randint(   MF4,  1 , [1, LQV2  ]) ;
    EF3R = randint( MF4,  1 ,[1, LQE3  ]   ); EF4R = randint( MF4,  1 , [1, LQE4] )  ;
    end; 
eDATA4CR=[EC1(EF1R)' ; EC2(EF2R)' ;EC3(EF3R)'; EC4(EF4R)'; ] ;
   eDATA4R= [  EF1(EF1R, : ) ; EF2(EF2R , :) ; ...
       EF3(EF3R , :); EF4(EF4R, :);  ] ;
  QeDATA4R= [  QE1(EF1R, : ) ;QE2(EF2R, :) ; ...
    QE3(EF3R, :); QE4(EF4R , :);  ] ;
if ~isempty( QPE),QPeDATA4R  = [QPE1(EF1R, : ) ; QPE2(EF2R , :) ;...
QPE3(EF3R, :); QPE4(EF4R , :); ] ;
     end; [ r  c1 ] =   size(eDATA4O) ;
         TRe4 =   fix(4*MF4/5) ; ueDATA4C = unique(eDATA4CO' )
TRe4c =   ceil(4*MF4/5) ; ueDATA4CM = unique(eDATA4CM' )
  eTEST4 = [ EF1( TRe4+1: MF4 , : ) ; EF2(TRe4+1: MF4 , :) ;...
      EF3(TRe4+1: MF4, :);EF4(TRe4+1: MF4 , :); ]  ;
 QeTEST4 = [ QE1( TRe4+1: MF4 , : ) ; QE2(TRe4+1: MF4 , :) ; ...
     QE3(TRe4+1: MF4 , :); QE4(TRe4+1: MF4 , :);  ]  ;
eTEST4C = [ EC1( TRe4+1: MF4)' ; EC2(TRe4+1: MF4)' ; ... 
 EC3(TRe4+1: MF4)';EC4(TRe4+1: MF4)';   ]  ;
 if  ~TRe4,    TRe4= TRe4c; end; ueTEST4C = unique(eTEST4C')
eTRAIN4= [ EF1(1:  TRe4  , : ) ; EF2(1:  TRe4 , :) ;  ...
   EF3(1: TRe4 , :); EF4(1: TRe4 , :); ];
 eTRAIN4C = [ EC1(1:  TRe4   )' ; EC2(1:  TRe4  )' ; ...
EC3(1: TRe4  )'; EC4(1: TRe4  )';]  ;
QeTRAIN4= [ QE1(1:  TRe4 , : );QE2(1: TRe4, :) ; ...
    QE3(1: TRe4, :); QE4(1: TRe4, :);] ;
        ueTRAIN4C =  unique(eTRAIN4C ) ; eDATA4U= [];  clear clas1 ;
        eDATA4UC= []; ueTRAIN4 = unique(eTRAIN4( :    , 3 )')
        eTEST4U =  []; eTEST4UC =  [];eTEST4UCO=[]; QeTRAIN4U= [];
        QeTEST4U =  [];  eTRAIN4U= [];   eTRAIN4UC= [];
  QeDATA4U = []; clear clas1 ; eDATA4UCO= []; QPeDATA4U = [];
  for i= 1: 4         j= (i) ;
      clasCT= ['DC' int2str( j) ] ;  clas1= eval(clasCT) ; ;
M4(i)=  length(clas1') ;  etr4u(i) =   fix(4*M4(i)/5) ; MAu(i) = etr4u(i) ;
      if M4(i) , strhfA  =  ['EF' int2str( j) '('  int2str(1)  ':'  'end'  ',' ':' ')'] ;
FCEh{i}= eval( strhfA) ;
eDATA4U= [ eDATA4U ; FCEh{i}];  
 ueFCE4{i}=    unique( FCEh{i}(:,3)   )
strhA =  ['EC'  '(' 'DC' int2str( j) '('  int2str(1)  ':'  'end'   ')'  ')'] ;
FCEhC{i}= eval( strhA) ;
          eDATA4UCO= [ eDATA4UCO ; FCEhC{i}'];
          ueFCEhC{i}=    unique( FCEhC{i})
strC =  ['EF' int2str( j) 'C(' int2str( 1) ':' 'end'  ')'] ; FCEC4{i}= eval( strC) ;
          eDATA4UC= [ eDATA4UC ; FCEC4{i}'];     
          ueFCE4C{i}=    unique( FCEC4{i}) ;
strq =  ['QE' int2str( j) '(' int2str( 1) ':' 'end' ',' ':' ')'] ;qVCQ{i}= eval( strq) ;
          QeDATA4U= [QeDATA4U ; qVCQ{i}];
 if ~isempty( QPE), strqp = ['QPE' int2str( j) '(' int2str( 1) ':' 'end' ',' ':' ')'] ;  
     pVCQ{i}= eval( strqp) ;  QPeDATA4U= [QPeDATA4U ; pVCQ{i}]; 
end;   fprintf('e 1260 i =%d   j= %d  LR %d LC %d \n', i , j ,MAu(i), M4(i) ) ;
end;  end; clear clas1 ;
  for i= 1: 4       j = UN(i) ;
      clasCT=   ['EC' int2str( j) ] ;  clas1= eval(clasCT) ;
M4(i)=  length(clas1') ;  etr4u(i) =   fix(4*M4(i)/5) ; MAu(i) = etr4u(i) ;
if MAu(i),strhfA  =['EF' int2str( j) '(' int2str(1)  ':' int2str(MAu(i))  ',' ':' ')'] ;
 FCEh{i}= eval( strhfA) ;  eTRAIN4U= [ eTRAIN4U ; FCEh{i}] ;
 [ uLL{i} ] = unique ( FCEh{i}(:,3 ) )
  strhfq  =  ['QE' int2str( j) '('  int2str(1)  ':' int2str(MAu(i))  ',' ':' ')'] ;
 qFCEh{i}= eval( strhfq) ;  QeTRAIN4U= [QeTRAIN4U ; qFCEh{i}];
strhA =['EC'  '(' 'DC' int2str( j) '('  int2str(1)  ':' int2str(MAu(i))   ')'  ')'] ;
          FCEhC{i}= eval( strhA) ;  uFCEhC{i}=unique(FCEhC{i})
eTRAIN4UC= [ eTRAIN4UC ; FCEhC{i}'] ; ueT4UC{i}=unique(FCEhC{i} )
 strHF =  ['EF' int2str( j) '(' int2str(etr4u(i)+1) ':' 'end' ',' ':' ')'] ;    
          FCEht{i}= eval( strHF) ;
          eTEST4U =  [ eTEST4U ; FCEht{i}] ;
          strq =  ['QE' int2str( j) '(' int2str(etr4u(i)+1) ':' 'end' ',' ':' ')'] ;   
          qFCEht{i}= eval( strq) ;
          QeTEST4U =  [ QeTEST4U ; qFCEht{i}] ;
          strC =  ['EC' int2str( j) '(' int2str(etr4u(i)+1) ':' 'end'  ')'] ;
          FCEC4{i}= eval( strC) ;
          eTEST4UC= [ eTEST4UC;   FCEC4{i}'] ; 
          ueTt4UC{i}= unique( FCEC4{i} )
          strC =  ['ECO' int2str( j) '(' int2str(etr4u(i)+1) ':' 'end'  ')'] ;
          FCECO4{i}= eval( strC) ;
          eTEST4UCO= [ eTEST4UCO ; FCECO4{i}] ;
 fprintf(' e 1246  i =%d j= %d LR %d LC %d \n', i , j ,MAu(i), M4(i) ) ;
 end; end ;  end; if  ( snorme  && svpc  && sapc  )  ,
 T3 = [ snorme svpc sapc ] ;  [ MF3   I3 ]= min( T3) ; 
e3  = [  EF1 ;   EF2 ;  EF3;] ;
eDATA3 = [  EF1(1:  MF3  , : ) ;   EF2(1 :  MF3 , :) ;  EF3(1: MF3 , :); ] ;
QeDATA3  = [QE1(1: MF3  , : ) ; QE2(1:  MF3 , :) ; ...
QE3(1: MF3 , :);  ] ;
TRe3 =   fix(4*MF3/5) ; TRe3c =   ceil(4*MF3/5) ;
eTEST3 =[ EF1( TRe3+1: MF3, : ) ; EF2(TRe3+1: MF3 , :) ;  ...
   EF3(TRe3+1: MF3 , :);] ;
QeTEST3= [ QE1( TRe3+1: MF3,: ) ; QE2(TRe3+1: MF3, :) ;  ...
   QE3(TRe3+1: MF3, :); ];
eTEST3C = [ EC1(TRe3+1: MF3 )' ; EC2(TRe3+1: MF3 )' ;  ...
 EC3(TRe3+1: MF3)'; ] ;
QeTRAIN3  =[ QE1(1: TRe3 , : ) ; QE2(1: TRe3 , :) ;  ...
QE3(1: TRe3 , :);    ]  ;
eTRAIN3 = [ EF1(1:  TRe3  , : ) ; EF2(1:  TRe3, :) ;  EF3(1: TRe3 , :);  ]  ;
eTRAIN3C = [ EC1(1:  TRe3    )' ; EC2(1:  TRe3  )' ;  EC3(1: TRe3 )';  ]  ;
end ; if 1 , clearvars  G*  -except GRL  ;
clearvars pVCQ *SMOTE*  ID  KI KIR   ABCD ABCDEF AP  CCB1 Z4 ;  
 clearvars  -regexp ^D|^G  -except FEAT  FS1  DBUG  FS4 FS13 DISPe ;
clearvars  -regexp ^D|^H -except  FILEQRS DISPe DBUG FS1  FS4    ;  
clear kmdbel*  DC* ; clear('-regexp', '^QV');clear CQ1  CQC JF4  QF1  ; 
clearvars    AQCDE*   CAC    e3 f  f3 JF4  Nc   QE1  Z4  DA DQ NUM ;
clear CABCDEF CBB1  g3   N IN2 M2 UZ zX X7 XNAN     cent  error  ;
clearvars  E  QE* G* QH*   ;    clearvars  QH -except AX208  ;
    fprintf(' e-g 1250   LQE3=%d  LQE5= %d\n', LQE3 , LQE5 );  
 fprintf('d 1250 =%d  LQD5= %d\n', LHC ,LHC5  );%  dbstop 1269; 
 clear  EA  DF*  EQ FC*   FF* QgDATA5U QfDATA5U  QfDATA4U   ;
clearvars  NANAA    DC* DQ*    e3 f  f3 JF4  Nc   NANAA   Z4   ; 
clear Adata2 Adata3 ;  clear  AX*  -except AX108 AQ108 ; 
  clearvars    CT*   ABCD ABCDEF AP  CCB1 Z4  QV*   ; 
 clear  Am* CO*  clas1* pmaxrpl1 pble1 norm ls1 in  error  ID  KI KIR ;  ... 
 clear v*  y*   kmdbel*    VCQ*   CAC    CQ1   CQC  QF*  QD* ;
clear   QD1 CABCDEF CBB1  g3   N IN2 M2  zX X7 XNAN cent  ;
fprintf( ' p1 1290 Expt 1  PW =%d  nancol= %d\n', PWh , nancol );
clearvars  QD*  G*  QH*   QeDATA3   QH -except AX208  ;
  un41288= unique(hTRAINUC ) ; L= size(hDATAU,1 ) ;
for i=1: un41288    unp1290{i,:} = find(hTRAINUC == (i) );
 lunc1510(i)  = length(unp1290{i} ) ; 
 end; if ~exist('Adata1','var') , clear  y* QhTEST124 ;
clearvars  QhTRAIN5U  QhTRAIN4U ;  clearvars  QhTRAIN124 ; ;
clearvars  QhTRAIN3U QhTEST5U     hDATA hDATAC  QhTRAIN3*   ;   
end; end; end;  if 10, if isequal( BI,  'INTRA' ), 
   QPTRAIN41 =  QPhTRAINU;   QTRAIN41 = QhTRAINU ; 
TRAIN41 = hTRAINU;TRAIN41C = hTRAINUC; 
TRAIN41d = 'hTRAINU 1300'; TEST41d = 'hTESTU 1264' ;  
 QTEST41 =  QhTESTU; QPTEST41 =  QPhTESTU;  
TEST41 = hTESTU;  TEST41C=hTESTUC ; 
   elseif    isequal ( BAL, 'U' ) &  isequal ( BI ,'INTER' )...
 && exist('hTRAIN4U','var')   && exist('eTRAIN4U','var') &   BREV     
 TRAIN41d = 'hDATA4U 1306 ' ; TEST41d = 'eDATA4U 1303  ' ;
QTRAIN41=QhDATA4U ; TRAIN41=   hDATA4U ;TRAIN41C= hDATA4UC;
QTEST41 = QeDATA4U ; TEST41 =  eDATA4U ; TEST41C =  eDATA4UC ;   
end; if   isequal ( BAL, 'U' ) &  isequal ( BI , 'INTER') ...
 && exist('hTRAIN4U','var') && exist('eTRAIN4U','var') && ~BREV     
        TRAIN41d = 'eDATA4U 1260 ' ;TEST41d = 'hDATA4U 1272' ;
QTRAIN41 =QeDATA4U;  TRAIN41 = eDATA4U;QPTRAIN41=QPeDATA4U;
TRAIN41C = eDATA4UC;  TEST41C=   hDATA4UC ;%dbstop 1262;
QTEST41 =QhDATA4U;  TEST41 = hDATA4U; QPTEST41 = QPhDATA4U;
elseif  isequal(BI ,'INTER')&exist('hDATA4U','var') &&exist('eTRAIN3U','var'),
% QTRAIN41 =QhTRAINU;  TRAIN41 =hTRAINU; TRAIN41C=hTRAINUC;
% TEST41=  hTESTU ;  QTEST41 =  QhTESTU ; TEST41C=hTESTUC ;
QTRAIN41 = QeDATA3U;   QPTRAIN41 =QPeDATA3U;  
   TRAIN41d = 'eDATA4U 1305 ' ; TEST41d = 'hTESTU 1354' ; 
   TRAIN41 = eDATA3U;   TRAIN41C = eDATA3UC; 
TEST41 =hDATA4U;  TEST41C=hDATA4UC ;
    QTEST41 =  QhDATA4U; QPTEST41 =  QPhDATA4U;
elseif isequal ( BAL, 'B' ) && exist('hDATA4U','var') && exist('eDATA4','var'), 
    TRAIN41d = 'eDATA4 1290  ' ;  TEST41d = 'hDATA4U 1456 ' ;  
QTRAIN41 =QeDATA4 ;  TRAIN41 = eDATA4 ; TRAIN41C = eDATA4C;
% QTEST41 =  QhDATA4 ;  TEST41 =  hDATA4 ; TEST41C=   hDATA4C ;
% TEST41 =eTEST4U;  QTEST41 =  QeTEST4U;  TEST41C=eTEST4UC ;
QTEST41 =  QhDATA4U;  TEST41 =  hDATA4U; TEST41C=hDATA4UC ;
   QPTRAIN41 =    QPeDATA4;  QPTEST41 =  QPhDATA4U;
elseif   exist('hDATA3U','var')  && BREV
TRAIN41d = 'hDATA4U 1460 ' ;TEST41d = 'eDATA3U 1340' ;
TEST41 =  eDATAU ;  TEST41C =   eDATAUC ;QTEST41 =  QeDATAU ;
TRAIN41=hDATA3U; TRAIN41C=  hDATA3UC ;QTRAIN41=QhDATA3U ;        
elseif exist('hDATAU','var')  && exist('eDATAU','var')  &&~BREV 
TRAIN41d = 'eDATAU 1420 ' ;TEST41d = 'hDATAU 1270' ; 
TRAIN41 = eDATAU ; TRAIN41C =   eDATAUC ;
QTRAIN41= QeDATAU ;    QPTRAIN41=   QPeDATAU ;   
TEST41 =  hDATAU  ;     TEST41C =  hDATAUC ; 
QTEST41 =  QhDATAU ; QPTEST41 =  QPhDATAU ;
elseif     exist('hTRAIN124','var')  && exist('QhTRAIN124','var') 
    uni124C=unique( hTRAIN124C' ) ;
for i=   1  : length( uni124C)  j =  uni124C(i) ;  ...
       unp1527{i,:}   = find(hTRAIN124C == (j) );
        lunp3(i)  = length(unp1527{i} ) ;   end;
   TRAIN41d = 'hTRAIN124 1471 ' ;  TEST41d = 'hTEST124 1471  ' ;
      QTRAIN41=QhTRAIN124 ;  TRAIN41=   hTRAIN124 ;
      TRAIN41C= hTRAIN124C;     TEST41 =  hTEST124 ;  
     QTEST41 =  QhTEST124 ;    TEST41C =  hTEST124C ;
elseif  exist('hTRAIN3','var') && exist('QhTRAIN3','var')...
&& ~isempty(hTRAIN3)  && ...
 ( size(hTRAIN3,1) >length(unique(hTRAIN3C ) )) ,  
K2=  length(unique(hTRAIN3C) ) ;TRAIN41C= hTRAIN3C;
TRAIN41d = 'hTRAIN3 1410' ; TEST41d = 'hTEST4 1491 ' ;
TRAIN41=   hTRAIN3 ; QTRAIN41=   QhTRAIN3 ; 
TEST41 =  hTEST3 ;  QTEST41 =QhTEST3 ; TEST41C =  hTEST3C ;
    elseif      exist('hTRAIN3U','var') ,   
 K3= length(unique(hTRAIN3UC ) ) ;   un41298= unique(hTRAIN3UC )  ;
  for i=1: K3   unp2{i,:}   = find(hTRAIN3UC == un41298(i) );
 lunc1530(i)  = length(unp2{i} ) ;  
end;TRAIN41C = hTRAINUC ;
QPTRAIN41 =QPhTRAINU ; QPTEST41 =QPhTESTU ;
   QTRAIN41 = QhTRAINU ;   TRAIN41=   hTRAINU ; 
     TRAIN41d = 'hTRAINU 1314' ; QhTRAINU = 'hTEST4 1485' ;
 TEST41 =  hTESTU ;   TEST41C =  hTESTUC ; QTEST41 =  QhTESTU ;
   elseif    exist('hDATA4U','var') ,       TRAIN41d = 'eDATA4U 1405 ' ;
% TEST41 =  hTESTU ;  QTEST41 =  QhTESTU ; TEST41C= hTESTUC ;
QTRAIN41 =    QeDATA4U;  TRAIN41 = eDATA4U;
QTEST41 =QhDATA4U;  TEST41 =  hDATA4U;  TEST41C=hDATA4UC ;
 TRAIN41C = eDATA4UC;    TEST41d = 'hTESTU 3260 ' ;
elseif  BREV    TRAIN41d = 'hDATAU 1334 ' ;TEST41d = 'eDATAU 334 ' ;
QTRAIN41 = QhDATAU  ;  TRAIN41 = hDATAU; TRAIN41C = hDATAUC;
QTEST41 =  QeDATAU;  TEST41 =  eDATAU;  TEST41C=   eDATAUC ;
elseif  ~BREV,TRAIN41d = 'eDATAU 1344 ' ; TEST41d = 'hDATAU 1504' ;
 QTRAIN41 =QeDATAU;  TRAIN41 = eDATAU; TRAIN41C = eDATAUC;
QTEST41 =  QhDATAU;  TEST41 =  hDATAU;  TEST41C=   hDATAUC ;
QPTRAIN41 =    QPeDATAU;  QPTEST41 =  QPhDATAU;   
else     TRAIN41d = 'hTRAINU 1325 ' ;   TEST41d = 'hTESTU1465 ' ; 
TRAIN41= eTRAINU ;   TRAIN41C= eTRAINUC; QTRAIN41 =QeTRAINU;
TEST41 =  hTESTU ;  TEST41C =  hTESTUC ; QTEST41 = QhTESTU; 
 end;  if     exist('hDATA4U','var') && exist('eDATA4O','var') ,
if  BREV, if BRAN,  
 TRAIN42d = 'hDATA4R1372' ;TEST42d = 'eDAT1470';
QTRAIN42 = QhDATA4R ;TRAIN42 = hDATA4R; TRAIN42C =hDATA4CR;
QTEST42 =  QeDATA4R ;  TEST42 =eDATA4R ;  TEST42C=eDATA4CR ;
    else        TRAIN42d = 'hDATA4 1392 ' ;  TEST42d = 'eDATA4 2854 ' ;
QTRAIN42= QhDATA4O ; TRAIN42 =hDATA4O; TRAIN42C= hDATA4CR;
QTEST42 =  QeDATA4O ;  TEST42 =  eDATA4O;TEST42C= eDATA4CO ;
 end;     elseif  ~BREV  if  BRAN
     TRAIN42d = 'eDATA4R 2872 ' ;  TEST42d = 'hDATA4U 1792 ' ;
QTRAIN42= QeDATA4R ;  TRAIN42 = eDATA4R ; 
TRAIN42C = eDATA4CR;TEST42C= hDATA4CR ;
QTEST42 =  QhDATA4R ;  TEST42 =  hDATA4R;  
 else   TRAIN42d = 'eDATA4 3296 ' ; TEST42d = 'hDATA4U 1462 ' ;
QTRAIN42 = QeDATA4O ;  TRAIN42 = eDATA4O;
TRAIN42C = eDATA4CO;TEST42C=hDATA4CO ;
QTEST42 =  QhDATA4O ;  TEST42 =  hDATA4O ;  
 end; end; elseif   exist('hDATA3','var') && exist('eDATA4','var') 
TRAIN42d = 'eDATA4 2862 ' ; TEST42d = 'hDATA4U 2862 ' ;
QTRAIN42 = QeDATA4O ;  TRAIN42 = eDATA4O ; 
TRAIN42C = eDATA4CR;
QTRAIN42 = QeDATA4R ;  TRAIN42 = eDATA4R; 
QTEST42 =  QhDATA3 ;  TEST42 =  hDATA3 ;TEST42C= hDATA3C;
 elseif   exist('QeDATAU','var')      
TRAIN42d = 'eDATA4 2862 ' ; TEST42d = 'hDATA4U 2862 ' ;
QTRAIN42 =QeDATAU;  TRAIN42 = eDATAU; 
TRAIN42C = eDATAUC;
QTEST42 = QhDATAU;  TEST42 =  hDATAU;  TEST42C= hDATAUC ;
QPTRAIN42 =    QPeDATAU;  QPTEST42 =  QPhDATAU;   
 end;  if   exist('Adata1','var') &&  exist('hTRAIN5','var')   ...
  &&  exist('QeDATAU','var')  &&   ...
 ( size(hTRAIN5,1) >length(unique(hTRAIN5C ) ) ),
 QTRAIN51 =  QeDATAU ; TRAIN51= eDATAU; TRAIN51C= eDATAUC;
QTEST51 = QhDATAU ;  TEST51 = hDATAU ;
TEST51C = hDATAUC ;TRAIN51d  = 'QeDATAU' ;
 elseif   exist('Adata1','var') &&  exist('fTRAIN5','var'), 
TRAIN51d = ['fTRAIN5 '];
QTRAIN51 =  QfTRAIN5 ; TRAIN51= fTRAIN5 ;  TRAIN51C= fTRAIN5C;
QTEST51 = QfTEST5 ;      TEST51 = fTEST5 ;  TEST51C = fTEST5C ;
elseif   exist('eDATAU','var')  
TRAIN51d  = 'eTRAIN5 1546 ' ;  TEST51d  = ' eTEST5 1874 ' ;
    QTRAIN51 = QeDATAU ; TRAIN51= eDATAU ; TRAIN51C= eDATAUC;
QTEST51 = QhTESTU ; TEST51 = hTESTU ;TEST51C = hTESTUC ;
% QTEST52 = QgDATA5 ; TEST52 = gDATA5 ; %TTEST51d = ['TRAIN5'] ;...
  %  TEST52C = gDATA5C ;   TEST52d  = ['QeTRAIN5'] ;
 %QTEST51 = QgDATA5 ; TEST51= gDATA5 ;%TEST51C = gDATA5C ;
end; if 1,   [  ALTRAIN410 colu33]= size(TRAIN41 ) ;
 DD= ~exist('Adata1','var')
clearvars  FQ*  QPH* QF QD* QH* y*  yDATA yDATAC   DeucD1 ;
    clear  QfDATA4U   QfDATA5U QgDATA5U    AB1 ABCDE Y* TM* ;
hclass2010=[];  htype2010=[];  TRAIN51O= [];TRAIN51OC= [];  
    DD =1 ;   Accuracy1 = 45 ;  FS4=4; FS6=6;  % clear g* -except g  ;    
clear  hTRAIN3U*    AP AQ  hDATA3U*  PQRST*  Qg* eTEST4U*;
    clear     QhTEST4U  QeTRAIN4U*      eDATA3*   eTRAIN4U*;
    clear   QhDATA3 QhTEST3*  QhTRAIN3     bfnan     hDATA3U* ;
  if  1 || ~exist('Adata1','var') ,  FE=32 ;  
   [ ALTEST410 colu33T]= size(TEST41  ) ;
  uK42=(unique(TRAIN41C ) ) ; L42fDATA4 = ( length(TRAIN41C) ) ;
    colu33min=   min( colu33 , colu33T ) ;  
end; if  BCLUST,zA = [   TEST41(  : , 1 : colu33min ) ];  zBC=[ TEST41C]; 
else   zA = [ TRAIN41(  :  , 1 :colu33min ) ; TEST41( : , 1 :colu33min ) ];
zBC=  [  TRAIN41C ; TEST41C  ]; 
  end;  [ ALzA coluE] = size(zA);   zB= zA;  %  dbstop 3247;
   for i =   4 :  coluE  MeanzA{i} = ( mean (zA( : , i) ) );  
 %zB( : , i) = zA( : , i   )/MeanzA{ i };
[MINzB{i} MINzBI{i}] =(min(zB( : , i) )); [ MAXzB{i} MAXzBI{i}]=(max(zB(:,i)));
fprintf('h 1450  f{%d} %sMean = %.2f  MIN =%.2f   MAX =%.2f \n', ...
  i, FEAT{i},  MeanzA{i},   MINzB{i}, MAXzB{i} );%(  8 features  27 to 34  )
 end; if  VER,     for j =   1 : 8   % 19 :26 
   zB( : , 31+j ) = zA( : , j  +23 ) / MeanzA{j +23};    
 [MINzB{31+j} MINzBI{31+j}] =  ( min (zB( : ,31+ j) ) );
 [ MAXzB{j}   MAXzBI{j} ]  =   ( max (zB( : ,31+ j) ) );
 fprintf(' 1420  p{%d} %s   MeanzA= %.2f  MINzB=%.2f   MAXzB=%.2f\n', ...
   31+j , FEAT{31+j },  MeanzA{ j+23 },   MINzB{31+j }, MAXzB{31+j }   );
  end; elseif   ~VER  
  for j =  27 : 34   % 19 :26 
 if  10,     zB( : , j ) = zA( : , j - 8 ) / MeanzA{j - 8};    
else    zB( : , 24+j ) = zA( : , j - 8 ) ;    
end;  [MINzB{j} MINzBI{j}] =  ( min (zB( : , j) ) );
 [ MAXzB{j}   MAXzBI{j} ]  =   ( max (zB( : , j) ) );
 fprintf(' 1460  p{%d} %s   MeanzA= %.2f  MINzB=%.2f   MAXzB=%.2f\n', ...
   j , FEAT{j },  MeanzA{j-8 },   MINzB{j }, MAXzB{j }   );
 
 end; 
end;   if  BCLUST,    TEST41=  zB(  1 : end  , : )   ;
else TRAIN41=zB(1 :ALTRAIN410, : ); TEST41= zB(ALTRAIN410+1: end, : );
end;  end; end; if 1, clear zB;  zB =TEST41;  zBC=  [ TEST41C ]; 
  K3=   length(unique(zBC ) ) ; UN= unique(zBC )  ; % thesis only test data 
for i=1: K3 unp2210{i,:}=find(zBC==UN(i));lunp2210(i)=length(unp2210{i});end;
  YC1= find(zBC == 1); YF1= zB( YC1, FS1 :end); 
    YC2 = find(zBC == 2);   YF2=zB( YC2, FS1 :end); 
    YC3 = find(zBC == 3);  YF3= zB( YC3, FS1 :end);
    YC4=   find(zBC == 4); YF4= zB( YC4 , FS1 :end); 
    YC5 = find(zBC == 5); YF5= zB( YC5, FS1 :end);    zze2230c=[] ;
%hb5= figure('Name',' box','Position',[ 20  100  SCR(3)/2-50 SCR(4)/4-10]) ;
%,'labels',{'QRS','QTP','RPSTP','RRRA'}); %'QRS','QTP','RPSTP','RR/RA');
%for i=1:K3%EFCi=['YF' int2str(UN(i))]; box2= eval(EFCi);
%uab2{i}=unique(box2(:,3));
% subplot(1,K3,i); boxplot(box2(: , 13:end));  title(EFCi);%end;
for j =  4 : 34   fprintf('h 1480 feat{%d} %s\n', j , FEAT{j } ) ;    
 for i= 1: K3   
     EFCi=[ 'YF' int2str( UN(i) )];    box2= eval(EFCi) ;  
   [ MINbox2{ j, i } MINzBI{ j , i }] =  ( min (box2( : , j) ) ) ;
    [ MAXbox2{j , i }   MAXzBI{j , i } ]  = ( max (box2( : , j) ));  
 mdi18va2min(j, i) = MINzBI{ j , i } ;  
 mdi18va2max( j, i ) = MAXzBI{ j , i } ;
if 0, zze2230= [ j  i (box2( mdi18va2min(j, i ) ,1))  box2(mdi18va2min(j, i),2)  ...
MINbox2{j,i} MAXbox2{j,i} box2(mdi18va2max(j,i),2) (box2(mdi18va2max(j,i),1))];
zze2230c =   [  zze2230c ;  zze2230 ] ;
end; fprintf('h 1440 p{%d} %s    MINzB=%.2f   MAXzB=%.2f\n', ...
   i , FEAT{j },     MINbox2{ j,i }, MAXbox2{ j , i  }   );
 end;   mdi18va2minF(  j ) = MINzB{  j } ;  mdi18va2maxF( j ) = MAXzB{j} ;
end; if exist('TRAIN42', 'var' ), 
[ALTRAIN42 colu33]=size(TRAIN42); [ALTEST42 colu33T]=size(TEST42) ;   
fprintf(' 1490  norm  = %d M=%d   \n',  Accuracy1, M  );
uK42=(unique(TRAIN42C) ) ; L42fDATA4 = ( length(TRAIN42C) ) ;
 colu33min=  min( colu33 , colu33T ) ; 
zA2 = [  TRAIN42( :  , 1 :colu33min  ) ; TEST42( :  , 1 :colu33min ) ]; 
 [ ALzA2 coluE] = size(zA2);  zB2= zA2;
 for i =  FS4 :  coluE
 MeanzA{i} = ( mean (zA2( : , i) ) );  % zB( : , i) = zA( : , i   )/MeanzA{ i };
 [MINzB{i} MINzBI{i}]=min(zB2( : , i)); [MAXzB{i} MAXzBI{i} ]=max(zB2( :, i));
 
 fprintf('h 1450 {%d} %s  Mean = %.2f  MIN =%.2f   MAX =%.2f  \n', ...
  i, FEAT{i},  MeanzA{i},   MINzB{i}, MAXzB{i}   );
 end;   for j =  27 : 34    % 19 :26 (  8 features  27 to 34 
  if 10, zB2( : , j ) = zA2( : , j - 8) / MeanzA{j - 8};end; 
zC2( : , j ) = zA2( : , j -8 ) ; [MINzB{j} MINzBI{j}] = ( min(zB2( : , j) ));
 [ MAXzB{j}   MAXzBI{j} ]  =   ( max (zB2( : , j) ) );
  fprintf('h 14506 FEAT{%d} %s= %.2f  MIN =%.2f   MAX =%.2f \n', ...
  j , FEAT{j },  MeanzA{j-8 },   MINzB{j }, MAXzB{j }   );
 end ; TRAIN42= zB2(1 : ALTRAIN42 , : )  ;   
       TEST42= zB2(ALTRAIN42+ 1 : end  , : ) ; clear zA ZB   zBC; 
end;  if  0,    B1=5; B2=5 ;  k=5 ; % for  k = B1 :  B2
 fprintf('1506 dbscan  Acc= %d M=%d %s\n', L42fDATA4, M, TEST41d );
[ classaf{ k} , typeaf{ k}  ] =  dbscan(TRAIN41( : , FS13  : 32)  , k, []) ;
uclassaf{k} =( unique(classaf{ k} )); fluclassa2212( k) =length( uclassaf{k});       
classaf5= classaf{ 5} ;typeaf5 = typeaf{ 5} ;
% [ classaf5, typeaf5  ] =  dbscan(TRAIN41( : , FS13  : 32) , 5, [] ) ;
uclassaf5 = ( unique(classaf5 ) ) ;  fluclassa2212( k ) =  length( uclassaf5) ;
utypeaf{ k} =  ( unique(typeaf{ k}) ) ; flutypea2212( k ) =length( utypeaf{ k} ) ;
fprintf(' 1506   k= %d %d %d \n', k ,  fluclassa2212( k ), flutypea2212( k )) ;
    typecf =  find ( typeaf{ B1} ~=  -1 ) ;
TRAIN41DB =TRAIN41(typecf,  :) ;   TRAIN41DBC = TRAIN41C(typecf) ;
    uTRAIN41DBC =  ( unique(TRAIN41DBC) ) ;
 fprintf('1462  k= %d %d %d \n', k ,  fluclassa2212( k ) , flutypea2212( k )) ;
end ; if  00 , TRAIN43DB = [];  TRAIN43DBC =  [];
    TEST43DB   = [];   TES =  [];   k=5 ;  
[ hclassTEST42 , htypeTT42 ] = dbscan(TEST41(: , FS13 : 32), 4, [] ) ;
    typeTEST42nem1 =find ( htypeTEST42 ~= -1 ) ;  
typecTEST42m1 =  find ( htypeTEST42 ==  -1 ) ;
TEST43DB =TEST41(typeTEST42nem1 ,  : ) ;
TES=TEST41C(typeTEST42nem1);uTES=unique(TES);    
%  [  crosstabu18  , chi2, p, label]=crosstab(classaf{ k} , fDATA5UC ) ;
   fprintf(' 1524  dbscan  TEST41= %d M=%d   \n', Accuracy1, M  );
  [class, type ] =  dbscan(TRAIN41( : , FS13  :32)  , 5, []   ) ;
 uclass = ( unique(class)) ; luclass =  length( uclass ) ; 
 utype = ( unique(type) ) ; lutype = length( utype )
  for i= 1: length( utype ) utypec{i} =    find ( utype(i)==type) ;  end;
  for i= 1: length( uclass ) uclassc{i} = find ( uclass(i)==class) ;  end;
 typecm1 =  find ( type ==  -1 ) ; typecm1c =  TRAIN41(typecm1, 3) ; 
 utypecm1c =( unique(typecm1c) ) ; 
  typecm1cm = TRAIN41C(typecm1) ; utypecm1cm =( unique(typecm1cm)) ; 
 utypecm1r =  TRAIN41(typecm1', 1) ;  typec = find ( type ~=  -1 ) ; 
TRAIN43DB =  TRAIN41(typec, :) ;   TRAIN43DBC =TRAIN41C(typec) ; 
Train43dbco=TRAIN41(typec, 3); uTRAIN43DBC=(unique(TRAIN43DBC));
end ; if  00 ,   k=5;  j=1;   dbs=1; J=10;    
%   for  j = dbs : J  %  for  k = B1:E   
[ classa51{ j }, typea51{ j } ] = dbscan(hTRAIN5U( : , FS13  :32)  , j, [] ) ;
uclassa51{j} =(unique(classa51{ j} )); luclassa51( j) =length( uclassa51{ j})
utypea51{ j} =( unique(typea51{ j}) ) ; lutypea51( j ) = length( utypea51{ j} )
fprintf('\n 16510 j= %d    %d %d \n', j ,  luclassa51( j ) , lutypea51( j ))  ;
typecr51 =    find ( typea51{ dbs} ~=  -1 ) ;  %end;
TRAIN51O=hTRAIN5U(typecr51, :); TRAIN51OC= hTRAIN5UC(typecr51); 
uTRAIN51OC =  ( unique(TRAIN51OC') )
un51674=unique(TRAIN51C );K5= length(un51674) ;
    [ NF NFC]  = size(QTRAIN41) ;
    fprintf(' Expt.1500   FS6= %d M=%d  K5%d \n', FS6 , MF5 ,K5 ); 
DBFILE=[ 'ADATA' da(1:2),da(4:6),da(10:11),da(13:14),da(16:17) '.mat'] ;
DBFILE  = fullfile( Pmit, DBFILE );  %save(DBFILE,   'hclass2010' ...
% , 'htype2010' ,  'typec' , 'TEST43DB' , 'TES' ,'Train43dbco');
end;  if ( BDA) ,   fprintf(' R-peak dbstop  1530;  \n'  ); 
TRAIN4 =  TRAIN41  ;TRAIN4C =  TRAIN41C ;
QTRAIN4=  QTRAIN41  ;  QPTRAIN4=  QPTRAIN41  ;  
TEST4=  TEST41; TEST4C=  TEST41C;clear    QTRAIN42   QTEST42  ;
QTEST4=  QTEST41  ; QPTEST4=  QPTEST41  ;   
TRAIN4d = 'TRAIN4 1705  ' ; TEST4d = 'TEST4 3475 ' ; 
 clear    QTRAIN41 TRAIN41 TRAIN41C  TEST41 QTEST41 TEST41C;
else TRAIN4C = TRAIN42C ;
    TRAIN4=TRAIN42; QTRAIN4=  QTRAIN42;  
TEST4= TEST42; QTEST4=  QTEST42 ; TEST4C=TEST42C;
TRAIN4d = 'TRAIN42 3468' ;clear    QTRAIN42    QTEST42  
clear   QTRAIN41  TRAIN41C  TEST41 QTEST41 TEST41C;
end ; if 10,  [ALTRAIN4   ] = size(TRAIN4 , 1  )   
 clear   Ind OL UZ   TEST41635*  decision* ;  
 clear  dist2  group hTEST3* zA zB  ; clear TRAIN51C;     
clear EC*  EF*  HC*  HF*   HA  QPM*  QPE*  train*  test*   zBC* ;  
fprintf('  dbstop 1550;%s   %s %d   \n', TRAIN41d ,TEST41d , ALTRAIN4);  
 if   size(TRAIN4, 2 ) == 50,   FILESTRAI= unique( TRAIN4(: , 35 )' ) ;end;   
if   size(TEST4 , 2  )== 50,     FILESTES =  unique( TEST4(: , 35 )' );end; 
FILESTRAIN=unique( TRAIN4(: , FILETR )' ); row1= TRAIN4(1, :   ) ;
FILESTE=  unique( TEST4(: ,  FILE )' );   FILESTEST =   Afile1test
FILES = [FILESTRAIN  FILESTEST] ; uTEST41CO=unique(TEST4( : , 3)') 
uTEST41CM =( unique(TEST4C') ); TRAIN4u= unique(TRAIN4( : , 3 )' )
clear   AX* ; %inF200= ~isempty(intersect(FILES, 200)) ;  
clearvars  PVCR*  QV* QH*  NUM ;clear MAX*   MIN* Mean*; 
k=0 ; TRAIN4_u1 =   [ ] ; kM = 0 ;TRAIN4_u1M =  [ ] ;  
k2= 0 ; TRAIN4_u2 =   [ ] ; kM2 = 0 ;TRAIN4_u2M =   [ ] ;  
 for i = uTEST41CO   k2 = k2+1 ;  
   TRAIN4_u  =  find (  TRAIN4( : , 3 ) ==  (i) ); 
TRAIN4_u2 =[TRAIN4_u2 ; TRAIN4_u] ;
TRAIN4_uc2{k2} =  find(TRAIN4( :,3 ) ==i) ;  
 end ;   TRAIN4_uS2  = unique   (   TRAIN4_u2'  ) ;
 LTRAIN4_uS2 =  ( length(TRAIN4_uS2) ); TRAIN4_uc2
  for i = uTEST41CM   kM2 = kM2 +1  ;
 TRAIN4_uM  =  find( TRAIN4C ==i )  ; 
 TRAIN4_u2M=[TRAIN4_u2M ; TRAIN4_uM] ;
TRAIN4_ucM2{kM2} =  find(TRAIN4C ==  (i)) ;  
 end ;   TRAIN4_ucM2  
TRAIN4_uSM2  = unique( TRAIN4_u2M'  ) ; 
 LTRAIN4_uS2 =  ( length(TRAIN4_uS2) )
 LTRAIN4_uSM2 = ( length(TRAIN4_uSM2) )
 [LTRAIN4 ] = size(TRAIN4,1 )
 end; end;  if 0, A1A = input(' 1 2,3 \n');
elseif 1, A1A = 3;  elseif  inF214 && ~BSVM,A1A=1; else  A1A =1;
end;
if  A1A== 3,  AENS='A1634' ; elseif   A1A == 2, AENS= 'B1631' ;
TRAIN4 = TRAIN4( TRAIN4_uSM2, : ) ;
TRAIN4C = TRAIN4C(  TRAIN4_uSM2) ;
  QPTRAIN4 =QPTRAIN4(TRAIN4_uSM2,:) ; 
QTRAIN4 = QTRAIN4(  TRAIN4_uSM2,:) ;
      [ALTRAIN40 NC ]= size(TRAIN4 )
 elseif  A1A == 1, AENS='C3121' ;  
 TRAIN4 =   TRAIN4( TRAIN4_uS2 , : )  ;
   QTRAIN4 =QTRAIN4(TRAIN4_uS2,:) ;
   QPTRAIN4 =  QPTRAIN4(TRAIN4_uS2,:) ;
  TRAIN4C =TRAIN4C( TRAIN4_uS2) ; [ALTRAIN40 NC ]=size(TRAIN4 )
 else   AENS=  'A1641' ;
 end; if 0, if  ( inF117 || inF228  || inF210 ...
|| inF233 || inF200   || inF231   || inF113   ||  inF123   ||  inF219  ... 
||  inF234   || inF232 ) % || inF213  || inF202 || inF222 || inF221 || inF105 
AENS='C3237' ; for i = uTEST41CO   k = k+1 ;
 TRAIN4_u= find (TRAIN4( : ,  3 ) ==  (i))  ; 
 TRAIN4_u1= [TRAIN4_u1 ; TRAIN4_u] ;
  TRAIN4_uc{k} =  find  (  TRAIN4( : ,  3 ) ==  (i)   )  ;
 end ;   TRAIN4_uS  = unique   (   TRAIN4_u1'  ) ;
TRAIN4=TRAIN4( TRAIN4_uS,: );QTRAIN4 =QTRAIN4(TRAIN4_uS,:) ;
TRAIN4C = TRAIN4C( TRAIN4_uS);[ALTRAIN40 NC ]=size(TRAIN4) ;
  fprintf(' 1575   FS6= %d M=%d   \n',   NC , ALTRAIN40 );
elseif  (  inF233   || inF200     ...
 || inF214  ||  inF219||  inF234  || inF202 ) || inF222  && 0 ...  %
%  %  || inF100 ||  inF105|| inF232 ||  inF105
AENS = 'B1632' ; for i = uTEST41CM   kM = kM +1  ;
 TRAIN4_uM  =  find  (  TRAIN4C ==  (i)   )  ; 
TRAIN4_u1M=   [  TRAIN4_u1M ; TRAIN4_uM   ] ;
 TRAIN4_ucM{kM} =  find(  TRAIN4C ==  (i)   )  ;
end ; TRAIN4_uSM  = unique   (   TRAIN4_u1M' ) ;
 TRAIN4 =   TRAIN4( TRAIN4_uSM , : )  ; 
QTRAIN4 =  QTRAIN4(  TRAIN4_uSM ,  :) ;
TRAIN4C =TRAIN4C(  TRAIN4_uSM); [ALTRAIN40 NC ]= size(TRAIN4);
 fprintf(' 1700   FS6= %d M=%d   \n', ALTRAIN40 , NC  );
else   AENS=  'A1672' ;        [ALTRAIN40   NC]= size(TRAIN4 )
  fprintf('  dbstop  1610 ;  FS6= %d M=%d   \n', ALTRAIN40  , NC  );  
 end; end ; if 1,   uTRAIN4O  = unique (   TRAIN4( : ,  3 )'   )
  ung4TRAIN41CR= unique(TRAIN4C') ; K2 =length( unique(TRAIN4C)) ;    
   if  length( uTEST41CM ) > length( ung4TRAIN41CR ), % break;
 end; %[ mdiclasstn1]= find(TEST41CR~= 1);TEST41CR(mdiclasstn1) =2;
    %    Lcell1   = find(TRAIN41CR ~=  1 );  TRAIN41CR (Lcell1 )  = 2;
   [NQD c38]= size( TEST4 ) ;  uTEST41C =  ( unique(TEST4C') ) ;
    for k =  uTEST41C      [ mdiCLASST2290{k}  ]= find (TEST4C  == k  ) ;
        [ wwtt3070(k)   wwc(k)] = size( mdiCLASST2290{k}  ) ;
    end;  wwtt = wwtt3070/NQD  ; wwttsize=   size( wwtt3070 , 2)  ;
    [ ALTRAIN41R2 ALTRAIN41R2NC]= size(TRAIN4)  ;
 for i = ung4TRAIN41CR  Lcell1352{i}   = find(TRAIN4C ==  (i) );
            [row2037(i) col2037(i) ] =  size(Lcell1352{i} ) ;        
 end; wwtr = row2037/ALTRAIN41R2  ; wwtrsize=   size( wwtr , 2); 
        wwrrsize=wwtrsize; wwrr =wwtr ;  svm2435=[ ];
if  wwrrsize==  2,  libsvm_weights=...
        [svm2435  '  -w1 ' num2str(wwrr(1))   '  -w2 '  num2str(wwrr(2))];
elseif  wwrrsize== 3 ,
            libsvm_weights=[svm2435 '  -w1 '   num2str(wwrr(1))  ...
 '   -w2 '  num2str(wwrr(2) ) ' -w3 ' num2str(wwrr(3) )  ]  ;
        elseif wwrrsize==  4 ,  libsvm_weights=...
  [svm2435 '   -w1 '   num2str(wwrr(1)) ...
'  -w2 '  num2str(wwrr(2) ) ' -w3 ' num2str(wwrr(3) ) ' -w4 ' num2str(wwrr(4))];
 elseif wwrrsize==  5 ,libsvm_weights=...
 [svm2435 '   -w1 '   num2str(wwrr(1))   ' -w2 '  num2str(wwrr(2) ) ...
 ' -w3 ' num2str(wwrr(3) ) ' -w4 ' num2str(wwrr(4) ) ' -w5 ' num2str(wwrr(5) )] ;
elseif wwrrsize==1,  libsvm_weights=[ svm2435 ' -w1 '   num2str(wwrr(1) )] ;
 end;  clear xts   pvc Adata1 CL60 ; 
 clear MAX*  MIN* Mean*  oldpath    Y*    Qh* Qe*   eT* hT*  box2;
clear  A3 A1C AFIR Lcell1352   QhDATA4U   hDATA4U ;  clear  xbl1 xbl2 ; 
clear cl* eDATA*  hDATA*  hTRAIN4U    QhTRAIN3U QTEST51  ...
      QhDATA3U  TEST51 QTRAIN51  QhTRAIN4U   ;
clear L md* MIN* Mean* MAX*  ECO*    hDATAU QhDATAU       ;
clear EC*   C_AB    QhTRAINU TEST4U  EF*   AFIR*  eDATAU ;
  clear QeTRAIN3  QeTEST4U QeDATA4U  QeDATAU QhTESTU ; 
 clear  Flage3  TRAIN51 TEST51C lentr2252*  lentr* unp1290 unp2210 ;
 TF = strcmp(BOTEST, 'TR' );   FTRAINL =  length( FILESTRAIN)
tf = isequal( BOTEST , 'TR' ) ; NUM2B=[]; ALMTT= 0; 
 FILESTRAINS=[]; uTRAIN41CR3272= unique(TRAIN4C')
 for i= 1 :  length(FILESTRAIN )
FILESTRAINS= strcat(FILESTRAINS,num2str(  FILESTRAIN(i) ) ) ;
end;  
end;    if  isequal( BOTEST , 'TT' ),  
if  Afile1test == 100, i= 3; xlcol = 'C' ;
elseif  Afile1test ==103, i= 4;  xlcol= 'D'; elseif  Afile1test==105, i= 5;xlcol='E';
elseif  Afile1test ==111, i= 6;xlcol = 'F'; elseif Afile1test ==113,i=7;xlcol= 'G';
elseif  Afile1test == 117,   i= 8; xlcol = 'H' ; 
      elseif  Afile1test == 121,    i= 9; xlcol = 'I' ;
    elseif  Afile1test == 123, i= 10;  xlcol = 'J' ;
      elseif  Afile1test == 200, i= 11;  xlcol = 'K' ;
elseif  Afile1test == 202, i= 12; xlcol = 'L' ;    
      elseif  Afile1test == 210,   i= 13; xlcol = 'M' ;
  elseif  Afile1test == 212, i=14 ; xlcol = 'N' ;   
      elseif  Afile1test == 213,   i= 15; xlcol = 'O' ;
 elseif  Afile1test == 214, i= 16; xlcol = 'P' ;  
      elseif  Afile1test == 219,   i= 17;  xlcol = 'Q' ;
    elseif  Afile1test == 221, i=18 ;  xlcol = 'R' ; 
      elseif  Afile1test == 222,   i= 19; xlcol = 'S' ;
  elseif  Afile1test == 228, i = 20;  xlcol = 'T' ;  
      elseif  Afile1test == 231,   i= 21; xlcol = 'U' ;
  elseif  Afile1test == 232, i= 22; xlcol = 'V' ; 
      elseif  Afile1test == 233,    i= 23;xlcol = 'W' ;
    elseif  Afile1test == 234,   i= 24; xlcol = 'X' ; 
      elseif  Afile1test == 208, i= 30;xlcol = 'AA' ;    
 elseif  Afile1test > 200,i =[65+ Afile1test-200] ;xlcol = 'AJ' ;    
  else   i =  65+Afile1test- 100 ;  xlcol = 'BA' ;%  xlcol =num2str([66 i]) ;
end; elseif  isequal( BOTEST,'TR' ),  
if  Afile1test == 101,    i= 3; xlcol = 'C'  ;
 elseif  Afile1test == 106, i= 4;  xlcol = 'D' ;
elseif  Afile1test == 108, i= 5; xlcol = 'E' ;
elseif  Afile1test == 109, i= 6;   xlcol = 'F' ; 
elseif  Afile1test == 112, i= 7;  xlcol = 'G' ;
 elseif  Afile1test == 114,i= 8;    xlcol = 'H' ;  
    elseif  Afile1test == 115,    i= 9; xlcol = 'I' ;
elseif  Afile1test == 116, i= 10;  xlcol = 'J' ;
    elseif  Afile1test ==118, i= 11;xlcol = 'K' ;
 elseif  Afile1test == 119, i= 12; xlcol = 'L' ;
    elseif  Afile1test ==122,  i= 13; xlcol = 'M' ;
elseif  Afile1test == 124, i=14 ; xlcol = 'N' ;    
    elseif  Afile1test == 201,   i= 15; xlcol = 'O' ;
elseif  Afile1test == 203, i=16; xlcol = 'P' ;  
    elseif  Afile1test == 205,   i= 17;  xlcol = 'Q' ;
    elseif  Afile1test == 207, i=18 ;  xlcol = 'R' ; 
    elseif  Afile1test == 208,   i= 19; xlcol = 'S' ;
    elseif  Afile1test == 209,   i = 20;  xlcol = 'T' ; 
    elseif  Afile1test == 215,   i= 21; xlcol = 'U' ;
    elseif  Afile1test == 220,   i= 22; xlcol = 'V' ; 
    elseif  Afile1test == 223, i= 23;xlcol = 'W' ;
elseif  Afile1test == 230,   i= 24; xlcol = 'X' ;   
else  i =  65+Afile1test-100 ;  xlcol = 'BA' ; 
end; end; end;  if 1, xlrow = i ; isr = num2str( i );  %i =  i+1;  
if BSVM, BA= 'SVM'; elseif ELM, BA= 'ELM' ;end;
 if  ~BCLUST, A1rVZ = [ 'U' ( isr )  ': AJ' ( isr ) ];
 A1rangeTN= [ 'Q' num2str( isr )  ': T' num2str( isr ) ]; 
 elseif   BCLUST, A1rVZ = [ 'Q' num2str( isr )  ': AA' num2str( isr ) ];   
 end; A1nv = [ 'V' num2str( i )] ;A1row= [ 'A' num2str( i )  ': Z' num2str(i ) ] ;
AFEATrange  = [  xlcol  num2str(3)  ':'   xlcol    num2str(51) ] ;
AwusedR2  = [  xlcol  num2str(2)  ] ; AfileC1=[xlcol  num2str(1 ) ];
A1rangeF = [ 'A' num2str( i ) ]; ArCTbe=[ 'B' num2str( i )  ': E' num2str( isr )]; 
A1rangeFP = [ 'F' num2str( i )  ': I' num2str( i ) ] ;
A1rangeTP=['J' num2str( i )  ': M' num2str( i )]; A1TPsum=[ 'N' num2str( i) ] ; 
ActsumOr = [ 'O' num2str( i ) ] ;  A1PER = [ 'P' num2str( i ) ] ;  
 strC =  uint8('AB' );  strHF =  uint8(xlcol) ;   strChtr4  = char( xlrow )
 TEST4R1 =  TEST4( : ,1 ) ;    TEST4R3 =  TEST4( : ,3) ; 
 TRAIN4RFF18 = TRAIN4(  1   , [ 18,27,39  , 19,  26 ,47 ]) ;
 if NSVF c3= 'r' ; else c3= 'm' ; end; if NSVF  c2= 'm' ;  else c2= 'r' ;  end;
[ TEST4RINT39 ]   =  TEST4( :   , 39 )  ;  %16,22 25,  45 effects normal
TEST4RINT18=TEST4( : ,18) ; TRAIN4_uSM2 = find(TEST4R1 ==192786)
[ TEST4RINT27 ]   =  TEST4( : , 27 )  ; ARR = [ 18, 19,  26, 27, 39  ,47 ]
TRAIN4R35=  TRAIN4(: ,  FILE ) ; TEST4R35= ( TEST4(: ,  FILE )' ) ;  
clear TRAIN42 TEST42 TEST42     ; clear AA AAL2* DATA41R;    
clear DATA41R  aal2*  ;   clear TRAIN4_u*  QPTEST42;  
clear DATA41R  ; clear  QPhDATA* QPh*  FI  Fusion QPTEST41 ; 
clear   PTEST42C  zA2 zC2   zB2*  zlen*  QPhDATA*  AAA2695*;
KTEST4RC3290 =  unique(TEST4( :  ,3 )' )
HC2R   = find( TRAIN4C == 2 ) ; HF2R =  TRAIN4( HC2R, : );
HC2T   = find( TEST4C == 2 ) ; HF2T =  TEST4( HC2T, : ) ;
HC3T   = find( TEST4C == 3 ) ; HF3T =  TEST4( HC3T, : ) ;
TEST4CRM = TEST4C ;TRAIN4CRM=TRAIN4C ;
if 0, if ( inF212) TEST4CR =  TEST4R( :  ,3 )  ;
 [ C39R ] = find (TRAIN4CR==3 ) ; TRAIN4CRM(C39R ) = 2  ;
end;  end; if   NSVF && ...
( ( Afile1test == 103 ) ||  ( Afile1test == 222 )  || (Afile1test  ==232 ) )
[ C3T ] =   find (TEST4C==3 ) ; TEST4CRM(C3T ) = 2  ;
end; [ C3T2] = find (TEST4C==2) ;  [ C3T2M ] = find (TEST4CRM==2) ;
if  isempty(C3T2 ) ...
  || ( inF214  || ( Afile1test  ==  221)  || inF111 )  && 1% ~BSVM   
    [ C3T3   ] = find (TEST4C==3 ) ; TEST4CRM(C3T3 ) = 2  ;
    [ C3T4   ] = find (TEST4C==4 ) ; TEST4CRM(C3T4 ) = 2  ;
    [ C3T5   ] = find (TEST4C==5 ) ; TEST4CRM(C3T5 ) = 2  ;
end; end; if 10,  [ALTRAIN41 ] = size(TRAIN4, 1)
 for i = 1 : ALTRAIN41  [ lentr2252(i)]= length(  QTRAIN4{i ,1 }  ) ; end ;
[M2357 M2357I] = max(( lentr2252 )) ;  [m2357   m2357I] = min(lentr2252) ; 
   [ AAL2lentr2252sd  ]  =    sort(lentr2252 , 'descend' )  ;
[AErrorR2357 ] =[TRAIN4( M2357I, 1) TRAIN4( M2357I, FILE)  M2357]
    FILESIPVARIAT =   [207 ] ;    y =  (TEST4CRM') ;   
  intsectIPV = ~isempty(intersect(FILES , FILESIPVARIAT) )  ; 
 if   intsectIPV,M3010= 500 ;       else   M3010= 420 ;    end;       
 [  lentr2252v500 ]=  find( lentr2252 >=1  &  lentr2252 <= M3010) ;
TRAIN4R=TRAIN4(lentr2252v500,:);QPTRAIN4R=QPTRAIN4(lentr2252v500,:);
QTRAIN4R =QTRAIN4(lentr2252v500,:);
TRAIN4CR=TRAIN4C(lentr2252v500); 
[ ALTRAIN41R NC]= size(TRAIN4R) ;
for i = 1 : ALTRAIN41R   [ lentr2252R(i)]= length(  QTRAIN4R{i ,1 }); end ;
 [M2257 M2257I] = max((lentr2252R)); [m2257  m2257I] = min(lentr2252R);       
A1ErrorR= [  TRAIN4R( M2257I, 1)   TRAIN4( M2257I, FILE)  M2257]      
 lentr23  = find   (  TEST4( : ,  3 ) ~= 28 &  TEST4( : ,  3 ) ~= 37 ) ;
 [ALTEST41 NC]= size(TEST4  ) ;
  for i = 1 : ALTEST41   [ lentr2292(i)]= length(QTEST4{i ,1 }) ;  end ;
  [ AAL2lentr22   ]  =  sort(lentr2292 , 'descend' ) ;
 [M2362 M2362I] = max(lentr2292) ;  [m2362   m2362I] = min(lentr2292 ) ; 
  A1ErrorRTT= [  TEST4( M2362I , 1)   TEST4( M2362I, FILE) M2362] 
 [ lentr2292v500 ] =  find(lentr2292>= m2362  &lentr2292<= M3010 ) ;
QTEST4R=QTEST4( lentr2292v500);TEST4CR=TEST4C(lentr2292v500) ;
 TEST4R= TEST4(  lentr2292v500,  :); [ ALTEST41R NC]= size(TEST4R) ;
 QPTEST4R = QPTEST4(  lentr2292v500); 
  for i = 1 : ALTEST41R    [ lentr2292R(i)]= length(  QTEST4R{i ,1 }) ; end ;
 [ AAL2lentr22R  AAL2lentr22RI ]  =    sort(lentr2292R , 'ascend' ) ;
[A11MTT M2757I] =max(lentr2292R); [A11MIT  m2292I] = min(lentr2292R) ; 
AErrorRTTM= [ TEST4R( M2757I ,1)   TEST4R( M2757I, FILE) A11MTT ]    
O34=ceil(3*max(A11MTT,M2257)/4); O23=ceil( 2*max(A11MTT, M2257)/3)
  FILESO =[103   108 109 113   118 201  203 208 ...
     205 209  210 214 215 220 222 223 232 ]; l =0;  
   intsectBuf = ~isempty(intersect(FILES , FILESO) );k= 1268;
   intsect208 = ~isempty(intersect(FILESTRAIN , [208 ] ) )   
end; if 1,if  Afile1test ==208, O=ceil( max(A11MTT, M2257) ) ;
 elseif intsect208,   O= ceil (max(A11MTT , M2257 ) +10)  ; 
 elseif intsectBuf,  O = ceil ( 3* max(A11MTT, M2257)/4 ) ;  
end; zb=126; %zb=131;
O =zb; [ zbE zbI]=max(TRAIN4R(:, 6)); [zbErr] =single(TRAIN4R(zbI,: )); 
 TRAIN41R=TRAIN4R( :, 1) ;  TRAIN41R( zbI , : )
[ ALTEST41R NC] = size(TEST4R);   Os= num2str(O) 
 ung4TRAIN41CR= unique(TRAIN4CR') ; zn= [ ];
TRAIN41CR3=TRAIN4R(:,  3) ;  uTR= unique(TRAIN41CR3') ;  
TEST4RCR3=TEST4R(:,  3) ;   uTT= unique(TEST4RCR3') ; 
fprintf('1765 ALTRAIN O  %d   min %d max %d \n', O, m2257, M2357) ;
fprintf(' Afile1test  %d  min %3d  & %d\n', Afile1test, A11MIT, A11MTT );
fprintf('1785 ALTRAIN41=%d ALTEST41R=%d\n',ALTRAIN41R,ALTEST41R);
clear QPeDATAU F2 FR INVR Pe2fMnanN  zsNUM0 TRAIN4; 

 ERR = num2str( NZBH + NANH + ALTEST410 - ALTEST41R) ;
if exist('wFranks','var'),fprintf('1765 wFranks %d \n',  wFranks) ;end; 
[pb2r pb2ri] =   find( TRAIN4R( :  ,6 ) > 111)  
end; end; if BTIME|| (BTIME&&~PAM) , if  ~BTT,
 if ~exist( 'ASVMFILE' , 'file')&&~BCLUST,  ...
  if  BFIX || BFIX201, for k = 1: ALTRAIN41R2 
 FQPrscelltr{k,:} =QTRAIN4R{k,1};  len2(k)= length(QTRAIN4R{k}) ;
  end;  for k = 1: ALTRAIN41R2
for m = 1: len2(k) NUM(k,m) = FQPrscelltr{k}(m); end; end; 
  elseif   1 ||  ((M2257  ~= 201) ||  (M2257  ~=  m2257) ),
  ALM =0; AFILR=[]; AFIIRR=[]; m=0 ; % TRAIN4R( k  , 2)==203
   [ ALTRAIN41R2 ALTRAIN41R2NC]= size(TRAIN4R) ;
 for k = 1 : ALTRAIN41R2  
     AAL2695(k) = length(QTRAIN4R{k})   ;
%P=fix( AAL2695(k)/2); range2656=[O-P+1: O+P]; %range2 =[O-P: O+P];
% if  rem(L(k),2) , range2656=  range2;  else   end;    i = 0;
%  for m = range2656    i = i+1 ;    NUM(k,m) = FQPrscelltr{k}(i);   end ;
 %   FQRS =  FQP(k) ;  FQRSC =FQP{k  ,1 };
 % AFFM(k ) = ( abs (AAA2695(k) ) > abs (AAA2695M(k) )  ) ;
 AFIRR(k) = TRAIN4R( k  ,12) ;  AFIR(k) = TRAIN4R( k  , FILE ) ;     
 %fprintf(' %d  ', k  )   ;  
 if ( AFIRR(k) ==1)  %     &&  AFIR(k  )  ~= 208
%&&  AFIR(k )~= 106  &&  AFIR(k)  ~= 108 &&  AFIR(k ) ~= 213 ...
%&&AFIR(k)  ~= 232  &&  AFIR(k )~= 124&& AFIR(k)  ~= 207
% && ( AAA2835M(k)  < -0.8  )  ,
 ALM =ALM +1 ;   AFILR( ALM  )  = TRAIN4R( k  ,35 ) ;
 if 0, [AAA2695M(k)  AAA2695IMM(k) ]  = min(  QTRAIN4R{k } ) ; end;
 [ AAA2695IM( k ) ]   =  TRAIN4R( k  ,6 )   ;
%NUMB( k ,O- AAA2695IM(k)+1:O)=QTRAIN41R{k,1 }( 1: AAA2695IM(k)) ;
if   AAA2695IM(k) >= zb,znum= znum+1;   z(znum) = TRAIN4R( k ,FILE ) ;
 NUM(k,1: O ) = QTRAIN4R{ k  ,1 }( AAA2695IM(k)- zb+1 : AAA2695IM(k)) ;
end; if 1, NUM(k, O-AAA2695IM(k)+1:O)=QTRAIN4R{k,1}(1: AAA2695IM(k));
end; NUM(k, O+1 :  O+AAL2695(k) - AAA2695IM(k) ) = ...
 QTRAIN4R{k  ,1 }( AAA2695IM(k)+1  :  AAL2695(k)-0 ) ;
 else  AAA2695IP(k) =TRAIN4R( k  , 6 ) ;%AAA2835IM(k)=100; 
  if  0, [AAA2695(k)  AAA2695I(k) ] = max( QTRAIN4R{k ,1 } ) ;  end;
if  AAA2695IP(k) >= zb, znum= znum+1 ; z(znum) =TRAIN4R( k , FILE ); 
NUM(k,1 : O) = QTRAIN4R{ k  ,1 }(  AAA2695IP(k)- zb+1:  AAA2695IP(k) );
end; if 1, NUM( k,O-AAA2695IP( k )+1:O)=QTRAIN4R{k,1}(1:AAA2695IP(k));
end;  NUM( k , O+1 : O + AAL2695(k) - AAA2695IP(k)) = ...
QTRAIN4R{k,1}( AAA2695IP(k)+1 :  AAL2695(k)-0) ; 
end; if 1 &&k >1,  AA1NUMBC(k) =length(NUM(k-1,: )) ; 
  Err= TRAIN4R( k  , : ) ;
 end;   end;   fprintf('1810   ALM  = %d   \n ', ALM  )   ;  
 [AM2664 AM2664I] = max(AAL2695 ); Eror1 =TRAIN4R(AM2664I , 1) ;   
 [AM2664 AM2664I] = max( AA1NUMBC) ;ER= TRAIN4R(AM2664I , :) ;
 elseif  (M2257  ==   101 && m2257  ==   101) ,
    for k = 1:ALTRAIN41R2
len2(k)=   length(QTRAIN4R{k}) ; FQPrscelltr{k ,:} =QTRAIN4R{k  ,1 };
 for m = 1: len2(k)     NUM(k,m) = FQPrscelltr{k}(m); end ;
end;  end;  if 1, NUMO  =  NUM; 
strhf =  [ ' 1860 TRAIN '  int2str( ALTRAIN41R2 ) ' ' AENS ] ;
 g1=figure( 'Name', strhf ,'Position',  ...
[10 100  SCR(3)/2-100 400]); h= gcf; set(h,'WindowStyle','docked');
 set( gca, 'Units' , 'normalized', 'FontUnits','points', ... 
 'FontWeight', 'normal', 'FontSize',  16, 'FontName', 'Times');
 for  k= [1  size(TRAIN4R,1)  ]  m=m +1 ;   plot( NUM( k , : ) ) ;  hold on ;
[ AAA(k)  AAAI(k ) ]  = max( NUM(k , : ) ) ;
h= QTRAIN4R{ k  ,1 }(  TRAIN4R( k  ,6 )  );
text( TRAIN4R( k  ,6 ), max(NUM(k , : ) ) , [  int2str( k ) ] ,'color', 'g' );
   text( AAAI(k), max(NUM(k , : ) ) ,  [  int2str( k )  ]   ,'color', 'g' );
if 0, text( Pb2(f),xbf1( Pb2(f))-0.2, ...
  [ '\uparrow Ponset' ] ,'color', 'r' , 'FontSize', fonts18); 
end; end; text(  O , 3 , [  '\uparrow Ponset' ] , 'color', 'r' , 'FontSize', 18 ); 
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight','normal', 'FontSize', fonts16, 'FontName','Times');cwidt=262;   
 wxtick= [ 0: floor((cwidt+00)/2): cwidt+00] ;set(gca,'XTick', wxtick ); 
clear  ABC  FB1 QPeDATA4U QPeDATA4U QPTRAIN4 
  clear QPTEST4  FB1 QPeDATAU QPeDATA4U QPTRAIN41 
 NUMOm= min( NUMO( :, O));  NUMOx= max( NUMO( :, O)) ; 
Yxr=max( max( NUMO( : ,O ) ), 2 ) ; Ymr =min( min( NUMO( :,O) ),  -1); 
 if  ALTRAIN41R2 > 4000    clear TRAIN4_u*   Adata1 NUMO ;
clear xts   pvc Adata1 CL60 ;    clear TRAIN4_u*    AAA   AAL*  
  clear TRAIN42C QTEST4  QPTEST4R QPeDATA4R QPeDATA4O
clear eDATA*  hDATA* TRAIN4C zDATA  xbl1 xbl2  x Tef1  ;
clear   AAA2695*  QM QQM  TRAIN4 TEST4  QTRAIN4   ;
 clear NORMR Qe* Qh*  h* e*   Lcell1352     FQM FQD  unp2210 ;
clear A1791  AVG    CPVC  RFF  RO1  NORMR   ...
      NANDATA5 TB* AAA*    AFILR AFIRR  TRAIN51C   ;
   clear  C_AB   AAL* AFR AQ1 AQC  AQPMC   A1C      ...
 lentr2252*    RO32 Racl RacI  CLL       S wTbS ;
clear X2P lentr2* zlentr2* INVR  FI Fusion  pac AFILR  ...
TEST51C  AFIR* TRAIN51 TRAIN41 QPTRAIN42 QPTRAIN4R ;
clear xts pf   pvc  cl cla  unp1290 unp2210   AERROR zerrf2 zerrA2 ; 
%clear TRAIN4CR TRAIN4CRM  pvc Adata1 CL60 Pb*   Pe*;   
end; if 0,  NUMB =   NUM;
NUMB=(NUMB -repmat(min(NUMB,[],1),size(NUMB,1),1))*spdiags(1./ ...
(max(NUMB ,[],1)-min(NUMB ,[],1))',0,size(NUMB ,2),size(NUMB ,2)) ;
end;  if 0,  [NUM, psr] = removeconstantrows(NUM') ; 
elseif 1,  [NUM, ps] = mapstd(NUM') ;  [NUM ] = (NUM') ;   
end;    
end; end; if  BFIX || BFIX201, for  k = 1: ALTEST41R      
 len2(k)= length( QTEST4R{k}) ; FQrscelltt{k ,:} =QTEST4R{ k,1 };
 end;  minlen2= min(  len2 ) ; maxlen2= max(  len2 ) ;
 for k = 1:ALTEST41R    FQrscelltt{k,:} =QTEST4R{k,1 };  
  len2(k)= length(QTEST4R{k});
 for m = 1: len2(k)  NUM2(k,m) = FQrscelltt{k}(m);   end;
end; 
elseif ( A11MTT ~= A11MIT ),  AFIL= [ ] ; m=0 ;
  for k = 1:  ALTEST41R 
 [ AAL2935(k) ]   = length( QTEST4R{ k  ,1 });
% L(k) = length(FQDR{k}); P26(k) = fix( L(k) /2) ;% FQRSD2 = FQDR{k};
% range =  [O-P26(k)+1: O+ P26(k) ] ; range2 = [ O-P26(k): O+ P26(k)] ;
%  FQRSC = FQDR{ k,1 } ;  if  rem(L(k),2) , range=  range2; % else  end; 
%i = 0;%for m = range  i = i+1 ;  NUM2(k, m) = FQrscelltt{k}(i);end ;
  if ~isempty(  QTEST4R{ k  ,1 } )
%     AFF(k ) = ( abs (AAA2695(k) ) > abs ( AAA2835M(k) )  ) ;
AFI(k) =   TEST4R( k  ,35 ) ;  AFIRT(k) =     TEST4R( k  ,12 ) ;
 if  ( AFIRT(k)== 1) % &&AFI(k) ~=105...
%&&AFI(k)~= 106 &&AFI(k)~= 108&&...
%AFI(k)~= 213&&AFI(k) ~= 232 %&&  AFI(k  )  ~= 233  ...
% &&AFI(k)~=117&&AFI(k)~= 207&&AFI(k ) ~= 200...
%&&AFI(k )~= 214  &&  AFI(k)~= 222  ...
%&& AFI(k)  ~= 210  &&  AFI(k  )  ~= 221  &&  AFI(k  ) ~= 228   ...
%% ~ AFF(k )  &&  ( AAA2835M(k)  < -0.8  ) ,
ALMTT= ALMTT+1;AFIL( ALMTT )= TEST4R( k ,35 ) ; 
AFILC(ALMTT) = TEST4R( k  ,3 ) ;%RS2{k,:}= [AAA2695I(k):AAL2935(k)] ;
%RS{k,:}=[O:O+AAL2935(k)-AAA2695I(k)];
%RS3{ k, :} =[ O- AAA2835IM(k)+1 :  O ] ; RS4{ k, :}= [1: AAA2835IM(k) ] ;
 if 0, [ AAA2835M(k)  AAA2835IM( k ) ]   = min( QTEST4R{ k  ,1 }  ) ;
  end;   [ AAA2835IM( k ) ]   =  TEST4R( k  , 6 )  ;   %TEST4R( k  ,1 )
 %NUM2B(O- AAA2835IM(k)+1: O) =QTEST41R{ k ,1 }(1: AAA2835IM(k));
if  AAA2835IM(k) >=zb, znum2=znum2+1;    zn(znum2) =TEST4R( k  ,1 ) ;
NUM2(k,1 : O )= QTEST4R{ k  ,1 }( AAA2835IM(k)-  zb+1: AAA2835IM(k) ) ;
end; if 1, NUM2(k,O-AAA2835IM(k)+1: O)=QTEST4R{ k ,1}(1: AAA2835IM(k));
end;  NUM2(k, O+1 :  O- AAA2835IM(k)+AAL2935(k)) = ...
     QTEST4R{ k ,1 }( AAA2835IM(k)+1  :  AAL2935(k)-0 ) ;
%NUM3(k+AANUMR,O-AAA2835IM(k)+1:O+AAL2935(k)-AAA2835IM(k))= ...
%QTEST41R{ k  ,1 }(1: AAL2935(k) ) ;
else    [ AAA2695I( k ) ]   =  TEST4R( k  ,6 )  ;%AAA2835IM(k)=100; 
%  [AAA2695(k)  AAA2695IP( k ) ]   = max( QTEST4R{ k  ,1 } ) ;
 if AAA2695I(k)>= zb, znum2=znum2+1; zn(znum2) =TEST4R( k ,FILE ) ; 
NUM2(k, 1 :  O) = QTEST4R{ k  ,1 }(  AAA2695I(k)-zb+1: AAA2695I(k) ) ;
end; if 1, NUM2( k , O-AAA2695I(k)+1:O)=QTEST4R{k ,1}(1: AAA2695I(k)) ;
end;  NUM2(k , O+1 :  O+AAL2935(k) - AAA2695I(k)) = ... 
 QTEST4R{ k  ,1 }( AAA2695I(k)+1  : AAL2935(k)-0) ;
end; % AA1NUMBC2(  k) =  length (NUM2( k, :  ) )
%fprintf('2050 %d %d %d', ALTEST41R, k, AA1NUM2BC(k)) ;
%TEST4R( k  ,1:3 )  ;
  end;  end;   [AM2935M AM2935MI] = max(AAL2935 )
 Eror = TEST4R(AM2935MI , 1) ;    clear NUM2B;       
 elseif  (A11MTT  == 101 && A11MIT  ==   101) ,
 for k = 1 : ALTEST41R     len2(k)= length(QTEST4R{k}) ;
 FQrscelltt{k ,: } =QTEST4R{k  ,1 };
 for m = 1: len2(k)  NUM2(k,m)= FQrscelltt{k}(m); end ;
 end; end;  if 1, NUMO2 =  NUM2;   
 fprintf('1940 fprintf();     ALMTT = %d   \n ',   ALMTT )   ;  
 Ym =min( NUMO2( : ,O ))-0.2 ; Yx=max( NUMO2( : ,O ))+0.2 ; 
if Afile1test== 234 , Ym =-1.2; 
elseif Afile1test== 219 , Ym =-1.2; 
end; 
 h23 = figure('Name' , [ '  1970 TEST ' Afile1tests ] , 'Position',  ...
 [ SCR(3)/2-100   SCR(4)/2-100  SCR(3)/2-100 SCR(4)/2-100]);
 h = gcf ;  set(h,'WindowStyle','docked') ; AQC= size( NUM2,1 ) ;
for  k=1 : AQC plot(NUM2( k , : ) , 'k' ) ;  hold on; m=m +1 ;
 if 0,   [AAA2895(m)  AAA2895I( m ) ]   = max( NUM2(k , : ) ) ;
text( AAA2895I(m)  , max(NUM2(k , : )),  [' k= '  int2str( k ) ]   ,'color', 'r' );
 fprintf('1920  NUM2 k=%d maxI=%d O=%d  \n ', k ,  AAA2895I(k) , O  );
  [AAA2855M(m)  AAA2855MI( m ) ]   = min(NUM2(k , : )) ;
 text( AAA2855MI(m) , min(NUM2(k ,: )), [ ' k= '  int2str( k ) ] ,'color', 'b' );
   end; end; figure(h23) ;  Os=   num2str(O) 

text( O , 3 , [  '\uparrow R Pos'  Os ] , 'color', 'r' , 'FontSize', 18 ); 
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', 16, 'FontName','Times'); 
if (Ym< 0 & Yx >0 ) fyxdfc=[ Ym  0  Yx] ; else fyxdfc=  [ Ym  Yx] ;  end; 
 set( gca,'YTick', fyxdfc) ;  
LTR=300; xlim([ 000 LTR ]) ;  wxtick= [ 0   floor( LTR/2)  LTR  ] ; 
 set(gca, 'XTick', wxtick ); set(gca,'XTickLabel', wxtick);   
 for i= 1: length( fyxdfc ) [ STfyxdfc{ i,1}, err] =sprintf('%.2f', fyxdfc(i)); end; 
  set( gca,  'YTickLabel',  STfyxdfc )  ;  ylim([ Ym Yx  ]) ; 
end;if 10, [NUM2, ps2] = mapstd(NUM2') ;
[amap, MSGID] = lastwarn(); warning('off', MSGID)
else [NUM2,ps2]=removeconstantrows(NUM2');
[NUM2, ps2]=mapstd(NUM2); 
end;    if 1, [NUM2 ] =  (NUM2') ;
repmatNUM2=repmat(min(NUM2, [],1),size(NUM2,1),1); d=size(NUM2,2)
spdiagsNUM2=spdiags(1./(max(NUM2,[],1)-min(NUM2,[],1))',0,d,d);
 NUM2B=(NUM2- repmat(min(NUM2, [],1),size(NUM2,1),1)) ...
*spdiags(1./(max(NUM2,[],1)-min(NUM2,[],1))',0,size(NUM2,2),d);  
[a11num2r  A11NUM2C ] = size(NUM2)
end; end; if 1 && ~BTT&&1 && ELM, 
 if 0, if   A11NUMC>A11NUM2C, NUM22= NUM2;
NUM=NUM( : ,1: A11NUM2C); % NUMO=NUMO( : ,1: A11NUM2C ) ;    
NUM22(:,A11NUM2C+1: A11NUMC)=zeros(a11num2r,A11NUMC-A11NUM2C);
 end; if  A11NUM2C >A11NUMC, NUM11= NUM;
NUM2=NUM2( : ,1: A11NUMC); NUMO2=NUMO2( :,1:A11NUMC);    
NUM11(:,A11NUMC+1: A11NUM2C)=zeros(a11numr,A11NUM2C-A11NUMC);
 end;  end;  if   A11NUM2C>260, NUM22= NUM2;
 NUM2=NUM2( : ,1: 260); NUMO2=NUMO2( :,1:260);    
 elseif   A11NUM2C<260, NUM22= NUM2;
  NUM2(: ,A11NUM2C+1: 260)=zeros(a11num2r,260-A11NUM2C) ;
  end;if  exist( 'NUM', 'var' ),  [ a11numr  A11NUMC]= size(NUM) ; 
 fprintf('1984 Afile %d  A11NUMC %3d A11NUM2C %d\n',...
     Afile1test, A11NUMC, A11NUM2C );    
   if  A11NUMC>260, NUM11= NUM;NUM=NUM( : , 1: 260); % NUMO=NUMO( :,1: 260) ;    
  elseif   A11NUMC<260,NUM11= NUM;NUM(:,A11NUMC+1: 260)=zeros(a11numr,260-A11NUMC) ;
 end; end;
 end; if ~BTT,  FILESBANDO = [ 223  230 ];
clear zB   AAA*   CT  C_AB  zA2  zB2 NUM11  NUM2B  TEST51* TRAIN51;
clear AFIRT AFI AFR cla  cl  Adata2 Adata3 H HA MAX*  QTRAIN51;
clear NORMR Qe* Qh*  h* e*  AFIR*   FQM FQD AAL* QTEST51  ;
inF = isempty(intersect(FILES , FILESBANDO)) ;
if inF,  BAND= 150;  else BAND= 50; end;
%NUMB=NUM(:,O-band: O+band);%NUM2B=NUM2(:,O-BAND:O+BAND);
end; if  BTT, FQM =  [  QTRAIN4R ;   QTEST4R ] ;
DATA41R=[ TRAIN4R; TEST4R]; [ALM41R2 ALM41R2NC]=size(FQM);
 h2640 =figure('Name','2000  DATA ','Position', ...
 [10  SCR(4)/2  400 400 ]); h =gcf ;set(h,'WindowStyle','docked') ; 
if  (M2257  ==   201 && m2257  ==   201)
 for k = 1:ALM41R2     lentr(k)=length(FQM{k}); 
  FQPrscelltr{k ,:} =FQM{k  ,1 };
 for m = 1: 101    NUM3( k, m) = FQPrscelltr{k}(m+50 );   end ;
 end;
 elseif (M2257 ~=  m2257),ALM  =0; AFILR=[]; AFIIRR=[]; m=0 ;
 for k = 1: ALM41R2        AAL2695(k) =     length(FQM{k}) ;
%P=fix(AAL2695(k)/2);range2656 = [O-P+1: O+ P];range2 =[O-P: O+P];
%    if  rem(L(k),2) , range2656=  range2;      else   end;    i = 0;
 %% for m = range2656     i = i+1 ;    NUM(k,m) = FQPrscelltr{k}(i);  end ;
%   FQRS =  FQP(k   ) ; FQRSD2 =  FQP{k   }; FQRSC = FQP{k  ,1 };
% AFFM(k ) = ( abs (AAA2695(k) ) > abs (AAA2695M(k) )  ) ;
AFIRR(k) =     DATA41R( k  ,12 ) ;     AFIR(k) =     DATA41R( k  ,35 ) ;
 if   (  AFIRR(k) ==1)  %  && 0 %    ... DATA41R( k  ,1 )
% &&  AFIR(k )  ~= 208 && AFIR(k )  ~= 207 % &&  AFI(k ) ~= 109
% &&AFI(k )~= 119 &&  AFI(k  ) ~= 219 &&AFIR(k)  ~= 213...
 %   ( AAA2835M(k)  < -0.8  )  ,
ALM =ALM +1 ;  AFILR( ALM  )    =     DATA41R( k  ,35 ) ;
  [AAA2695M(k)  AAA2695I(k) ]   = min(  FQM{k  ,1 } ) ;
 [ AAA2695IM( k ) ]   =  DATA41R( k  ,6 )  ;
 NUM3(k, O- AAA2695IM(k) +1 :  O) = FQM{k ,1 }( 1: AAA2695IM(k) ) ;
NUM3(k,O+1: O+AAL2695(k) - AAA2695IM(k))=...
    FQM{k ,1}( AAA2695IM(k) +1:AAL2695(k) );
 else     [AAA2695(k)  AAA2695I(k) ]   = max( FQM{k  ,1 } ) ;
 [ AAA2695I( k ) ]   =  DATA41R( k  , 6 )  ;  %DATA41R( k  ,1  )
 % RS{ k, :}  =[ O :  O+AAL2695(k) - AAA2695I(k) ] ;
 % RS2{ k, :} = [AAA2695I(k)  :  AAL2695(k)  ] ; FQRSC= FQRSC';
% RS3{k , :}=[ O- AAA2695I(k)+1 : O] ; RS4{ k , :}=[1: AAA2695I(k) ];
%    [AAA2695( k )  AAA2695I(k) ]   = max( FQM{k  ,1 } ) ;
  NUM3( k , O- AAA2695I( k )+1 :  O) =  FQM{k ,1 }( 1: AAA2695I(k) ) ;
NUM3(k,O+1:O+AAL2695(k)-AAA2695I(k))=...
    FQM{k,1}(AAA2695I(k)+1:AAL2695(k));
 end;  if k <  5 , m=m +1 ;    plot( NUM3( k , : )  ) ;  hold on ;
 [AAA(m)  AAAI(m ) ]   = max( NUM3(k , : ) ) ;
 text( AAAI(m)  , max(NUM3(k , : ) ) ,  [  int2str( k ) ]   ,'color', 'g' );
 end;   end; [AM2664 AM2664I] = max(AAL2695 )
 AAL2935s=    sort(AAL2695 , 'descend' ) ; AAL2935s(1:4)
 elseif  (M2257  ==   101 && m2257  ==   101) ,
 for k = 1:ALM41R2       len2(k)= length(FQM{k}) ;
 FQPrscelltr{ k ,: } =FQM{k  ,1 };
for m = 1: len2(k)     NUM3(k,m) = FQPrscelltr{k}(m); end ; 
end; end; if 0, if  10,  [ ALNUM3R2 ANUM3NC]= size(NUM3) ; 
 ANUM3 = [] ; NUM  = [] ;    NUM2 = [] ; A34= 0 ; AN= 0 ;      
clear AFIR AFIRR   FQM FQD  ;  clear AFIR AFIRR   FQM FQD ;
 for k = O-10 :  O+10 %  for k = 1:   ANUM3NC
Acol = (NUM3( : , k));  Amean(k)=  mean(NUM3( : , k)) ;
if  ~isnan(Amean(k)  ) && Amean(k)~= 0,
A34= A34 +1 ;     % ANUM3(:,  A34)= Acol  /   Amean(k)   ;
 NUM3(:, k)=  (Acol - Amean(k)  ) /   Amean(k)   ;
 else   NUM3(:, k) = NUM3(:, k)     ;
 end; end;  elseif   10 ,   ANUM3 = [] ;  NUM  = [] ; 
NUM2 = [] ; A34= 0 ; AN= 0 ;    clear AFIR AFIRR FQM FQD  ;
[ ALNUM3R2 ANUM3NC]= size(NUM3) ;    
 for i =1 :  ALNUM3R2  Arow = NUM3( i  ,: ) ;   ANmean(i )=mean(Arow );
 if ~isnan(ANmean(i)) && ANmean(i) ~=0,%ANUM3(i,: )=Arow-ANmean(i);
 AN= AN +1;ANUM3( i  , : )   = Arow  -   ANmean(i )   ;
else  ANUM3(:, k) = NUM3(:, k)     ;
 end; end; end;  end;  if 10,  NUMO =NUM3(1: ALTRAIN41R, : ) ;
   NUMO2=   NUM3(ALTRAIN41R +1:  end ,   : ) ;
   NUM = [] ;  NUM2 = [] ;  [ ALNUM3R2 ANUM3NC]= size(NUM3);  
   clear AFIR AFIRR       FQM FQD  ;   size(NUM3,2)
% NUM3= (NUM3 - repmat(min(NUM3,[],1),size(NUM3,1),1))*spdiags  ...
%(1./(max(NUM3,[],1)-min(NUM3,[],1))',0,size(NUM3,2),size(NUM3,2));
   %   NUM3A=  NUM3( : ,1 :  O  ) ; NUM3B=  NUM3( : ,O+1 :  end  ) ;
   % [NUM3A, ps3] = mapstd(NUM3A') ;     [NUM3A ] =  (NUM3A') ;
 % NUM3( : ,1 :O  )  = NUM3A   ; NUM3( : ,O+1 :  end  ) =NUM3B;
end;   [NUM3, ps] = mapstd(NUM3') ;   [NUM3 ] =  (NUM3') ;
  NUM=NUM3(1: ALTRAIN41R,: ); NUM2=NUM3(ALTRAIN41R+1:end,:);
 [intc, ia , ib  ] =   intersect(  QTEST4R{1, : } , NUM2(1, : )  ) ;
end; end; if  BTIME &&~PAM , % 1 is BTIME
 if  exist('NUM2', 'var'),[a11num2r  A11NUM2CM ] =size(NUM2) ; end; 
 if  exist('NUM', 'var'), [ a11numr  A11NUMCM]= size(NUM); end; 
h23 =figure('Name',  ' 2050 TRAIN TEST ', 'Position',  ...  
 [ -100 10   SCR(3)-100 400]); h =gcf ; set(h,'WindowStyle','docked') ;
 if exist('NUMO','var') for k =1:1 plot(NUMO(k,:),'b');hold on; end; end;
   for k =1: 2  plot(NUMO2( k, : ),  'k' );  hold on;    end; 
if  exist('NUM', 'var') for k =1 : 1  plot(NUM(k, :), 'g');hold on; end; end; 
if ~BCLUST & BTIME, Ym =min(NUMOm ,  min( NUMO2( :, O))) ; 
YM=max(NUMOx , max( NUMO2( :, O)) ) ;   ylim([ Ym  YM ]);
end; if BFIX || BFIX201,YM=max(max(TRAIN4R(:,34)),max(TEST4R(:,34))) ;
 Ym =min(min( TRAIN4R( :  ,34)),min(TEST4R( :,34))) ; ylim([ Ym  YM]);
 end;  text( O , 3 , [  '\uparrow Ponset' ] , 'color', 'r' , 'FontSize', 18 ); 
 set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize',  16, 'FontName','Times');
 set(gca,'XTickLabel', (get(gca, 'XTick'))) ; 
 FeaIndexold  = [ 18, 19,26,27,39 ,47 ];  featuretest4_20  = [14 : 30] ; 
 h23s =figure(h23) ; clear NUM3  QPe*  QPhDATA* AAA2695*   cl* ;  
 clear   QPTRAIN*  QPe*  QPh* AAA2695*   cl*  QPTEST4R*  ;  
 clear DATA41R TRAIN42C   Amean ; clear  AM1 AM2 NUM2B ; 
clear  QPTRAIN4  QTRAIN4 QTEST4  AA AAL2* ; clear  Acol  AQ*  zA2;
 fprintf('clea  2092 colu  \n'  ); %dbstop   2095;

if 0, clear QTEST4R QTEST4 QPTEST4 QPTEST4R FQPrscelltr QTRAIN* ; end;
end;if 2, if 1,TRAIN4RF= TRAIN4R( : ,FILETR ); 
TEST4R=TEST4R(:,4:end);TRAIN4R=TRAIN4R(:,4:end);FEATt47=FEAT(4:end);
[zPwl  Rc]= size(TRAIN4R) ; [zPwS1row wSM2 ] = size(TEST4R) ;  
which FSLib_v4j16R -all ;  fprintf('2100 Expt 1 class  FSLib_v4j16R \n' ); 
date22= [ da(1:2),da(4:6),da(10:11),da(13:14),da(16:17) ] ;d33= -100; d3=10; 
if ~exist('A11NUM2CM','var') || ~exist('A11NUMC','var'), cwid=300; 
 else    cwid = max( A11NUMC ,  A11NUM2C ); 
 end;
end;  if   1 && 1 &&wmethodID ~= 8,    
   wmethod ='InfFS'
 [strhf strhfA ]= size( TEST4R); Lcell1= find(TEST4R(1 ,: )==Afile1test ) ;
 FeaCandi = [ Lcell1-1 : -10 :1 ] ;  zzFeaNumCandi = [ strhfA : -10 : 1 ] ;
 [wRwFRs,ftScoreRs,wRwFRu,ftScoreRu,wRwFtu,ftScoretu,wRwFts,ftScorets] = ...
FSLib_v4j16RSU(TEST4R,TEST4CRM,TRAIN4R,TRAIN4CRM,wmethodID,sup,wtr,alpha);
if 0,  [ wRwFR  ftScoreR  wmethod  wRwFtu  ftScoret ] = FSLib_v4j16R ...
( TEST4R,TEST4CRM,TRAIN4R,TRAIN4CRM, wmethodID, sup, wtr,alpha);
end;   if  ~iscell(ftScoretu),  [ QQM  i ] = size(  ftScoretu ); 
 else    i=1; zzzFeaIndexC =  ftScoretu{ 1, i }' ;
 end; if wmethodID == 8,    zzzFeaIndexC =  ftScoretu{ 1, i }' ;
  ECG=genvarname([ 'ranking',  int2str( i )]); eval([ ECG  '=  zzzFeaIndexC;' ]);
J=length( FeaCandi ) ; ranking = zzzFeaIndexC; zX= TEST4R(: , ranking );
end; elseif   wmethodID == 8,   i=5 ;   wmethod =   'Modimcfs' ;  
[strhf strhfA ] = size( TEST4R) ; options.gnd = TEST4CR; z158= @knGauss ;
 FeaCandi = [ strhfA : -10 : 1] ;  zzzFeaNumCand = [  6 : 10 :  wSM2] ;
 [ zzzFeaIndexCA, FeaCandi ] =MCFS_p(TEST4R,  FeaCandi,options)
J = length(FeaCandi);  ranking= zzzFeaIndexCA{J}; wRwFtu= ranking(1 :end)'

 for i =1 : length( FeaCandi ) 
 for m = 1: FeaCandi(i)  zzzFeaIndexcol(i,m)  = zzzFeaIndexCA{i}(m) ; end;  
 zzzFeaIndexC = zzzFeaIndexCA{ 1, i }'  
ECG=genvarname([ 'ranking',  int2str( i )]); eval( [ ECG  '= zzzFeaIndexC;']);  
 end; elseif wmethodID == 0, wmethod  = 'SVMRFE' ;svmtrain1.kerType=2;  
 paths=addpath(genpath('G:\jaga\SVM-RFE-CBR-v1.3'));
[ wRwF, ftScore ]= ftSel_SVMRFECBR( TEST4R,TEST4CR, svmtrain1); toc
end;  if 1, [stas,ese,agid]=mkdir([PATXL   ]);  
    dates3=[ da(10:11),da(4:6), da( 1:2)  ]; codefile

    if ~exist('wmethod','var'),wmethod='';end; 
 end;  if (wtr&&sup ) ,   wtrs =[  'tr'  'sup'  ] ; 
elseif  wtr&&~sup ,   wtrs =[ 'tr' 'uns'    FILESTRAINS ] ;  wtrs =[  'tr' 'uns' ] ; 
elseif ~wtr&&sup , wtrs = ['tt'  'sup' Afile1tests ] ;   wtrs = [  'tt'  'sup'  ] ; 
elseif ~wtr&&~sup , wtrs = [  'tt' 'uns' Afile1tests ] ;  wtrs = [  'tt' 'uns'   ] ; 
end;  A1FeXL2= [ PATXL   'zzzwfeatsel' codefile  wmethod wtrs      '.xls' ]  
Excel=actxserver('Excel.Application'); 

if 1, 
if  ~exist(  A1FeXL2 ,'file'), ExcelWorkbook = Excel.workbooks.Add ;
ExcelWorkbook.SaveAs(A1FeXL2,1) ;  ExcelWorkbook.Close(false);   
end; invoke(Excel.Workbooks,'Open', A1FeXL2) ;
 worksheets = Excel.Sheets ;   numSheets = worksheets.Count 
invoke(Excel.ActiveWorkbook,'Save'); Excel.Quit; Excel.delete; clear Excel;
 if 1,NUM33=[ ];
 if  0,  wRwFR = wRwFRu; ftScore = ftScoreRu ;
elseif  1,  wRwFR = wRwFRs; ftScore = ftScoreRs ;      
end;   if  1 ,  wRwF = wRwFtu ; ftScore = ftScoretu;  
elseif  0, wRwF = wRwFts ; ftScore = ftScorets ;
end;
  [ fsort   wFwR  ] = sort( wRwF); if (size(wRwF,2)~=1),wRwF=wRwF';end;
[ fsortr  wFwRR ] = sort( wRwFR);if (size(wFwR,2)~=1),wFwR=wFwR';end;
end;   FEATt47rank = FEATt47( wRwF );  wLcellMA= length( FEATt47rank) ; 
 FEATt47rankR= FEATt47( wRwFR); wLcellMR= length( FEATt47rankR) ;
 FEATtrainSup= FEATt47( wRwFRs );FEATtrainUsup= FEATt47( wRwFRu ); % [ wRwFtu, wRwFts]  
  FEATtestSup= FEATt47( wRwFts );  FEATtestUsup= FEATt47( wRwFtu ); 

end; for k = 1: wLcellMA   
 len2(k)= length(FEATt47rank{k}); FQPrscelltr{ k ,:} =FEATt47rank{1, k };
 for m = 1: len2(k)     NUM3(k,m) = FQPrscelltr{k}(m);end ;
NUM33=[ NUM33 ' ' NUM3(k ,:)]; if 1, fprintf(' 2160  %d %s',k,NUM3(k,:)); end; 
 [ST3adc1{ k,1}, cTBE2]= sprintf('%s\n', NUM3(k ,:)); 
 end;  
 for k = 1: wLcellMR  
     len2R(k)=length(FEATt47rankR{k});
 FQPrscelltrR{k,:}=FEATt47rankR{1,k };
for m = 1: len2R(k)     NUM3R(k,m) = FQPrscelltrR{k}(m);end ;
   [ST3adcR{ k,1}, cTBE2]=sprintf('%-10s', NUM3R(k ,:));
end; if 1|  exist('FEATt47rank', 'var'),  
AFEATranges= [  'A' xlcol  '3:A' xlcol '51' ]  ; % dbstop 2162; 
if (size(wRwFtu,2)~=1),wRwFtu=wRwFtu'; end;
 [ zX , strh] = xlswrite2( A1FeXL2 , Afile1test , sheet  , AfileC1 ) ;  
%  num = xlsread(filename,sheet,xlRange,'basic')
[ zST3, ST3] = xlswrite2( A1FeXL2, ST3adc1 , sheet , AFEATrange) 
 [ zX , str] = xlswrite2( A1FeXL2, Afile1test , sheet  ,  [ 'A' xlcol  '1'] ) ;     
[w5c,lentr2292R] =xlswrite2(A1FeXL2, wRwFtu, sheet, ['A' xlcol '3:A' xlcol '51']);
if 0, A1FileNamexl2= [ PATXL     'zSupTest'   wmethod wtrs  '.xls' ]; 
[ a11 a11m]= fileattrib( A1FileNamexl2 );    
  A1Filenamexl2= [ PATXL      'zSupTrain'  wmethod  wtrs  '.xls' ]; 
 [strq  strqp] =fileattrib(A1Filenamexl2) ;
 [tatus2, wmes] = xlswrite2( A1Filenamexl2 , Afile1test , sheet, AfileC1) ;  
   [wsts2, wms] = xlswrite2(A1FileNamexl2, Afile1test, sheet, AfileC1) ; 
 end; if exist('ST3adcR', 'var'),
     if (size(wRwFR,2)~=1),wRwFR=wRwFR'; end;
 [ zX , strh] = xlswrite2( A1FeXL2 , Afile1test , sheet+4 , AfileC1 ) ;    
[ zX1, strhA1] = xlswrite2( A1FeXL2 , ST3adcR , sheet+4, AFEATrange ) 
[ zX , strh] = xlswrite2( A1FeXL2 , Afile1test , sheet+4,  [ 'A' xlcol  '1']) ;     
[ w5,lentr2292]=xlswrite2(A1FeXL2,wRwFR, sheet+4,['A' xlcol '3:A' xlcol '51']); 
end; end; if 10, h_3_box1= figure('Name', [ Afile1tests ' 2170 RwF'] , ...
'Position', [ 20  10  SCR(3) SCR(4)-100]) ; axis([ -100  cwid+200 -3  4] ); 
fprintf('2192 colu  \n'  ); h =gcf; set(h,'WindowStyle','docked') ; 
if (size(wFwR,2)==1),wFwR=wFwR';end;if (size(wRwFtu,2)==1),wRwFtu=wRwFtu';end;
if (size(wRwF,2)==1),wRwF=wRwF';end;if (size(wRwFR,2)==1),wRwFR=wRwFR';end;
text(1 ,3 , [ 'RwF '  num2str( wRwF) ] ,'color', 'k' );
text(1, 2.5, [ 'FwR ' num2str( wFwR) ] ,'color', 'k');
 text( -100 , 0 , [ 'RwF  tr '  num2str( wRwFR) ] ,'color', 'k' );
  text( -100 , -01 , [ 'RwF  tt '  num2str( wRwFtu) ] ,'color', 'k' );
  if exist('NUM3 ', 'var'),text( d33,  -3 ,  [NUM3']  ,'color', 'k' ) ;  end;
  if exist('NUM3R', 'var'),text( d3,1, [(NUM3R') ] ,'color', 'k' );end; hold off; 
 cv_fold=10;cv_folds=num2str(cv_fold);  params=[' -v ' cv_folds    ]; 
end;end; if  ~BTIME,   wFrankss=num2str(wFranks) ;     
 if wFranks<=length(wRwF), wFrank=wRwF(1:wFranks);
 else wFrank=wRwF;end;
 zX = TEST4R( : , wFrank ); [zPwS1row wused ] =size( zX  ) ; 
zzz = [ 4 :  size(TRAIN4R, 2) ] ;    featuretest4_20  = [   zzz ]  ;  
 ung4TRAIN41CR= unique(TRAIN4CR');
 NUM2=TEST4R( : ,wFrank );  NUM=TRAIN4R( :, wFrank );  
end; end; if 10, libsvm_options2435=[ svm2435  libsvm_weights] ; 
fprintf('2202 colu  \n'  ); 

if exist( 'NUM' ,'var' ), y = (TRAIN4CR');  utlvp= unique( TRAIN4CR') 
else     NUM= NUM2;  y = (TEST4CR');   utlvp= unique( TEST4CR') ;
end; prob_x=NUM;   x = NUM; 
if   BTIME,   wFranks= size( NUM ,2 ); end; wFrankss=num2str(wFranks) ; 
 if ~exist('wFrankss','var'), wFrankss =''; end;  Lu=length(utlvp)
if 10, cv_fold=5 ;else cv_fold =length(A1FILETR840 ) ; end;
 f =length( unique(TRAIN4RF) );
yold=y; xs.BM =  BM; param= ['-h 0'] 
end; if    exist( 'NUM','var' )&(BSVM |  1) , if 1,
Lcell1 = (find(1==y)) ; Lcell234 = (find(1~=y));  utlv= unique(yold) 
Lcell2 = (find(2==y)) ; Lcell134 = (find(2~=y));   
Lcell3 = (find(3==y)) ; Lcell4 = (find(4==y));  xs.BM =  BM
Lc=size( TRAIN4R, 2); fprintf('2218 Lc=%d %d      \n', Lc  , ALTRAIN4 );  
%cv =svmtrain(TRAIN4CR, NUM,[ libsvm_options2435 ' -v ' cv_folds]);
fprintf('2220 colu %d   %d %d\n', size(NUM,2), size(NUM,1) ,size(y, 2) ); 
"warning off MATLAB:legend:IgnoringExtraEntries"
mse=0;mses=0; param= [  '-h 0  -q'] ;  tick=[ 0 :0.5: 1.0]; 
 end;if BSVM,  h2200 = figure('Name',[   ' ROC 2200 '] ,...
 'Position', [ 40 200  200  200]);h =gcf;  set(h,'WindowStyle','docked') ;  
 for i= 1: length( tick)  [ ST1PT{ i,1} , ceTB2] = sprintf('%.1f',  tick(i));end;  

for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold) 
Lce=(find(utlvp(i)==yold));Lcell=(find(utlvp(i)~=yold)); y(Lcell)=-1;
y(Lce )=1;  Lp=length( Lce ) ; CC=  int2str( utlvp(i))
 Lcem=(find(1==y )) ; K= i ;   utlv= unique(y ) 
 fprintf('2230  =%d %d %d %d \n', Lp, ALTRAIN4 ,cv_fold , i  );  
 if ~exist( 'h2200' ,'var'),   h2220(i)= figure('Name', [ CC '  2220 '  ] ,...
 'Position', [ 40 200  200  200]);h =gcf;set(h,'WindowStyle','docked') ; 
 end; fprintf('2210 L=%5d %d %d %d \n', Lp, ALTRAIN4 ,cv_fold , i ); 
 K= i ;  if i==1, col = 'g' ; elseif i==2, col = 'm';
 elseif i==3, col = 'r' ;  elseif  i==4, col = 'b' ; elseif  i==5, col = 'y' ;
 end;
 if 0, [msee, deci,label_y] =get_cv_deciJ(y,NUM,TRAIN4RF,param, cv_fold);
mse1(i) =msee(1);  mses=mses+mse1(i); auc(i)  =roc_curve( deci, label_y);  
end; if  10,hold on; params=[' -v ' cv_folds]; 
 [mse(i),auc(i)]=plotroc_160112 (y,NUM,TRAIN4RF,col,  [ ' -v ' cv_folds]  );
    
 fprintf('2240 L=%5d %d %d %d \n', Lp, ALTRAIN4 ,cv_fold, i ); 
 tick=[ 0 :0.5: 1.0];  set(gca, 'XTick', tick ); set(gca, 'YTick', tick );
 for j= 1: length( tick)  [ ST1PT{ j,1} , ceTB2] = sprintf('%.1f',  tick(  j ));end;   
  set(gca, 'XTickLabel',  ST1PT ) ;  set(gca, 'YTickLabel',  ST1PT) ; 
   set(gca, 'XTickLabel',  ST1PT, 'FontUnits',  'points', 'FontWeight', 'normal', ...
 'FontSize',  18 , 'FontName', 'Times' , 'YTickLabel',  ST1PT  ) ; 
FIGFILE= [ 'zz2230'  Afile1tests wFrankss  BM FILESTRAINS codefile  ... 
  int2str(NZBH) B date22 'c' int2str(i) ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
   if ~exist( 'h2200' ,'var'),saveas( h2220(i)  , [ FIGUFILr  '.png'] );end;
end; end;  title([ 'ROC curve, AUC = '  num2str(auc) ] , 'FontSize', 18 );  
 FIGFILE= [ 'zzROC'  Afile1tests wFrankss  BM FILESTRAINS codefile  ... 
  int2str(NZBH) B date22 'c' int2str(i) ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
 saveas( h2200   , [ FIGUFILr  '.png'] ); dbstop 2258;   
 end;   if BSVM, A = 'SVMCLASS'; NUM2 =double(NUM2) ; 
 [ AANUMR A11NUMC]= size(NUM); TRAIN4CR =double(TRAIN4CR);     
  cv =svmtrain(TRAIN4CR, NUM,  [ libsvm_options2435  ' -v ' cv_folds] ) 
 if  ~BTIME ,  A = [A 'feat'] ; else   A = [A 'TIME'] ; end;
if BSVM& BDT&& BTT, A = [A 'bdtBTT'] ;%A= 'SVMCLASSbdtBTT';   
elseif BSVM& ~BDT&&~BTT,  
elseif BSVM&  BDT&~BTT,A = [A 'bdt'] ;%A= 'SVMCLASSbdt';  
elseif BSVM& ~BDT&&BTT,A = [A 'BTT'] ; %A='SVMCLASSBTT' ; 
end;  if ~BTIME && Afile1test ==213, 
  %svm2435=[ '-s 0  -t 2    -h 0 ' ] ; BSV = 'RB' ; zbestg =10; 
   svm2435 = [  ' -s 0  -t 0   -h 0 ' ] ;  BSV = 'LR' ; 
elseif ~BTIME , % svm2435= [ '-s 0  -t 2 -h 0 '] ; BSV = 'RB' ; zbestg =10; 
 % svm2435 = [ ' -s 0  -t 1  -h 0 ' ] ; BSV = 'PL' ;  %zbestg = 1/A11NUMC ; 
  svm2435 = [  ' -s 0  -t 0   -h 0 ' ] ;  BSV = 'LR' ;  
elseif  BTIME,  svm2435=[  ' -s 0  -t 0   -h 0 ' ] ; BSV = 'LR' ; 
% svm2435= [ '-s 0  -t 2   -h 0 '] ; BSV = 'RB' ; zbestg =100;  zbestc =2^4;  
 end; if  1, A = [ A BSV ] ;  cmd_cg0 = [  ]; 
 cval = 2.^ [ -1  :  3 ] ; gval  = 2.^ [ -4 :  1 ]; zcvbest = 0;  
 logcb2 =  -1;  loggb2 =  -4; zc = 2^logcb2 ; zg = (2^loggb2) ; 
 end; if  bcv, zbestc = zc;   zbestg =zg ; 
% for  logcb2  = -1 : 3  zc = (2^logcb2);%for log2g = -4 :1   zg =(2^loggb2) ;  
  for  zc  =  1 : 1 : 3    
cmdcvcg=[ ' -v ' num2str(cv_fold) ' -c ' num2str(zc), ' -g ', num2str(zg),' -q '];
 zcv =svmtrain(TRAIN4CR , NUM ,[  svm2435  libsvm_weights  cmdcvcg ])  
% cvwn = svmtrain( TRAIN4CR , NUM ,  [  svm2435    cmdcvcg    ]  ) 
 if ( zcv > zcvbest ), zcvbest = zcv; zbestc = zc ; zbestg = zg ;
  fprintf('2280 zbestc =%f,  zbestc =%f zbestg= %f  \n', zc, zbestc, zbestg );                
 end;  %end; 
 fprintf(' 2260 zcv=%f bestc  %f zbestg=%f  \n',  zcv ,zbestc  , zbestg); 
 cmd_cvcg = [   '  -v '    num2str(cv_fold)  cmd_cg0  ' -q '  ];
end; end; if 0, while( isempty( svmStruct1d )) zc=zc+0.5; zg= zg+0.5; 
cmd_cgd = [ ' -c ' num2str(zc), ' -g  ', num2str(zg )  ' -q ' ];  
options2435d= [ svm2435  libsvm_weights '  -v ' num2str(cv_fold) cmd_cgd ] ;   
 svmStruct1d = svmtrain( TRAIN4CR' ,   NUM , options2435d  );
[EEb1, qct1b1, prob1] = ...
svmpredict(TEST4CR, NUM2, svmStruct1d , '-b 1'); utlvp= unique( EEb1' )    
end; if 0, zc  = 1;   zg = 1/A11NUMC ;  num2str(cv_fold)
cmd_cgdef = [   ' -c ' num2str(zc), ' -g  ', num2str(zg )    ' -q '   ];   
libsvm_cvcgd=[ svm2435  ' -v '  num2str(cv_fold) libsvm_weights cmd_cgdef ];
cvd   = svmtrain( TRAIN4CR ,   NUM , libsvm_cvcgd  ); 
svmStruct1d = svmtrain...
(TRAIN4CR,NUM, [svm2435 libsvm_weights  cmd_cgdef  ' -q ' ])   
[EEb0, qct1b0, prob0]= svmpredict(TEST4CR, NUM2, svmStruct1d , '-b 0') ;  
libsvm_options2435 =  [ svm2435  libsvm_weights ]; utlvp= unique( EEb0') 
  svmStruct2 = svmtrain( TRAIN4CR , ( NUM) , libsvm_options2435  ) ; 
 [EEb0, qctb0, probb0 ] = svmpredict(TEST4CR, NUM2, svmStruct2 , '-b 0') ; 
 libsvm_options2435cg =  [ svm2435   libsvm_weights  cmd_cg  ] ;   
svmStruct3 = svmtrain( TRAIN4CR , ( NUM) , [ libsvm_options2435cg  ] ) ;
[EEw1, qctw1, probw1 ] = svmpredict(TEST4CR, NUM2, svmStruct3 , '-b 0') ;    
end; end; if ~exist('ASFILE','file' ), if 10, cv_fold=2 ; fprintf('2300 O%d\n', k );
 if  exist('zbestc', 'var'), cmd_cg0 =[ cmd_cg0 '  -c ' num2str(zbestc) ]; end;
if exist('zbestg', 'var'), cmd_cg0 = [ cmd_cg0  ' -g ', num2str(zbestg ) ]; end;
 libsvm_options0 =  [ svm2435  libsvm_weights  cmd_cg0  ] 
 
 clear X2P    zX  TRAIN4C  QPTEST4R lentr2252* ; which svmtrain -all ; 
 clear AAL2lentr22* QTRAIN4   TEST4R  TEST4  QTEST4R ; 
 clear QTRAIN4R QPTRAIN4R  QPTRAIN41   QPTRAIN4; 
clear QPTEST4    QTEST4 ;clear   QPeDATA* QPeDATAU; Afile1tests
 fprintf('2312 colu  \n'  ); [a11num2r  A11NUM2C ] = size(NUM2)
 A11NUM2Cs=num2str(A11NUM2C); [ a11numr  A11NUMCM]=size(NUM)
cmd_cvcg = [ '  -v '  num2str(cv_fold)  cmd_cg0 ' -q ' ] 
 end; if 10, y =(TRAIN4CR'); 
Lcell1 = (find(1==y)); utlvp= unique( TRAIN4CR') 
 Lcell234 = (find(1~=y)); y(Lcell234)=-1; utlv= unique( y) 
  h2380 = figure('Name', ' ROC2430 ', 'Position', ...
 [640  400 SCR(3)/2-100 SCR(4)/2-200]);h =gcf;set(h,'WindowStyle','docked') ; 
auc=plotroc_160101( TRAIN4CR ,NUM ,[ libsvm_options0  ' -v 5 ']) 
% [deci, label_y ] = get_cv_deciJ( y, NUM , param, cv_fold );  
 cv_fold  = length( unique(  TRAIN4RF ) ) ; cv_folds = num2str(cv_fold) 
auc=plotroc_160103...
    (TRAIN4CR,NUM,TRAIN4RF,[libsvm_options0 ' -v ' cv_folds])
 nELM=5 ; nUnits=5 ; if ~BTIME, zzz= wFrank; else zzz=[ O-1 : O+1]; end;
 [x,posx] = find(T==1); NUM= [    ] ; 
 accuracy1= trainAndValidateELM( NUM, y', zzz ,  nFolds,nELM,nUnits)
end; end;  end;  if  BSVM, if 1, 
%addpath(genpath('G:\MATLAB\R2008a\toolbox\bioinfo') ); 
addpath(genpath('c:\FINAL\dropbox\libsvm-3.17')); which svmtrain -all ; 
 libsvm_options0 =  [ svm2435  libsvm_weights  ] 
 cmdcvcg=[ ' -v ' num2str(cv_fold) ' -c ' num2str(zc), ' -g ', num2str(zg),' -q '];
  zcv  =svmtrain(TRAIN4CR , NUM ,[  libsvm_options0  cmdcvcg ])  
 if ~exist('wmethod','var' ),wmethod='';end; if ~exist('wtrs', 'var'), wtrs=''; end;
 if ~exist( 'zbestg','var'), zbestg = 0; end; 
 end;  if 0, Excel = actxserver( 'Excel.Application' ); 
 zcv1= svmtrain( TRAIN4CR, NUM ,[   cmd_cvcg ]) 
zcv2 = svmtrain( TRAIN4CR, NUM ,[ svm2435  cmd_cvcg ])  
 zcv3= svmtrain( TRAIN4CR, NUM , [ libsvm_options0  cmd_cvcg ]) 
A1filexl2V=[PATXL 'z'  BA BM BC wmethod Afile1tests wtrs codefile dates '.xls'];
 if  ~exist(  A1filexl2V  ,'file'), ExcelWorkbook = Excel.workbooks.Add ;
ExcelWorkbook.SaveAs(A1filexl2V,1) ;  ExcelWorkbook.Close(false);   
end;   invoke(Excel.Workbooks,'Open', A1filexl2V ) ;
 worksheets = Excel.Sheets ; numSheets = worksheets.Count 
invoke(Excel.ActiveWorkbook,'Save'); Excel.Quit; Excel.delete; clear Excel;
[ a1cu a2cu ] = fileattrib( A1filexl2V ) ; i=xlrow;  xlrv= 2;   
if  a1cu, while 1, A1nuv= [ 'U'  num2str(xlrv)]
wv= xlsread(A1filexl2V, sheet, A1nuv);  
  if sum(wv) >1, xlrv = xlrv+1 ; else break; end; 
end; end;  if  10,  xlrvs=  num2str(xlrv );A1nuv= [ 'U'  (xlrvs) ];  
A1PERv =[ 'P'  (xlrvs )] ;  A1TPsumv= [ 'N'  (xlrvs)] ; ActsumOrv= [ 'O' (xlrvs)];  
A1rangeCTV=[ 'B' (xlrvs ) ': E'  ( xlrvs)]; A1rangeFPV = [ 'F' (xlrvs) ': I' (xlrvs)];
A1rangeTPV= [ 'J'  (xlrvs )  ': M'  (xlrvs ) ] ; A1rAv = [ 'A' (xlrvs ) ]; 
end;  if  ~BCLUST, A1rVZv = [ 'U'  (xlrvs) ':'  'AJ'  (xlrvs) ] ;
 A1rangeTNv= [ 'Q' num2str(xlrvs)  ': T' num2str(xlrvs) ] ; 
end; if   BCLUST, A1rVZv = [ 'Q'  ( xlrvs  )  ': Z'  ( xlrvs ) ] ;
 end;  if ~exist( 'zbestg','var'), zbestg = 0;    end;
 wVAB=[ zcv, zbestc, zbestg, A11NUM2CM, A11MIT, A11MTT, ...
  toc,  ALTRAIN41R, FTRAINL     FILESTRAIN    ];
 [ws2, wmun] = xlswrite2( A1filexl2V, wVAB, sheet, A1rVZv ) ;   
[wstatus2, wmes ] = xlswrite2( A1filexl2V, Afile1test , sheet,  A1rAv) ;
%  [ z2, wmvz ] = xlswrite2( A1filexl2V , headvz, sheet, 'U1:AD1' );  
%  [ tp, wmTP] = xlswrite2( A1filexl2V ,  TCA, sheet, A1PERv)  ;
end; if 1, svmStruct0= svmtrain...
    ( TRAIN4CR , NUM , [ libsvm_options0  ' -q ' ]) 
 if 1, sv_indices = full(svmStruct0.sv_indices); 
A1sv_indicesT=TRAIN4R(sv_indices,: );FILESTRAINS
ECG=genvarname([ 'A1sv_indicesT',FILESTRAINS]); 
eval([ECG '= A1sv_indicesT;']);% A1nsv_indicesTF=A1sv_indicesT(:,35); 
 end; if 10,  Asvmfile=[  'ASVM' num2str(FILESTRAINS)  ...
B num2str(FILESTEST) da(4:6),da(10:11),da(1:2),da(13:14),da(16:17) '.mat'];
ASFILE = fullfile( PATF, Asvmfile )  
save(ASFILE,'svmStruct0','FILESTEST' ,'FILESTRAIN', 'codefile',...%,'ps'
'TEST4CR' ,'NUM'  , 'TRAIN4R' ,'TRAIN4CR','O' ,'A1sv_indicesT','ECG');
clear ECG;     which svmpredict -all ; 
if exist('ASFILE','file'), x=load([ ASFILE ]); svmStruct0=x.svmStruct0;end;
 [EE, qctb0, prob ] = svmpredict( TEST4CR, NUM2, svmStruct0 , '-b 0' ) ; 
 end; A1sv = full(svmStruct0.SVs) ; 
 A1nSV = svmStruct0.nSV; toctr =  toc
if 0,[  param1, fold ] = proc_argvJ(   [ libsvm_options0  cmd_cvcg ]); 
  [ deci, label_y ] = get_cv_deciJ( y, NUM ,param1, fold) ;    
 end; sv_indicesC=TRAIN4CR(sv_indices); 
A1sv_indicesCu=unique(sv_indicesC); 
A1nsv_indicesTF=TRAIN4R35(sv_indices);
A1nsv_indicesTFu =   unique ( A1nsv_indicesTF) ;
A1sv_indicesR = TRAIN41R(sv_indices );  Feature1_35=[ 1 35];
 if  ~exist( 'zcv', 'var'),  zcv =   qctb0(1) 
end;  fprintf(' 2395 SVM time  Expt 1 \n' ) ; m=6 ;  
end;end; end;  if BSVM, h2640 =figure('Name', [Afile1tests '2410SVs1' ...
A11NUM2Cs] ,'Position', [ 100  SCR(4)/2-100  SCR(3)/2-100 500]); 
 h = gcf ;  set(h,'WindowStyle','docked') ; 
for  i = 1 : length( A1sv_indicesCu)    j =  A1sv_indicesCu( i ) ;
 if  j == 1, c='g' ;   elseif    j == 2    c=cm ; 
 elseif j == 3,  c=cr ;  elseif   j == 4,   c='y' ; elseif j == 5,  c='b' ;
end;  A1sv_indicesCI{i}  = find( sv_indicesC ==j )  ;
[ A1sv_i1(i )  ] =  size( A1sv_indicesCI{i},1 ) ;
A1sv_indicesCIX{ i }  =   sv_indices( A1sv_indicesCI{i} )  ;
% A1sv_indicesTR{i}  = TRAIN4R(A1sv_indicesCIX{i}, : ) ;
% A1nsv_indicesTRF{i}  = TRAIN4R(A1sv_indicesCIX{i}, 1 ) ;
A1nsv_indicesTRFILE{i}    =  TRAIN4R35(A1sv_indicesCIX{i}  ) ;   
[A1nsvTRFA3s1(i)  A1nsvTRFA3s2(i) ] = size(A1nsv_indicesTRFILE{i} ) ;
A1nsvFIa =unique(  A1nsv_indicesTRFILE{i } ) ;
A1nsvFI{i}=unique(A1nsv_indicesTRFILE{i});
A1nsv{i}=A1nsv_indicesTRFILE{1,i};
 for k = 1: A1sv_i1(i )  A1nsv_indicesTRFA(j,k)=A1nsv_indicesTRFILE(i);
 end; %    A1nsv_indicesTRFAA( i ) = A1nsv_indicesTRFILE(j) ;
 m=4 ;  subplot( m ,1,1) ;   grid off;  
 if  exist('NUMO','var') YQP1 =  NUMO(  A1sv_indicesCIX{i} , : ) ;
elseif  exist('NUM','var') YQP1 =  NUM(  A1sv_indicesCIX{i} , : ) ;
end;  if  exist('YQP1','var'),  for K = 1 : length( A1sv_indicesCIX{i})
  plot( YQP1(K , : ) ,  c  ) ;  hold on ;
end; end; end; if  0, h2840 =figure('Name','2520 SVs ', 'Position', ...
[ 100 10 SCR(3)/2-100 400]);h=gcf; set(h,'WindowStyle','docked') ; 
else   subplot( m ,1, 2 ) ;   
end;  if  BNORM,% A1svX = mapstd('reverse', A1sv' ,ps) ;  
%    plot(A1svX    ,  'c' )  ; hold on;
else      plot(A1sv' , 'k')  ; hold on;     A1nsvFI{ 1,:} 
end;  subplot(m ,1,3) ;   plot(A1sv' , 'b')  ; hold on ;
 if  0, g5 =figure('Name',   ' 2310  SVs ','Position', [100  SCR(4)/2-100      ...
SCR(3)/2-100 SCR(4)/2-100 ]); h = gcf ;set(h,'WindowStyle','docked') ; 
else    subplot( m ,1, 4 ) ; 
end; if 0, for i = 1 : length( sv_indicesC)-1
plot(A1sv( i , : ) ,    A1sv(i+1,  : )  ,   'k')  ; hold on;
 if   ~isempty(A1sv) plot(A1sv(: ,1) ,    A1sv(:, 2)  ,   'mo')  ; hold on;
end; end; end;  if 0, g6 =figure('Name','  2490  SVs ','Position', ...
 [  SCR(3)/2  SCR(4)/2   SCR(3)/2-100 SCR(4)/2-100 ]); 
h =gcf ;set(h,'WindowStyle','docked') ; 
 else if m >4,  subplot(   m ,1,5) ; end;   % axis(  [  -5  500   -3 3]  );
 end; for i = 1 : length( sv_indicesC)  k =sv_indicesC(i) ;
 if   k == 1 , c='g' ;   elseif    k == 2   c='r' ; elseif k == 3,  c='m' ;
 elseif  k == 4,   c= 'y' ;       elseif k == 5,  c='b' ;
end;   if  BNORM, % plot(A1svX( : , i  ) ,  c )  ; hold on;
else  plot( A1sv( : , i  ) ,  c  )  ; hold on ;
  plot( A1sv( : , i  )' ,  c  ); hold on ;
 end;  end;    which svmtrain -all;
text( O , 2 , [ 'sv '  num2str(  A1nsv_indicesTFu') ] ,'color', 'k' );
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
 set(gca,'XTickLabel', (get(gca, 'XTick')) ) ;
  %[EEresult] =multisvm(NUM,TRAIN4CR,  testing) ; 
 % [ qct2, chi2 ,p, label2490] = crosstab( TEST4CR ,EEresult) ;
end; if  0&&BSVM,  utlv2633= unique( TEST4CR' ) 
TEST4CR= double( TEST4CR); LTLV= length(TEST4CR)
 [EE, qctb0, prob ] = svmpredict(TEST4CR, NUM2, svmStruct0 , '-b 0');
fprintf('2450 SVM%d\n', svmStruct0.nr_class);svP= svmStruct0.Parameters
op = prob( : , svmStruct0.Label ==1  ) ;   utlvp= unique( EE' )
op_labels =  find(op'>1) ; %  gives probability  positive% class label is 1 
[ EEp1 , qctp1 ,  prob_estimates0] = ...
svmpredict( (TEST4CR) , (NUM2), svmStruct0, '-b 1'); utlvp =unique(EE')
end;   if ~BTIME &&~BSVM,
if 0, TEST4R = TEST4R( :,4 :end) ; TRAIN4R= TRAIN4R( : ,4:end) ;end;
[zPwS1row wSM2 ] = size( TEST4R  ) ;  [zPwl  Rc ] = size( TRAIN4R   ) ; 
 svmtrain1.kerType = 2;  nu=1; mu=0; bal=10;  output=1; rr=1; 
 zzz = [11,12, 13,  14,15, 16:17, 21,22,  27,  29: 34];  k1 =ALTRAIN41R2 ;  
options = [];  k1 =ALTRAIN41R2 ;  %&&( 212 ~=Afile1test ),  
zzz = [11,12, 13,  14,15, 16:17, 21,22,  27,  29: 34];  featuretest4_20= zzz ;
NR= []; NaNCH=[]; i =9 ; %paths = addpath(genpath('G:\jaga\knKmeans')) ;
paths= addpath(genpath( [PATXL 'FSLib_v4.0_2016\FSLib_v4.0_2016'])) ; 
d = 2; n =  length( TEST4CR ); k = length(unique( TEST4CR)  ) ; 
 init = ceil(k*rand(1,n)); options.gnd = TEST4CR; paths = zzz;
 end; end; if ~BTIME && ~BSVM && ELM&&0,A ='ELMzzzCLASSW'  ;
if 00, TEST4R( : , ARR) = [ ] ; TRAIN4R( : , ARR ) = [ ] ; end;   
if   inF213,  Kernel_para=156  ;  elseif  10,   Kernel_para=100 ;end;   
nFolds=5;  nELM=5;    nUnits=5;  x  = TRAIN4CR ;  y = TEST4CR ; 
AM1= [ double(TRAIN4CR) double( TRAIN4R(: , zzz)) ] ;  
AM2= [  single(TEST4CR )  double(TEST4R(: , zzz)  ) ] ;
 dlmwrite( 'ATRfile.txt', AM1, 'delimiter', '\t'  ,   'precision', 2) ;
dlmwrite('ATTfile.txt', AM2, 'delimiter', '\t' ,  'precision', 2) ;
   addpath(genpath('Weighted-ELM'));  zsigma2=Kernel_para; 
   %elm_kernel( 'ATRfile.txt', 'ATTfile.txt' ,zsigma2, zbestc) ; 
%elm_kernel(TrainiFile, TestFile, Elm_Type, zbestc, Kertype, zsigma2);
   
%accuracy1=trainAndValidateELM(TRAIN4R,x,zzz,nFolds,nELM,nUnits)
 [TrainTime, TestTime, test_sensitivity, test_specifi, test_gmean, EE] =...
 ELM_kernelW('ATRfile.txt', 'ATTfile.txt' ,  zsigma2,   zbestc  )  ; 
 h2470 = figure('Name',[   ' ROC 2470 '] , 'Position', ...
[ 40 200  200   200]);h =gcf;  set(h,'WindowStyle','docked') ; 

for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold) 
Lce=(find(utlvp(i)==yold));Lcell=(find(utlvp(i)~=yold)); y(Lcell)=-1;
if 1,y(Lce )=1; end; Lp=length( Lce ) ; CC=  int2str( utlvp(i))
 Lcem=(find(1==y )) ; K= i ;   utlv= unique(y ) 
[ yptestpre] = find(EE==i);  [ yptest  ] = find(y ==1); 
[ yptestpren] = find(EE~=i);  [ yptestn ] = find(y ~=1); size( y,1 )
xs.positive_n =length( yptestpre  );    is=int2str (i)  
  xs.likelihoods=y ; size( y,2 ) 
xs.name = 'ELM'; file=  'fileN1.png';   xs.BM =  BM
[ aucr( i)  ]= rocrandom1701012(  is , h2470, col,  xs ) ; 
 aucs(i) = cell2mat( aucr(i)  ) 
if isnan( aucs(i) ) ,  break ; end; 
 title([ 'ROC curve, AUC = '  num2str(aucs  ) ] , 'FontSize', 18 );  
end;    FIGFILE=[ 'zzh24730ELMROC'  ...
    Afile1tests wFrankss  BM FILESTRAINS codefile  ... 
  int2str(NZBH) B date22 'c' int2str(i) ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
 saveas( h2470   , [ FIGUFILr  '.png'] ); 

end; if 0, for i = 1 : size(T, 2) [xxTe(i), ET(i)] =max(T(:,i) ); end;
 [ yptrain    ] = find(ET==1); [ yptrain2 ] = find(TRAIN4CRM==1);
 [ yptrainn  ] = find(ET~=1); [ yptrain2n ] = find(TRAIN4CRM~=1);  
xs.positive_n =  length( yptrain ); xs.likelihoods=ET' ;  

 end;end; if BCLUST&& ELM && ~BTIME, A='ELMzzzCLUSKM2500' ; 
if wFranks<=length(wRwF),wFrank=wRwF(1:wFranks); else wFrank=wRwF;
end; if  Afile1test == 100, 
    [ wNN] = wFranks ;   wNE =wNN;  wlamd =10.1; 
  elseif  Afile1test == 119, [ wNN] = wFranks ; wNE =wNN ; wlamd =10.1; 
 elseif Afile1test ==123, wNN=wFranks+12; wNE=wNN+12; wlamd =-10.1; 
 if  wFranks == 16, wNE =wNN-5;  wlamd =10^-2;     end;
  elseif Afile1test == 200, wNN=wFranks-2; wNE=wNN-0; wlamd =-0.1 ; 
   if   wFranks == 16,wNE =wNN-0;  wlamd =10^2;     end;
elseif Afile1test == 202,   wNN=wFranks-0; wNE =wNN-0 ;  wlamd =10^3;   
   if   wFranks == 16,wNE =wNN-0;  wlamd =10^2;  end;
 elseif Afile1test ==210,  wNN=  wFranks; wNE =wNN-00; wlamd=10^3;   
 elseif Afile1test == 213,  wNN=  wFranks; wNE =wNN-10;  wlamd =10^3;  
   if   wFranks == 16,wNE =wNN-0;  wlamd =10^3;    end; 
  elseif Afile1test ==214,  wNN=wFranks+10; wNE =wFranks-0; wlamd =-0.01;    
  elseif Afile1test == 219,  wNN=  wFranks+2; wNE =wNN ;  wlamd =0.1;    
  elseif Afile1test == 222,  [ wNN] = wFranks ;  wNE =wNN ; wlamd =10.1;       
 elseif Afile1test == 228, wNN=  wFranks+10;wNE =wNN+100 ;wlamd =-1.3;    
A% if  wNN>15,wNE =wNN-15; else  wNE =wNN-3;end; 
 %if  wFranks==12, wNE= wFranks-2 ; end;   
 elseif Afile1test == 231,[  wNN] = wFranks-8 ; wNE =wNN+16; wlamd =-0.1;   
elseif Afile1test ==232,  [ wNN] =  wFranks-8 ;wNE =wNN+16;wlamd =-1.11;   
elseif Afile1test == 233,  [  wNN] =  wFranks ;  wNE =wNN-2 ;  wlamd =-0.1;   
  if   wFranks ==16, wNE =wNN+10;  wlamd = -10^0.3;  end; 
 elseif Afile1test == 234,  [  wNN] = wFranks ; wNE =wNN-2; wlamd =-0.1;   
  if   wFranks == 16, wNE =wNN-0;  wlamd =10^3;   end;  
else   wlamd =0.1 ;   [wNN] =  wFranks;  wNE = wNN -5
end; if DBUG&1, dbstop 2528;  end; 
if ~exist( 'wlamd', 'var'),  wlamd =lamd ; end ;
if ~exist('wNN', 'var'), wNN =NN ; end;if ~exist('wNE', 'var'), wNE=NE; end ;
 fprintf(' 2535 Expt   BCLUST  elm_kernel \n' );    ran = 24 ;  
zX = TEST4R( : ,  wFrank ) ;  [ zPwS1row wused ] = size( zX ) ;   
if  KM,  A04174 = 'KM' ;  BDT = 00; Afile1test
[    EE  EU   acc_uelm    acc_kmeans Beselm Beskm  ] = ...
USELM150905A(  zX ,TEST4CRM , wlamd,  wNN , wNE ); tocelm1=toc;  
SK = (std(acc_kmeans,1 )) ; MK  =(mean(acc_kmeans)) ; 
SE =   (std(acc_uelm,1 )) ; ME = ( mean(acc_uelm))  ;
 [ cmat  acc_usel ] = accuracyh(TEST4CRM, EE') ; A 
 wUAB =  [ ME,   MK,   SE,  SK,  wlamd , wNE,  wNN, Beselm,  Beskm  ];     
 [C237I] = find(EE==3); [CHI ] = find(EE==1); % EE(C237I )=1; EE(CHI)=3;  
 
end; if ~KM, [EE] =USELM150830...
        ( zX,TEST4CRM , wlamd , wNE, wNN ) ;
 acc_usel =accuracy(TEST4CR , EE' ); A = 'ELMzzzCLUS2493' ;  toc      
 end; 
end; if (~BCLUST&&~BTIME&&~BSVM&&ELM),    
 fprintf(' 2550 Expt   class  elm_kernel \n' );  A='ElmFzzzClass2'  
 if  wFranks<=length( wRwF), wFrank =wRwF(1: wFranks ); 
elseif  wFranks> length( wRwF),    wFrank  =  wRwF ;  
end; zY = TEST4R( : , wFrank ) ; y = TEST4CR ; 
[ strhfq ] = find(y ==2 ); uy=(unique(y')) ;
zX = TRAIN4R( : , wRwF(1: wFranks) ) ; J = size(zX) 
 AM1=[double(TRAIN4CRM) double( TRAIN4R(: ,wRwF(1: wFranks) )) ];
 dlmwrite('ATRfile.txt', AM1, 'delimiter', '\t', 'precision', 2) ;   
AM2= [  single( y  )  double( zY )] ; [zPwS1row wused ] = size( zY  ) 
 dlmwrite('ATTfile.txt', AM2, 'delimiter', '\t' ,  'precision', 2) ; 
addpath(genpath('c:\final\dropbox\Weighted-ELM')); clear  TRAIN4CR ; 
clear  AM1 AM2 QTRAIN4R  QTRAIN4 AAL2lentr2252sd ; 
addpath(genpath( 'Weighted-ELM')); clear  QPeDATAU QPeDATA4U ;  
clear  init  TRAIN4R QPTRAIN4R  QPTEST4R QTEST4R TRAIN42C; 
clear  AM1 AM2 QPTRAIN4  PACRSTR QPTRAIN41   pac C3T2; ; 
clear  lentr2252 lentr2252v500 TEST4R QPeDATA4R  QPeDATA4O;
fprintf(' 2570 Expt  class  elm_kernel\n');   %  dbstop 2514; 
if ~BTIME, zzz= wFrank; else zzz=[ O-1 : O+1]; end;
if 0, nELM=1; T= TRAIN4CRM'; nFolds=5; y=TEST4CR' ; 
T=[ 1;2;3;1;2;]';y= [ 2;2;2; ]'; zX= [1 1;2 2; 3 3; 4 4; 5  5;]; zY=[6 6; 7 7; 8 8]; 
 [x,posx ] = find(T==1); nUnits=5 ; %W = zeros(length(T),length(T));
 sorted_target  =sort( cat(2,T,y),2); label=  zeros(1,1 ); 
NumberofTrainingData=size(zX',2); NumberofTestingData=size(zY',2); 
    label(1,1)=sorted_target(1,1);    j=1;
for i = 2:(NumberofTrainingData+NumberofTestingData)
if sorted_target(1,i ) ~= label(1,j), j=j+1; label(1, j) =sorted_target(1,i ); end;
 end; nC=j;NumberofOutputNeurons=nC;
    temp_T=zeros(NumberofOutputNeurons, NumberofTrainingData);
 for i = 1:NumberofTrainingData   for j = 1:nC 
  if label(1,j ) == T(1,i ), break; end;  end; temp_T( j,i)=1;end; T=temp_T*2-1;   
temp_TV_T=zeros(NumberofOutputNeurons, NumberofTestingData);
 for i =1:NTestingData   for j = 1:nC   if label(1,j) == y(1,i),break;end; end; 
 temp_TV_T(j,i)=1;   end;   y=temp_TV_T*2-1; tic;  n = size(zX,2); 
 clear  zY X2P  QPTEST4  QTEST4  TEST4  TRAIN4C lentr2252R ; 
%%Omega_train = kernel_matrix(P',Kernel_type, Kernel_para); 
accuracy1 = JtrainAndValidateELM( zX , T' , n ,nFolds,nELM,nUnits)
    for r = 1 :size(subdeci, 2) [xxTer(r ), ETr(r)] =max(subdeci(:,r )); end; 
end;  if   (~BCLUST&&~BTIME&&~BSVM&&ELM), , 
clear AQ1  AQC AQPMC NUM NUM2 QPTRAIN42 QPTEST4  QTEST4 ;
clear lentr2252R  prob_y x    zX zY  prob_x  TEST4; 
[ TrainingTime, TestingTime, wTrainAcc , TestingAccuracy,T ,EE  ] = ...
elm_kernelROC('ATRfile.txt', 'ATTfile.txt', 1 , zbestc ,'RBF_kernel', zsigma2); 
EfeatCLASS=EE;xs.BM =  BM
xs.name = 'ELM'; file=  'fileN1.png';    CC=1
for i = 1 : size(T, 2) [xxTe(i), ET(i)] =max(T(:,i) ); end;
 [ yptrain    ] = find(ET==1); [ yptrain2 ] = find(TRAIN4CRM==1);
 [ yptrainn  ] = find(ET~=1); [ yptrain2n ] = find(TRAIN4CRM~=1);  
xs.positive_n =  length( yptrain ); xs.likelihoods=ET' ;  

uy=(unique(TRAIN4CRM')) ; utlvp= unique(TRAIN4CRM) 
 h2680 = figure('Name',[   ' ROC 2600 '] ,...
 'Position', [ 40 200  200  200]);h =gcf;  set(h,'WindowStyle','docked') ;  
 for i= 1: length( tick)  [ ST1PT{ i,1} , ceTB2] = sprintf('%.1f', tick( i));end;  
 for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold) 
Lce=(find(utlvp(i)==yold));Lcell=(find(utlvp(i)~=yold)); y(Lcell)=-1;
if 1,y(Lce )=1; end; Lp=length( Lce ) ; CC=  int2str( utlvp(i))
  is=int2str (i) ; Lcem=(find(1==y )) ; K= i ;   utlv= unique(y ) 
[ yptestpre] = find(EE==1);  [ yptest  ] = find(y ==1); 
[ yptestpren] = find(EE~=1);  [ yptestn ] = find(y ~=1); 
xs.positive_n =length( yptestpre  ) 
[ area2690( i ) ]= rocrandom170101(  file ,  h2680 ,   xs   )
[ aucr  ]= rocrandom1701012(  is , h2700, col,  xs ) ; 
fprintf(' 2615 Expt  class  elm_kernel\n');       
 end;  FIGFILE=[ 'zzh2610ELMROC'  ...
    Afile1tests wFrankss  BM FILESTRAINS codefile  ... 
  int2str(NZBH) B date22 'c'    ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
 saveas( h2680   , [ FIGUFILr  '.png'] ); 
if 10, h2700 = figure('Name',[   ' ROC 2700 '] , 'Position', ...
[ 40 200  200   200]);h =gcf;  set(h,'WindowStyle','docked') ; 

for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold) 
[ yptrain    ] = find(ET==i); [ yptrain2 ] = find(TRAIN4CRM==i);
 [ yptrainn  ] = find(ET~=i); [ yptrain2n ] = find(TRAIN4CRM~=i);  
xs.positive_n =  length( yptrain ); xs.likelihoods=ET' ;  
file=  'fileN2.png'

[ aucr  ]= rocrandom1701012(  is , h2700, col,  xs ) ; 

end; 

 [ yptrain    ] = find(ET==1); [ yptrain2 ] = find(TRAIN4CRM==1);
 [ yptrainn  ] = find(ET~=1); [ yptrain2n ] = find(TRAIN4CRM~=1);  
xs.positive_n =length( yptrain ); xs.likelihoods=ET' ;  

for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold) 


Lterp=(find(utlvp(i)==ETr));Ltern=(find(utlvp(i)~=ETr));yr(Ltern)=-1;
 for r=1 : size(mLabel, 2) [xxTe(r ), ET(r)] =max(mLabel(:,r )); end; 
yuET=unique(ET) ; yu=  unique(y)  
for p =1: length( yuET ) cc=yuET(p);  Ltr{ p ,:} =(find(cc==ET)) ;end; 
Ltrp=(find(1==ET));Ltrn=(find(1~=ET));z(Ltrn)=-1; if 1,z(Ltrp )=1;end;
yuETm=unique(ET)  ;  uz=  unique(z) ;  mse(i)=0;is=int2str (i)  
  xs.name ='ELM'; xs.positive_n =length( Ltrp); xs.likelihoods=z'; xs.c=i   

  [ aucr( i)  ]= rocrandom1701012(  is , h2700, col,  xs ) ; 
 aucs(i) = cell2mat( aucr(i)  ) 
if isnan( aucs(i) ) ,  break ; end; 
 title([ 'ROC curve, AUC = '  num2str(aucs  ) ] , 'FontSize', 18 );  
end;    FIGFILE=[ 'zzh2730ELMROC'  ...
    Afile1tests wFrankss  BM FILESTRAINS codefile  ... 
  int2str(NZBH) B date22 'c' int2str(i) ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
 saveas( h2700   , [ FIGUFILr  '.png'] ); 
 
 end;h2730 = figure('Name',[   ' ROC 2650 '] ,...
 'Position', [ 40 200  200  200]);h =gcf;  set(h,'WindowStyle','docked') ;  
 for i= 1: length( tick)  [ ST1PT{ i,1} , ceTB2] = sprintf('%.1f', tick( i));end;  
for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold) 
Lce=(find(utlvp(i)==yold));Lcell=(find(utlvp(i)~=yold)); y(Lcell)=-1;
if 1,y(Lce )=1; end; Lp=length( Lce ) ; CC=  int2str( utlvp(i))
 Lcem=(find(1==y )) ; K= i ;   utlv= unique(y ) 
[ yptestpre] = find(EE==1);  [ yptest  ] = find(y ==1); 
[ yptestpren] = find(EE~=1);  [ yptestn ] = find(y ~=1); 
xs.positive_n =length( yptestpre  );file=  'fileN1.png';   
  
file=  'fileN2.png'
[ area ]= rocrandom170101(  file ,  h2730 ,   xs   )
end; FIGFILE=[ 'zh2730'    ... 
  Afile1tests wFrankss  BM FILESTRAINS codefile  ... 
  int2str(NZBH) B date22 'c' int2str(i) ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
 saveas( h2730   , [ FIGUFILr  '.png'] ); 
 if 1, h2640 = figure('Name',[   ' ROC 2660 '] , 'Position',...
 [ 40 200  200  200]); h =gcf;  set(h,'WindowStyle','docked') ; 
if ~BTIME, zzz= wFrank; else zzz=[ O-1 : O+1]; end;  
for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold) 
Lce=(find(utlvp(i)==yold));Lcell=(find(utlvp(i)~=yold)); y(Lcell)=-1;
if 1,y(Lce )=1; end; Lp=length( Lce ) ; CC=  int2str( utlvp(i))
 Lcem=(find(1==y )) ;   utlv= unique(y ) 
  if i==1, col = 'g' ; elseif i==2, col = 'm';
 elseif i==3, col = 'r' ;  elseif  i==4, col = 'b' ; elseif  i==5, col = 'y' ;
   end; hold on; %dbstop 2256; 
 fprintf('2680 L=%5d %d %d %d \n', Lp, ALTRAIN4 ,cv_fold , i  ); 
 if ~BTIME, zzz= wFrank; NUM= double( TRAIN4R(: , wFrank)); 
 elseif ~BTIME , zzz=[ O-1 : O+1];  
end; if  0, [ inW, bias, outW, subdeci ] = elmTrain( NUM' ,y ,size(NUM,2),1) ; 
 mLabel  = elmPredict( NUM' , inW, bias, outW ) ; 
  for r = 1 :size(subdeci, 2) [xxTer(r ), ETr(r)] =max(subdeci(:,r )); end; 
  
 elseif 10,if  size(y,2 )  ~=  1 ,y  =  y' ; end; 
     AM1=[double(y) double(NUM)];
     dlmwrite('ATRfile.txt', AM1, 'delimiter', '\t', 'precision', 2) ;   
     [TrainTime, TestingTime, wTrainAcc, yTCA2,subdeci, mLabel] = ...
elm_kernel('ATRfile.txt', 'ATRfile.txt',1, zbestc, 'RBF_kernel', zsigma2) ;  
for r = 1 :size(subdeci, 2) [xxTer(r ), ETr(r)] =max(subdeci(:,r )); end;
 end; yuETr=unique(ETr) 
Lterp=(find(utlvp(i)==ETr));Ltern=(find(utlvp(i)~=ETr));yr(Ltern)=-1;
 for r=1 : size(mLabel, 2) [xxTe(r ), ET(r)] =max(mLabel(:,r )); end; 
yuET=unique(ET) ; yu=  unique(y)  
for p =1: length( yuET ) cc=yuET(p);  Ltr{ p ,:} =(find(cc==ET)) ;end; 
Ltrp=(find(p==ET));Ltrn=(find(p~=ET));z(Ltrn)=-1;  z(Ltrp )=1; 
yuETm=unique(ET)  ;  uz=  unique(z)  ;  mse(i)=0;is=int2str(i)  
  xs.name ='ELM'  ;    xs.positive_n =length( Ltrp); xs.likelihoods=z';  xs.c=i   
[ aucr  ]= rocrandom1701012(  is , h2640, col,  xs ) 
aucs(i) = cell2mat( aucr   ) 
 title([ 'ROC curve, AUC = '  num2str(aucs  ) ] , 'FontSize', 18 );  
if isnan( aucs(i) ) ,  break ; end; 
end; FIGFILE=[ 'zzELM2290ROC'  Afile1tests wFrankss...
    BM FILESTRAINS codefile  ... 
  int2str(NZBH) B date22 'c' int2str(i) ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
 saveas( h2640   , [ FIGUFILr  '.png'] ); if DBUG&1, dbstop 2700;  end; 
 end; 
end; if 1, h2280 = figure('Name',[   ' ROC 2700 '] , 'Position',...
 [ 40 200  200  200]); h =gcf;  set(h,'WindowStyle','docked') ;   
for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold) 
   Lce=(find(utlvp(i)==yold));Lcell=(find(utlvp(i)~=yold)); y(Lcell)=-1;
if 1,y(Lce )=1; end; Lp=length( Lce ) ; CC=  int2str( utlvp(i))
 Lcem=(find(1==y )) ;   utlv= unique(y )  
if i==1, col = 'g' ; elseif i==2, col = 'm';
 elseif i==3, col = 'r' ;  elseif  i==4, col = 'b' ; elseif  i==5, col = 'y' ;
end;  hold on ;   params=[' -v ' cv_folds]; 
if 10, [ mse3(i) ,auc3(i) ] = plotroc_elm160114...
        ( y,NUM ,TRAIN4RF,BSVM,col,params ) 
  aucs3  =  ( auc3(i)) 
mses3= num2str(mse3(i) )
elseif 10, [mse2295(i), auc2295(i)]= plotroc_elm160113...
        (y,NUM,TRAIN4RF,BSVM,[' -v ' cv_folds]);  
auc2295s  =  ( auc2295(i)  ) 
mse2295s= num2str(mse2295(i) )
%fprintf('2725 L=%d %d %d %d mse%s au %1.2f\n',Lc,ALTRAIN4,cv_fold ,i,mses,aucs);  
end;  end; 
tick=[ 0 :0.5: 1.0];  % aucs =roc_curveJ( ET', z' ) 
 for j= 1: length( tick)  [ ST1PT{ j,1} , ceTB2] = sprintf('%.1f',  tick(j));end;   
  set(gca, 'XTick', tick ); set(gca, 'XTickLabel',  ST1PT ) ; 
 set(gca, 'XTickLabel',  ST1PT, 'FontUnits',  'points', 'FontWeight',  'normal', ...
 'FontSize',19 , 'FontName', 'Times');  xlabel('False Positive Rate' ,'FontSize',18); 
 ylabel('True Positive Rate'  , 'FontSize', 18 );
title([ 'ROC curve  (AUC = ' num2str(auc3 ) ' )' ] , 'FontSize', 16 );  
 FIGFILE= [ 'zzELMROC'  Afile1tests wFrankss  FILESTRAINS codefile  ... 
  int2str(NZBH) B date22    ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
 saveas( h2280   , [ FIGUFILr  '.png'] );    if DBUG&1, dbstop 2730;  end; 
 end; if 10,     h2730 = figure('Name',[   ' ROC 2730 '] ,...
 'Position', [ 40 200  400  400]);h=gcf; set(h,'WindowStyle','docked') ;   
 for i =1: length( utlvp ) cc=utlvp(i) ;  utlv= unique(yold)        
if i==1, col = 'g' ; elseif i==2, col = 'm';
 elseif i==3, col = 'r' ;  elseif  i==4, col = 'b' ; elseif  i==5, col = 'y' ;
end;  hold on ; 
Lce=(find(utlvp(i)==yold));Lcell=(find(utlvp(i)~=yold)); y(Lcell)=-1;
y(Lce )=1;  Lp=length( Lce );  Lcem=(find(1==y )); utlv= unique(y ) 
if 10, [mse4(i),auc4(i) ] = plotroc_elm160114...
        (y,NUM,TRAIN4RF,BSVM,col, params) 
 % [mse(i) ,auc23(i) ] =plotroc_160107(  y,NUM,TRAIN4RF,col, [ ' -v ' cv_folds])
[mse5(i), auc5(i )]  =plotroc_elm160114( y , NUM ,TRAIN4RF,BSVM,col, params ) 
elseif 0,   prob_y= y; L=length(prob_y);
[ mse,deci ,label_y ] =get_cv_deciJF( y,NUM,TRAIN4RF, cv_fold ,cv_fold ); 
 deci = ones(L,1);   label_y = ones(L,1);rand_ind = randperm(L); 
  for f= 1 : cv_fold  train_ind = [1 : L ] ; 
 test_ind =rand_ind( [floor((f-1)*L/cv_fold)+1: floor(f*L/cv_fold)]'); 
 train_ind(test_ind)= []; 
model = svmtrain(prob_y(train_ind), prob_x(train_ind,:), param ) 
[predict_label,mse,subdeci]=...
    svmpredict(prob_y(test_ind),prob_x(test_ind,:),model);
deci(test_ind) = subdeci.*model.Label(1); label_y(test_ind)= prob_y(test_ind);
 end; 
 auc1 =plotroc( y , NUM  ); 
 auc2 = roc_curve( deci ,label_y ) 
 [val, ind] = sort(deci,'descend');  roc_y = label_y(ind); 
f=  find( roc_y == 1); fm1= find( roc_y == -1) ;
stack_x = cumsum(roc_y == -1)/sum(roc_y == -1);
stack_y= cumsum(roc_y ==1)/sum(roc_y ==1);cv_folds=num2str(cv_fold) 
a= ( stack_x(2:length(roc_y),1) -stack_x(1:length(roc_y)-1,1)) ; 
auc =sum(( stack_x(2:length(roc_y),1)  ...
-stack_x(1:length(roc_y)-1,1)).*stack_y(2:length(roc_y),1))
u =unique(stack_x ) 
%[stack_x,stack_y,thre,auc]=perfcurve(label_y,deci,1);
U = min(stack_y ); V= max(stack_y );  plot( stack_x, stack_y, col );    
  end;  end; if 1,  axis([-0.1  1.1   -0.1 1.1] );
set(gca, 'XTick', tick ); set(gca, 'XTickLabel',ST1PT ) ; 
 set(gca, 'YTick', tick ); set(gca, 'YTickLabel',  ST1PT ) ; 
   set(gca,   'FontUnits',  'points', 'FontWeight',  'normal', ...
 'FontSize', 16 ,'FontName', 'Times' );xlabel('False Positive Rate' ,'FontSize',18); 
ylabel('True Positive Rate'  , 'FontSize', 16 );
title([ 'ROC curve  (AUC = ' num2str(auc4 ) ' )' ] , 'FontSize', 16 );  
 FIGFILE= [ 'zEMROC'  Afile1tests wFrankss  FILESTRAINS codefile  ... 
  int2str(NZBH) B date22    ]; FIGUFILr =fullfile( PATFIG,FIGFILE)
saveas( h2730   , [ FIGUFILr  'p.png'] );   
 end;end;  end;  if 0&exist( 'NUM' ,'var' ),,
  h2365 =figure('Name', ' ROC 2780 ', 'Position',[ 64  40  400 400]); 
   h =gcf;  set(h,'WindowStyle','docked') ;      
 for i =1: length(utlvp ) cc=utlvp(i) ; hold on ;  utlv= unique(yold) 
Lce=(find(utlvp(i)==yold));Lcell=(find(utlvp(i)~=yold)); y(Lcell)=-1;  
y(Lce )=1;  Lp=length( Lce );  Lcem=(find(1==y )) ; utlv= unique(y ) 

[mse5(i),auc5(i)] =plotroc_elm160114( y , NUM ,TRAIN4RF,BSVM,col, params ) 
 if 0,     auc2360(i) = plotroc_160101(  y , NUM , '-v 2'   ) ;    
 title([ 'ROC curve, AUC = '  num2str(auc2360) ] , 'FontSize', 18 );    
 end;end; FIG23= [ 'zz2350ROC'  Afile1tests ...
     wFrankss  BM FILESTRAINS codefile  ... 
  int2str(NZBH) B   'c' int2str(i) ]; FIGUFILr =fullfile( PATFIG,FIG23)
 hold off;  saveas( h2365, [ FIGUFILr    ],'png');  
% , [ libsvm_options2435  ' -v '  num2str(cv_fold) ] )  
end;  if 0,
[TrainTime, TestTime, tt_sensi, tt_speci, test_gmean, EE] =...
    ELM_kernelW( 'ATRfile.txt' , 'ATTfile.txt' ,  zsigma2,   zbestc );
EfeatCLASS = (EE);   eW = which( 'ELM_kernelW' , '-all' )  
 [TrainTime, TestTime, tt_sensi, tt_speci, test_gmean, EE] =...
 ELM_kernelWroc( 'ATRfile.txt', 'ATTfile.txt' ,  zsigma2,  zbestc  ) ;

end; end; if 1, if 0, A  =  'KKMeans' ; 
 [ EE  , mse, model ] = knKmeans( zX , init , z158);
plotClass(zX  ,TEST4CR);   idx = 1:2:n ;   Xt = zX(:,idx)';  Xt = zX ;
 E = knKmeansPred(model, Xt); plotClass(Xt,E) ;  find (E~= EE )
end;  if 0,  y=[ TRAIN4CR  ; TEST4CR ]; 
SSELM150901;  z158 = [ TRAIN4R ; TEST4R ];  Lcell134 =  (find(2~=y)); 
TrainingSet= double( TRAIN4R(: , zzz));TestSet= double(TEST4R(: , zzz)) ;  
  Lcell1 =  (find(1==y)) ; Lcell234 =  (find(1~=y)) ;  y(Lcell234)=-1 ; toc    
 % [w,gamma, trainCorr, testCorr,cpu_time, nu]=psvm(A,d,k,nu,output,bal);
 u=unique(TRAIN4CR);numClasses=length(u);
 EEi =zeros(length(TestSet(:,1)),1); fprintf('  Expt 1 class 2820 \n' );
end;  if 0,  TrainingSet= double( NUM) ; TestSet= double(NUM2 ) ;  
 [w,gamma, trainCorr, testCorr, EE, nu  ] =psvm ...
(z158(: , zzz) ,y, k,nu,output,bal);
Lcellm1=(find(-1==EE)); EE(Lcellm1)=3;  k=1; 
%   n_psvm150930(z158(: , zzz)   ,y,rr,k,nu,mu,output,bal);
addpath(genpath('G:\MATLAB\R2008a\toolbox\bioinfo') ); 
y=TRAIN4CR;  Lcell{k} =  (find(k==y)) ; G1vAll =(TRAIN4CR== (k)); 
 Lcell234 =  (find(k~=y)) ;   y( Lcell{k})=1 ;  y(Lcell234)=-1 ;  
[svm_struct, svIndex] = svmtrain(TrainingSet, y  )
%models(k)= svmtrainb(TrainingSet,  G1vAll );%dtrain=[ d(indx(i)+1:k,:)];
E( k,: ) = svmclassify(svm_struct,TestSet, varargin)
addpath('D:\jaga\elm_kernel');  rehash; which  svmtrain -all ;
x=TRAIN4CR; Lcell{k} =  (find(k== x)) ; %1 is  class  0 all other 
 Lcell234=(find(k~=x)) ; x( Lcell{k})=1; x(Lcell234)=-1;
  end; if 00, for k=1: 4    
 Lcello{k} =  (find(k==TEST4CR)) ; %dtrain = [  d(indx(i)+1:k,:)   ];
 y=TRAIN4CR;    Lcell{k} =  (find(k==y)) ;   G1vAll =(TRAIN4CR== (k));
Lcell234=(find(k~=y));y( Lcell{k})=1;y(Lcell234)=-1; LcelluR(k,:)=unique(y)
 [m,n]=size(TrainingSet);  e=ones(m,1); %[H, v] =HV(TrainingSet,y,bal);
 if (bal ==0) ,  H=[TrainingSet -e];         v=(y'*H)';
else  H=[TrainingSet -e];  mm=e;   m1=find(y==-1); 
mm(m1)=(1/length(m1)); m2=find(y==1);   mm(m2)=(1/length(m2));
mm=sqrt(mm);    N=spdiags(mm,0,m,m);     H=N*H;  v=(y'*N*H)';
 end; v=(speye(n+1)/nu+H'*H)\v;  w=v(1:n); gamma=v(n+1);
% [tmpTestCorr EE ] = correctness(TestSet,TEST4CR,w,gamma); 
 if 0,  E(k,:)  =sign( TestSet*w-gamma);;  
 [ result  ]= find ( E(k,:) == 1);  p= E(k,:);     uk(k,:)  = unique(E(k,:))
corr=length(find( E(k,:)==1))/size( Lcello{k}  ,1)*100
 Lcellout{k} =  (find(1==E(k,:))) ; EEi( Lcellout{k} )= k  ; 
end; end;  [ EEin EE ] =   max(E) ; 
H= find (EEi==1);  Lcell134= unique(EE); % wgcore(H,v,nu,n);  zbestc=1;
end; if 0,  P=TrainingSet'; 
zsigma2=100;  TV.T=TEST4CR'; TV.P=TestSet';
NumberofTrainingData=size(P,2);   NumberofTestingData=size(TV.P,2); 
T=TRAIN4CR';  NTR=size(P,2);   NTT=size(TV.P,2); NIN=size(P,1);
[x,posx] = find(T==1);   W = zeros(length(T),length(T));
for i = 1:length(T)  if T(i) == 1,W(i,i)= 1/length(posx); ... 
else  W(i,i)= 1/(length(T)-length(posx)); end ; end;
sorted_target=sort(cat(2,T,TV.T),2);      label=zeros(1,1);  % class 
 label(1,1) =sorted_target(1,1);       j=1;
for i = 2:(NTR+NTT)  if sorted_target(1,i) ~= label(1,j)   ... 
 j=j+1; label(1,j) = sorted_target(1,i);  end;end;  
    nC=j;   NumberofOutputNeurons=nC; %train
temp_T=zeros(NumberofOutputNeurons, NumberofTrainingData);
 for i =1: NTR for j =1:  nC   if label(1,j)== T(1,i), break; end;end; 
     temp_T(j,i)=1;end; 
T=temp_T*2-1;     
 temp_TV_T=zeros(NumberofOutputNeurons, NTT);
 for i =1: NTT  for j = 1: nC if label(1,j)==TV.T(1,i),break;end;end;
     temp_TV_T(j,i)=1; 
end; 
TVT=temp_TV_T*2-1; n = size(T,2); 
Omega_train= kernel_matrix(P','RBF_kernel', zsigma2);
OutputWeight=((W*Omega_train+speye(n)/zbestc)\(W*T'));
Omega_test = kernel_matrix(P','RBF_kernel', zsigma2,TV.P');
TY=(Omega_test' * OutputWeight)';
for i = 1 : size(TV.T, 2)      [xx(i), EE(i)] =max(TY(:,i) ); end;
% for j=1:size(TestSet,1)     for k=1:numClasses    [m,n]=size(A);
%if (svmclassify(models(k),TestSet(j,:)))break; end;end;result(j)= k; end;
end; end; if  ~BTIME && BCLUST && ELM ...
&& ~exist('EE', 'var'), A ='ELMzzzCLUS1' 
if  inF113,  featuretest4_20  = [  4:40] ;
NN=10;  lamd=0.1 ;  [N1 N2] =  size(  featuretest4_20 ) ; NE =N2-1
 elseif  inF213   featuretest4_20  = [  14: 30] ;
 NN=10;  lamd=0.1 ;  [N1 N2] =  size(   featuretest4_20  ) ;NE =N2-1
elseif  inF214, featuretest4_20  = [  14:30] ; lamd=0.1 ; 
elseif  inF233,featuretest4_20  = [  14:30] ;
 NN=5;  lamd=0.1 ;   [N1 N2] =  size(   featuretest4_20  ) ;
else lamd=0.1; featuretest4_20 =[ 4,5, 8:12, 14,16:18,22, 27,29,31,34,36,37] ;
 end; lamd=0.1 ; 
 [N1 N2] =  size( featuretest4_20 ) ;   NE =N2-1
 zX = double(TEST4R( : ,  featuretest4_20 ) );  wused= N2;  
 [ EE  ] = USELM150829(  zX ,  y  , lamd , NE  );   toc
 acc_uelm =accuracy(y , EE' ) ; fprintf(' Expt 1 class 2890 \n' ); 
 
end; if  BTIME && BCLUST&& 0   ...
&& ELM && ~exist('EE', 'var'),  A =  'ELMtimeCLUSnorm2690' ;
NUM2 = double(NUM2) ;  training = NUM ; [N1 N2] = size(NUM2);
if  inF100,   NE =N2 +2 ;  lamd=0.1 ;  
elseif  inF200, NE =120 ;  NN=5; lamd=0.12 ;
else NE =N2  ;  end;    ticelm1= tic
[ EE EK acc_uelm   acc_kmeans]= USELM150829(NUM2,y, lamd,NE);  
ME = (mean(acc_uelm)) ;    SE =   (std(acc_uelm, 1)) ;  tocelm1= toc  
MK=(mean(acc_kmeans)); SK=(std(acc_kmeans,1)); wUAB=[ME MK SE SK] 
wUAB =  [ ME,   MK,   SE,  SK,  wlamd , wNE,  wNN   ] ;     
end;end; if BTIME && BCLUST&& ELM...
 &&~exist('EE','var'), A ='ELMtimeCLUSunn2645' ;   
 fprintf(' 2905 Expt   BCLUST  elm_kernel \n' );  ran = 24 ;  
y =TEST4CR ;  [N1 N2] =  size(NUMO2 ) ; u=  unique(y')  
 which  randsample -all ;  uTEST41C =  ( unique(TEST4CRM') ) 
if inF214 || (  Afile1test  ==  221 )  
 [ C3T3 C3TI ] = find (TEST4CRM ==3) ; TEST4CRM(C3T3) = 2;
 [ C3T4 C3T4I ] = find (TEST4CRM==4) ; TEST4CRM(C3T4 ) = 2  ;
 [ C3T5 C3TI ] = find (TEST4CRM==5) ; TEST4CRM(C3T5 ) = 2  ;
 end; %if DBUG dbstop 2693; end;
 if inF105,   NE = N2-50;   NN= 5; wlamd=0.1^-1; 
% elseif  inF214,   NE = 12 ;  NN=5;  lamd=0.2 ;
 elseif  inF200, NE =120 ; NN=5; lamd=0.12 ;
 elseif  inF210, NE =120; NN=5; lamd=0.12 ;
elseif inF213, NE =12; NE = N2;   NN=10; wlamd= 0.1^-1; 
% elseif  inF214,   NE = 12 ;  NN=5;  lamd=0.2 ;
 elseif  inF221    NE = 12; NE = N2 ;  NN=NE-5;  wlamd=1.1 ; 
 elseif  inF228, NE = 12; NE =N2 ;NN=10;  lamd=0.1 ;
 elseif  inF233,    NE = 3;  wlamd=1.1 ; NN=1; 
 elseif  inF234,    NE = 3;   NE = N2;  lamd=1.1; NN=1; 
 else   NE =  N2 ; NN=10; lamd=0.1;  if DBUG   dbstop 2708; end;
 end; if ~exist('wlamd', 'var'),  wlamd =lamd ; end; 
 if ~exist('wNN', 'var'), wNN =NN; end; if ~exist('wNE','var'), wNE =NE; end;
 if  0,  [ EE  ] = USELM150829( NUMO2 , y  , wlamd , wNE , wNN );
 else  clear TEST4R TESTR TRAIN4R ps2 NUM2 lentr2*; ran = 24 ;       
 fprintf('2930 Expt   BCLUST  elm_kernel \n' ); if DBUG dbstop 2830; end;
 [  EE EK  acc_uelm   acc_kmeans label_uselm ] = ...
 USELM150906( NUMO2, y, wlamd, wNE , wNN ) ; EEo= EE; ztoc=toc; 
 end; ME =   (mean(acc_uelm)) ; MK =  (mean(acc_kmeans)) ;    
 SE = (std(acc_uelm, 1)) ; SK  =  (std(acc_kmeans, 1)) ;    
[ In  IE ]  =  max(acc_uelm) ; EE =label_uselm( IE , : );
wUAB =  [   ME    MK   SE  SK  ] ; uED3651=  unique (EE ) ;
 wUAB =  [ ME,   MK,   SE,  SK,  wlamd , wNE,  wNN   ];     
end;end; if BTIME&&~BCLUST&& ELM &&~exist('EE','var'),A='ElmtimeClassNorw2660'  
nFolds=5;  nELM=5;    nUnits=5;   zzz= 1:10
 if 0, acc1=trainAndValidateELM( NUM,TRAIN4CR, zzz,nFolds,nELM,nUnits)
 end; if  inF214,  Kernel_para=  50 ;  else   Kernel_para =10 ;  end;
 if exist('NUM','var'),yNUMc=size(NUM,2);end;e=which('kernel_matrix','-all')
  which('dropbox/../elm_kernel','-all');e = which('elm_kernel', '-all')  
 yold= TRAIN4CR ;  y =  yold;   utr= unique (TRAIN4CR)
xold=TEST4CR;; x =xold; if g , dbstop 2935; end;  

if Broc,  for i =1: length( utr ) cc=utr(i) 
  yNUM =size(NUM,1);   utlv= length(TRAIN4CR) ;  
  Lce=(find(cc==yold));Lcell=(find(cc~=yold));  y(Lcell)=-1;
if 1,y(Lce )=1; end; LL=length( Lce ) ; CC=int2str( utr(i))  
if size( y,2 ) ~=1, y=y'; end;AM1=[double(y) double(NUM)];
AM2=[single(x)  double(NUM2)] ;
 dlmwrite( 'ATRfile.txt' , AM1, 'delimiter', '\t' , 'precision', 2) ; 
 dlmwrite( 'ATTfile.txt', AM2, 'delimiter', '\t' ,  'precision', 2) ;
%clear TRAIN4C TEST4R HF3T NUM  NUM22 NUM2 TRAIN4R   ps2;
 clear AM1 AM2 HF3T; fprintf('2950 ROC Expt   class  elm_kernel\n' );
 h2765(i)= figure('Name',[ CC ' ROCh2945'  ] ,...
 'Position', [ 40 200  200  200]);h=gcf;  set(h,'WindowStyle','docked') ; 
 if 0,[TraingTime, TestgTime, tt_sens,test_specificity, test_gmean,EE]=...
  ELM_kernelWroc( 'ATRfile.txt', 'ATTfile.txt' ,  zsigma2, zbestc  ) ;
%accuracy1=trainAndValidateELM(TRAIN4R,x,zzz,nFolds,nELM,nUnits)
 else   [ TrainingTime, TestingTime, wTrainAcc, yTCA2,TY, EE] = ...
elm_kernel('ATRfile.txt', 'ATTfile.txt',1, zbestc, 'RBF_kernel', zsigma2) ;  
 end; 
 for r=1 :size(TY, 2) [xxTe(r ), ET(r)] =max(TY(:,r )); end; yuET=unique(ET) 
for p =1: length( yuET ) cc=yuET(p) ;  Ltr{ p ,:} =(find(cc==ET )) ;end; 
Ltrp=(find(1==ET));Ltrn=(find( 1~=ET));y(Ltrn)=-1; if 1,y(Ltrp )=1; end;
 xs.name= 'ELM'; xs.positive_n =length( Ltrp); xs.likelihoods=y'; xs.c=i 
yuetm=unique(ET)      
 if ~exist( 'h2765' ,'var'), h2765(i) =0; end;mse(i)=0;is=int2str (i)
aucc{ i } = rocrandom170101(  is , h2765(i),  xs  ) 
[h2765 aucr  ]= rocrandom1701012(  is , h2765, col,  xs ) ; 
 end;  end; 
if ~Broc,%xold=TEST4CR;; x =TRAIN4CR;
    AM1=[double(TRAIN4CR ) double(NUM)];
AM2=[single(TEST4CR)  double(NUM2)] ;
 dlmwrite( 'ATRfile.txt' , AM1, 'delimiter', '\t' , 'precision', 2) ; 
 dlmwrite( 'ATTfile.txt', AM2, 'delimiter', '\t' ,  'precision', 2) ;
 [ TrainingTime, TestingTime, wTrainAcc, yTCA2,TY, EE] = ...
elm_kernel('ATRfile.txt', 'ATTfile.txt',1, zbestc, 'RBF_kernel', zsigma2) ;  
end; end;end;  if Bdeep&& ~BSVM &&~PAM&&~exist('EE', 'var'), A =['Bdeep'] ;
fprintf('2986   ALM  = %d   \n ', ALM) ; "warning off MATLAB:legend:IgnoringExtraEntries" 
  x = [1 2 3 4  5 6 7 8  9 10 11 12] ; 	   xC = num2cell(x,[ size(x,2) size(x,1)] )
if BTIME [XTest ] = TEST4R ;[XTrain] =TRAIN4R;
    [ YTest] =TEST4CR ; YTrain=TRAIN4CR ; 
 XTrain  = QTRAIN4R;[XTest ] = QTEST4R ; numClasses =4;
 numObservations  = size(XTrain,1 ); FEATt47  = size(XTrain,2 );
%XTrai = mat2cell(XTrain,[ numObservations 1 ] , [numObservations-1 FEATt47-1] ) ; 
%     XTrain  = mat2cell(XTrain,[ numObservations FEATt47]   ) ; 
% [XTrain,QTrain] = japaneseVowelsTrainData;  [XTest,YTest] = japaneseVowelsTestData;
else  [XTest ] = TEST4R ;[ YTest] = TEST4CR ; [XTrain] =TRAIN4R;YTrain=TRAIN4CR ;
numObservations  = size(XTrain,1 );FEATt47  = size(XTrain,2 );
% XTrain  = mat2cell(XTrain,[   numObservations FEATt47] ) ; 
 end;   figure; plot(XTrain{1} ); 
% clear yold z158 TEST4  NUMO NUMO2 NUM NUM2   prob_x  repmatNUM2  spdiagsNUM2;
xlabel('Time Step');title('Train  Observation 1');
legend('Feature ' + string(1:12),'Location','northeastoutside')
numObservations = numel(XTrain);numClassesu = unique(YTrain); dbstop   3004;
for i=1:numObservations  sequence = XTrain{i,: };sequenceLengths(i) = size(sequence,1);end; 
[sequenceLengths,idx ] = sort(sequenceLengths);
XTrain = XTrain(idx);YTrain = YTrain(idx);figure; numClasses = numel(numClassesu);
bar(sequenceLengths);ylim([0 30]);%xlabel("Sequence");ylabel("Length");title("Sorted Data")
numHiddenUnits = 100;maxEpochs = 100;miniBatchSize = 27;inputSize = 12;
sil = sequenceInputLayer(inputSize)
layers = [  sequenceInputLayer(inputSize)
    bilstmLayer(numHiddenUnits,'OutputMode','last')
    fullyConnectedLayer(numClasses)  
    softmaxLayer    
    classificationLayer]
options= trainingOptions('adam','ExecutionEnvironment','cpu', 'GradientThreshold',1, ...
    'MaxEpochs',maxEpochs,'MiniBatchSize',miniBatchSize, ...
    'SequenceLength','longest','Shuffle','never', ...
    'Verbose',0,  'Plots','training-progress');  dbstop 3020; 
%y = discretize(YTrain, [-1 0 0.5 1], 'categorical');
%x = rand(1, 20) * 2 - 1;  %random numbers between -1 and 1
YTrainc = num2cell(YTrain); if (isequal(comp ,'PCWIN')) end; 
net = trainNetwork(XTrain,YTrainc,layers,options);
numObservationsTest = numel(XTest);
for i=1:numObservationsTest  sequence = XTest{i};
    sequenceLengthsTest(i) = size(sequence,2);
end;
[sequenceLengthsTest,idx] = sort(sequenceLengthsTest);XTest = XTest(idx);
YTest = YTest(idx);
EE = classify(net,XTest, ...
    'MiniBatchSize',miniBatchSize, ...
    'SequenceLength','longest');
acc = sum(YPred == YTest)./numel(YTest)

end;  if ~BSVM &&PAM&&~exist('EE', 'var'), A =['DTW'] ;
clear QTEST4R SM2; clear QPe* QPh* QPTRAIN4*  QTRAIN4* ;
clear QTEST  QTEST4R42  QPTEST42 QPTRAIN42 QTRAIN42;   
clear   QTRAIN4R    TRAIN4R  ;  clear   QPTRAIN41  QPTEST41 ; 
 clear AA AM2 AM1 QT* zX;  clear QTEST4  QPTRAIN41 QPe* QPh*;
 if  Afile1test,   jdtwdistfig161202 ;  
% QPTEST4R = QTEST4R ; fprintf(' 2678   jkmedoids \n'); 
   end;   fprintf(' 2780   jkmedoids \n');  
  K2= length(unique(TEST4CR) ); FLA2=1; un41523=unique(TEST4CR') 
   for i =  1 : length( un41523 )    
 Lcell1352{i}= find(TEST4CR == un41523(i)); IDX2074(i) =Lcell1352{i }(1); 
if  Afile1test == 222, IDX2074(i) = Lcell1352{i }( 3 )  ;  
 elseif Afile1test == 233      IDX2074(i) = Lcell1352{i }( 3 )  ;  
end; end; Iter2= 1 ;   FLA1 = 0 ; 
if  Afile1test == 100, K2=2; Iter2= ( 4 );IDX2074(1) = Lcell1352{1}(1272 ) ; 
 IDX2074(2) = Lcell1352{2}(16)  ;  
      IDX2074(3) = []; TEST4CR( Lcell1352{3}) =1  ;   
elseif  Afile1test ==103, IDX2074(1) = Lcell1352{1}(510);
    IDX2074(2) =Lcell1352{2}(1)  ;  
 Iter2= ( 4 ); K2=1;   IDX2074(2) = []; TEST4CR( Lcell1352{2}) =1;   
 elseif  Afile1test ==113, IDX2074(1) = Lcell1352{1}(105 );  
     IDX2074(2) = Lcell1352{2}(1)  ;  
elseif  Afile1test == 117,   IDX2074(1) = Lcell1352{1}(105);
 IDX2074(2) = Lcell1352{2}(1);  
elseif  Afile1test == 121  IDX2074(1) = Lcell1352{1}(2 );   
    IDX2074(2) = Lcell1352{2}(1);  
 elseif  Afile1test == 200,  IDX2074(1) = Lcell1352{1}( 12);
 IDX2074(2) = Lcell1352{2}(10);  
  IDX2074(3) = Lcell1352{3}( 20  )  ;  IDX2074(4) = Lcell1352{4}( 1  )  ;
 elseif  Afile1test == 202,Iter2= 3;  IDX2074(1) = Lcell1352{1}( 12);
 IDX2074(2) = Lcell1352{2}(10 )  ;  IDX2074(3) = Lcell1352{3}( 10  )  ; 
  IDX2074(4) =  []; TEST4CR( Lcell1352{4}) =1 ;   
   IDX2074(2) = []; TEST4CR( Lcell1352{2}) =1 ;   
elseif  Afile1test == 213, IDX2074(1) = Lcell1352{1}(156 )  ;
    IDX2074(2) = Lcell1352{2}( 15) ;    Iter2= 1; 
  IDX2074(3) = Lcell1352{3}( 114 ) ;IDX2074(4) = Lcell1352{4}( 117)  ;
  elseif  Afile1test == 214     IDX2074(1) = Lcell1352{1}( 4 )  ;
 IDX2074(2) = Lcell1352{2}( 4 )  ; IDX2074(4) = Lcell1352{4}( 2 )  ;  
 elseif  Afile1test == 219     IDX2074(1) = Lcell1352{1}( 4 )  ;
 IDX2074(2) = Lcell1352{2}( 5 )  ; IDX2074(3) = Lcell1352{3}( 4 )  ; 
elseif  Afile1test == 222,IDX2074(1) = Lcell1352{1}(100) ; Iter2= 2; 
IDX2074(2) = Lcell1352{2}(24)
%  elseif  Afile1test == 228     IDX2074(1) = Lcell1352{1}( 15 ); 
%IDX2074(2) = Lcell1352{2}( 2 )  ;  IDX2074(3) = Lcell1352{3}( 46)  ;   
  elseif  Afile1test == 228     IDX2074(1) = Lcell1352{1}( 26 ); 
      IDX2074(2) = Lcell1352{2}( 1 )  ;  IDX2074(3) = Lcell1352{3}( 66)  ;     
 elseif  Afile1test == 231, IDX2074(3) = [ ]; TEST4CR( Lcell1352{3}) =1  ;   
IDX2074(1) = Lcell1352{1}( 5 );IDX2074(2) = Lcell1352{2}( 1 );K2=2;  
   elseif  Afile1test == 232;  R2 =13  ; Iter2= ( 8 )  ; 
IDX2074(1) = Lcell1352{1}( 20  )  ;    IDX2074(2) = Lcell1352{2}( 35 ) ;        
 elseif  Afile1test == 233;  Iter2=  5  ; 
IDX2074(1) = Lcell1352{1}( 301  ) ;   IDX2074(2) = Lcell1352{2}( 2 ); 
IDX2074(3) = Lcell1352{3}( 550  );  IDX2074(4) = Lcell1352{4}( 2 );       
 end ; if  Afile1test ==  103, 
% Iter2=4; K2=1; IDX2074(2) = []; TEST4CR( Lcell1352{2}) =1; 
elseif  Afile1test ==117,Iter2= ( 4 ) ; K2=1; IDX2074(2) = []; 
TEST4CR( Lcell1352{2}) =1; 
 elseif Afile1test==121, Iter2=(4);K2=2; IDX2074(2)=[];
TEST4CR(Lcell1352{2})=1; 
 elseif  Afile1test ==200,  Iter2= ( 4 ); K2=3; IDX2074(4) = []; 
TEST4CR( Lcell1352{4}) =1  ; 
  K2=2;   IDX2074(2) = []; TEST4CR( Lcell1352{2}) =1  ;    
 elseif  Afile1test == 228, IDX2074(2) = []; TEST4CR( Lcell1352{2})=1; 
K2=2; TEST4CR( Lcell1352{3}) =2;
elseif  Afile1test ==233,IDX2074(2)= []; TEST4CR(Lcell1352{2}) =1; K2=2;
TEST4CR(Lcell1352{3}) =2 ;  IDX2074(3)= []; TEST4CR( Lcell1352{2}) =1; 
end ; if  1, column_sum1722 = 0; 
zoloop1772 =0 ;  A = [ 'KMEDFEA' ] ; z2CEN =QPTEST4R( IDX2074 , : ) ;  
z2CENO = z2CEN  ; IDX2074O =  IDX2074 ; zLOOP=0; 
zCIDXc =  TEST4R(IDX2074 , 3) ; zCIDX   =  TEST4CR(IDX2074) ;   
  szCIDX =sort(zCIDX) ; uszCIDX= unique(szCIDX) ;
 if   exist('Adata1','var') Accuracy1 = 25 ; else Accuracy1 = 25 ; end;
 LuszCIDX = length(uszCIDX); [ r2790   c230 ] =size(TEST4R); 
A= 'DTWK' ; clear  QPTEST4  QPTRAIN4  QTRAIN4; EE3=[] ; 
T_CFD18=0;  row_sum = 0 ;TRUE_CLASS18=[];y=TEST4CR;
 end ;   for ex  = 1 : 5   zoloop1772 = zoloop1772 + 1     
 if 0, [ IDX2074 , IDd( ex , : ) , ykmdbe2632(ex , : ) , z2CEN] = ...  
 jkmedoidsDTW150724  ...
 ( QPTEST4R, K2 , Iter2,TEST4CR,z2CEN   ,IDX2074 , AFILETT) ; 
 else  %dbstop 2811; 
 [ IDX2074  , IDd( ex , : ) , ykmdbe2632( ex , : ) , z2CEN ] = ...
 jkmedoidsDTW150724( QPTEST4R, K2 , Iter2 ,TEST4CR);
end;   
z2CENc( ex , : ) =z2CEN; zCIDXc   =  TEST4R3(IDX2074) ;   
zCIDX=TEST4CR(IDX2074');szCIDX =sort(zCIDX);uszCIDX=unique(szCIDX) 
LuszCIDX(ex, : ) = length(uszCIDX); Ub1=unique(ykmdbe2632( ex, :)) ;
if size(ykmdbe2632( ex , : ),1) ~=  size(y,1 ), y=y'; end;
acc_uelm( ex  )= accuracy( y , ykmdbe2632( ex , : ) );
 if 0 && ( LuszCIDX( ex , : ) == K2) ,
[CTKMD2, chi2, mu, label1570 ] =crosstab( ykmdbe2632(ex,: ),TEST4CR);
mun=munkres(-CTKMD2); [i , j ] = find(mun); crosstab1570 = CTKMD2(i ,:)   
 T_CFD2=0; rCIDX =TEST4R(IDX2074, 1); FLA1 = 0; FLAG1= [0 0 0 0 ];
 FLA2=(LuszCIDX~=K2); fprintf('2864 Ite%dloop=%d=%dK2=%dex%d\n', ...
 Iter2 , zoloop1772, LuszCIDX( ex , : ),K2 ,ex ); 
if size(ykmdbe2632( ex , : ),1) ~=  size(y,1 ), y=y'; end;
acc_uelm( ex  )= accuracy( y , ykmdbe2632( ex , : ) );
cen2c=QPTEST4R(IDX2074,1: end);CEN2( ex,:)=QPTEST4R(IDX2074,1:end);
 cen1805(ex,:) = TEST4R( IDX2074'); CEN1823( ex,:) =TEST4CR(IDX2074);
 fprintf('3070  ex %d=%dM=%d%d%d\n', ex, zoloop1772, M, LuszCIDX,K2);
%cen1805m=sortrows(cen1805 ,3);%[A18]= length(unique(cen1805m(:,3)));
% jresults151230; jdtwdistfigur; jdtwdistfigure ;  Aold=  [  Aold ' ' A  ]   ;
for i = 1 :  r2790	 point = QPTEST4R( i, : );   
EEd( ex , i) = findNearestPointDTWIndex( point, CEN2( ex , : ) );  
fprintf('3060 ex=%d i=%d %d %d t%d \n', ...
ex, i , r2790, EEd(ex, i),TEST4CR(i));      
end; 
[ ct4629 ,chi2,mun, label1790 ] =crosstab( EEd( ex, : ),TEST4CR) ;
 mun = munkres(-ct4629) ; [ i , j] = find(mun) ; ct2116 = ct4629  
 K2665 = min( size(ct2116) );  column_sum = 0;%Beat1 = QFrscell2{1,:} ;  
end; end; [ Ind  IE ]  =  max(acc_uelm); EE =ykmdbe2632( IE , : );
 ME =  (mean(acc_uelm)) ;    MK =   (std(acc_uelm, 1)) ; 
 clear NUM3   QPTRAIN*  QPe*  QPh* AAA2695*   cl* QTRAIN* TEST4; 
 if ( NSVF && Afile1test == 228) || Afile1test == 200 || Afile1test == 233,
 [  C237I ] = find(EE ==2 ) ; EE(C237I ) = 3 ;   uED21= unique(EE3) ;
[C373]=find(TEST4CR ==2);TEST4CR(C373)=3;uTT=unique(TEST4CR) ;
end; end;  end;  if  exist('EE', 'var'),  EEold = EE;  ztoc= toc ;
A3= A; wzze2695c=[]; uTEST41C= (unique(TEST4CRM'));
  [ strh ] = find( EE  == 1); y = (TEST4CRM ) ; updat ='NOUPD' ; 
  [ strhfq ] = find ( EE ==  2 ) ; uEE=(unique(EE')) ;
  [ strqp ] = find( EE ==3);  [ strq] = find( EE == 4) ; 
if  BCLUST&& ( Afile1test  ==  103), EE( strhfq ) = 1; end;    
if  0 &&( Afile1test  ==  222), EE( strqp ) =2; end;   
  if  NSVF &&  ~BSVM &&  ...
  ( Afile1test == 214  )  || (  Afile1test  ==  221)  || inF111
 [   C237I ] = find ( EE  ==  2 ) ; EE( C237I ) = 3  ;
 [ H2 ] = find (TEST4CR  == 2 ) ; [   strqtt ] = find (TEST4CRM == 2) ;  
 [ H3 ] = find (TEST4CR  == 3 ) ;  [ strh  ] = find (TEST4CRM== 3 ) ; 
end; if 1, ly= length(y) ; lyold= length(yold) ; 
    lEE= length(EE) ; lEEt= length(yold) ;  
 if  lEE ~=  ly,   y=   (TEST4CRM ) ; ; end;
if size( y ,1) ~= size( EE,1), EE=EE';  end; 
    if  BCLUST, [ wqct1  mun  acc_usel ] =accuracyh( y , EE' ) ;
    else 
        [ wqct1,chi2, p1 , label149]=crosstab(y, EE); 
        mun=munkres(-wqct1);
 end; [i , j] = find(mun); 
 if size(mun,1) == size(mun,2), wqctmun = wqct1( i,:);
end;  utlvp= unique( EE ); %uK4 = (unique(TRAIN4CRM)) ;  
ERR = num2str( NZBH + NANH + ALTEST410 - ALTEST41R) ;
zA2 =  size(EE,2); zB2 =  size(EE,1) ;   if  zB2 ~=  1, EE=EE';   end;  
%if  size(TEST4RINT ,2) ~= size(EE,2),TEST4RINT=TEST4RINT'; end; 
 for k = 1 :  5   if 0,  cu=   i(k);   else   cu=  (k);  end;  
[ mdiPC290{k} ] = find ( EE == cu ) ;       
 [ wwtt70(k)   wPC3710(k) ] = size( mdiPC290{k}) ;
 [ mdiCT2290{k} ]= find (TEST4CR  == k  ) ;  
 [ wCT40(k)   wwc34(k)] = size( mdiCT2290{k}  ) ;
end;  uTEST4CR31= unique(TEST4CR ) ;uED21=unique (EE) ;  
A1AA2= ~isequal( (uED21) , (uTEST4CR31') );
A1AA = ~isequal( length(uED21), length(uTEST4CR31) );
if  NSVF&&( ( Afile1test ==103) || ( Afile1test == 222) || (Afile1test==232))   
  [ C39R ] = find (TRAIN4CRM==3 ) ; TRAIN4CRM(C39R ) = 2  ;
 [ C3T  ] =   find (TEST4CRM==3 ) ; TEST4CRM(C3T ) = 2  ;
  [  C23I ] = find (EE==3 ) ; EE(C23I ) =2; uED3721=  unique(EE ) ; 
 end; if  NSVF &&( A1AA2 ||  ( Afile1test == 221 ) || (Afile1test  == 214) ),
 [  C23I ] = find (EE==2 ) ; EE(C23I ) = 3;   uED3721=  unique(EE ) ; 
 [  C5I ] = find (EE==5 ) ; EE(C5I ) = 3;   uED3721=  unique(EE ) ; 
 end;  if  BDT&& ( (Afile1test == 232 ) || (Afile1test == 222) ...
 || (Afile1test  == 100  )  || (Afile1test  == 213  )  ||  1 ),   %&&~BCLUST
 [ TEST4RINT ]=TEST4RINT39 ; ED = EE; A = [ A 'BDT' ];u=  unique(EE)
%TEST4RFF18 = (TEST4R(  654   , [ 18,27, 39, 19,  26  ,47 ]-3) )
if  size(TEST4RINT,2) ~= size(EE,2)   TEST4RINT=TEST4RINT';  end;    
if  (Afile1test  == 222 ), ED3C = find(  ED  == 3 ) ;  uwd=  unique(ED)
  [  C23I ] = find (ED==3 ) ; ED(C23I ) =2;   uED3721=  unique(EE ) ;     
[ TEST4RINT ]   =  TEST4RINT39 ; ETHRE=  0.65 ; ETHRE=  0.62 ; 
if  size(TEST4RINT ,2) ~=  size(EE,2)   TEST4RINT=TEST4RINT';  end;    
ED3 =  find ( TEST4RINT < ETHRE   & ( ED   == 1   |  ED   == 2  ) );
ED1 =  find (TEST4RINT  >= ETHRE   & ( ED   == 1  |  ED  == 2  ) ); 
 ED( ED1 ) =1;   ED( ED3  ) =2;  
elseif  (Afile1test  ==  232 )&&  ~NSVF,  
ETHRE=  1.065  ; ETHRE=  1.2   ; ETHRE=  1.065  ;
ED3  =   find (TEST4RINT < ETHRE   &   (ED  == 1  |   ED  == 2  ) );
ED1  =   find (TEST4RINT  >= ETHRE    &   (ED  == 1    |   ED  == 2) );
ED3C =  find(  ED  == 3 );  ED( ED1  ) =1;   ED( ED3  ) =2; 
elseif NSVF &&  (  Afile1test  ==  213    ),  ued  =  unique(ED)
ETHRE=  1.2   ;    ETHRE=  0.6 ;
ED3 =   find (TEST4RINT < ETHRE  &   (ED  == 1   |   ED  == 2  ) );
ED1  =   find (TEST4RINT  >= ETHRE  & (ED  == 1  |   ED  == 2  ) );
ED( ED1 ) =1;   ED( ED3  ) =2;     ED3C = find(  ED  == 1   |   ED  == 2) ;
elseif NSVF&&  (  Afile1test  ==  232    )&&(1),   ued  =  unique(ED)
ETHRE=  0.865; ETHRE= 1.52 ; ED3C = find( ED  == 1 |  ED  == 2);
ED3  =  find (TEST4RINT < ETHRE   &   (ED  == 1  |   ED  == 2  ) );
ED1  =  find (TEST4RINT  >= ETHRE  &   (ED  == 1 |   ED  == 2  ) );
ED( ED1 ) =1;   ED( ED3 ) =2; 
elseif NSVF&&  (  Afile1test  ==  232  )&& (1),   ued  =  unique(ED)
ETHRE=  1.2   ;    ETHRE=  1.5; ETHRE=  0.65 ; 
ED3  =   find (TEST4RINT < ETHRE   &   (ED  == 1   |   ED  == 2  ) );
ED1  =   find (TEST4RINT  >= ETHRE    &   (ED  == 1 |   ED  == 2  ) );
ED( ED1 ) =1;   ED( ED3  ) =2;  ED3C = find(  ED  == 1  |   ED  == 2) ;
elseif ~NSVF    ETHRE=  1.065  ; ETHRE=  1.2   ;
ED3  =   find (TEST4RINT < ETHRE   &   (ED  == 1  |   ED  == 3) );
ED1  =   find (TEST4RINT  >= ETHRE   &  (ED  == 1  |  ED  == 3 ) );
ED3C = find(  TEST4CR  == 3 ) ;  ED( ED1  ) =1;   ED( ED3  ) =3;        
 end;  [ wqct2 , chi2, p2 , label2890 ] = crosstab( y ,  ED  )  ;
 if  ( size(wqct1,2 ) >= 2 )  && ( size(wqct2, 2 ) >= 2 ) && ...  
   ( size(wqct1,1 ) >= 2 )  && ( size(wqct2, 1 ) >= 2 )  && ...  
(wqct2(1,1)+wqct2(2,2)>wqct1(1,1)+ wqct1(2,2)), EE =ED; BUPDT= 'UPD'; 
elseif  ( size(wqct2, 1 ) >= 2) & (size(wqct2,2) >=2) ...
 && (wqct2(1,1)+wqct2(2,2) >wqct1(1,1)),EE = ED ;  BUPDT = 'UPD2' ; 
 elseif   ( size(wqct2,1) == size(wqct1,2) )      
end;  fprintf(' 3170 qct1 %d  %d    \n', wqct1(1) , wqct2(1) ) ;
else  A =  [ A 'NO' ] ;  
 end; end; if 1, wFNR = [] ; uTEST41C =( unique(TEST4CR' )) ;
 if ~NSVF  c2='r';  c3='m'; elseif NSVF, c2='m';  c3='r';  end; 
  clear A1791 RFF RC  zBC training   group* decision* ;mag=0;     
%clear  A1sv A1svX    A1sv* A1nsv_indicesTRF  ;
clear  RFF RC  zBC training trainingdoub  group*; wFNR=[]; 
ze35615c=[]; clearvars   error kmdbel1632 FQ*  Ind OL UZ QPE* ;
 Afiles=[];wFNIR = [];  wFPIR= [] ;  wFPI= [] ;  m=0; wzze2695c = [] ;
wzze2860c=[]; wzze1595=[] ; zze2rrc=[];zze2 =[]; k=0;ze35615I= [] ;
wzze35615I=[] ;wzze35615c=[];untrain41cr=unique(TRAIN4CRM') ;
if  exist( 'A11NUMC' , 'var'),  
cwidt = max( A11NUMC ,  A11NUM2C );
elseif  exist( 'A11NUM2C' , 'var' ), cwidt = max( A11NUM2C );
else cwidt = 500;
end;end;if 1, if exist('NUMO2','var'),h2623=figure('Name', ['3190 FNFP'] ...
 , 'Position',  [ 100 10 500 SCR(4)-200]);
 h = gcf ;set(h,'WindowStyle','docked') ;  zsp=4;  
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
 h1=subplot( zsp,1,1);  set(gca,'Units','normalized', 'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16,'FontName','Times');
 set(gca,'XTickLabel', (get(gca, 'XTick')) ) ;
 h2 = subplot(zsp,1,2); set(gca,  'Units','normalized', 'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
 set(gca,'XTickLabel', (get(gca, 'XTick')) ) ;
h3 = subplot(zsp,1,3); set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
 set(gca,'XTickLabel', (get(gca,'XTick')) ) ;h4 = subplot(zsp,1,4);% h5 =subplot(5,1,5);  
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
 set(gca,'XTickLabel', (get(gca, 'XTick')) ) ;
end;  for k = 1: 4 % uTEST41C   %  ung4TRAIN41CR
wTP(k) =0 ; wFP(k) =0; wFNc1{k}= [] ;   wTP26(k) =0 ; wFN(k)=0; 
  i =  (k) ; [  PCL{k} ]=  find (EE == k ) ;    
 [  wPCL1585(k)  col37(k) ] = size(PCL{k}' ) ;   PCLA=  PCL{1,k} ;
 [ CT{k}  ]= find (TEST4CR  == i  ) ;    
 [  wCTL2620(k)  col26(k) ] = size(CT{k} ) ;  CTA=  CT{k} ;
for  j  =1 : wPCL1585(k)   mdi18vaia2{ k}{ j} = find( PCLA(j) ==CTA) ;
 if  ( find( PCLA(j) == CTA ) ) ,   wTP(k) =  wTP(k)+1;
  wzze2695I = [   wzze2695I  PCLA(j) ] ;
  wzze2695c =   [wzze2695c ;
 TEST4R1( PCLA(j) )   TEST4R35( PCLA(j) )  TEST4CR( PCLA(j)) ]  ;
else   wFP(k) =  wFP(k) +1 ;wFPI  = [   wFPI   PCLA(j) ] ;
  wzze1595 =   [wzze1595   TEST4R1( PCLA(j)  ) ]  ;
 wFPIR = [wFPIR   TEST4R1( PCLA(j) ,1) ]  ;
wzze2860c = [ wzze2860c ;
TEST4R1(PCLA(j))  TEST4R35(PCLA(j)) TEST4CR(PCLA(j))  k ] ;
end; end;  for  j  =1 :  wCTL2620(k)
 mdi18vaia= find ( CTA(j) == PCLA ) ;
 mdi18vaia2626{ k}{ j} =  find (CTA(j) == PCLA ) ;
  if  ( find ( CTA(j) == PCLA ) ) ,     wTP26(k) =  wTP26(k)+1;
 else  if 10, wFN(k) =wFN(k)+1 ;  
 wFNIR =   [wFNIR  TEST4R1( CTA(j)) ] ;
 wFNc1{k} = [ wFNc1{k} ;  TEST4R1( CTA(j))  ];
  ze35615c = [ze35615c ; ...
 TEST4R1(CTA(j) ) TEST4R35(  CTA(j) )  TEST4CR( CTA(j) )  k]  ;
  ze35615I = [   ze35615I   CTA(j) ] ;
 end; end;  if   exist('NUMO2','var') ,
 if  k == 1 , c='g' ;      subplot(h1);  set(h1,'DefaultTextRotation', 90)
 %text( 'Position', [  i  , i ] ,  [  c]   ,'color', c ,'HorizontalAlignment','right' );
elseif  k == 2 && ~NSVF   subplot(h2); c='r' ; 
 elseif  k == 2 && NSVF,  subplot(h2); c='m' ;             
elseif k == 3 && ~NSVF,  subplot(h3); c='m' ; 
 elseif k == 3 && NSVF,  subplot( h3 ); c='r' ; 
elseif    k == 4,   subplot(h4);  c='y' ;  elseif k == 5,   subplot(h5);  c='b' ;
end; h29(k) =  plot(  NUMO2( j , : ) ,  c ) ;   hold on ;
wxtick= [ 0 : floor( (cwidt+00)/2) : cwidt+00] ;set(gca,  'XTick', wxtick ); 
 set(gca,'XTickLabel', wxtick );  xlim([ 00  cwidt+00 ]) ;
end;  end; [ wFNc1s1(k)    ] =   size(  wFNc1{k} ,1) ;
%if k == 2 , title(h2, [  ' 4180 red'  int2str(wFNc1s1(k)) ] );  end;
 %jaga remove comment
 end;if exist('NUMO2','var'), set(gca, 'Units','normalized', 'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
 set(gca,'XTickLabel', (get(gca, 'XTick')) ) ;figure(h2623) ;  
end; end; for k =  uTEST41C  if 0, if  ( wTP(k)== 0 ) ,
%  for k =  ung4TRAIN41CR % j=0;
  [ze2 ] = find (  TEST4CR == k) ;   zze2 =   [zze2 ; TEST4R( ze2, 1)]  ;
 zze2r{k }=TEST4R( ze2 ,1);  zze2rrc= [zze2rrc k] ;zz2670{ k ,:} =zze2r{k} ;
  h2653=figure('Name', [' 2920  TP= 0  TEST '] ,'Position',...
 [  100 10 400 SCR(4)/2-100]);h= gcf;set(h,'WindowStyle','docked') ;  
 if k == 1 , c='g' ;   elseif k == 2,c='r' ;
elseif k == 3,  c='m' ;  elseif k == 4, c='y' ;   elseif k == 5,  c='b' ;
 end; for i = 1 : length( ze2)  
     j= ze2(i);str2{i} =int2str(TEST4R(j ,35 ) );
 h30(k)= plot(NUMO2( j , : ) ,  c ) ;   hold on ;   m = m + 1;
  [TPZ2650A(m)  TPZ2650AI(m ) ]   = max( NUMO2(j , : ) ) ;
 text( TPZ2650AI(m)  , max(NUMO2(j , : )) ,  [  str2{i} ] ,'color', c );
 end; end; end; 
end; if  ~isempty(wzze2860c)  
wFNR = [] ; mag= 0 ;  wFPIs= sort( wFPI ) ;  supr=0; 
wzze1595csrows= sortrows( wzze2860c , 1) ; vent=0; 
fus= 0; FPL= length( wFPIs) ; Afiles = unique(wzze1595csrows(:,2) )
FPIRM= [] ; ii=0; FPIR = [] ;wFPIRE=  [];FPIRE3= [] ; ii3=0;  iie=0;  
if  exist('NUMO2','var'),, h2753=figure('Name', ...
[ '3170 FP False'  num2str(FPL)  ] , 'Position', ...
[SCR(3)/2+100  100   SCR(3)/2-100 SCR(4)-200]); 
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
h = gcf ;  set(h,'WindowStyle','docked') ; 
 fpt= 4;m = 0;h1 = subplot(fpt,1,1);  title( h1, [ int2str( mag ) ] );
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
wxtick= [ 0 : floor( (cwidt+00)/2) :cwidt+00];set(gca, 'XTick',wxtick); 
 set( gca,'XTickLabel', wxtick );  xlim([ 00  cwidt+00 ]) ;
 h2 = subplot(fpt,1,2);ax =gca ; 
 set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');    
wxtick= [ 0 : floor( (cwidt+00)/2):cwidt+00];set(gca, 'XTick',wxtick); 
 set( gca,'XTickLabel', wxtick );  xlim([ 00  cwidt+00 ]) ; h3 = subplot(fpt,1,3);  
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times'); 
wxtick= [ 0 : floor( (cwidt+00)/2) :cwidt+00];set(gca, 'XTick',wxtick ); 
 set( gca,'XTickLabel', wxtick ); xlim([ 00  cwidt+00 ]) ;h4=subplot(fpt,1,4);
set(gca,  'Units','normalized',   'FontUnits','points', ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times') ;
 wxtick= [ 0 : floor( (cwidt+00)/2) :cwidt+00];set(gca, 'XTick',wxtick ); 
 set( gca,'XTickLabel', wxtick );  xlim([ 00  cwidt+00 ]) ;
 set(gca,'XTickLabel', (get(gca, 'XTick')) ) ; 
if 0, h5 = subplot(fpt,1,5); end; if DBUG&0,  dbstop 3200; end;
end; for i = 1 : length( wFPIs)       j = wFPIs(i)  ;
 FPIC(i) = TEST4CR( j   ) ;   FPIFILE(i) = TEST4R35( j  ) ;
k= TEST4CR( j ); m = m+1;str2tt{i} = int2str(TEST4R35( j) ) ;
if  exist('ALL','var'), if  FPIFILE(i)==ALL && TEST4CR(j)==B2696
ii =ii +1; wFNR(ii) =TEST4R1( j );%FPIRM(ii) = [ j i TEST4R( j ,1 )] ;
else      iie=iie +1;     wFPIRE(iie) = TEST4R1( j  ) ;
end; else     ii3=ii3 +1;     FPIRE3(ii3) = TEST4R1( j  ) ;
 end;  if   exist('NUMO2','var'), 
   if k == 1,  c='g' ;   subplot( h1);     
 elseif k == 2,c=cm ;  subplot(h2); mag=mag+1; %FPIRM=[ FPIRM wFNR(i)] ;
   elseif k == 3, c=cr; subplot(h3); fus=fus+1;  grid off ; 
elseif k == 4 , c='y' ; subplot(h4);
    text(i  , j ,  [  str2tt{i }  ' ' ] ,'color', c ); 
%,'HorizontalAlignment','right' );%elseif k == 5,  c='b' ; subplot(h5);
end; if  exist('NUMO2','var'),plot(NUMO2( j , : ) ,c ) ; hold on ;
 [FP2670A(m)  FP2670AI(m) ] = max( NUMO2( j , : ) ) ;;
if   exist('QTEST4R','var'),   [FP2670L(m)  ]   = length( QTEST4R{j} ) ;
%text(i,FP2670AI(m),[str2tt{i }],'color',c);%,'HorizontalAlignment','right');
 end; end;  end;  end;  for i= 1: size( Afiles ,1) 
AfileFB= Afiles(i) ; if  (AfileFB >= 100  && AfileFB <= 234 ) ,
 Ind =find( wzze1595csrows(:, 2 )==Afile1test); 
 EFILE1= ['E1_' num2str(AfileFB) '.mat'] ;ERFILE1= fullfile( PATF, EFILE1 ); 
 %save(ERFILE1, 'wzze1595csrows') ;
 end; end; if 0, wxtick=[0 : floor( (cwidt+00)/2):cwidt+00];
 set(gca, 'XTick',wxtick ); set( gca,'XTickLabel', wxtick); xlim([ 00 cwidt+0 ]);
set(gca,'Units','normalized',   'FontUnits','points',  ...  
 'FontWeight',  'normal', 'FontSize', fonts16, 'FontName','Times');
end;if  exist('NUMO2','var'),, title( h1, [ int2str( mag )] ); figure(h2753) ; 
 title( h2, [ int2str( mag ) ' FILES ' int2str(Afiles' )]); 
end; end;if  ~isempty(wzze2695c),TPIR=[] ;
 viiie=0; viii=0;TPIRv= [];  iii=0;iiie=0; wzze2695Is= sort(wzze2695I) ;
for i = 1 : length( wzze2695Is)   j = wzze2695Is(i)  ; 
 TPIC(i) = TEST4CR( j  ) ;   TPIFILE(i) = TEST4R35( j ) ;
 if  exist('ALL','var'),
 if  TEST4CR( j) == B2696 &&TPIFILE(i)==ALL ,      
  iii=iii +1; TPIR(iii) = TEST4R1( j  ) ;
else  iiie=iiie +1;TPIRE(iiie) = TEST4R1( j  ) ;
 end;  else ~exist('ALL','var') 
 if TEST4CR( j ) == B2696 , 
viii=viii +1; TPIRv(viii) = TEST4R1( j) ;
 else      viiie=viiie +1;     TPIREv(viiie) = TEST4R1( j   ) ;
end; 
 end; end; end; if  1, A3890 = A ; 
  zPwS1row=  [];   zPwI=  [];  uK4 = (unique(TRAIN4CRM)) ; 
 ERR = num2str( NZBH + NANH + ALTEST410  - ALTEST41R ) ;
 HC1  = find( TRAIN4CRM == 1 ) ;  HC3   = find( TRAIN4CRM == 3) ;
HC4  = find( TRAIN4CRM == 4 ) ;   HC5  = find( TRAIN4CRM ==5 ) ;
if  ~exist('BP1','var'),BP1= 14; end; wTPsum = sum( wTP26 ) ;
wTPsums = num2str( wTPsum ) ;
if  ~exist('Kernel_para', 'var' )    Kernel_para=' '; end; 
wCTLsum = sum(wCTL2620 );  TCA1 =wTPsum*100/wCTLsum;
 [ TCAs , errmsg ] = sprintf('%.2f',  TCA1 ) ;  TCA=str2num( TCAs );
  wPPV =100*wTP26./( wTP26+ wFP );
if   exist('NUM', 'var' )  yNUMc= size(NUM,2 );  clear NUM NUM11 ; 
elseif   BCLUST  yNUMc =  0  ;
end;   wTP26Se = 100*wTP26./wCTL2620;  wFPsum =sum(wFP  )  ; 
  if  ~exist('wused', 'var' )  wused= '' ;   end; wuseds=  num2str(wused) ; 
  uTR   = unique( TRAIN41CR3'); NHC=  length( uTR ); mHC=0; 
  if ~exist('A11NUM2CM','var') || ~exist('A11NUMC','var'), cwidth=300; 
 else cwidth = max( A11NUMC ,  A11NUM2C ); 
end;  strmtr1= ['Green  N# ' num2str( length( HC1),20  )] ; 
        strmtr4= [ 'Yellow  F # ' num2str(length( HC4),  20 ) ];
        strmtr5= ['Blue     Q# ' num2str( length( HC5), 10 )]; 
if  ~NSVF, strmtr2=[ 'Red    V# ' num2str(length( HC2R), 20 ) ]; 
 strmtr3= ['Magenta S# ' num2str( length( HC3), 20 )];
elseif NSVF,strmtr2 =  [ 'Magenta S# '  num2str(length( HC2R),20) ] ; 
strmtr3= [ 'Red     V# '  num2str( length( HC3), 20   )];  
end; FEATt =  FEAT'; FEATt47= FEAT(4 : end) ;  
 if exist('wRwF', 'var' ),  [ wFea Index]=max( wRwF);     end; 
 if  exist('zsigma2', 'var'),  zsigma2s= num2str( zsigma2); end;
  if ~exist('wFrank', 'var'), wFrank= ''; end;   xlr= 2; updat ='NOUPF' ;   
if ~BTIME &&~sup, A= [ A 'UNS'   ];  %A= [A 'UNS' zsigma2s ]; 
elseif ~BTIME &&sup, A=[ A 'SUP'    ]; % A=[A 'SUP'  zsigma2s ]; 
end;    if  BFIX  && BTIME,    BM = [ BM 'BFIX' ] ;  % A = [ A BM] ; 
elseif  BFIX201 && BTIME,  BM = [ BM 'BFIX201' ] ;% A = [ A BM] ; 
end;  if ~exist( 'A11NUM2CM' , 'var' ), A11NUM2CM = wused; end; 
  if ~exist( 'A11NUM2C' , 'var' ), A11NUM2C = 306; end; 
if ~BTIME  && BE&& 0, A= [A  zsigma2s ]; end; lentr2252=  [    ]; 
if  BCLUST && BTIME, cwidt =  size(   NUMO2 ,2 ) ;
elseif ~BCLUST && BTIME,  cwidt =max( yNUMc, size( NUMO2,2 ));   
 elseif  ~BCLUST && ~BTIME,  cwidt =500 ;   
 elseif  BCLUST && ~BTIME,  cwidt = max(  A11NUM2C );  
     
end;  
end;end; end;  if exist('NUMO','var'), h3000=figure( 'Name',...
[ 'Train3440' A num2str( FILESTEST) AENS B  ...%num2str(wqct1(1))
 num2str( FILESTRAIN) 'R' ] ,'Position', [50 90 450 SCR(4)/2]); 
h = gcf ;set(h,'WindowStyle','docked') ; % num2str(wTP26)
set( gca, 'FontUnits',  'points', 'FontWeight' ,  'normal'  ,  'FontSize', 15 ) ; 
YQP1=NUMO( HC1,: ); 
YQP2 =  NUMO( HC2R,: ); YQP3 = NUMO( HC3,:); 
YQP4 = NUMO( HC4 , : ) ; YQP5 =  NUMO( HC5 , : ) ; 
if 1 , for j = 1: length( HC4) plot( YQP4(j,: ) ,  'y') ;  hold on ;end;
    for j = 1:   length( HC1)  plot( YQP1(j, : ) ,  'g'  ) ;  hold on ;  end;
 for j = 1:   length( HC5) plot( YQP5(j, : ) ,  'b'  ) ;  hold on ; end;
 for j = 1:   length( HC2R)   plot( YQP2( j, : ) , c2 ) ;  hold on ;
 str3537{j} = int2str( HF2R( j  ,35 ) ) ; str3733{j} =  int2str( HF2R( j ,1 )) ;
 if 0,   [TT3750A(j)  TT3750AI(j ) ]   = min( YQP2(j , : ) ) ;
 text( TT3750AI(j)  , TT3750A(j) ,  [ str3537{j}   str3733{j} ]   ,'color', 'r' );
end;   if 0,  [TT3950A(j)  TT3950AI(j ) ]   = max( YQP2(j , : ) ) ;
  text( TT3950AI(j)  , TT3950A(j) ,  [ str3537{j}  str3733{j} ]   ,'color', 'r' );
end;  end;  if 0, for j = 1:   length( HC3)  plot( YQP3(j, : ),  c3); hold on ;
 %  [AAA(j)  AAA2714I(j) ] = max(YQP3(j , : ) )  ;
 %  text( AAA2714I(j) , max(YQP3(j , : ) ) , [  'i=' int2str(j) ] ,'color', 'm' );
 end; end; for j = 1: length( HC3)  plot( YQP3(j, : ) , c3); hold on ; end;
%[AAA(j)  AAA2714I(j) ]   = max(YQP3(j , : ) ) ;% LEGEND(hlegR,'boxoff')
% text( AAA2714I(j) , max(YQP3(j , : ) ), [  'i='   int2str(j) ] ,'color', 'm' );
end; if 10,  hlegR =legend(strmtr1,strmtr2, strmtr3,strmtr4,strmtr5); 
%hlegR=legend(strmtr1,strmtr2,strmtr3,strmtr4,strmtr5,'Location','NorthEast'); 
 %set( hlegR ,'Location','NorthEastOutside' ) 
end; set( hlegR , 'Box', 'off' ,'Orientation','vertical');%,'Orientation','horizontal'); 
LTR = size( NUMO, 2)+10;
Yxr=max( max( NUMO( : ,O ) ),  2 ) ; Ymr =min( min( NUMO( :,O) ), -2); 
 if ~isempty(intersect((203 ) , FILESTRAIN )) , Ymr =-3; 
 elseif Afile1test ==200; Ymr =-3;  else Yxr=3; 
 end;
 if (Ymr< 0 & Yxr >0 ) fyxdfc=[ Ymr  0  Yxr ]; else fyxdfc=[Ymr  Yxr] ;  end; 
 set( gca, 'YTick', fyxdfc ) ; xlim([ 000 LTR ]) ;wxtick= [ 0  floor( LTR/2)  LTR] ; 
 set(gca, 'XTick', wxtick ); set(gca,'XTickLabel', wxtick);   
 for i= 1: length( fyxdfc ) [ STfyxdfc{ i,1} ,errm] = sprintf('%.2f', fyxdfc(i) );  
end;  set( gca,  'YTickLabel',  STfyxdfc )  ;  ylim([ Ymr Yxr  ]) ;  
 title([ ' MIT-BIH Record:'   FILESTRAINS ] ) ;
 clear NUM3   QPTRAIN*  QPe*  QPh* AAA2695*   cl* QTRAIN* TEST4; 
 FIGFILE =  [ 'Trainh3040' FILESTRAINS ...
codefile  '_' da(10:11) , da(1:2),da(4:6),da(13:14),da(16:17)  ] ;
%PATFIG  = [ PATFIG A ]; [sta, mes, mid] = mkdir( PATFIG1);
FIGUFILtr = fullfile(PATFIG  , FIGFILE )
saveas(  h3000 , [ FIGUFILtr   ERR int2str( NZBE1960)  '_'  ...
  num2str( ceil(TCA) )   AENS FILESTRAINS B   ] , 'jpg' ) ;   
 end;  if exist('NUMO','var'), h3030R= figure( 'Name',[ 'Train 3420' ...
 A num2str( FILESTEST)  B  num2str( FILESTRAIN) ' Train ' ...
num2str( NHC) num2str(wTP26)] ,'Position', [ 50  -10  SCR(3)/1-90  960]); 
h = gcf ;set(h,'WindowStyle','docked') ;  set( gca, 'FontUnits',  'points', ...
'FontWeight' ,  'normal'  ,   'FontSize', 15 ) ; Fonts12=12; 
YQP1= -300 ; axis([ -100  cwidth+20  -3  4 ] ); 
for l = 1  :  length( uTR )   i =  uTR( l); 
if  i == 1 ||  i == 2  ||  i == 3  ||  i == 11 ||  i == 34, c='g' ;  
 elseif  i == 4  || i == 7 || i == 8  || i == 9,  c='m'; 
elseif  i == 5 || i == 10,  c='r' ; elseif  i == 6 ,  c='b';  else   c='y' ;      
 end;   TY  = find( TRAIN41CR3 ==   (i) ) ;
 mHC=mHC+1;  Cf =   subplot( NHC, 1, mHC) ;  
HCL   = find( TRAIN41CR3 == i ) ;   YQP = NUMO( HCL, :) ;
 for j = 1: length( HCL)  line1cr(l ) =  plot( YQP( j, : ) , c ) ;  hold on ; end;
L= int2str(  length( HCL) ); YmaxO= max( YQP( : , O ) ) ;
  set( gca,    'Units', 'normalized',    'FontUnits', 'points', ...
  'FontWeight','normal',  'FontSize',  16, 'FontName','Times');   
 title( Cf , [ L    CLASS{ (i)}   ] , 'color', 'r' , 'FontSize' ,16);
   strm1ctr{ l  , :  }   =  [  CLASS{ i } , ' ' num2str(L, 20 )   ];
end; FIGFILE =  [ 'h3080' num2str( FILESTEST) ...
  codefile  '_' da(10:11) , da(1:2),da(4:6),da(13:14),da(16:17)  ] ;
hlegR =legend( strmtr1,strmtr2, strmtr3,strmtr4,strmtr5 ); 
hlegTR =legend( line1cr,  strm1ctr);FIGUFR = fullfile( PATFIG, FIGFILE );
  saveas( h3030R , [ FIGUFR   ERR int2str( NZBE1960)  '_'  ...
  num2str( ceil(TCA) )  AENS FILESTRAINS B ] , 'jpg' ) ;   
end;  if ~exist( 'wmethod','var'),wmethod =''; end;
if   exist( 'NUMO' , 'var' ),A11NUMOC=size(NUMO,2);clear NUMO; end; 
if ~exist('wtrs', 'var'), wtrs= ''; end; %PATX= [  PATXL 'findr\'];  
if ~exist('zbestc', 'var'), zbestcs= ''; else    zbestcs= num2str( zbestc ) ;end;
if ~exist('zsigma2','var'), zsigma2s='';else zsigma2s=num2str(zsigma2s);end; 
if ~exist('zbestg','var'), zbestgs= '';  else   zbestgs= num2str( zbestg);  end;
d=[ da(10:11),da(4:6), da( 1:2)] ; dym=[ da(10:11),da(4:6) ] ; 
if BE&10, BI = [ BI  FILESTRAINS  'c' zbestcs  'g' zbestgs  'sig' zsigma2s];
else   BI = [ BI  ] ; %BI = [ BI    'c' zbestcs  'g' zbestgs  'sig' zsigma2s];
end; end; if  50,  if 0, dums=[ 'dum'  int2str(dum ) ]; 
A1filenamexl2=[ PATXL  'findr\z'  A BM BI  wmethod wuseds wtrs  dums  dym '.xls'] ; 
%A1filenamexl2 = [ PATXL  A BM   wmethod wuseds wtrs  BI codefile '.xls' ] ; 
else A1filenamexl2=[ PATXL  'zzz' A BM  BI wmethod wuseds wtrs    '.xls'] 
end; [ sta,es,esid] =mkdir([ PATXL]);Excel= actxserver( 'Excel.Application');
if ~exist( A1filenamexl2 ,'file'), ExcelWorkbook = Excel.workbooks.Add;
ExcelWorkbook.SaveAs(A1filenamexl2,1 ) ; ExcelWorkbook.Close(false);   
end; if 10, wbin= invoke( Excel.Workbooks, 'Open', A1filenamexl2) ;
 worksheets = Excel.Sheets ;  numSheets = worksheets.Count 
fla = sheet>Excel.Sheets.Count;   if  DBUG dbstop 3410; end;
WB=Excel.Workbooks.Open((A1filenamexl2), 0, false);WS=WB.Worksheets;
if fla,WS.Add( [], WS.Item(WS.Count));  end;  WB.Save();
invoke( Excel.ActiveWorkbook,'Save'); Excel.Quit; Excel.delete;%clear Excel;
  end;  [ a1 a2] = fileattrib( A1filenamexl2 ) ; updat ='NOUPD' ;%thesis
 if BSVM, BA= 'SVM'; elseif ELM,     BA = 'ELM' ;elseif Bdeep ,     BA = 'Bdeep' ;
 end;
if ~ENS, A1filenamexl2U=...
 [ PATXL   BA BM BC wmethod Afile1tests wtrs     'U.xls']; 
else A1filenamexl2U =[PATXL '' Afile1trains BA BM BC wmethod...
 Afile1tests wtrs   codefile 'U.xls'];
end; [ a1u a2u ] = fileattrib(A1filenamexl2U) ; i=xlrow;  xlr= 2;  
end; if  a1 && exist('EE','var') & exist( A1filenamexl2 ,'file'), ,  %while 1 ,
if ~BCLUST&&  ~fla , 
    wTPold = xlsread(A1filenamexl2, sheet, A1rangeTP) ;
wTPoldsum = sum( wTPold ); 
end;
if BCLUST&& ~fla , wTPold =xlsread( A1filenamexl2, sheet, A1nv  );
wTPoldsum = sum( wTPold );  wTPsum = ME ;  wTPoldsum = MK ; 
end; 
%wTP26oldsum =wTPoldsum;
%wold= xlsread( A1filenamexl2,sheet,'U' ols ' :Z' ols ) ;
while  ~BCLUST  , if  wTPsum <  wTPoldsum, % only < 
 i = i +28; is =num2str( i ); updat ='NOUPD';   
A1rangeTP=[ 'J' is  ': M'  is ]; A1TPsum = [ 'N' (is) ]; A1nv = [ 'V' (is )] ;
wTP26old2 =xlsread( A1filenamexl2, sheet, A1rangeTP ) ;
 if BCLUST, wTP26old2 =xlsread( A1filenamexl2, sheet, A1nv );
end; wTPoldsum =sum( wTP26old2 ); 
    else break;  end;end; if 1, is= num2str( i );  
A1rangeTP=[ 'J' is ': M'  (is) ]; ActsumOr = [ 'O' (is)] ; A1PER = [ 'P' (is) ] ;
A1rangeF= [ 'A' ( is ) ] ; ArCTbe = [ 'B' (is)  ': E' (is) ] ; A1nv = [ 'V' (is) ] ;
A1rangeFP=[ 'F' is ': I' (is)]; A1rangeTN= [ 'Q' is  ': T' is ]; A1TPsum=[ 'N' (is)] ;
 if  BCLUST, A1rVZ = [ 'Q'  (is)  ': AA' (is) ] ;  A1rVZh = [ 'Q1'    ': AA1'  ] ; 
   A1rELM = [ 'Q'  (is)  ': AJ' (is) ] ;  A1rKM = [ 'Q'  (is)  ': AJ' (is) ] ;
elseif ~BCLUST,  A1rVZ= [ 'U' (is)  ':'  'AJ' (is) ]; A1rVZh = [ 'U1'  ': AJ1' ]; end;
 end; if  wTPsum >wTPoldsum &&  wTPoldsum>1, updat ='Improved';    
 oldlow  = xlrow+28;   oldlow  = i+28;  ols= num2str( oldlow );   
wTP2old = xlsread( A1filenamexl2, sheet, A1rangeTP   ) ;
 wold = xlsread( A1filenamexl2, sheet, A1row);woldsum =sum( wTP2old);  
[wsts2, wms ] = xlswrite2( A1filenamexl2, wold, sheet , [ 'A' ols ' :Z' ols]); 
else end; 
else  end; if exist( 'EE','var' ),
 [ wsus2, wm ] = xlswrite2( A1filenamexl2 , Afile1test , sheet, A1rangeF ) ;
 [ wcts2 , wmCT ] =xlswrite2( A1filenamexl2, wCTL2620, sheet, ArCTbe ) ;
 [ wfstat2, wesFP ] = xlswrite2( A1filenamexl2, wFP , sheet , A1rangeFP );
 [ wtps2, wmesT ] = xlswrite2( A1filenamexl2 , wTP26, sheet, A1rangeTP ) ;
 [wtp2, wmeTP ] = xlswrite2( A1filenamexl2 , sum(wTP26), sheet, A1TPsum);
[ wt2,wme ] = xlswrite2( A1filenamexl2, sum(wCTL2620) , sheet, ActsumOr) ;
 [ tp, mTP ] = xlswrite2( A1filenamexl2 , TCA , sheet ,  A1PER ) ;  
  warning off MATLAB:xlswrite:AddSheet ;    NUM3 =[ ] ;NUM33 =[ ] ;
%dbstop 3276; % close all hidden;  close all; 
end;  if 1,  h3050 = figure( 'Name', [ ' exper 3520 ' A  ...
num2str( FILESTEST ) AENS B  num2str( FILESTRAIN ) ' Train ' ] , ...
'Position', [ 5 4  SCR(3)-100  400 ]); h= gcf;  set(h,'WindowStyle','docked') ; 
 hapon= get( gcf, 'CurrentAxes' );  set( h3050 ,'CurrentAxes', hapon ) ;
text( O+200 ,  0.5 , [ 'T '  num2str( wCTL2620 ) ] ,'color', 'k' );
if ~BCLUST, text( O+200, 1.5 , [ 'FN  ' num2str(wFN)] , 'color', 'k' );   
text( O+200 , -0.5 , [ 'PC '  num2str( wPCL1585) ] ,'color', 'k' );
text( O+200 , 1 , [ 'TP '  num2str(  wTP26) ] ,'color', 'k' );
 text( O+200, 0.0 , [ 'FP ' num2str( wFP) ] ,'color', 'k' );  num2str( BP1)    
 text(10, -1,[ 'Tca'  num2str(TCA) B A  num2str(FILESTEST)] ,'color', 'k' );
text( O+200 , -1 , [ 'SUM ' num2str( wTPsum) ' ' ...
num2str( wCTLsum) ' BP ' num2str( BP1 ) ] , 'color', 'k' );
text( 10, -2.5 , [ ' PPV '  num2str( wPPV) ' ' num2str( BP1) ] ,'color', 'k' );
text( 10, -0.5 , [ ' SE '  num2str(wTP26Se) ' ' ] ,'color', 'k' );
if  BSVM, text( 10 , -1.5 , [ 'nSv  '  num2str( A1nSV') ] ,'color', 'k' ); 
end; if  exist('zbestc', 'var'), zbestcs= num2str( zbestc ) ;
 text(10,  -1.5, [ 'Cs=' zbestcs ] ,'color', 'k' );
end; if  exist('zsigma2', 'var'),  zsigma2s= num2str( zsigma2)
 text(10,  -2, [ 'zsigma2=' zsigma2s ] ,'color', 'k' );
end; end;  if  BCLUST,
if  exist('zsigma2s','var'),text(10, -1.5, [ 'zsigma2=' zsigma2s] ,'color', 'k' );
end; text(10, -1,[ 'ME'  num2str(ME) B A  num2str(FILESTEST)] ,'color', 'k');
end; text( 10 , 1, [ 'FILES TEST ' num2str( FILESTEST) ] ,'color', 'k' );     
  text(10 , 0.5 , [ 'FILES TRAIN '  num2str( FILESTRAIN)] ,'color', 'k' );
  text( 10,  0 , [ 'TRAIN '  num2str( row2037 )] ,'color', 'k' );
% text(10 ,-2.5, [ 'Supvec '  num2str( A1nsvFI(1,1) )  ] ,'color', 'k' );
if exist('wSM2', 'var'),  wSM2s  = num2str( wSM2) ; else wSM2s ='';  end; 
text(10,1.5, [  ( wSM2s)  ' used '  num2str(wused) updat  ]  ,'color' , 'k' );
end;  if exist( 'wRwF' , 'var'), [ fsort  wFwR ] = sort( wRwF);  
 FEATt47rank= FEATt47( wRwF); LcellMA = length( FEATt47rank) ;
 for k = 1 : LcellMA   len2(k)=   length(FEATt47rank{k }) ;
FQPrscelltr{ k , : } =  FEATt47rank{ 1  , k }  ;
for m = 1: len2(k)     NUM3(k,m) = FQPrscelltr{k}(m); end ;
NUM33 =[ NUM33 ' ' NUM3(k ,:) ] ; 
 end;  if exist('FEATt47rank', 'var'), d33= 100; d3 = cwidth ; 
 if  ~isempty(NUM33), text( d33, -2 , [  NUM33 ], 'color', 'k' ); end ;
if ~isempty(NUM3)&&isa(NUM3,'char'), text( d3 , -1, [ NUM3' ],'color','k');end ;
 if  (size( wFwR, 2) ==1),wFwR = wFwR';end;   
if  (size(wRwF,2) ==1), wRwF= wRwF'; end; [ wFwRsort wInd] =max(wFwR) ;
 text( 1, 3 , [ 'RwF '  num2str( wRwF) ] , 'color', 'k' );
 text(1 , 2.5, [ 'FwR '  num2str( wFwR) ] ,'color', 'k' );
end; if  (size( wFrank,1)~=1)  wFrank= wFrank'; end;     
 text( 10 , 2 , [ wmethod  ' used '  num2str( wFrank) ] , 'color', 'k' );

end;   if exist('wUAB','var') && exist('EE', 'var'),
if BTIME && BCLUST ,
headvz ={'A11MIT' ,'Max' ,'wlamd','wNN','wNE', 'ME' ,'MK', 'SE','SK', 'o','ztoc','o',};
wUAB=[A11MIT,A11MTT,wlamd,wNN,wNE,ME,MK,SE,SK,O,ztoc,A11NUM2CM];
elseif  ~BTIME && BCLUST, ...
 headvz ={  'wlamd' , 'wNN' ,'wNE' , 'elm', 'km' , 'ME' ,'MK' , 'SE', 'SK' , 'ztoc' };  
wUAB = [ wlamd , wNN ,  wNE,  Beselm, Beskm ,   ME,  MK, SE, SK, ztoc ];         
 end;    
end; if ELM&&BTIME &&~BCLUST,
    if ~exist('wTrainAcc','var'),wTrainAcc=0;end;   
wUAB=[ wTrainAcc, zsigma2,zbestc,  A11NUM2CM, A11MIT,  ...
    A11MTT, ztoc,O,  FTRAINL,FILESTRAIN ]; 
headvz ={'TrainAcc' , 'zsigma2' , 'zbestc', 'NUM2CM', 'X', 'Y', 'ztoc' ,'o' ,'X', 'Y'};  
elseif ~BTIME&&ELM && ~BCLUST,  wUAB=[wTrainAcc,zsigma2,zbestc,...
wFranks,    ALTRAIN41R, ztoc,FTRAINL,FILESTRAIN];   
 headvz =  { 'wTrainAcc', 'zsigma2', 'zbestc', 'wFranks', 'ALTRAIN41R', 'ztoc' };  
elseif BSVM,  if ~BTIME&&~BCLUST, 
    headvz={ 'zcv','zbestc','g','ranks','ALTRAIN','toc','FTRAINL',  'FILESTRAIN'};
wUAB=[zcv,zbestc, zbestg, wFranks,ALTRAIN41R,ztoc,FTRAINL,FILESTRAIN];
        elseif  BTIME&&~BCLUST&&BSVM
headvz={ 'zcv', 'zbestc','zbestg' , 'Length' , 'Min', 'Max' ,'O', 'ztoc', 'L' , 'L' , 'L', };
wUAB=[zcv,zbestc,zbestg,A11NUM2CM,A11MIT,A11MTT,O,ztoc,...
    ALTRAIN41R,FTRAINL,FILESTRAIN];
             end;  
elseif PAM ,  ME =  (mean(acc_uelm,1)) ;    MK = (std(acc_uelm,1 )) ; 
wUAB=[wCTLsum,ME,MK, A11MIT, A11MTT, ME,MK,A11MIT, A11MTT,ztoc];acc_kmeans=0
headvz ={'sum' , 'ME' , 'MK',  'min', 'A11MTT' , 'ME' ,  'MK',  'min', 'Max', 'ztoc'};
elseif Bdeep  ,    wUAB = [   A11MIT,   A11MTT,   m2257,  M2357,  ztoc, ztoc  ] ;
 wUAB =[ A11MIT, A11MTT, wlamd, wNN,wNE, ME,  MK,  SE, SK, O, ztoc ] ;  
 if ~BTIME&&~BCLUST, 
    headvz={ 'zcv','zbestc','g','ranks','ALTRAIN','toc','FTRAINL',  'FILESTRAIN'};
wUAB=[zcv,zbestc, zbestg, wFranks,ALTRAIN41R,ztoc,FTRAINL,FILESTRAIN];
        elseif  BTIME&&~BCLUST&&BSVM
headvz={ 'zcv', 'zbestc','zbestg' , 'Length' , 'Min', 'Max' ,'O', 'ztoc', 'L' , 'L' , 'L', };
wUAB=[zcv,zbestc,zbestg,A11NUM2CM,A11MIT,A11MTT,O,ztoc,...
    ALTRAIN41R,FTRAINL,FILESTRAIN];
             end;  

end;  [ ws2,un ] = xlswrite2( A1filenamexl2, wUAB, sheet, A1rVZ ) ;
[ z2, wmvz ]= xlswrite2( A1filenamexl2 , headvz, sheet, A1rVZh); 
if BCLUST 
[ z2, wm]= xlswrite2( A1filenamexl2 , acc_uelm', sheet, ['A' xlcol '3:A' xlcol '151']); 
[ z2, wvz]=xlswrite2( A1filenamexl2, acc_kmeans',sheet, ['B' xlcol '3:B' xlcol '151']);
[wsu2, wm ]= xlswrite2( A1filenamexl2, Afile1test , sheet, ['A' xlcol '2:A' xlcol '2']);
[sus2, wm ]= xlswrite2( A1filenamexl2 , Afile1test, sheet, ['B' xlcol '2:B' xlcol '2']);
end;  if 1, if  a1u && exist('EE', 'var')  ,  
while 1 ,   A1rangeCTU= [ 'B' num2str(xlr )  ': E' num2str(xlr ) ] ;
wTP26oldU= xlsread( A1filenamexl2U, sheet, A1rangeCTU); 
wTP26oldUsum = sum(wTP26oldU ); 
  if wTP26oldUsum >1, xlr = xlr+1 ; else break; end; 
end; end;  if  10, xlrs=  num2str(xlr ) ;
A1PERu = [ 'P' num2str(xlr )] ;
A1rangeCTU= [ 'B' num2str(xlr )  ': E' num2str( xlr ) ]; 
 A1rangeFPU = [ 'F' num2str(xlr )  ': I' num2str(xlr ) ] ;
A1rangeTPU= [ 'J' num2str(xlr )  ': M' num2str(xlr )] ; 
A1TPsumu= [ 'N' num2str(xlr)] ; ActsumOru= [ 'O' num2str(xlr)]; 
A1rA = [ 'A' num2str(xlr )  ] ; A1nuu = [ 'U' num2str(xlr)];  
end; if 1|| a1u, if  ~BCLUST, 
 A1rVZu = [ 'U' num2str(xlr) ': AJ' num2str(xlr) ];
 A1rangeTNu= [ 'Q' num2str(xlr)  ': T' num2str(xlr)  ] ; 
end; if   BCLUST,   A1rVZu = [ 'Q' num2str(i)  ': Z' num2str(i) ] ;
 end;  [ws2, wmun] = xlswrite2( A1filenamexl2U, wUAB, sheet, A1rVZu ) ;  
 [wtp2, wmeTP]= xlswrite2( A1filenamexl2U, sum(wTP26), sheet, A1TPsumu);
[wt2,wmeP]= xlswrite2( A1filenamexl2U, sum(wCTL2620), sheet, ActsumOru) ;
[wstatus2, wmes ] = xlswrite2( A1filenamexl2U, Afile1test , sheet,  A1rA )  ;
 [ z2, wmvz ] = xlswrite2( A1filenamexl2U , headvz, sheet, 'U1:AD1' );  
  [wc,wme] = xlswrite2( A1filenamexl2U,wCTL2620,sheet, A1rangeCTU) ;
 [wfp2, wmesFP] = xlswrite2( A1filenamexl2U,  wFP, sheet, A1rangeFPU )  ;
[wtps2, wmesTP] = xlswrite2( A1filenamexl2U,wTP26, sheet, A1rangeTPU) ;
   [ tp, wmTP] = xlswrite2( A1filenamexl2U ,  TCA, sheet, A1PERu)  ;
 [ type, Sheets ] = xlsfinfo(A1filenamexl2);  
wcl=  unique(TEST4CR');  wcl2 =  unique(TEST4C');
if  Afile1test ~=212, R2 = wFNc1{1,2};
  [ic , ia, ib] = intersect(R2, HF2T(:, 1)) ; 
end;   if  Afile1test ==105,    wcl=  unique(TEST4CRM') ;    
   elseif  Afile1test ==   214,  wcl=  unique(TEST4CRM') ;       
 else  wcl=  unique(TEST4CRM') ; 
end; end;  if 1, [ wqct3 , chi3, p3 , label1490 ] = crosstab( y , EE) ;  
row1= (size( wqct1,1) ) ; col =  (size( wqct1,2) ); 
wzze2695 =  ( size( wqct1,1) ) ;  SM2=   size( wqct1,2) ; 
if Afile1test ==232 || row1~=col, wqct6=  wqct3 ;  
end; uED3681= unique (EE ) ;   uy=unique (y ); zL1 =size( label1490,1 ) ; 
zL =  ( label1490(:,1) ) ;  zLP =  ( label1490(:,2) ) ; zL2 =  size (  zLP,1 );  
for m = 1 : zL2  if ~isempty(zLP{m,1}),up(m,1)= str2num(zLP{m,1});
end; end ;
for m = 1 : zL1   if  ~isempty(zL{m}),  ut(m,1) = str2num(zL{m,1});
 end; end ; miss= [];     clear  AM1 AM2 QTRAIN4R; u4=[1 2 3 4]';
[misso, io ] =setdiff( [1 2 3 4]', up, 'rows');  [misst, i ] =setdiff( up, ut, 'rows') ;
if size(misso,2)==1,misso= misso';end; if size(misst,2)==1, misst=misst'; end; 
if ~isempty(misst) [miss ] = misst; end; if  size(miss,2) ==1, miss=miss'; end; 
if   ~isempty(misso) [miss  ] =[miss   misso]   ;end ;
 if  row1 ~=4  || ~isempty(miss) ||  row1 ~=col ||  4 ~=col,
if 0, for m = 1 :  length( miss) wqct( : , miss( m) )= zeros( miss( m),1);
% wqct( miss(m) ,: ) = zeros(1, miss( m))
end ; end ;  if   (wzze2695 > SM2) && 10,  
wqct =  zeros( wzze2695, wzze2695)  ;
  for m = 1 :  length( up) %wqct( :, u4(m) )= zeros(wzze2695,1)
  wqct( :, up(m) )=  zeros(wzze2695,1)  ;  
end; if  (Afile1test~=222) &&(  Afile1test ~=232) &&(Afile1test~=213) 
  for i= 1 :  length( up) %4 %
 wqct( : , up(i) )=   wqct1(: ,i ) ;
 end;  end; 
end;  if   (wzze2695 < SM2)  &&10,
 wqct =  zeros( SM2, SM2)  ;
for m = 1 :  length( up)    % wqct(  (m) , :  )=  zeros( 1, SM2)
 wqct( up(m)  , 1: SM2  )=  zeros( 1, SM2);
end; for i=1 :  length(ut)  
 wqct(  ut(i) , 1: SM2  )=   wqct1( i , : ) ;
end;   end;
if   (wzze2695 == SM2), 
wqct =   wqct1 ;end;
 else wqct =   wqct1 ;
 end;   if  (  Afile1test  ==214 )   uee= uED3681;
elseif (Afile1test  ==  219 )  uee= uED3681;
elseif ( Afile1test  ==213  )   uee= uED3681; 
else uee= uED3681; 
end;  clear QPTEST4 QPTEST41 QPTEST42;   toc
mun = munkres(-wqct1) ;  [ ip , j ] = find(mun) ;
column_sum1722 = 0; row_sum1720=0; K411= length( unique(EE'));
T_CFD2=0; K2427= min( size( wqct )) ;   i= 0 ;
end; if 0,  for k =1  :  length( uee )    i=uee(k) ; 
 LcellA{k}  =   find ( EEold== i ) ; LcellAA  =   LcellA{k} ;
 LcellM{k}  =   find ( EEold== ip(k ) ); LcellMA   =   LcellM{k} ;
  if  ~NSVF || 1, EE(LcellMA  ) =  i ; end;
 row_sum1720(k)= sum( wqct(k,:));
column_sum1722(k)= sum(wqct(:,k));T_CFD2=T_CFD2 + wqct(k,k);
 TCA_CLASS1905(k) = (wqct(k,k)* 100 )/ column_sum1722(k)
 end; TCA_2149C = T_CFD2 *100/sum(column_sum1722)
TCA_R2770 = T_CFD2*100/sum(row_sum1720)
%  fprintf(' 37  Expt1  %d NQ=%d  %d Acc=%f  ALM=%d  %d\n',...
%  M, ALTRAIN41 , A11MTT , wqct1(1)  , ALM ,ALMTT  );
end; if  ( Afile1test~=221 &&Afile1test~= 103 ...
 && Afile1test~= 214&& Afile1test~=111 &&Afile1test~= 105) ,      
 fprintf('3445 %d %d %d  %s \n', wqct1(1) ,wqct(1),wused,FILESTRAINS);
K2460 =min(size( wqct ) ) ;  wcl2=unique(EE  );
wTNs =  zeros(K2460-1,  K2460-1 ) ; 
    EEold2= find (EEold==2);    wcl= unique(EEold) ;   
    for k = 1 :  size(  wqct,1 ) i =   (k) ; 
ATN = 1 : length(  wcl ) ;  diff1  = setdiff( ATN , k ) ;
 if k ==1,  M1= wqct(diff1', diff1') ;  
 wTNs2( k, :)= sum(M1) ;       wTN2(k) = sum(wTNs2 ) ; 
elseif  k ==2  M2= wqct(diff1', diff1'); M2s = sum(M2);
    wTN2(k,1) = sum(M2s)  ; 
elseif  k==3  M3= wqct(diff1', diff1');wTNs23 = sum(M3);  
    wTN2(k) = sum(wTNs23)  ; 
elseif  k==4  M4= wqct(diff1', diff1') ; wTNs24= sum( M4)  ; 
    wTN2(k) = sum(wTNs24) ;  %wnf= wqct(1, 4) ; 
end;if 0, wTNs( k,:)= sum( wqct(diff1', diff1')); wTN(k)=sum(wTNs(k,:));  
end;  end;  else   wTN2(4)= sum( wTP26(1:3)) ; 
wTN2(3)= sum( wTP26(1:2) ) +wTP26(4);
wTN2(2)= sum( wTP26(3:4) ) +wTP26(1);
wTN2(1)= sum( wTP26(2:4) );
end; if 10, if  size( wTN2,1) ~=1 ,  wTN2= wTN2';  end; 
 wTN= wTN2; %if ~exist('wTN2','var') wTN(1:4)= 0; else wTN=wTN2'; end; 
if ~BCLUST, [tus2,wmt]=xlswrite2(A1filenamexl2,wTN,sheet,A1rangeTN) 
end;
if  ~exist('A', 'var') ,A = 'PRINT' ;  wqct1=0; TCA=0; Afiles= ''; end;
uTT=unique(TEST4RCR3');  NHC=  length( uTT ); mHC=0; 
 if exist('wSM2s', 'var') ,
text(10,1.5,[ num2str(wSM2s)  ' used ' num2str(wused) updat],'color','k');
end; text( O+200 , -1.8 , [ 'TN   ' num2str( wTN) ] , 'color', 'k'  );
    text( O+200 , -3 , [ 'SP '  num2str( wPCL1585) ] , 'color', 'k' ); 
 clear zB  sumaz  str2tt   pac predicted*; % cwidt =size( NUMO2,2 )+2 ; 
 %hapon= get( gcf, 'CurrentAxes' ); set( h3050 ,'CurrentAxes', hapon ) ;
 if 1,  % axis( [ 0 800  -3  4]);  
HC1 = find( TEST4CR == 1) ;   HC2T2 = find( TEST4CR == 2 ) ;
HC3 =find( TEST4CR == 3 ); HC4 = find(TEST4CR == 4) ;  
HC5 = find(TEST4CR == 5 ) ; 
LHC2T =length( HC2T) ;    LHC2T2 =  length( HC2T2 );
strm1= [ 'Green  N# ' num2str( length( HC1), Fonts12 ) ] ;
        strm4= [ 'Yellow  F# ' num2str(length( HC4), Fonts12 ) ];
        strm5 = ['Blue  Q# ' num2str( length( HC5), 20   )];
if NSVF, strm2 = [ 'Magenta S# ' num2str( length( HC2T), Fonts12)];
c3= 'r' ; strm3=    [ 'Red      V# ' num2str(length( HC3), Fonts12 ) ]; 
else    strm2  =  [ 'Red  V# ' num2str(length( HC2T2),20 ) ];
c3= 'm' ; strm3= ['Magenta S#' num2str( length( HC3), 20 )];
end;if  exist('NUMO2','var'),,
Ym=min(NUMO2( : ,O )) ;  Yx=max( NUMO2( : ,O ));
 end;   if Afile1test ==100  Ym2  =-3 ; Yx2=2 ;     
elseif Afile1test==105,  Ym2 =-2.5 ;Yx2= 2 ; 
 elseif Afile1test ==111 || Afile1test ==113 ||Afile1test ==234, , 
     Ym2=-2 ; Yx2=2 ;        
elseif Afile1test ==  121, Ym2  =-2 ; Yx2=2 ;     
elseif Afile1test ==202,     Ym2 =-0.92 ;Yx2=2.52 ;     
 elseif Afile1test ==212 ;  Yx2=1 ; Ym2= -1.6 ;  Yx2 =1.6;   
elseif Afile1test == 210 , Ym2 = -2 ;Yx2=2;  if  exist('NUMO2','var'), 
 Ymt=min(NUMO2( :,O ))-0.2 ;  Yxt =max( NUMO2( :,O ))+0.2 ; 
    end;   elseif Afile1test ==212 ;  Yx2=1 ; Ym2= -1.6 ;  Yx2 =1.6; 
 elseif Afile1test ==  213 ;  Ym2  =-3 ;   Yx2=4 ;    
  elseif Afile1test ==  221  , Ym2  =-2 ;   Yx2=2.5 ;  
elseif Afile1test ==222,     Ym2 = -0.92 ;Yx2=1.92 ;         
elseif   Afile1test ==  228  || Afile1test ==  208, Ym2=-2 ;Yx2=3 ;      
elseif Afile1test ==  231 ||Afile1test ==  213 , Ym2  =-1 ;   Yx2=2.5 ;        
elseif Afile1test == 232 , Ym2  = -1.52 ;Yx2=1.82 ; % Ym2  =Ym  ;Yx2= Yx  ;  
elseif   Afile1test ==233 , Ym2=-3 ;Yx2=3 ;   
else  Ym2  =-3 ;   Yx2=4 ;    
end;%end;
end; end;end; if exist('NUMO2','var'),g10=figure('Name',['3650 TEST'  ...
 A BM  num2str(NHC) ' ' num2str(Afiles') '_'  B AENS ERR], ...
'Position', [ 10   10    SCR(3)/1-100   SCR(4)/1-100  ]) ; figure( g10 ) ; 
 h = gcf ;  set(h,'WindowStyle','docked') ;  
set(gca,    'Units', 'normalized',    'FontUnits', 'points', ...
  'FontWeight','normal',  'FontSize',  16, 'FontName','Times');   
for l = 1 :  length( uTT )   i =  uTT( l ) ; 
 if  i ==1 ||  i == 2 ||  i == 3  ||  i == 11 ||  i == 34 , c='g' ;  
 elseif  i == 4  || i == 7 || i == 8  || i == 9,  c='m'; 
elseif  i == 5 || i == 10,  c='r' ;  elseif  i == 6 ,  c='b';  else   c='y' ;      
 end; TY = find( TEST4RCR3 == (i)) ;
 mHC=mHC+1;  Cf =subplot( NHC, 1, mHC) ;  
 set(gca,  'Units', 'normalized',  'FontUnits', 'points', ...
  'FontWeight','normal',  'FontSize',16, 'FontName','Times');   
cwidtnum02= size(NUMO2,2); 
HCL= find( TEST4RCR3 == i) ; YQP = NUMO2( HCL, : ) ; 
for j = 1 : length(HCL)  line1c( l )=plot(YQP( j , : ) , c); hold on;end;
L=int2str(length( HCL)); strm1cc{ l, :} = [ num2str(  L,20)  ' '  CLASS{i } ] ; 
  strm1c{ l  , :  }   =  [  CLASS{ i } , ' ' num2str(L, 20 )];
[ strm1ccells{ l }  , cT2 ]=  sprintf('%40s', CLASS{i}) ;% True_class2{(i)}; 
strm1cA{ l ,: } = [ CLASA{i} , num2str(L,20)   ]  ;
if 1|| a11numr<4000, title( Cf,[ L  CLASA{ (i)} ] ,'color', cr,'FontSize',16);end;
    
  title( Cf , strm1cc{ l, :} ,'color', cr  , 'FontSize' ,16 );
maxyqp2 =max(YQP( : , O)) ; minnumo2 =min(NUMO2(: , O));
xlim([ 000 cwidt  ]) ;  wxtick= [  0  floor( cwidt/2)    cwidt ] ;
 set(gca, 'XTick', wxtick ); set(gca,'XTickLabel', wxtick); 
  Ym=min( NUMO2( : ,O ))-0.2 ;  Yx  =max( NUMO2(  : ,O ))+0.2 ; 
if 0, CELL3y = [ Ym2  0  Yx2 ]; ;  set(gca,'YTick', CELL3y ) ;
 for i=1:length(CELL3y) [ST3adc{ i,1}, cT2]=sprintf('%5.1f', CELL3y(i)); end;
 set(gca, 'YTickLabel',  ST3adc ) ;   
end;   
end; FIGFILE = [ A BM  'g10'  num2str( FILESTEST ) ... 
 codefile  '_' da(1:2),da(4:6),da(10:11),da(13:14),da(16:17) ];  
PATFIG1= [ PATFIG ] ;  FIGUFILE = fullfile( PATFIG, FIGFILE)
[r c ]= size( strm1c );  currax=[ findobj(gcf,'tag', 'legend')]  ;
for i= 1: r  [ST3ad{ i,1}, cTBE2]=sprintf( '%20s', strm1c{ i } ); end;
hleg = legend( line1c', strm1c' );if  DBUG&0, dbstop 3563; ; end;
 newPosition = [0.8 0.7 0.4 0.4];  newUnits = 'normalized';
set(hleg , 'Position', [0.81 0.43 0.1 0.12], 'Units', 'normalized');
%saveas(g10, [ FIGUFILE  'E' ERR int2str(NZBH)  num2str(ceil(TCA))...
% B AENS FILESTRAINS ] , 'png' );%hleg2 = legend( line1c , strm1ccells) ;
end; if exist('NUMO2','var'),gBM3 = figure( 'Name' ,  ...
['3660 TEST' A BM num2str(wqct1(1)) ' ' num2str(Afiles') '_' B AENS ERR], ...
'Position', [210  10 SCR(3)-250  400]); h =gcf;  set(h,'WindowStyle','docked'); 
 set(gca, 'Units', 'normalized', 'FontUnits', 'points', ...
  'FontWeight','normal',  'FontSize', 16, 'FontName', 'Times');   
title(['MIT-BIH REC '  num2str(FILESTEST) ]); LTT = size(NUMO2,2) ;
HC1 = find( TEST4CR == 1) ;   HC2T2 = find( TEST4CR == 2 ) ;
HC3 = find( TEST4CR == 3) ; HC4= find( TEST4CR ==  4) ;  
HC5 = find( TEST4CR == 5) ;  gBMs = figure(gBM3 ) ;  
LHC2T =   length( HC2T) ;   LHC2T2 = length( HC2T2 );
  YQP1 =  NUMO2( HC1, :) ; mind1 =min(NUMO2( : , O )) ; 
YQP2 =  NUMO2( HC2T2 , : ) ;    YQP5 =  NUMO2( HC5 , : ) ;
YQP3 =  NUMO2( HC3, : ) ; YQP4 = NUMO2( HC4 , : ) ; 
set( gca, 'FontUnits',  'points', ...
'FontWeight' ,  'normal'  ,  'FontSize', 15 ) ; Fonts12=12; 
 for j = 1: length( HC1) h35N  = plot( YQP1( j, : ) , 'g' ) ; hold on ; end;
for j = 1: length( HC4) h35F =  plot( YQP4(j, : ) , cy) ;  hold on ; end;
for j = 1: length(HC3)  h35V=plot( YQP3(j, : ) , cr ) ;  hold on ;  end; 
 for j =1: length( HC2T2) h35A=plot(YQP2( j , : ), c2);hold on;end;
 if 0, for j =1: length( HC3) %vpc red debug 
 [AAA(j) AAA2714I(j) ]=max(YQP3( j ,: ) ); [ TT2750AI(j)]= (HF3T( j, 37));
text(  AAA2714I(j) , AAA(j) , [  'max=' int2str(HF3T( j, 1)) ] ,'color', 'k' ); 
 text(  O,   TT2750AI(j), [  'R='   int2str(HF3T( j, 1)) ] ,'color', 'b' ); 
end;for j = 1: length( HC5)  plot(YQP5(j,: ) , cy) ;hold on; end;
strm5 = [ 'Blue      Q# ' num2str( length( HC5), 20 )];
end;  if 0, if 0, [ TT2750AI(j) ]   = YQP2(j , HF2( j  , 6 ) ) ;
 str3537{j} =int2str( HF2T( j  , 35 )) ; str3733{j} = int2str( HF2T( j , 1)) ;    
 if  inF200 || inF233, [TT3750A(j)  TT3750AI(j ) ]=min(YQP2(j , : ) );
% text( O  , YQP2(j , O ) ,  [ str3537{j}  str3733{j} ]   ,'color', 'r' );
 text(TT3750AI(j) , TT3750A(j) ,[ str3537{j} str3733{j}] ,'color',c2); 
else   [TT2750A(j)  TT2750AI(j) ] = max(YQP2(j , : ) ) ;
 text(TT2750AI(j) , TT2750A(j),[ str3537{j}  str3733{j}],'color', c2); 
 end;end; if  find( R2 ==HF2T(j ,1) ),plot(YQP2(j, : ) , c2) ; 
[TT2750A(j)  TT2750AI(j ) ]   = max( YQP2(j , : ) ) ;hold on ;  
text(TT2750AI(j) , TT2750A(j) ,[ str3537{j}  str3733{j}] ,'color', 'b' );
hold on;   [TT3750A(j)  TT3750AI(j ) ] = min( YQP2(j , : )) ;
% text( O , YQP2(j , O ) ,  [ str3537{j}  str3733{j} ]   ,'color', 'r' );
 text(TT3750AI(j),TT3750A(j), [ str3537{j} str3733{j}] ,'color', c2 ); 
 else   plot( YQP2( j , : ) ,  c2 ) ;  Os=   num2str(O) 
end; end;end; if 1,  if ~exist('NUMO2','var'),  Ym = Ym2    ; Yx=    Yx2 
  else  %Ym=min( NUMO2(:,O))-0.2 ; Yx=max(NUMO2(:,O ))+0.2 ; 
 h =gca;gcf1= get( gcf,'CurrentAxes');Ym = Ym2    ; Yx=    Yx2 
title([' MIT-BIH REC ' num2str(FILESTEST)]  );  
     axis([ 0  LTT  Ym2  Yx2 ]);   ylim([Ym2    Yx2 ]) ; 
 end; 
if Ym2<= 0& 0<= Yx2,  CELL3y = [ Ym2  0  Yx2];  
else   CELL3y = [ Ym2     Yx2];   
end;  
for i= 1: length(CELL3y) [ST3adc{ i,1}, cT2]=sprintf('%5.1f',CELL3y(i)); end;
 set(gca,'YTick', CELL3y ) ;  set(gca, 'YTickLabel',  ST3adc ) ;   
if 0,if  BCLUST && BTIME, cwidt =size( NUMO2,2)+10 ;
elseif ~BCLUST && BTIME, cwidt =max(A11NUMOC,size( NUMO2,2))+10;   
 elseif  ~BCLUST && ~BTIME,  cwidt =  size( NUMO2,2 )+10 ;   
 elseif  BCLUST && ~BTIME, cwidt = max( A11NUMC , A11NUM2C )+10;    
end;end; strm1= [ 'Green      N# ' num2str( length( HC1), 20 )] ;
               strm4= [ 'Yellow     F# ' num2str(length( HC4), Fonts12 ) ];
  if NSVF, strm2= [ 'Magenta S# ' num2str( length( HC2T ), Fonts12 )];
  c3= 'r';   strm3= [ 'Red         V# ' num2str(length( HC3), Fonts12) ]; 
  else      strm2  =  [ 'Red  V# ' num2str(length( HC2T2),20 )    ];
c3= 'm' ; strm3= ['Magenta S#' num2str( length( HC3), 20)  ];
end; if 10, [ legh,oh,plh,ts]= legend(  strm1, strm2, strm3, strm4 ) ; 
%[ hlegTRlegh,oh,plh,ts]=legend( h35 ,  strm1, strm2, strm3, strm4  ); 
 if legh,  set( legh, 'Box', 'off'  ) ;%,'Orientation','horizontal') 
 set(legh,'FontSize',12) ;  axes(legh ); 
end; end; if   BFIX201, %xlim([-100  cwidt+20]); wxtick= [-100:100:(cwidt+20)];
 xlim([ 0   cwidt+20]) ; wxtick= [ 0 :101: (cwidt+20)];
elseif  BFIX , xlim([  0 cwidt+20]); wxtick= [  0 floor( (20+cwidt)/2) cwidt+20] ;
elseif ~BFIX &&~BFIX201, xlim([ 0 cwidt]); wxtick= [ 0 floor( cwidt/2) cwidt] ;
% if  DBUG dbstop 3600;  end;%axis([ -100  cwidt -3  4]);   
%for i= 1:length(CELL3y) [ST3adc{ i,1}, cT2]=sprintf('%5.1f', CELL3y(i));end;
end; if 1,set( gca,  'XTick', wxtick);  set( gca,'XTickLabel',  [wxtick] ); 
 title([ ' MIT-BIH REC  '  num2str( FILESTEST) ] ); 
  if 00, title( [ 'Acc  '  num2str( wTP26Se ) ' TCA ']) ;
text( O+200 , 1 , [ 'TP '  num2str(  wTP26) ] ,'color', 'k' );
 text(10 , 1 , [ 'FILE  ' num2str( FILESTEST) ] ,'color', 'k', 'FontSize',16 );   
 text(O+200 ,  2.5 , [ 'FP    ' num2str( wFP) ] ,'color', 'k' );
text( O+200 ,  2.0 , [ 'FN    ' num2str( wFN) ] ,'color', 'k' );
    text( 10 ,  -0.5 , [ 'FILES TRAIN '  num2str( FILESTRAIN)] ,'color', 'k' );
    text( 10 ,  -1 , [ 'TRAIN '  num2str( row2037 )] ,'color', 'k' );
    text( O+200 , -1 , [ 'CT '  num2str( wCTL2620) ] ,'color', 'k' );
if  exist('A1nSV','var'),text( 10, -1.5, [ 'nSv '  num2str( A1nSV')] , 'color', 'k' );
end;    text( O+200 , -1.5  , [ 'PCL '  num2str( wPCL1585) ] ,'color', 'k' );
 text( O+200 ,-1 , [ 'SUM '  num2str( wTPsum) ' '  ...
 num2str(wCTLsum) ' BP ' num2str( BP1)] ,'color', 'k' );
text(10 ,-2 , [ 'TCA '  num2str( TCA)    B  ' Norm=' ...
 num2str( BTT) num2str( FILESTEST )    ] ,'color', 'k' );
% text(10 ,-2.5 , [ 'Supvec '  num2str( A1nsvFI(1,1) )  ] ,'color', 'k' );
text(10 ,-2.5 , [ ' PPV '  num2str( wPPV) ' '    num2str( BP1 ) ] ,'color', 'k');
  text( O, 3 , [ '\downarrow O' Os ] , 'color', 'r' , 'FontSize', 18 );
 line([ O+3 , O+3] , [ 0 ,3 ] , 'Marker',  '.' , 'Color', 'k' , 'LineWidth', 2);  
  line( [ O , O ] , [ -3,  4 ] , 'Marker' ,   '.'  , 'Color', 'r' , 'LineWidth', 2 ); 
rectangle('Position', [  Tef1(f) , xbf1( Tef1(f )) ,TeS3(f)-Tef1(f) , 0.5]  ...
 , 'EdgeColor',  'r'  , 'LineWidth', 2  ) ;
end;  FIGFILE = [ A BM  Afile1tests... 
  codefile  '_'   da(1:2),da(4:6),da(10:11),da(13:14),da(16:17) ]; 
 FIGFILE = [ Afile1tests BM   ... 
  codefile   A  da(1:2),da(4:6),da(10:11),da(13:14),da(16:17) ]; 
FIGUFILt = fullfile( PATFIG , FIGFILE) 
 if exist('gBM3','var'),saveas(gBM3,[FIGUFILt 'E' ERR int2str(NZBH) B ],'png');  
 end; TCAs= num2str(TCA, '%.2f');
end;end;  if 0, gf = figure( 'Name' , ...
[ A '37630TEST ' num2str(wqct1(1)) ' ' num2str(Afiles') '_'  B AENS ERR ] , ...
'Position', [SCR(3)/2-10   SCR(4)/2-10  SCR(3)/2-50   SCR(4)/2-100 ]) ;
 h = gcf ;  set(h, 'WindowStyle', 'docked' ) ;
%  zlensort1820I= find(ca == 1 |  ca == 2 |  ca == 3 | ca ==11 |  ca ==34); 
% RPSTP=find( ca==4 | ca == 7 |  ca == 8  |  ca==9); n=0;  m=0; 
% ROCNPT= find(ca == 5 | ca ==10); A1nsv_indicesTF= find(ca== 6);
L1 = length( HC1) ; L1s= num2str(L1);
L2= length( HC2T) ; L2s= num2str(L2);
L3 = length( HC3); L3s= num2str(L3);
L4= length( HC4);L4s= num2str(L4);
n= 0; if  L1,  n=n+1; end;   if  ~isempty( HC2), n=n+1;  end;
if ~isempty(HC3), n=n+1;end; if ~isempty(HC4),n=n+1; end;
for i=1: length(CELL3y) [ST3adc{ i,1}, cT2]=sprintf('%5.1f', CELL3y(i)); end;
line1=0;   line2=0;    line3=0;   line4=0;      gfs =figure(gf ) 
if L1, m=m+1;   top1=subplot( n, 1, m) ;
 YQP1 =  NUMO2( HC1, :) ;
for j =1: length( HC1),  line1= plot(YQP1( j , : ) , cg );  hold on; end
 set( gca,  'Units', 'normalized',   'FontUnits', 'points', ...
 'FontWeight', 'normal',  'FontSize', fonts16 , 'FontName', 'Times' ) ;  
wxtick= [ 0  floor((cwidt+0)/2)  cwidt ] ;  xlim([ 000  cwidt ]) ;
 set(gca,  'XTick', wxtick   );  set(gca,'XTickLabel', wxtick );
  set(gca,'YTick', CELL3y ) ;   axis([ -0  cwidt  -3  4 ]);  
   set(gca, 'YTickLabel',  ST3adc ) ; ylim([ CELL3y(1)   CELL3y(end)]) ;
 title( [ ' AAMI1' num2str( L1) ] ,'color', 'r' , 'FontSize' ,16 ); 

end; if L2, m=m+1;top2= subplot( n, 1, m) ; 
YQP2 =  NUMO2( HC2, :) ;
 for j = 1:  length( HC2)  line2= plot( YQP2(j, :) , cm ) ;  hold on ; end;
 set( gca,  'Units', 'normalized',   'FontUnits', 'points', ...
 'FontWeight', 'normal',  'FontSize', fonts16 , 'FontName', 'Times' ) ;  
 set(gca,'YTick', CELL3y ); set(gca, 'YTickLabel',  ST3adc ) ; 
set(gca,  'XTick', wxtick   );  set(gca,'XTickLabel', wxtick );
title([ ' AAMI2 ' num2str(L2) ] ,'color', 'r' , 'FontSize' ,16 ); 
 xlim([ 000  cwidt ]) ;ylim([ CELL3y(1)    CELL3y(end)]) ; 
 end; if L3, m=m+1;  top3= subplot( n, 1, m) ;
 YQP3 = NUMO2( HC2, :) ;%axis([ -00  cwidt  -3  4 ]);  
  HF3T =  AX( HC2, : ) ; if DBUG dbstop  3795;end; 
 
 for j = 1:   length( HC2) line3= plot( YQP3(j, : ) , cr ) ;  hold on ; 
 str3537{j} = int2str( HF3T( j ,35 )) ; str3733{j} =int2str( HF3T( j , 1 )) ;    
  if  1, [TT3750A(j)  TT3750AI(j ) ]=min(YQP3(j , : ) );
  text( O  , YQP2(j , O ) ,  [ str3537{j}  str3733{j} ]   ,'color', 'r' );
 text( TT3750AI(j)  , TT3750A(j) ,  [ str3537{j} str3733{j} ] ,'color',c2 ); 
 
  elseif 1,    [TT2750A(j)  TT2750AI(j ) ]   = max( YQP3(j , : ) ) ;
 text( TT2750AI(j)  , TT2750A(j) ,  [ str3537{j}  str3733{j} ]   ,'color', c2); 
  else  [AAA(j) AAA2714I(j) ]= max(YQP3(j ,: ) );
%[ TT2750AI(j)]= (HF3T(j, 6) );
%  text( TT2750AI(j) , AAA(j) , [  'i='   int2str(j) ] ,'color', 'k' ); 
 
 end; end; set( gca,  'Units', 'normalized',   'FontUnits', 'points', ...
 'FontWeight', 'normal',  'FontSize', fonts16 , 'FontName', 'Times' ) ;  
   set(gca,'YTick', CELL3y ) ;set(gca, 'YTickLabel',  ST3adc ) ; 
 set(gca,  'XTick', wxtick   );  set(gca,'XTickLabel', wxtick );
 xlim([ 000  cwidt ]) ;ylim([ CELL3y(1)    CELL3y(end)]) ;
title([' AAMI3 ' num2str(L3)] ,'color', 'r' , 'FontSize' ,16); 
 %axis([ -0  cwidt  -3  4 ]);  
 end; if L4, m=m+1; top4= subplot( n, 1, m) ; 
YQP4 = zsNUM0( HC4, :) ;%fusion
 for j =1: length( HC4)  line4= plot( YQP4(j, : ), cb );  hold on; end;
 set( gca,  'Units', 'normalized',   'FontUnits', 'points', ...
 'FontWeight', 'normal',  'FontSize', fonts16 , 'FontName', 'Times' ) ;  
 set(gca,'YTick', CELL3y ) ; set(gca, 'YTickLabel',  ST3adc ) ; 
set(gca,  'XTick', wxtick  );  set(gca,'XTickLabel', wxtick );
 ylim([ CELL3y(1)    CELL3y(end) ]) ;  xlim([ 000  cwidt ]) ;
title( [  ' AAMI4 ' num2str(L4) ] ,'color', 'r' , 'FontSize' ,16 );  hold off;   
 end;   cnptoqc= [  'hFeaAAMI' Afile1tests ] ; %h_145 = figure(  hFeature ) ;  
hLA = legend( [line1,   line2,  line3,line4] , ...
{['N ' num2str(L1,10)] ,['S ' num2str(L2,10)] ,...
[ 'V ' num2str(L3,10) ],[ 'F ' num2str(L4,10)]});
newPosition = [ 0.7 0.76 0.3 0.3];   newUnits = 'normalized';
set(   hLA , 'Position',  newPosition, 'Units', newUnits); 
figure(gf) ; FIGFILE = [ A '3720'  num2str( FILESTEST ) ... 
codefile  '_' da(1:2),da(4:6),da(10:11),da(13:14),da(16:17)]; 
%PATFIG1= [  PATFIG ]  ; [stas,mssage,mid] = mkdir( PATFIG1 )
 FIGUFILE = fullfile( PATFIG , FIGFILE) ;; rname=num2str(Afile1test) ; 
saveas( gf ,[ FIGUFILE  'er' ERR int2str(NZBH ) '_'  num2str(ceil(TCA))...
B AENS FILESTRAINS ] , 'png')  ; 
 end;  wzze = min( size( wqct1)) ;  SM2= max(size(wqct1) ); 
  if  wzze ==SM2 , 
 for k = 1 : length( wcl )   j =(k) ;   wTNE(k) = 0;  
for i = 1 : length ( wcl )  if  ( i ~= j), wTNsE( k )= ( wqct(k, i) ); 
 wTNE(k) =  wTNE(k)  +  ( wqct( k, i) ); 
end; end; end; end;  if 0, A1rangeU =['AA' num2str(i ) ': AD' num2str(i)] ; 
%figure jdtwdistfig16%( x, y, dst, verbose) ; ARR1= ARR -3
%  ECGM_14_160102  rmpath(genpath('D:\jaga\libsvm-3.17')) ; 
 title(['ROC curve of (AUC = ' num2str(auc) ' )']);  d=dtw 
%accuracy= trainAndValidateELM(TRAIN4R,x,zzz,nFolds,nELM,nUnits)
end;dbclear all ; %  set( gca,  'YTick', fyxdfc  ) ; 
clear YQP1; %xls  [A   A1filenamexl2   EE   TEST4CR  ]
%AFILE='G:\data\mitdb\featurenew\ASVM213_22311Nov151714.mat';
[ 2350,    2680, 2240,2280]

%jdtwdistfig16%203 431   % xls
jdtwdistfig161204 ; h = gcf ;  set(h,'WindowStyle','docked') ;  
A1FeXL2
[ PATXL   'zzzwfeatsel' codefile  wmethod wtrs      '.xls' ]  