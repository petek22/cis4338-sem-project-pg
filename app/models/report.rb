class Report
  attr_reader :start_date, :end_date

  def initialize(params)
    params ||= {}
    @start_date = parsed_date(params[:start_date],Date.today.to_s)
    @end_date = parsed_date(params[:end_date],Date.today.to_s)

  end


  def scope
    Worker.select('name, payrate, appointments.start_date as "App_Date" ').joins(:appointments).where("appointments.start_date between ? and ?", @start_date, @end_date).order("name")


  end

  def scope1



    #  Worker.all.joins(:appointments).where("appointments.start_date between ? and ?", @start_date, @end_date).group("name")
    Worker.select('name, payrate, count(appointments.id) as "Apps"').joins(:appointments).where("appointments.start_date between ? and ?", @start_date, @end_date).group("name,payrate")

  end

  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError
    default
  end



end