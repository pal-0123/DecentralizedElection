var Election = artifacts.require("./Election.sol");
// var contr = new web3.eth.Contract(Election);

module.exports = function(deploy) {

  deploy.deploy(Election);
  // deploy.deploy(Election).then(function(){
  //   web3.eth.sendTransaction(
  //     {
  //       from: '0x1391756a52c858d96F821796d27CFAb6E621FEFB',
  //       // rec: '0xf0805178D3a2abeBeda6a241a8D223Fa8F9a49bf',
  //       to: Election.address,
  //       value: '2000000000000000000'
  //     }
  //   );
  // });
  // Election.deployed().then(function(instance){
  //   web3.eth.sendTransaction(
  //     {
  //       from: '0x1391756a52c858d96F821796d27CFAb6E621FEFB',
  //       // rec: '0xf0805178D3a2abeBeda6a241a8D223Fa8F9a49bf',
  //       to: instance.address,
  //       value: '2000000000000000000'
  //     }
  //   );
  // });
};