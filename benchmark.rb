require 'benchmark'

repeat = 1_000

Benchmark.bm(15) do |x|
  x.report('For impl. file:') do
    repeat.times { `cat spec/fixtures/aa_zz_possibles.txt | ./alt -- lib/rubyfile_qq.rb` }
  end

  x.report('For test file:') do
    repeat.times { `cat spec/fixtures/aa_zz_possibles.txt | ./alt -- spec/lib/rubyfile_qr_spec.rb` }
  end
end
