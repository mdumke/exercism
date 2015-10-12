class Complement
  VERSION = 2

  DNA_TO_RNA = { G: 'C', C: 'G', T: 'A', A: 'U' }
  RNA_TO_DNA = { C: 'G', G: 'C', A: 'T', U: 'A' }

  def self.of_dna(strand)
    strand
      .chars
      .map { |c| DNA_TO_RNA[c.to_sym] || fail(ArgumentError, 'Invalid DNA') }
      .join
  end

  def self.of_rna(strand)
    strand
      .chars
      .map { |c| RNA_TO_DNA[c.to_sym] || fail(ArgumentError, 'Invalid RNA') }
      .join
  end
end

