pragma solidity >=0.4.22 <0.6.0;
import "./AvatarInterface.sol";

contract SampleAvatar is AvatarInterface {
    
    int endurance = 40;
    int vie = endurance;
    int force = 5;
    int intelligence = 15;
    int vitesse = 10;

    /**
     * Donne les caractéristiques de l'avatar.
     * @return l'endurance, la force, l'intelligence et la vitesse
     */
    function getCaracteristiques() external view returns(int, int, int, int){
        return (endurance, force, intelligence, vitesse);
    }

    /**
     * Donne les caractéristiques de l'avatar.
     * @return l'endurance, la force, l'intelligence et la vitesse
     */
    function getEndurance() external view returns(int){
        return endurance;
    }

    /**
     * Donne le type de l'avatar.
     * @return le nom du type d'avatar
     */
    function getType() external view returns(string memory){
        return "guerrier";
    }

    /**
     * Donne le nom de l'avatar.
     * @return son nom
     */
    function getNom() external view returns(string memory){
        return "guerrier";
    }

    /**
     * Donne la vie actuelle de l'avatar.
     * @return le nombre de points de vie
     */
    function getVie() external view returns(int){
        return vie;
    }

    /**
     * Donne la défense physique de l'avatar
     * @return la valeur de défense physique
     */
    function getDefensePhysique() external view returns(int){
        return 0;
    }

    /**
     * Donne la défense magique de l'avatar
     * @return la valeur de défense magique
     */
    function getDefenseMagique() external view returns(int){
        return 0;
    }

    /**
     * Donne l'esquive de l'avatar
     * @return la valeur d'esquive
     */
    function getEsquive() external view returns(int){
        return 0;
    }

    /**
     * Donne la puissance physique de l'avatar
     * @return la valeur de puissance physique
     */
    function getPuissancePhysique() external view returns(int){
        return 0;
    }

    /**
     * Donne la puissance magique de l'avatar
     * @return la valeur de puissance magique
     */
    function getPuissanceMagique() external view returns(int){
        return 0;
    }
    
    /**
     * Modifie la stratégie de combat.
     * @param strategie l'adresse de la nouvelle stratégie de combat
     */
    function modifierStrategieCombat(address strategie) external{

    }

    function setVie(int pv) external{
        vie = pv;
    }

    function soinAvatar() external {
        
        if (this.getVie() > 0) {
            
            if (this.getVie() + 20 > endurance) { 
                this.setVie(endurance);
            }else {
                this.setVie(this.getVie() + 20);
            }
        }
    }

    function taper(int pv) external {
        if (pv > vie){
            vie = 0;
        }else{
            vie = vie - pv;
        }
    }
}