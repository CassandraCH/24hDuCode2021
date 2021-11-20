pragma solidity >=0.4.22 <0.6.0;

interface AvatarInterface {
    /**
     * Donne les caractéristiques de l'avatar.
     * @return l'endurance, la force, l'intelligence et la vitesse
     */
    function getCaracteristiques() external view returns(int endurance, int force, int intelligence, int vitesse);

    /**
     * Donne le type de l'avatar.
     * @return le nom du type d'avatar
     */
    function getType() external view returns(string memory);

    /**
     * Donne le nom de l'avatar.
     * @return son nom
     */
    function getNom() external view returns(string memory);

    /**
     * Donne la vie actuelle de l'avatar.
     * @return le nombre de points de vie
     */
    function getVie() external view returns(int);

    /**
     * Donne la défense physique de l'avatar
     * @return la valeur de défense physique
     */
    function getDefensePhysique() external view returns(int);

    /**
     * Donne la défense magique de l'avatar
     * @return la valeur de défense magique
     */
    function getDefenseMagique() external view returns(int);

    /**
     * Donne l'esquive de l'avatar
     * @return la valeur d'esquive
     */
    function getEsquive() external view returns(int);

    /**
     * Donne la puissance physique de l'avatar
     * @return la valeur de puissance physique
     */
    function getPuissancePhysique() external view returns(int);

    /**
     * Donne la puissance magique de l'avatar
     * @return la valeur de puissance magique
     */
    function getPuissanceMagique() external view returns(int);

    /**
     * Modifie la stratégie de combat.
     * @param strategie l'adresse de la nouvelle stratégie de combat
     */
    function modifierStrategieCombat(address strategie) external;

    function setVie(int pv) external;

}