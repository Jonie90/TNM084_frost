surface testing_frost_surface(string tmap="frost_color_map_red_test.tex";)
{
    normal   n = normalize(N);
    //normal   nf = faceforward(n, I);
    float alpha;
    /* get base color from map */
    if(tmap==""){
      //printf("%s\n"," tmap missing ");
    }
    else {
      //printf("%s\n"," tmap present ");
      //Kan ta bort diffuse(nf) och normalerna ovan.
      color Ct = color texture(tmap,s,t); //* diffuse(nf);
      alpha = texture(tmap[3],s,t);
      Oi = alpha;
      Ci = Oi*Ct;
    }
}




































    //else {
     // printf("%s\n"," tmap present ");
     // color Ct = color texture(tmap,s,t);
     // float SMALL = 0.05;
     // color color2 = (.6, .5, 0);
     // float n = noise (0.1);
     // color brickcolor = mix (Ct, color2, mod (n, SMALL) / SMALL);
     // alpha = texture(tmap[3],s,t);
     // Oi = alpha;
     // Ci = brickcolor;
    //}
