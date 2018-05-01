require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def setup
    @a = Rocket.new({flying:true,name:"whatever"})
    @b = Rocket.new
  end

  def test_initialize_name
    name = @a.name
    assert_equal("whatever", name)
  end

  def test_random_name
    name = @b.name
    @b.name
    assert(name)
  end

  def test_random_colour
    colour = @b.colour
    assert(colour)

  end


  def test_is_rocket_flying

    assert (@b.lift_off)
  end

  def test_is_rocket_grounded

    assert (@a.land)
  end

  def test_is_other_rocket_grounded

    refute (@b.land)
  end

  # def test_is_rocket_flying
  #
  #   assert (@b.lift_off)
  # end


end

#   def is_rocket_ready_for_takeoff
#
#   end
# end
