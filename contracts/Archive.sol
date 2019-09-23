pragma solidity ^0.5.0;

contract Archive {

    struct Submition {
        address submitter;
        uint256 time;
    }

    mapping(bytes32 => Submition) private submitions;

    function checkFile(bytes32 file) public view returns(bool) {
        if (submitions[file].submitter != address(0)) {
            return true;
        } else {
            return false;
        }
    }

    function submitFile(bytes32 newFile, uint256 timeStamp) public {
        submitions[newFile] = Submition(msg.sender, timeStamp);
    }
}