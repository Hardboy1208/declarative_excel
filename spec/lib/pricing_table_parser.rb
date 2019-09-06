# spec/lib/pricing_table_parser.rb
require './lib/pricing_table_parser'

RSpec.describe PricingTableParser do
  let(:file_path) { "./spec/test_file.xlsx" }
  subject(:table_parser) { described_class.new.call(file_path) }

  describe '#call' do
    context "when correct file" do
      it 'create hash' do
        expect(table_parser).to eq({
                                    prices: [
                                      { 'Minimum' => 12, 'Maximum' => 23, '1 Color' => 12.0, '2 Color' => 13.0 },
                                      { 'Minimum' => 24, 'Maximum' => 47, '1 Color' => 6.0, '2 Color' => 6.5 }
                                    ],
                                    average: [
                                      { '1 Color' => 9.0, '2 Color' => 9.75 }
                                    ]
                                  })
      end
    end
  end
end
