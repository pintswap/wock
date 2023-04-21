const hre = require('hardhat');
describe('WOCK.sol', () => {
  before(async () => {
    await hre.deployments.fixture();
    const wock = await hre.ethers.getContract('WOCK');
    await wock.mint(hre.ethers.constants.AddressZero.substr(0, 41) + '1', '0x01');
  });
  it('should get metadata', async () => {
    const wock = await hre.ethers.getContract('WOCK');
    console.log(await wock.tokenURI('0x01'));
  });
});
