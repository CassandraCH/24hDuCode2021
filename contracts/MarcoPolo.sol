pragma solidity >=0.4.22 <0.6.0;
import "./WorldInterface.sol";

contract MarcoPolo {

    event LieuExistant(uint16 code);

    /**
     */
    function explore(address worldadr) external returns(bool){
        WorldInterface world = WorldInterface(worldadr);
        uint16 i=0;

        while(i<11 && !world.estLieuValide(i)){
            i++;
        }

        // on explore le lieu trouve
        if(i<11){
            world.explorer(i, address(this), 0);
        }

        return world.estOccupe(i);
    }

}