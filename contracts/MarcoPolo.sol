pragma solidity >=0.4.22 <0.6.0;
import "./WorldInterface.sol";

contract MarcoPolo {

    mapping(int => uint16) todoListLieu;
    mapping(int => bool) todoListLieuDone;
    int id = 0;
    /**
     */
    function cherche(address worldadr) external returns(bool){
        WorldInterface world = WorldInterface(worldadr);
        uint16 lieu=chercheProchainLieuValide(world, 0);
        uint64 code = 0 ;

        while(lieu<65536){
            uint64 nouveaucode = exploreLieu(world, lieu, code);
            if(nouveaucode == 0){
                todoListLieu[id] = lieu;
                todoListLieuDone[id] = false;
                id++;
            }else{
                code = nouveaucode;
                // on tente ce nouveau code avec les lieu déjà trouvé
                for(int i = 0; i< id ;i++){
                    if(!todoListLieuDone[i]){
                        nouveaucode = exploreLieu(world, todoListLieu[i], code);
                        if(nouveaucode>0){
                            // on va le tenter aussi !
                            todoListLieuDone[i] = true;
                            code = nouveaucode;
                            i = 0;
                        }
                    }
                }
            }
            lieu = chercheProchainLieuValide(world, lieu+1);
        }
    }

    function chercheProchainLieuValide(WorldInterface world, uint16 start) private returns(uint16) {
        uint16 lieu = start;
        while(lieu<65536 && !world.estLieuValide(lieu)){
            lieu++;
        }
        return lieu;
    }

    function exploreLieu(WorldInterface world, uint16 lieu, uint64 code) private returns (uint64){
        uint64 nouveaucode = 0 ;
        if(!world.estOccupe(lieu)){
            nouveaucode = world.explorer(lieu, address(this), code);
            world.appliquerEffetLieu(lieu, address(0xa696b3f08789a3bd9a550779a2ec45a666627aef211e5d11d7036ce079b4c1d6), address(this));
            world.quitter(lieu, address(this));
        }
        return nouveaucode;
    }

}