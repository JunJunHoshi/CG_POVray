#include "colors.inc" 
#include "shapes.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"
                   

camera{
  location <10,13,7>  
  look_at<5,3,5>
  angle 170
}      

light_source{<10,20,20> color 2*White}

sky_sphere 
{
    pigment{
    wrinkles
    color_map{
    [0.3 color rgb<0.3,0.4,1.2>]
    [0.9 White]}
   scale<1,0.2,0.2>
   }
}

object{ 
  Plane_XZ
    pigment{checker color rgb<1,0.3,0>, color rgb<0,0.5,1>}     
    translate<0,0,0>
}
    
    

#macro Happa(theta,iro)

   intersection{
    object{
     Sphere
     scale<1.0,0.05,0.8>
     pigment{color iro}
    }
    
    object{
     Sphere
     scale<1.0,0.05,0.8>
     pigment{color iro}
     translate<0.5,0,0.6>
     }  
     
      rotate<0,theta,0>
}
       

#end               

#declare idx=0;

#while(idx<8)

   union{     
    
    #declare N=0;
    
    #while(N<idx)        
     object{
     Sphere
     scale 2
     translate<0,N*0.7,0>
     rotate<0,360*N,0>
     texture{Gold_Metal}
     
    #declare N=N+0.003;
   
    }
    #end
   translate<idx*8,0,0>
   rotate<0,idx*200,0>
    #declare idx=idx+0.01;
    }
#end

#declare mk=0;
#declare tt=1;
#declare s=0.002;


#while(mk<8)
    object{
    Sphere
    pigment{color rgb<0.3,0.9,0.2>}
    scale s
    translate<1,mk*0.7*sqrt(tt),0>
    rotate<0,360*mk,0>
    
    
    #declare mk=mk+0.001;
    #declare tt=tt+0.001;
    #declare s=s+0.008*0.008;
    } 
    
#end

#declare mk2=0;
#declare tt2=1;
#declare s2=0.002;

#while(mk2<8)
    object{
    Sphere
    pigment{color rgb<0,0.2,0.06>}
    scale s2
    translate<0.8,mk2*0.7*sqrt(tt2),0>
    rotate<0,360*-mk2,0>
    
    
    #declare mk2=mk2+0.001;
    #declare tt2=tt2+0.002;
    #declare s2=s2+0.006*0.006;
    } 
    
#end



#declare mk3=0;
#declare tt3=1;
#declare s3=0.005;

#while(mk3<8)
    object{
    Sphere
    pigment{color White}
    scale s3
    translate<0.2,mk3*0.7*sqrt(tt3),0>
    rotate<0,360*-mk3,0>
    
    
    #declare mk3=mk3+0.005;
    #declare tt3=tt3+0.008;
    #declare s3=s3+0.008*0.007;
    } 
    
#end



#declare mk4=0;
#declare tt4=1;
#declare s4=0.003;

    #while(mk4<8)
    #if(mod(mk4,0.1)=0)
    union{
        object{
        Sphere
        pigment{color rgb<1,3,0.5>}
        scale s4
        translate<1.5,mk4*0.7*sqrt(tt4),0>
        rotate<0,360*-mk4,0>
        }
        object{Happa(mk4*0.3,rgb<1,3,0.5>) translate<1.53,mk4*0.7*sqrt(tt4),0> rotate<0,360*mk4,0>} 
        }
        
    #else
         object{
        Sphere
        pigment{color rgb<1,3,0.5>}
        scale s4
        translate<1.5,mk4*0.7*sqrt(tt4),0>
        rotate<0,360*-mk4,0>
        }
    #end
        #declare mk4=mk4+0.001;
        #declare tt4=tt4+0.0025;
        #declare s4=s4+0.009*0.009;
  
        
    #end


#declare mk5=0;
#declare tt5=1;
#declare s5=0.002;
    
    #while(mk5<8)
    #if(mod(mk5,0.2)=0)
    union{
        object{
        Sphere
        pigment{color SpringGreen}
        scale s5
        translate<2.8,mk5*0.7*sqrt(tt5),0>
        rotate<0,360*-mk5,0>
        }
        object{Happa(mk5,SpringGreen) translate<2.8,mk5*0.7*sqrt(tt5),0> rotate<0,360*-mk5,0>}
     }
     
     #else
      object{
        Sphere
        pigment{color SpringGreen}
        scale s5
        translate<2.8,mk5*0.7*sqrt(tt5),0>
        rotate<0,360*-mk5,0>
        }
    #end    
        #declare mk5=mk5+0.001;
        #declare tt5=tt5+0.002;
        #declare s5=s5+0.006*0.006;
         
        
    #end

               


#declare mk6=0;
#declare tt6=1;
#declare s6=0.002;
    
    #while(mk6<8)
    #if(mod(mk6,0.3)=0 | mod(mk6,0.2)=0)
    union{
        object{
        Sphere
        pigment{color rgb<0.5,0.8,0.2>}
        scale s6
        translate<2.59,mk6*0.7*sqrt(tt6),0>
        rotate<0,360*mk6,0>
        }
        object{Happa(mk6,rgb<0.5,0.8,0.2>) translate<2.59,mk6*0.7*sqrt(tt6),0> rotate<0,360*mk6,0>}
     }
     
     #else
      object{
        Sphere
        pigment{color SpringGreen}
        scale s6
        translate<2.59,mk6*0.7*sqrt(tt6),0>
        rotate<0,360*-mk6,0>
        }
    #end    
        #declare mk6=mk6+0.002;
        #declare tt6=tt6+0.010;
        #declare s6=s6+0.008*0.009;
         
        
    #end
