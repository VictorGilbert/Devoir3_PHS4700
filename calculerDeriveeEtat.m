
function g = calculerDeriveeEtat(q, t)
  MASSE_BALLON = 0.45; # En kg
  RAYON_BALLON = 0.11; # en m

  F1 = CalculerForceGravitationnelle(MASSE_BALLON);
  F2 = CalculerForceFrottementVisqueux(RAYON_BALLON, q(1:3));
  F3 = CalculerForceMagnus(RAYON_BALLON, q(1:3), q(7:9));

  forces_externes = F1 + F2 + F3;

  accel = forces_externes ./ MASSE_BALLON;
  g = [accel;q(1:3);0;0;0]; # accel, vitesses, et acceleration angulaire
end
