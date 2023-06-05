const hre = require('hardhat');
describe('WOCK.sol', () => {
  before(async () => {
    await hre.deployments.fixture();
    const wock = await hre.ethers.getContract('WOCK');
  });
  it('should get metadata', async () => {
    const wock = await hre.ethers.getContract('WOCK');
    console.log(await wock.tokenURI('0x01'));
  });
});
