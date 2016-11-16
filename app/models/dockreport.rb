class Dockreport

  attr_reader :start_date, :end_date

  def initialize(params)
    params ||= {}
    @start_date = parsed_date(params[:start_date],Date.today.to_s)
    @end_date = parsed_date(params[:end_date],Date.today.to_s)

  end


  def scope
    Dock.select('docks.name, count(appointments.id) as "TotalW", count(docks.id) as "Dockcount", sum(workers.payrate) as "Payroll", round(avg(workers.payrate)::numeric,2) as "Payavg", count(DISTINCT appointments.id) as "Apps" ,sum(appointments.id) as "Totc"').joins(:workers).where("appointments.start_date between ? and ?", @start_date, @end_date).group("docks.name")



  end

def scope2
  Dock.joins(:appointments).where("appointments.start_date between ? and ?", @start_date, @end_date).count(:id)
end





  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError
    default
  end

end