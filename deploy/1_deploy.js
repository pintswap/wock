'use strict';

const { ethers, deployments } = require('hardhat');

module.exports = async () => {
  const [ signer ] = await ethers.getSigners();
  await deployments.deploy('WOCK', {
    contractName: 'WOCK',
    args: [],
    from: await signer.getAddress()
  });
  console.log('deployed WOCK');
};
