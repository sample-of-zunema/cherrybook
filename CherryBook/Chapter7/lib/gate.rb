class Gate
  STATIONS = [:umeda, :juso, :mikuni]

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    true
  end

  def stamp(name)
    @stamped_at = name
  end

end
