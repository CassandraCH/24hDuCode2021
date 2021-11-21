pragma solidity >=0.4.22 <0.6.0;
import "./ActionStrategy.sol";
import "./AvatarInterface.sol";

contract Smart is ActionStrategy {

    /**
     * Choisi l'action d'un avatar lors d'un tour d'un combat.
     *
     * @param previousAdvAction l'action précédente de l'avatar adverse
     * @param avatar adresse de l'avatar courant
     * @param damages blessures subites depuis le debut du combats
     * @param avatarAdv adresse de l'avatar adverse
     * @param damagesAdv blessures subites depuis le debut du combats
     * @return l'action de l'avatar pour le tour courant
     */
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        
        AvatarInterface adversaire = AvatarInterface(avatarAdv);
        AvatarInterface personnage = AvatarInterface(avatar);
        (int endA, int forA, int intA, ) = adversaire.getCaracteristiques();
        (int endP, int forP, int intP, ) = personnage.getCaracteristiques();

        if(previousAdvAction == Action.NONE && damages == 0 && damagesAdv == 0){
            // début du combat ?
            if(intA > forA){
                return Action.MAGICAL_PARRY;
            }else{
                return Action.PHYSICAL_PARRY;
            }
        }

        if(forA > (endP-damages)){
            // fin du combat pour nous ! On veut pas perdre !!
            return Action.PHYSICAL_PARRY;
        }

        if(intA > (endP-damages)){
            // fin du combat pour nous ! On veut pas perdre !!
            return Action.MAGICAL_PARRY;
        }

        if(forP > (endA-damages)){
            // fin du combat pour eux ! On est sioux !
            return Action.MAGICAL_ATTACK;
        }

        if(intP > (endA-damages)){
            // fin du combat pour eux ! On est sioux !
            return Action.PHYSICAL_ATTACK;
        }

        //cas normal
        // selon l'attaque précédente
        if(previousAdvAction == Action.PHYSICAL_ATTACK){
            // il s'attend à ce qu'on tape en physique
            return Action.MAGICAL_ATTACK;
        }
        if(previousAdvAction == Action.MAGICAL_ATTACK){
            // il s'attend à ce qu'on tape en magique
            return Action.PHYSICAL_ATTACK;
        }
        if(previousAdvAction == Action.PHYSICAL_PARRY){
            // il va nous taper en physique
            return Action.PHYSICAL_PARRY;
        }
        if(previousAdvAction == Action.MAGICAL_PARRY){
            // il va nous taper en magique
            return Action.MAGICAL_PARRY;
        }
        if(previousAdvAction == Action.DODGE){
            // on dodge aussi
            return Action.DODGE;
        }

        // sinon, on part
        if(intA > forA){
            return Action.MAGICAL_PARRY;
        }else{
            return Action.PHYSICAL_PARRY;
        }

    }
    
}