class PricingTableParser
  require 'roo'

  def call(input_file)
    @workbook = Roo::Spreadsheet.open input_file

    first_row = rows :prices, [2, 1], [3, 4], 1
    second_row = rows :average, [4, 3], [4, 4], ['1 Color', '2 Color']

    return first_row.merge! second_row
  end

  private
  def rows(name, b_c, e_c, h_r)
    h_r = @workbook.sheet(0).row(h_r) if h_r.class.eql?(Integer)

    array = []
    (b_c[0]..e_c[0]).each do |first|
      n = 0
      hash = {}
      (b_c[1]..e_c[1]).each do |second|
        hash[h_r[n]] = @workbook.cell(first, second).class.eql?(String) ? @workbook.cell(first, second).gsub('$', '').to_f : @workbook.cell(first, second)
        n += 1
      end
      array.push(hash)
    end
    Hash[name, array]
  end
end
