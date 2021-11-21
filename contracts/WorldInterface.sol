pragma solidity >=0.4.22 <0.6.0;

interface WorldInterface {
    /**
     * Vérifie si un lieu existe dans le monde.
     * @param lieu le numéro du lieu
     * @return vrai si le lieu existe, faux si ce n'est pas le cas
     */
    function estLieuValide(uint16 lieu) external pure returns(bool);

    /**
     * Donne le coût du lieu en ether.
     * @param lieu le numéro du lieu
     * @return le coût du lieu en ether
     */
    function getCoutLieu(uint16 lieu) external view returns(uint);

    /**
     * Vérifie si le lieu est occupé.
     * @param lieu le numéro du lieu
     * @return vrai si le lieu est occupé, faux s'il est libre.
     */
    function estOccupe(uint16 lieu) external view returns(bool);

    /**
     * Explore un lieu avec un avatar. (coûte des ethers suivant le lieu)
     * @param lieu le numéro du lieu à explorer
     * @param avatar l'adresse du smartcontract de l'avatar
     * @param codeAcces le code d'accès au lieu, si le code est incorrect l'exploration echouera levant une erreur.
     * @return un code d'accès à d'autres lieux
     */
    function explorer(uint16 lieu, address avatar, uint64 codeAcces) external payable returns (uint64);

    /**
     * Explore un lieu avec un avatar. (coûte des ethers suivant le lieu)
     * @param lieu le numéro du lieu à explorer
     * @param avatar l'adresse du smartcontract de l'avatar
     * @param codeAcces le code d'accès au lieu, si le code est incorrect l'exploration echouera levant une erreur.
     * @return un code d'accès à d'autres lieux
     */
    function explorerMock(uint16 lieu, address avatar, uint64 codeAcces) external returns (uint64);

    /**
     * Fait quitter le lieu à un avatar.
     * @param lieu le numéro du lieu
     * @param avatar l'adresse du smarcontract de l'avatar. Elle doit correspondre à celle de l'avatar présent sur le lieu, sinon un erreur sera levée.
     */
    function quitter(uint16 lieu, address avatar) external;

    /**
     * Vérifie si un avatar explore un lieu.
     * @param avatar l'adresse du smartcontract de l'avatar
     * @return vrai si l'avatar est en exploration d'un lieu du monde, faux dans le cas contraire
     */
    function avatarExplore(address avatar) external view returns (bool);

    /**
     * Applique l'effet du lieu si possible.
     * @param lieu le numéro du lieu
     * @param adrEscouade l'adresse du smarcontract de l'escouade de l'avatar présent sur le lieu
     * @param adrAvatar l'adresse du smarcontrat de l'avatar présent sur le lieu
     */
    function appliquerEffetLieu(uint16 lieu, address adrEscouade, address adrAvatar) external;
}