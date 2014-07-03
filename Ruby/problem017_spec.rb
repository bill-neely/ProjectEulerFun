require_relative 'problem017'

describe Integer do 
	it "unique words - 1 through 19" do 
		expect(1.inWords).to eq("one")
		expect(2.inWords).to eq("two")
		expect(3.inWords).to eq("three")
		expect(4.inWords).to eq("four")
		expect(5.inWords).to eq("five")
		expect(6.inWords).to eq("six")
		expect(7.inWords).to eq("seven")
		expect(8.inWords).to eq("eight")
		expect(9.inWords).to eq("nine")
		expect(10.inWords).to eq("ten")
		expect(11.inWords).to eq("eleven")
		expect(12.inWords).to eq("twelve")
		expect(13.inWords).to eq("thirteen")
		expect(14.inWords).to eq("fourteen")
		expect(15.inWords).to eq("fifteen")
		expect(16.inWords).to eq("sixteen")
		expect(17.inWords).to eq("seventeen")
		expect(18.inWords).to eq("eightteen")
		expect(19.inWords).to eq("nineteen")
	end

	it "unique words, 20-90 by tens" do 
		expect(20.inWords).to eq("twenty")
		expect(30.inWords).to eq("thirty")
		expect(40.inWords).to eq("forty")
		expect(50.inWords).to eq("fifty")
		expect(60.inWords).to eq("sixty")
		expect(70.inWords).to eq("seventy")
		expect(80.inWords).to eq("eighty")
		expect(90.inWords).to eq("ninety")
	end

	it "combinations under 100" do 
		expect(23.inWords).to eq("twenty-three")
		expect(35.inWords).to eq("thirty-five")
		expect(47.inWords).to eq("forty-seven")
		expect(58.inWords).to eq("fifty-eight")
		expect(99.inWords).to eq("ninety-nine")
	end

end

