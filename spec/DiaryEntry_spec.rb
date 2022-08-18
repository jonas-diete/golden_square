require "DiaryEntry"
RSpec.describe DiaryEntry do
  it "method title returns 'hello' for diary entry with title 'hello'" do
    hello = DiaryEntry.new("hello", "world")
    expect(hello.title).to eq "hello"
  end
  it "method contents returns 'world' for diary entry with contents 'world'" do
    hello = DiaryEntry.new("hello", "world")
    expect(hello.contents).to eq "world"
  end
  it "method count words returns 1 when contents = 'world'" do
    hello = DiaryEntry.new("hello", "world")
    expect(hello.count_words).to eq 1
  end
  it "method count words returns 5 when contents = 'world, world, world, world, world'" do
    hello = DiaryEntry.new("hello", "world, world, world, world, world")
    expect(hello.count_words).to eq 5
  end
  it "method count words returns 10 when contents = 'world, world, world, world, world, world, world, world, world, world'" do
    hello = DiaryEntry.new("hello", "world, world, world, world, world, world, world, world, world, world")
    expect(hello.count_words).to eq 10
  end

  it "the method reading time returns 0.005 if given 200 and contents == 'world'." do
    hello = DiaryEntry.new("hello", "world")
    expect(hello.reading_time(200)).to eq 0.005
  end

  it "the method reading time returns 1 if given 200 and contents == 'world '*200." do
    hello = DiaryEntry.new("hello", ("world " * 200))
    expect(hello.reading_time(200)).to eq 1
  end

  it "the method reading time returns 1 if given 200 and contents == 'world '*200." do
    hello = DiaryEntry.new("hello", ("world " * 50))
    expect(hello.reading_time(5)).to eq 10
  end
end