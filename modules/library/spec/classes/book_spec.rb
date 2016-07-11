require 'spec_helper'
RSpec.describe Book do
  before(:each) do
    @book = Book.new('Title', 'Author', :category)
  end

  describe '#new' do
    context 'takes three parameters and returns a Book object' do
      it { expect(@book).to be_an_instance_of(Book) }
    end
  end

  describe '#title' do
    context 'returns the correct title' do
      it { expect(@book.title).to eq('Title') }
    end
  end

  describe '#author' do
    context 'returns the correct author' do
      it { expect(@book.author).to eq('Author') }
    end
  end

  describe '#category' do
    context 'returns the correct category' do
      it { expect(@book.category).to eq(:category) }
    end
  end
end
