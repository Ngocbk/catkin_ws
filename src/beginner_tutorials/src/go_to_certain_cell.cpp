    #include "ros/ros.h"
    #include "beginner_tutorials/GoToCertainCell.h"
    #include <cstdlib>
    #include <vector>
    #include <stdio.h>
    #include <string.h>
    #include <math.h>
    #include "stdlib.h"
    #include <curl/curl.h>
    #include <time.h>



int main(int argc, char **argv) {


    int sleep = 2000000;

while(true){
    char mang123[100];
    int xoa1 = 0;
    int xoa2 = 0;
    for (xoa1 = 0; xoa1 <100; xoa1++)
    {
        mang123[xoa1]=48;
    }
    int B[14][10];
    int C[80][80];
    for (xoa1 = 0; xoa1 < 80; xoa1++)
    {
        for (xoa2 = 0; xoa2 < 80; xoa2++)
        {
            C[xoa1][xoa2]=0;
        }
    }
    int D[80];
    for (xoa1 = 0; xoa1 < 80; xoa1++)
    {
        D[xoa1]=0;
    }
    int E[20];
    for (xoa1 = 0; xoa1 < 20; xoa1++)
    {
        E[xoa1]=0;
    }
    int F[50];
    for (xoa1 = 0; xoa1 < 50; xoa1++)
    {
        /* code */
        F[xoa1]=0;
    }
    int GUI[100];
    for (xoa1 = 0; xoa1 < 100; xoa1++)
    {
        GUI[xoa1]=0;
    }
    int i,j=0,a,b,c=0,d=0,e=0,f=0,g=0,h=0,k=0;
    int p=0,q=0;
    int a2=0;
    int b2=0;
    int dodai=0;
    int chuoi=0;
    int so=0;
    int hang=0;
    int cot=0;
    int lap=0;
    int dodai1=0;
    int so_diem=0;
    ros::init(argc, argv, "go_to_certain_cell");
    ros::NodeHandle n;
    ros::ServiceClient goTo = n.serviceClient<beginner_tutorials::GoToCertainCell>("go_to_certain_cell");
    beginner_tutorials::GoToCertainCell srv;


    int t,v;
        int A[14][10]={
            {1,1,1,1,1,1,1,1,1,1},
            {1,1,1,1,1,1,1,1,1,1},
            {1,1,0,0,0,0,0,0,1,1},
            {1,1,0,0,0,0,0,0,1,1},
            {1,1,0,0,0,0,0,0,1,1},
            {1,1,0,0,0,0,0,0,1,1},
            {1,1,0,0,1,1,0,0,1,1},
            {1,1,0,0,1,1,0,0,1,1},
            {1,1,0,0,0,0,0,0,1,1},
            {1,1,0,0,0,0,0,0,1,1},
            {1,1,0,0,0,0,0,0,1,1},
            {1,1,0,0,0,0,0,0,1,1},
            {1,1,1,1,1,1,1,1,1,1},
            {1,1,1,1,1,1,1,1,1,1},

        };
        FILE *fp= fopen ("data.txt","r+");
        printf("doc duoc file\n");
        fgets (mang123 , 100 , fp);
        fclose(fp);  

        i=0;

        while(mang123[i]<=57&&mang123[i]>=49){
            if(mang123[i+4]==44){
                t = (mang123[i]-48)*10+mang123[i+1]-48;
                v = (mang123[i+2]-48)*10+mang123[i+3]-48;
                E[j]= t*100+v;
                i=i+5;
                j=j+1;
                
            }else if(mang123[i+3]==44){
                t = mang123[i]-48;
                v = (mang123[i+1]-48)*10+mang123[i+2]-48;
                E[j]= t*100+v;
                i=i+4;
                j=j+1;
            }

        }


        for(i=0;i<=13;i++){
            for (j=0;j<=9;j++){
                if(A[i][j]==1){
                    printf("x ");
                    B[i][j] = 2;
                }
                if(A[i][j]==0){
                    printf("_ ");
                    B[i][j] = 0;
                }
            }
            printf("\n");
        }

         // Nhap toa do

        a = 11;
        b = 2;
        c = E[0]/100;
        d = E[0]%100;
        a= 13-a;


        for (i = 0; i < 20; i++)
        {
            if(E[i]!=0&&E[i+1]==0){
                so_diem = i+1;
            }
        }
        if(c!=0&&d!=0){
            if(a!=c||b!=d){
            e=a+1;
            f=a-1;
            g=b+1;
            h=b-1;
            if( B[e][b]==0){
                    B[e][b]=1;
                    C[0][0]=1;
                    C[0][1]= e*100+b;
                }
            if( B[f][b]==0){
                    B[f][b]=1;
                    C[1][0]=1;
                    C[1][1]= f*100+b;
                }
            if( B[a][g]==0){
                    B[a][g]=1;
                    C[2][0]=1;
                    C[2][1]=a*100+g;
                }
            if( B[a][h]==0){
                    B[a][h]=1;
                    C[3][0]=1;
                    C[3][1]= a*100 + h;
                }
                
            }

            // Bat dau sinh duong
            while(p!=c||q!=d){
                dodai=dodai+1;
                for(chuoi=0; chuoi<=50; chuoi++){
                    if(C[chuoi][0]==dodai){
                        so = C[chuoi][dodai];
                        hang = so / 100;
                        cot = so % 100;
                        if(hang==c&&cot==d){
                            p=hang;
                            q=cot;
                            for(k=1; k<=dodai;k++){
                                D[0]= dodai; 
                                D[k]=C[chuoi][k];
                            }
                        }
                        e = hang +1;
                        f = hang -1;
                        g = cot + 1;
                        h = cot -1;
                        dodai1 = dodai + 1;
                        if(B[e][cot]==0){
                            lap = 0;
                            B[e][cot]=1;
                            while(C[lap][0]!=0){
                                lap = lap +1;
                            }
                            C[lap][0]= dodai1;
                            C[lap][dodai1]= e*100 + cot;
                            for(k=1;k<=dodai;k++){
                                C[lap][k]=C[chuoi][k];
                            }
                        }
                        if(B[f][cot]==0){
                            lap = 0;
                            B[f][cot]=1;
                            while(C[lap][0]!=0){
                                lap = lap +1;
                            }
                            C[lap][0]= dodai1;
                            C[lap][dodai1]= f*100 + cot;
                            for(k=1;k<=dodai;k++){
                                C[lap][k]=C[chuoi][k];
                            }
                        }
                        if(B[hang][g]==0){
                            lap = 0;
                            B[hang][g]=1;
                            while(C[lap][0]!=0){
                                lap = lap +1;
                            }
                            C[lap][0]= dodai1;
                            C[lap][dodai1]= hang*100 + g;
                            for(k=1;k<=dodai;k++){
                                C[lap][k]=C[chuoi][k];
                            }
                        }
                        if(B[hang][h]==0){
                            lap = 0;
                            B[hang][h]=1;
                            while(C[lap][0]!=0){
                                lap = lap +1;
                            }
                            C[lap][0]= dodai1;
                            C[lap][dodai1]= hang*100 + h;
                            for(k=1;k<=dodai;k++){
                                C[lap][k]=C[chuoi][k];
                            }
                        }
                        C[chuoi][0] = 0;
                    }

                }
            }

            for(i=0;i<20;i++){
                a2=  E[i]/100;
                b2 = E[i]%100;
                B[a2][b2]= 100;

            }

            a2= E[0]/100;
            b2= E[0]%100;
            B[a2][b2]= B[a2][b2]-1;
            F[0]=E[0];

            for (i = 1; i < 50; i++)
            {   
                if(B[a2-1][b2]<=B[a2+1][b2]&&B[a2][b2+1]<=B[a2][b2-1]){
                    if(B[a2+1][b2]<=B[a2][b2-1]){
                        F[i]=a2*100+b2-1;
                    }
                    if(B[a2+1][b2]>=B[a2][b2-1]){
                        F[i]=(a2+1)*100+b2;
                    }
                }

                if(B[a2-1][b2]>=B[a2+1][b2]&&B[a2][b2+1]<=B[a2][b2-1]){
                    if(B[a2-1][b2]<=B[a2][b2-1]){
                        F[i]=a2*100+b2-1;
                    }
                    if(B[a2-1][b2]>=B[a2][b2-1]){
                        F[i]=(a2-1)*100+b2;
                    }
                }

                if(B[a2-1][b2]<=B[a2+1][b2]&&B[a2][b2+1]>=B[a2][b2-1]){
                    if(B[a2+1][b2]<=B[a2][b2+1]){
                        F[i]=a2*100+b2+1;
                    }
                    if(B[a2+1][b2]>=B[a2][b2+1]){
                        F[i]=(a2+1)*100+b2;
                    }
                }

                if(B[a2-1][b2]>=B[a2+1][b2]&&B[a2][b2+1]>=B[a2][b2-1]){
                    if(B[a2-1][b2]<=B[a2][b2+1]){
                        F[i]=a2*100+b2+1;
                    }
                    if(B[a2-1][b2]>=B[a2][b2+1]){
                        F[i]=(a2-1)*100+b2;
                    }
                }

                a2 =    F[i]/100;
                b2 =    F[i]%100;
                B[a2][b2]=B[a2][b2]-1;

            }


            GUI[0]=a*100+b;

            for ( i = 1; i < dodai1; i++)
            {
                GUI[i]=D[i];
            }
            for ( i = dodai1; i < (dodai1+so_diem); i++)
            {
                
                GUI[i]=F[i];
            }
            for ( i = 0; i < dodai1+so_diem; i++)
            {
                GUI[(dodai1+so_diem)*2-i-2]= GUI[i];
            }

            for (i = 0; i < (dodai1+so_diem)*2-1; i++)
            {
                GUI[i]=(13-GUI[i]/100)*100+GUI[i]%100;
                printf("%d\n", GUI[i] );
            }




            for(k=0; k<=(dodai1+so_diem*4); k++){
                so = GUI[k];
                hang =13- so /100;
                cot = so % 100;
                A[hang][cot] = 3;
                A[a][b] = 3;
            }
            for(i=0;i<=13;i++){
                for (j=0;j<=9;j++){
                    if(A[i][j]==1){
                        printf("x ");
                    }
                    if(A[i][j]==0){
                        printf("_ ");
                    }
                    if(A[i][j]==3){
                        printf("c " );
                    }
                }
                printf("\n");
            }

         

            for(i=0; i<(dodai1+so_diem)*2-1 ; i++){
                srv.request.cells.push_back(GUI[i]);
            }

            goTo.call(srv);

        }
            clock_t time_end;
            time_end = clock() + sleep;
            while (clock() < time_end){}
  
    
    }
    return 0;
}
