var pnpc = artifacts.require("./PubNubTimeSheet.sol");



contract('PubNubTimeSheet', async (accounts) => {

	it("should initialize number 4 to first employee address", async () => {

		var instance = await pnpc.deployed();

		await instance.setEmployee(4, accounts[0]);

		var test = await instance.getMapping(accounts[0]);

		assert.equal(test, 4);



	});



});