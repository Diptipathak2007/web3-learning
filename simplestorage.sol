// SPDX-License-Identifier: MIT
pragma solidity^0.8.18;//stating our version of solidity

contract simplestorage{
    //basic types:boolean,uint,int,address,bytes
    // bool hasfavoritenumber= true;
    // uint256 favoritenumber=88;
    
    //int256 favoritenumber =-980
    //string favoritenumberintext="eighty-eight";
    //address myaddress=0xbF418c1822274015B142715799C24B4Cb576866e;
    //bytes32 favoritebytes="cat";

    //now let's create a contract which is going to store our favourite numbers and other peoples favorite numbers
    uint256 public favoritenumber;//0{favorite number gets initialized to zero if no value is given}
    function store(uint256 _favoritenumber)public {
        favoritenumber= _favoritenumber;
        
    }
    //uint256[] listoffavoritenumbers;//[0,78,90j

    struct person{
        uint256 myfavoritenumber;
        string name;
        
    }
    person public myfriend=person(7,"patrick");//person({myfavoritenumber:7,name:"patrick"});

    //0xd9145CCE52D386f254917e481eB44e9943F39138
    //visibilties present
    //public-visible externally and internally creating a getter function for the storage/state variables
    //private-only visible in the current contract
    //external-only for functions=can only be messaged via(this.function)
    //internal-if none of them is set it is the default value
    
    
    
    // function something()public {
    //     testvar=6;//can i do this?-undeclared identfied error while compiling
    //     favoritenumber=7;//?-favorite number is declared globally in this smart contract
    // }
    


    //view-it disallows any modification of state , pure-disallows both reading and updating of the state
    //retrieve is just making a call but store is sending a transaction
    //public and view functions only costs gas when a gas costed transaction is calling it
    function retrieve()public view returns (uint256){
       return favoritenumber ;
    }
}
  
