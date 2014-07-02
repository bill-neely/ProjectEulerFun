require_relative 'problem017'

describe Integer do 
	it "1 through 9" do 
		expect(1.inWords).to eq("one")
		expect(2.inWords).to eq("two")
		expect(3.inWords).to eq("three")
		expect(4.inWords).to eq("four")
		expect(5.inWords).to eq("five")
		expect(6.inWords).to eq("six")
		expect(7.inWords).to eq("seven")
		expect(8.inWords).to eq("eight")
		expect(9.inWords).to eq("nine")
	end
end

