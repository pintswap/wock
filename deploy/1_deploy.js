'use strict';

const { ethers } = require('hardhat');

module.exports = async () => {
  const [ signer ] = await ethers.getSigners();
  const factory = await ethers.getContractFactory('WOCK', signer);
  await factory.deploy();
};
