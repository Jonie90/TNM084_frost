displacement frost_displacement(output float elevation = 0.0;){
  //Sätt float amplitude = 0.1 som inparameter ovan
  float amplitude = 0.1;
  float a;

  /* Push up an array of little sinewave lobes */
  //a = sin(2*PI*3*s) * sin(2*PI*3*t);
  //a = noise(sin(2*PI*3*s)) * noise(sin(2*PI*3*t)); (byttes ut mot elevation)
  float elevation = noise(2*P) - 0.5;
  elevation += 0.5*(noise(4*P)-0.5);
  elevation += 0.25*(noise(8*P)-0.5);
  elevation += 0.125*(noise(16*P)-0.5);
  elevation += 0.0625*(noise(32*P)-0.5);
  elevation += 0.003125*(noise(64*P)-0.5);

  //printf("%s\n"," elevation ");
  //printf("%f\n",elevation);

  if (elevation > 0.0)
    P += normalize(N) * elevation * amplitude;
  /* Transform P and N to object space */
  P = transform("object", P);
  N = transform("object", N + point "object" (0,0,0));
  /* Transform P back to current space */
  P = transform("object", "current", P);
  /* Recalculate normal vector */
  N = calculatenormal(P);
}


//displacement frost_displacement(output varying float frost = 0.0;){
	//PointTex: Local point in the object coord system
	/*point PointTex = transform("object", P);

	//Decide color depending on frost (threshold)
	float frost = cellularnoise(105.0*P);	//Send sugar as output argument to surface shader
	float frost = max(frost, 0.0);	//Set negative values to zero


	float frostHeight = 0.2;
	float elevation = frostHeight*frost; //+ chocolate;	//Combine the elevation of sugar and chocolate

	 P = P + N * 0.2 * elevation;	//Calculate new point
	 N = calculatenormal(P);		//Calculate new normal
*/

//}
