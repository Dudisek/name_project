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
    first_name = @name.partition('/').last
    TITLES.each do |title|
      if first_name.include? "#{title} "
        first_name.sub!("#{title} ", '')
      else
        first_name.sub!(" #{title}", '')
      end
    end
    first_name.capitalize
  end

  # A method returning family_name from a given argument
  def family_name
    @name.split('/')[0].split.map(&:capitalize) * ' '
  end

  # A method returning full name in an array in format [family_name, first_name]
  def full_name(array = [])
    array << family_name << first_name
  end
end
