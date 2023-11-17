function collision=detection_collision(rai, rbi, CoinsBlocA, CoinsBlocB, normalesA, normalesB)
  longueurVoitureA = 4.78;
  longueurVoitureB = 4.23;
  largeurVoitureA = 1.82;
  largeurVoitureB = 1.6;

  rayonGrosCercleA = sqrt((longueurVoitureA/2)^2 + (largeurVoitureA/2)^2);
  rayonGrosCercleB = sqrt((longueurVoitureB/2)^2 + (largeurVoitureB/2)^2);

  collision = 0

  if ( sqrt( (rai(1)-rbi(1))^2 + (rai(2)-rbi(2))^2 + (rai(3)-rbi(3))^2) < (rayonGrosCercleA + rayonGrosCercleB) )
    for coinsB = CoinsBlocB
      if(normalesA(1,1) * (coinsB(1) - CoinsBlocA(1,1)) + normalesA(1,2) * (coinsB(2) - CoinsBlocA(1,2)))
        printf("collision normale 1 de A")
        collision = 1
        return

      elseif(normalesA(2,1) * (coinsB(1) - CoinsBlocA(2,1)) + normalesA(2,2) * (coinsB(2) - CoinsBlocA(2,2)))
        printf("collision normale 2 de A")
        collision = 1
        return

      elseif(normalesA(3,1) * (coinsB(1) - CoinsBlocA(3,1)) + normalesA(3,2) * (coinsB(2) - CoinsBlocA(3,2)))
        printf("collision normale 2 de A")
        collision = 1
        return

      elseif(normalesA(4,1) * (coinsB(1) - CoinsBlocA(3,1)) + normalesA(4,2) * (coinsB(2) - CoinsBlocA(3,2)))
        printf("collision normale 2 de A")
        collision = 1
        return
      endif
    endfor
  endif
end
