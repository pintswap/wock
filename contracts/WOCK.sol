// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

import { ERC721Permit } from "@uniswap/v3-periphery/contracts/base/ERC721Permit.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract WOCK is ERC721Permit, Ownable {
  mapping (uint256 => string) private _tokenURIs;
  mapping (uint256 => uint256) public nonces;
  function version() public pure returns (string memory) { return "1"; }
  constructor() ERC721Permit("WOCK", "WOCK", "1") Ownable() {}
  function _getAndIncrementNonce(uint256 _tokenId) internal override virtual returns (uint256) {
    uint256 nonce = nonces[_tokenId];
    nonces[_tokenId]++;
    return nonce;
  }
  function mint(address _to, uint256 _tokenId, string memory _tokenURI) public onlyOwner {
    _mint(_to, _tokenId);
    _tokenURIs[_tokenId] = _tokenURI;
  }
  function tokenURI(uint256 _tokenId) public view override returns (string memory) {
    return _tokenURIs[_tokenId];
  }
}
  
