/*大牛分享的雪花解密坐标思路源码
理解的人使用即可
#解密
*/
void __noreturn RefreshPeople(void)
{
  int v0; // w0
  __int64 v1; // x0
  __int64 v2; // x0
  int v3; // w0
  __int64 v4; // x0
  __int64 v5; // x0
  __int64 v6; // x0
  __int64 v7; // x0
  __int64 v8; // x0
  __int64 v9; // x0
  __int64 v10; // x0
  __int64 v11; // x0
  __int64 v12; // [xsp+10h] [xbp+10h]
  __int64 v13; // [xsp+18h] [xbp+18h]
  __int64 v14; // [xsp+20h] [xbp+20h]
  __int64 v15; // [xsp+28h] [xbp+28h]
  __int64 v16; // [xsp+28h] [xbp+28h]
  __int64 v17; // [xsp+28h] [xbp+28h]
  __int64 *v18; // [xsp+40h] [xbp+40h]
  __int64 *v19; // [xsp+48h] [xbp+48h]
  __int64 *v20; // [xsp+50h] [xbp+50h]
  int v21; // [xsp+58h] [xbp+58h]
  int v22; // [xsp+58h] [xbp+58h]
  int v23; // [xsp+58h] [xbp+58h]
  int i; // [xsp+5Ch] [xbp+5Ch]
  int j; // [xsp+5Ch] [xbp+5Ch]
  int k; // [xsp+5Ch] [xbp+5Ch]

  v20 = (__int64 *)malloc(0x13878uLL);
  v19 = (__int64 *)malloc(0x13878uLL);
  v18 = (__int64 *)malloc(0x13878uLL);
  malloc(0x13878uLL);
  while ( 1 )
  {
    usleep(1000000u);
    TOU = MeAddress - 0x2000000;
    WEI = MeAddress + 0x2000000;
    v0 = 550 - getint(MeAddress + 0x30);
    if ( v0 < 0 )
      v0 = -v0;
    if ( v0 <= 450 )
    {
      v1 = getint64(libGameCoreso + 0x3B8F5D0);
      v2 = getint64(v1 + 0x138);
      v15 = v2 + 96;
      v3 = getint(v2 + 0x7C);
      v14 = v3;
      if ( v3 > 0 && v3 <= 999LL )
      {
        v4 = getint64(v15);
        vm_readv_long(v4, v20, 24 * v14);
        v21 = 0;
        for ( i = 0; v14 > i; ++i )
          People[25 * v21++ + 10] = v20[3 * i];
        Number = v21;
        v5 = getint64(libGameCoreso + 0x3B8F958);
        v6 = getint64(v5 + 0xD0);
        v7 = getint64(v6 + 0x130);
        v8 = getint64(v7 + 0x88);
        v16 = v8 + 288;
        v13 = (int)getint(v8 + 316);
        if ( v14 <= 0 || v14 > 9999 )
        {
          Number2 = 0;
        }
        else
        {
          v9 = getint64(v16);
          vm_readv_long(v9, v19, 24 * v13);
          v22 = 0;
          for ( j = 0; v13 > j; ++j )
            *(_QWORD *)(__1 + 24LL * v22++) = v19[3 * j];
          Number2 = v22;
        }
        v10 = getint64(libGameCoreso + 0x3B8F5D0);
        v17 = v10 + 0x2E0;
        v12 = (int)getint(v10 + 0x2FC);
        if ( v14 <= 0 || v14 > 9999 )
        {
          Number3 = 0;
        }
        else
        {
          v11 = getint64(v17);
          vm_readv_long(v11, v18, 24 * v12);
          v23 = 0;
          for ( k = 0; v12 > k; ++k )
            *(_QWORD *)(_ + 24LL * v23++) = v18[3 * k];
          Number3 = v23;
        }
      }
    }
    else
    {
      Number = 0LL;
    }
  }
}



void __noreturn ReadPeople(void)
{
  int v0; // w0
  int v1; // w0
  int v2; // w1
  int v3; // w0
  bool v4; // w19
  __int64 v5; // x0
  __int64 v6; // x19
  __int64 v7; // x0
  int v8; // w0
  int v9; // w0
  __int64 v10; // x0
  __int64 v11; // x0
  __int64 v12; // x0
  float v13; // s0
  float v14; // s0
  __int64 v15; // x1
  __int64 v16; // x0
  bool v17; // w2
  __int64 v18; // x0
  __int64 v19; // x0
  __int64 v20; // x0
  __int64 v21; // x0
  __int64 v22; // x0
  int v23; // w0
  __int64 v24; // x0
  __int64 v25; // x0
  __int64 v26; // x0
  int v27; // w0
  __int64 v28; // x0
  __int64 v29; // x0
  __int64 v30; // x0
  __int64 v31; // x0
  __int64 v32; // x0
  __int64 v33; // x0
  int v34; // w0
  float v35; // s8
  float v36; // s0
  int v37; // w0
  int v38[2]; // [xsp+28h] [xbp+28h] BYREF
  int v39; // [xsp+30h] [xbp+30h]
  int v40[2]; // [xsp+38h] [xbp+38h] BYREF
  int v41; // [xsp+40h] [xbp+40h]
  __int64 v42; // [xsp+48h] [xbp+48h]
  int v43; // [xsp+50h] [xbp+50h]
  __int64 v44; // [xsp+58h] [xbp+58h]
  int v45; // [xsp+60h] [xbp+60h]
  __int64 v46; // [xsp+68h] [xbp+68h]
  int v47; // [xsp+70h] [xbp+70h]
  int v48[2]; // [xsp+78h] [xbp+78h] BYREF
  __int64 v49; // [xsp+80h] [xbp+80h]
  int v50[2]; // [xsp+88h] [xbp+88h] BYREF
  int v51; // [xsp+90h] [xbp+90h]
  int v52[2]; // [xsp+98h] [xbp+98h] BYREF
  int v53; // [xsp+A0h] [xbp+A0h]
  int v54[2]; // [xsp+A8h] [xbp+A8h] BYREF
  int v55; // [xsp+B0h] [xbp+B0h]
  __int64 v56; // [xsp+B8h] [xbp+B8h]
  float v57; // [xsp+C0h] [xbp+C0h]
  float v58; // [xsp+C4h] [xbp+C4h]
  float v59; // [xsp+C8h] [xbp+C8h]
  float v60; // [xsp+CCh] [xbp+CCh]
  float v61; // [xsp+D0h] [xbp+D0h]
  float v62; // [xsp+D4h] [xbp+D4h]
  float v63; // [xsp+D8h] [xbp+D8h]
  float v64; // [xsp+DCh] [xbp+DCh]
  float v65; // [xsp+E0h] [xbp+E0h]
  float v66; // [xsp+E4h] [xbp+E4h]
  float v67; // [xsp+E8h] [xbp+E8h]
  float v68; // [xsp+ECh] [xbp+ECh]
  float v69; // [xsp+F0h] [xbp+F0h]
  float v70; // [xsp+F4h] [xbp+F4h]
  float v71; // [xsp+F8h] [xbp+F8h]
  float v72; // [xsp+FCh] [xbp+FCh]
  float v73; // [xsp+100h] [xbp+100h]
  float v74; // [xsp+104h] [xbp+104h]
  float v75; // [xsp+108h] [xbp+108h]
  float v76; // [xsp+10Ch] [xbp+10Ch]
  float v77; // [xsp+110h] [xbp+110h]
  float v78; // [xsp+114h] [xbp+114h]
  float v79; // [xsp+118h] [xbp+118h]
  float v80; // [xsp+11Ch] [xbp+11Ch]
  float v81; // [xsp+120h] [xbp+120h]
  float v82; // [xsp+124h] [xbp+124h]
  float v83; // [xsp+128h] [xbp+128h]
  float v84; // [xsp+12Ch] [xbp+12Ch]
  __int64 v85; // [xsp+130h] [xbp+130h]
  __int64 v86; // [xsp+138h] [xbp+138h]
  __int64 v87; // [xsp+140h] [xbp+140h]
  __int64 v88; // [xsp+148h] [xbp+148h]
  __int64 v89; // [xsp+150h] [xbp+150h]
  __int64 v90; // [xsp+158h] [xbp+158h]
  __int64 v91; // [xsp+160h] [xbp+160h]
  __int64 v92; // [xsp+168h] [xbp+168h]
  __int64 v93; // [xsp+170h] [xbp+170h]
  float v94; // [xsp+178h] [xbp+178h]
  float v95; // [xsp+17Ch] [xbp+17Ch]
  __int64 v96; // [xsp+180h] [xbp+180h]
  __int64 v97; // [xsp+188h] [xbp+188h]
  int v98; // [xsp+190h] [xbp+190h]
  unsigned int v99; // [xsp+194h] [xbp+194h]
  __int64 v100; // [xsp+198h] [xbp+198h]
  int v101; // [xsp+1A4h] [xbp+1A4h]
  unsigned int v102; // [xsp+1A8h] [xbp+1A8h]
  int v103; // [xsp+1ACh] [xbp+1ACh]
  __int64 v104; // [xsp+1B0h] [xbp+1B0h]
  int v105; // [xsp+1B8h] [xbp+1B8h]
  int v106; // [xsp+1BCh] [xbp+1BCh]
  int v107; // [xsp+1C0h] [xbp+1C0h]
  bool v108; // [xsp+1C7h] [xbp+1C7h]
  int j; // [xsp+1C8h] [xbp+1C8h]
  char v110; // [xsp+1CFh] [xbp+1CFh]
  __int64 v111; // [xsp+1D0h] [xbp+1D0h]
  int i; // [xsp+1DCh] [xbp+1DCh]

  while ( 1 )
  {
    ++FPS;
    v104 = getms();
    for ( i = 0; i < Number2; ++i )
    {
      v0 = getint(*(_QWORD *)(__1 + 24LL * i) + 192LL);
      *(_DWORD *)(__1 + 24LL * i + 20) = v0 % 10000;
      v103 = getint(*(_QWORD *)(__1 + 24LL * i) + 568LL);
      v1 = getint(*(_QWORD *)(__1 + 24LL * i) + 484LL);
      if ( v103 == v1 )
        v2 = 0;
      else
        v2 = v103 / 1000 + 4;
      *(_DWORD *)(__1 + 24LL * i + 16) = v2;
      v102 = getint(*(_QWORD *)(__1 + 24LL * i) + 688LL);
      v3 = getint(*(_QWORD *)(__1 + 24LL * i) + 696LL);
      v101 = -v3;
      if ( __PAIR64__(v102, -v3) )
      {
        *(_DWORD *)(__1 + 24LL * i + 8) = (int)(((double)(int)(isblue * v102) * 0.95 + 51116.0) / 301.37);
        *(_DWORD *)(__1 + 24LL * i + 12) = (int)(((double)(isblue * v101) * 0.95 - 50847.0) / 301.37);
      }
      else
      {
        *(_DWORD *)(__1 + 24LL * i + 8) = 0;
        *(_DWORD *)(__1 + 24LL * i + 12) = 0;
      }
    }
    for ( i = 0; i < Number3; ++i )
    {
      v4 = (int)getint(*(_QWORD *)(_ + 24LL * i) + 60LL) == TeamID;
      v5 = getint64(*(_QWORD *)(_ + 24LL * i) + 352LL);
      if ( v4 | ((unsigned int)getint(v5 + 160) == 0) )
      {
        *(_DWORD *)(_ + 24LL * i + 8) = 0;
        *(_DWORD *)(_ + 24LL * i + 12) = 0;
      }
      else
      {
        v6 = _ + 24LL * i;
        *(_DWORD *)(v6 + 20) = getint(*(_QWORD *)v6 + 48LL);
        v7 = getint64(*(_QWORD *)(_ + 24LL * i) + 552LL);
        v100 = getint64(v7 + 16);
        v99 = getint(v100);
        v8 = getint(v100 + 8);
        v98 = -v8;
        if ( __PAIR64__(v99, -v8) )
        {
          *(_DWORD *)(_ + 24LL * i + 8) = (int)(((double)(int)(isblue * v99) * 0.95 + 51116.0) / 301.37);
          *(_DWORD *)(_ + 24LL * i + 12) = (int)(((double)(isblue * v98) * 0.95 - 50847.0) / 301.37);
        }
        else
        {
          *(_DWORD *)(_ + 24LL * i + 8) = 0;
          *(_DWORD *)(_ + 24LL * i + 12) = 0;
        }
      }
    }
    v111 = 0LL;
    for ( i = 0; i < Number; ++i )
    {
      v9 = getint(People[25 * i + 10] + 48LL);
      LODWORD(People[25 * i + 18]) = v9;
      if ( SLODWORD(People[25 * i + 18]) <= 99 || SLODWORD(People[25 * i + 18]) > 1000 )
      {
        HIDWORD(People[25 * i + 8]) = 0;
      }
      else
      {
        v10 = getint642(People[25 * i + 10] + 352LL);
        v11 = getint642(v10 + 104);
        v12 = getint642(v11 + 176);
        v97 = getint642(v12 + 72);
        People[25 * i + 11] = v97;
        *(_QWORD *)v54 = 0LL;
        v55 = 0;
        *(_QWORD *)v52 = 0LL;
        v53 = 0;
        *(_QWORD *)v50 = 0LL;
        v51 = 0;
        *(_QWORD *)v48 = 0LL;
        v49 = 0LL;
        v46 = 0LL;
        v47 = 0;
        v44 = 0LL;
        v45 = 0;
        v42 = 0LL;
        v43 = 0;
        *(_QWORD *)v40 = 0LL;
        v41 = 0;
        vm_readv_int(v97, v54, 0xCuLL);
        vm_readv_int(v97 + 16, v52, 0xCuLL);
        vm_readv_int(v97, v50, 0xCuLL);
        v50[0] /= 256;
        v51 /= 256;
        v96 = People[25 * i + 10] - 632LL;
        getfloat(v96);
        v95 = v13 * 1000.0;
        getfloat(v96 + 8);
        v94 = (float)-v14 * 1000.0;
        if ( (float)SLODWORD(People[25 * i + 6]) != (float)(v95 + v94) )
        {
          LODWORD(People[25 * i + 6]) = (int)(float)(v95 + v94);
          People[25 * i + 7] = v104;
        }
        v93 = 0LL;
        *(_QWORD *)v38 = 0LL;
        v39 = 0;
        vm_readv_int(v97, v38, 0xCuLL);
        v110 = 0;
        if ( v38[0] == 0 || v39 == 0 )
        {
          v15 = People[25 * i + 12];
          v85 = v15 - v97;
          v16 = v15 - v97;
          if ( v15 - v97 < 0 )
            v16 = v97 - v15;
          v17 = v16 > 12288;
          v86 = v104 - People[25 * i + 7];
          v18 = v86;
          if ( v86 < 0 )
            v18 = -v86;
          if ( v17 || v18 <= 500 )
          {
            v92 = v97 + 4096;
            v19 = (v97 + 4096) & 0xFFF;
            if ( v97 + 4096 <= 0 )
              v19 = -(-(v97 + 4096) & 0xFFF);
            v92 -= v19;
            if ( v92 != v111 )
            {
              memset((void *)obj4, 0, 8uLL);
              vm_readv_int(v92, (int *)obj4, 0x2000uLL);
              v111 = v92;
            }
            for ( j = 0; ; ++j )
            {
              if ( j > 2047 )
                goto LABEL_48;
              v93 = v92 + 4 * j;
              if ( *(_DWORD *)(obj4 + 4LL * j) )
              {
                vm_readv_int(v93, v48, 0x10uLL);
                v47 /= (int)v49 / 256;
                LODWORD(v44) = v48[0] / 0x10000;
                v45 /= (int)v49 / 0x10000;
                LODWORD(v46) = v48[0] / 256;
                v47 /= (int)v49 / 256;
                LODWORD(v42) = (v48[0] >> 24 << 8) | LOBYTE(v48[1]);
                v43 = ((int)v49 >> 24 << 8) | BYTE4(v49);
                vm_readv_int(v93 + 2, v40, 0xCuLL);
                v83 = v95 - (float)v48[0];
                v84 = (float)(int)v49 + v94;
                v108 = ((fabsf(v83) < 500.0) & (fabsf(v84) < 500.0)) != 0;
                v81 = v95 - (float)(int)v46;
                v82 = (float)v47 + v94;
                if ( ((fabsf(v81) < 500.0) & (fabsf(v82) < 500.0)) != 0 )
                  v108 = 1;
                v79 = v95 - (float)(int)v44;
                v80 = (float)v45 + v94;
                if ( ((fabsf(v79) < 500.0) & (fabsf(v80) < 500.0)) != 0 )
                  v108 = 1;
                v77 = v95 - (float)(int)v42;
                v78 = (float)v43 + v94;
                if ( ((fabsf(v77) < 500.0) & (fabsf(v78) < 500.0)) != 0 )
                  v108 = 1;
                v75 = v95 - (float)v40[0];
                v76 = (float)v41 + v94;
                if ( ((fabsf(v75) < 500.0) & (fabsf(v76) < 500.0)) != 0 )
                  v108 = 1;
                if ( v108 )
                  break;
              }
            }
            People[25 * i + 12] = v93;
            v110 = 1;
          }
LABEL_48:
          if ( v110 == 0 && People[25 * i + 12] > 0LL )
          {
            vm_readv_int(People[25 * i + 12], v48, 0x10uLL);
            v47 /= (int)v49 / 256;
            LODWORD(v44) = v48[0] / 0x10000;
            v45 /= (int)v49 / 0x10000;
            LODWORD(v46) = v48[0] / 256;
            v47 /= (int)v49 / 256;
            LODWORD(v42) = (v48[0] >> 24 << 8) | LOBYTE(v48[1]);
            v43 = ((int)v49 >> 24 << 8) | BYTE4(v49);
            vm_readv_int(People[25 * i + 12] + 2LL, v40, 0xCuLL);
          }
        }
        v73 = v95 - (float)v54[0];
        v74 = (float)v55 + v94;
        if ( ((fabsf(v73) < 500.0) & (fabsf(v74) < 500.0)) != 0 )
          LODWORD(People[25 * i + 24]) = 1;
        v71 = v95 - (float)v52[0];
        v72 = (float)v53 + v94;
        if ( ((fabsf(v71) < 500.0) & (fabsf(v72) < 500.0)) != 0 )
          LODWORD(People[25 * i + 24]) = 2;
        v69 = v95 - (float)v50[0];
        v70 = (float)v51 + v94;
        if ( ((fabsf(v69) < 500.0) & (fabsf(v70) < 500.0)) != 0 )
          LODWORD(People[25 * i + 24]) = 3;
        if ( v38[0] == 0 || v39 == 0 )
        {
          v67 = v95 - (float)v48[0];
          v68 = (float)(int)v49 + v94;
          if ( ((fabsf(v67) < 500.0) & (fabsf(v68) < 500.0)) != 0 )
            LODWORD(People[25 * i + 24]) = 4;
          v65 = v95 - (float)(int)v46;
          v66 = (float)v47 + v94;
          if ( ((fabsf(v65) < 500.0) & (fabsf(v66) < 500.0)) != 0 )
            LODWORD(People[25 * i + 24]) = 5;
          v63 = v95 - (float)(int)v44;
          v64 = (float)v45 + v94;
          if ( ((fabsf(v63) < 500.0) & (fabsf(v64) < 500.0)) != 0 )
            LODWORD(People[25 * i + 24]) = 6;
          v61 = v95 - (float)(int)v42;
          v62 = (float)v43 + v94;
          if ( ((fabsf(v61) < 500.0) & (fabsf(v62) < 500.0)) != 0 )
            LODWORD(People[25 * i + 24]) = 7;
          v59 = v95 - (float)v40[0];
          v60 = (float)v41 + v94;
          if ( ((fabsf(v59) < 500.0) & (fabsf(v60) < 500.0)) != 0 )
            LODWORD(People[25 * i + 24]) = 8;
        }
        v107 = 0;
        v106 = 0;
        if ( LODWORD(People[25 * i + 24]) == 1 )
        {
          v107 = v54[0];
          v106 = -v55;
        }
        if ( LODWORD(People[25 * i + 24]) == 2 )
        {
          v107 = v52[0];
          v106 = -v53;
        }
        if ( LODWORD(People[25 * i + 24]) == 3 )
        {
          v107 = v50[0];
          v106 = -v51;
        }
        if ( v38[0] == 0 || v39 == 0 )
        {
          if ( LODWORD(People[25 * i + 24]) == 4 )
          {
            v107 = v48[0];
            v106 = -(int)v49;
          }
          if ( LODWORD(People[25 * i + 24]) == 5 )
          {
            v107 = v46;
            v106 = -v47;
          }
          if ( LODWORD(People[25 * i + 24]) == 6 )
          {
            v107 = v44;
            v106 = -v45;
          }
          if ( LODWORD(People[25 * i + 24]) == 7 )
          {
            v107 = v42;
            v106 = -v43;
          }
          if ( LODWORD(People[25 * i + 24]) == 8 )
          {
            v107 = v40[0];
            v106 = -v41;
          }
        }
        v57 = v95 - (float)v107;
        v58 = v94 - (float)v106;
        if ( (fabsf(v57) < 500.0) & (fabsf(v58) < 500.0) | (v107 == 0) | (v106 == 0) )
        {
          LODWORD(People[25 * i + 3]) = 1;
          HIDWORD(People[25 * i]) = (int)v95;
          LODWORD(People[25 * i + 2]) = (int)v94;
        }
        else
        {
          LODWORD(People[25 * i + 3]) = 0;
          HIDWORD(People[25 * i]) = v107;
          LODWORD(People[25 * i + 2]) = v106;
        }
        if ( HIDWORD(People[25 * i]) | LODWORD(People[25 * i + 2]) )
        {
          v20 = getint64(People[25 * i + 10] + 328LL);
          v21 = getint64(v20 + 336);
          v22 = getint64(v21 + 96);
          v23 = getint(v22 + 16);
          HIDWORD(People[25 * i + 18]) = v23;
          v24 = getint64(People[25 * i + 10] + 328LL);
          v25 = getint64(v24 + 336);
          v26 = getint64(v25 + 168);
          v27 = getint(v26 + 60);
          HIDWORD(People[25 * i + 20]) = v27 / 8192000;
          if ( HIDWORD(People[25 * i + 18]) == 80115 || HIDWORD(People[25 * i + 18]) == 80107 )
            LODWORD(People[25 * i + 20]) = HIDWORD(People[25 * i + 20]);
          else
            LODWORD(People[25 * i + 20]) = -1;
          v28 = getint64(People[25 * i + 10] + 328LL);
          v29 = getint64(v28 + 264);
          v91 = getint64(v29 + 256) + 212;
          v30 = getint64(People[25 * i + 10] + 328LL);
          v31 = getint64(v30 + 288);
          v90 = getint64(v31 + 256) + 212;
          v105 = 0;
          if ( v91 <= 4094 && v90 <= 4094 )
          {
            v105 = 0;
          }
          else
          {
            if ( v91 <= 4094 || v90 <= 4094 )
            {
              if ( v91 <= v90 )
                v32 = v90;
              else
                v32 = v91;
            }
            else
            {
              v89 = (int)getint(v91 + 4);
              v88 = (int)getint(v90 + 4);
              if ( v89 <= v88 )
                v32 = v90;
              else
                v32 = v91;
            }
            v105 = (int)getint(v32) / 8192000 + 1;
          }
          if ( v105 == 1 )
          {
            if ( People[25 * i + 21] )
            {
              v56 = getms() - People[25 * i + 21];
              v33 = v56;
              if ( v56 < 0 )
                v33 = -v56;
              if ( v33 > 1000 )
                v105 = 0;
            }
            else
            {
              People[25 * i + 21] = getms();
            }
          }
          else
          {
            People[25 * i + 21] = 0LL;
          }
          HIDWORD(People[25 * i + 19]) = v105;
          v87 = getint642(People[25 * i + 10] + 352LL) + 160;
          People[25 * i + 16] = v87;
          v34 = getint(v87);
          HIDWORD(People[25 * i + 3]) = v34;
          v35 = (float)(int)getint(v87);
          v36 = (float)(v35 / (float)(int)getint(v87 + 8)) * 100.0;
          *((float *)&People[25 * i + 8] + 1) = v36;
          v37 = getint(People[25 * i + 10] + 60LL);
          LODWORD(People[25 * i + 9]) = v37;
          if ( People[25 * i + 10] == MeAddress )
          {
            TeamID = SLODWORD(People[25 * i + 9]);
            Me = i;
          }
        }
        else
        {
          HIDWORD(People[25 * i + 8]) = 0;
        }
      }
    }
    usleep(1000 * (1000 / fps));
  }
}


void __noreturn ReadPeople2(void)
{
  int v0; // w0
  int v1; // w0
  int v2; // [xsp+18h] [xbp+18h]
  int i; // [xsp+1Ch] [xbp+1Ch]

  while ( 1 )
  {
    if ( ++QH > 4 )
      QH = 0;
    for ( i = 0; i < Number; ++i )
    {
      if ( LODWORD(People[25 * i + 3]) == 1 || QH == 0 )
      {
        LODWORD(People[25 * i + 1]) = People[25 * i];
        HIDWORD(People[25 * i + 2]) = HIDWORD(People[25 * i + 1]);
        LODWORD(People[25 * i]) = HIDWORD(People[25 * i]);
        HIDWORD(People[25 * i + 1]) = People[25 * i + 2];
        if ( LODWORD(People[25 * i + 1]) - LODWORD(People[25 * i]) <= 0 )
          v0 = -1;
        else
          v0 = 1;
        v2 = v0;
        if ( LODWORD(People[25 * i + 1]) - LODWORD(People[25 * i]) <= 0 )
          v1 = -1;
        else
          v1 = 1;
        if ( v2 != LODWORD(People[25 * i + 4]) || v1 != HIDWORD(People[25 * i + 4]) )
        {
          LODWORD(People[25 * i + 1]) = People[25 * i];
          HIDWORD(People[25 * i + 2]) = HIDWORD(People[25 * i + 1]);
        }
        LODWORD(People[25 * i + 4]) = v2;
        HIDWORD(People[25 * i + 4]) = v1;
      }
    }
    usleep(0x8235u);
  }
}