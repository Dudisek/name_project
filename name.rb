# Class Name with a single name argument in a format:
# family_name/title first_name
# family_name/first_name title
class Name
  # supported titles
  TITLES = %w(MRS MR MS CHD INF).freeze

  def initialize(name)
    @name = name
  end

  # A method returning first_name from a given argument
  def first_name
    capitalize(@name.split('/')[1].split.delete_if { |x| TITLES.include?(x) })
  end

  # A method returning family_name from a given argument
  def family_name
    capitalize(@name.split('/')[0].split)
  end

  # A method returning full name in an array in format [family_name, first_name]
  def full_name(array = [])
    array << family_name << first_name
  end

  private

  def capitalize(array)
    array.map(&:capitalize).join(' ')
  end
end
