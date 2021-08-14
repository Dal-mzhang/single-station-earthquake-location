#thickness vp1 vp2 vs1 vs2 Qp Qs d_thickness

BEGIN{
}
!/#/{
   thick=$1;
   vp1=$2; vp2=$3;
   vs1=$4; vs2=$5;
   Qp =$6;  Qs=$7;
   dtck = $8;

   nx= thick/dtck;
   nnx=sprintf("%d",nx);
   nny=nnx+0;
   nnx=nnx+0;
#strange, nnx has to be identified as integer
   if( (thick-nnx*dtck)/dtck>0.5){
   nny=nnx+1;
   };

   if(nnx<1) {nny=1;}
   nnx=nny;
   dtckx=thick/nnx;
   dvpx= (vp2-vp1)/nnx;
   dvsx= (vs2-vs1)/nnx;

   for(n1=1;n1<=nnx;n1=n1+1)
   {
    vp=vp1+(n1-1)*dvpx;
    vs=vs1+(n1-1)*dvsx;
#     print dtckx,vs,vp;
    print dtckx,vp,vs,density(vp),Qp,Qs;
   }
 
}

function density (vp)
{
 return (vp-6)*0.6/2.0+2.7;
}
