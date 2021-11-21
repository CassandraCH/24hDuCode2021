pragma solidity >=0.4.22 <0.6.0;
import "./ActionStrategy.sol";
import "./AvatarInterface.sol";

contract Esquiveur is ActionStrategy {

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
        return Action.DODGE;
    }
    
}