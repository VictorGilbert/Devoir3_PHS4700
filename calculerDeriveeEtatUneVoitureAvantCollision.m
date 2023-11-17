
function g = calculerDeriveeEtatUneVoitureAvantCollision(q, t, masseVoiture)

  PoidsVoiture = CalculerForceGravitationnelle(masseVoiture);
  Frottement = CalculerFrottements();

  forces_externes = PoidsVoiture + Frottement;


  accel = forces_externes ./ masseVoiture;
  g = [accel;q(1:3);0;0;0]; # accel, vitesses, et acceleration angulaire
end

function poids=CalculerForceGravitationnelle(masseVoiture)
  poids = 9.81 * masseVoiture
end
