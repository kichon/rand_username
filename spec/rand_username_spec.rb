RSpec.describe RandUsername do
  it "has a version number" do
    expect(RandUsername::VERSION).not_to be nil
  end

  it "nを指定しない場合は6文字" do
    expect(RandUsername.generate.length).to eq(6)
  end

  it "nが10の場合は10文字" do
    expect(RandUsername.generate(n: 10).length).to eq(10)
  end

  it "nが0の場合はエラー" do
    expect { RandUsername.generate(n: 0) }.to raise_error(RandUsername::Error)
  end
end



