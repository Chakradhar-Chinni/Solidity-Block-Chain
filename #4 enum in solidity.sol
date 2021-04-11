pragma solidity 0.5.1;

contract MyContract{
    enum State {Waiting, Ready, Active}
    State public state;
    
    constructor() public {
       state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool)
    {
        return state == State.Active;
    }
    
    function ready() public {
        state = State.Ready;
    }

}


/*
   enum has the 3 values Waiting,Ready,Active.  [0,1,2]
   A constructor is used to defaultly set the value as Waiting.
   
   activate() allows the state to become Active[2]
   
   isActive() checks if the state is active or not
   
   ready() allows the state to become Ready[1]
*/
