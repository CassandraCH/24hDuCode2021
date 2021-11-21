pragma solidity >=0.4.22 <0.6.0;
import "./WorldInterface.sol";

contract MarcoPolo {

    event LieuExistant(uint16 code);

    /**
     */
    function explore(address worldadr) external returns(uint){
        WorldInterface world = WorldInterface(worldadr);
        uint nblieuvalide = 0;

        for(uint16 i=0;i<10;i++){
            if(world.estLieuValide(i)){
                nblieuvalide++;
                emit LieuExistant(i);
            }
        }
        return nblieuvalide;
    }

}