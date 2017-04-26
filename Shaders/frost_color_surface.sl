surface frost_color_surface() {
    color surfaceColor;
    color base_color = color(0.9,0.0,0.0);
    color frost_color = color(1.0,1.0,1.0);
    normal Nn = normalize(N); //Normalize normal
    frost_displacement("elevation", elevation); // Get sugar from displacement
    printf("\n%s\n"," elevation ");
    printf("\n%f\n",elevation);
    if (elevation >= 0.0) {     // If sugar is equal or less than 0, set color to brown (chocolate)
      surfaceColor = frost_color;
      //Set specular color on chocolate to make it more glossy
      Ci = surfaceColor;
    }
    else{ // If sugar is bigger than 0, set color to white(sugar)
      surfaceColor = base_color ;
      //Set diffuse color on sugar to make it more matte
      Ci = surfaceColor*diffuse(Nn);
    }

  //Opacity
  Oi = Os;
}
