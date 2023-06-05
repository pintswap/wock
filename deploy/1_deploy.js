'use strict';

const { ethers, deployments } = require('hardhat');

module.exports = async () => {
  const [ signer ] = await ethers.getSigners();
  await deployments.deploy('WOCK', {
    contractName: 'WOCK',
    args: [],
    from: await signer.getAddress()
  });
  const wock = await ethers.getContract('WOCK');
  console.log('deployed WOCK');
};
