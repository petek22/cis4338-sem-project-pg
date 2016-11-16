


Dock.create!([
  {name: "Dock 1", available: true, archive: false},
  {name: "Dock 2", available: true, archive: false},
  {name: "Dock 3", available: true, archive: false},
  {name: "Dock 4", available: true, archive: false},
  {name: "Dock 5", available: true, archive: false},
  {name: "Dock 6", available: true, archive: false},
  {name: "Dock 7", available: true, archive: false},
  {name: "Dock 8", available: true, archive: false},
  {name: "Dock 9", available: true, archive: false},
  {name: "Dock 10", available: true, archive: false},
  {name: "Dock 11", available: true, archive: false},
  {name: "Dock 12", available: true, archive: false},
  {name: "Dock 13", available: true, archive: false},
  {name: "Dock 14", available: true, archive: false},
  {name: "Dock 15", available: true, archive: false},
  {name: "Dock 16", available: true, archive: false},
  {name: "Dock 17", available: true, archive: false},
  {name: "Dock 18", available: true, archive: false},
  {name: "Dock 19", available: true, archive: false},
  {name: "Dock 20", available: true, archive: false},
  {name: "Dock 21", available: true, archive: false},
  {name: "Dock 22", available: true, archive: false},
  {name: "Dock 23", available: true, archive: false},
  {name: "Dock 24", available: true, archive: false},
  {name: "Dock 25", available: true, archive: false}
 ])
Vendor.create!([

  {name: "Best Buy", archive: false},
  {name: "Costco", archive: false},
  {name: "Tool Co", archive: false},
  {name: "Walmart", archive: false},
  {name: "Ford", archive: false},
  {name: "Acme", archive: false},
  {name: "The rebellion", archive: false},
  {name: "Kmart", archive: false},
  {name: "Frys", archive: false}

])
Worker.create!([
  {name: "Pete kamenszky", address: "4110 laguna circle", city: "Missouri City", state: "TX", zip: "77459", payrate: 7.5, archive: false},
  {name: "Joe Smith", address: "1111 smith street", city: "Houston", state: "TX", zip: "77000", payrate: 20.0, archive: false},
  {name: "Steve Johnson", address: "8899 oak street", city: "Houston", state: "TX", zip: "77889", payrate: 12.0, archive: false},
  {name: "Sam Jones", address: "2323 smith street", city: "Houston", state: "TX", zip: "77889", payrate: 13.5, archive: false},
  {name: "Bill Peters", address: "1145 Westhiemer", city: "Houston", state: "TX", zip: "77002", payrate: 12.0, archive: false},
{name: "Emma Johnson", address: "77889 Main Street", city: "Houston", state: "TX", zip: "77888", payrate: 12.0, archive: false},
{name: "Leslie Smith", address: "1145 Laguna ", city: "Houston", state: "TX", zip: "77005", payrate: 12.0, archive: false},
{name: "Luke Williams", address: "2234 Brighwater", city: "Houston", state: "TX", zip: "77009", payrate: 12.0, archive: false},
{name: "Scott Peters", address: "11889 Post oak", city: "Houston", state: "TX", zip: "77459", payrate: 12.0, archive: false}

])

Appointment.create!([
                        {start_date: "2016-12-28", start_time: "8am", dock_id: 9, vendor_id: 1, archive: false},
                        {start_date: "2016-12-29", start_time: "12pm", dock_id: 1, vendor_id: 2, archive: false},
                        {start_date: "2016-12-21", start_time: "10am", dock_id: 7, vendor_id: 4, archive: false},
                        {start_date: "2016-12-24", start_time: "5pm", dock_id: 10, vendor_id: 5, archive: false},
                        {start_date: "2016-12-25", start_time: "11am", dock_id: 17, vendor_id: 2, archive: false},
                        {start_date: "2016-12-27", start_time: "1pm", dock_id: 11, vendor_id: 6, archive: false},
                        {start_date: "2016-12-29", start_time: "2pm", dock_id: 12, vendor_id: 7, archive: false},
                        {start_date: "2016-12-30", start_time: "4pm", dock_id: 14, vendor_id: 8, archive: false},
                        {start_date: "2016-12-30", start_time: "8am", dock_id: 17, vendor_id: 2, archive: false},
                        {start_date: "2016-12-31", start_time: "10am", dock_id: 20, vendor_id: 6, archive: false},

                    ])

WorkerAppointment.create!([
  {worker_id: 1, appointment_id: 1},
  {worker_id: 2, appointment_id: 1},
  {worker_id: 3, appointment_id: 2},
  {worker_id: 4, appointment_id: 2},
  {worker_id: 2, appointment_id: 3},
  {worker_id: 4, appointment_id: 3},
  {worker_id: 1, appointment_id: 4},
  {worker_id: 2, appointment_id: 5},
  {worker_id: 3, appointment_id: 6},
  {worker_id: 5, appointment_id: 6},
  {worker_id: 6, appointment_id: 7},
  {worker_id: 6, appointment_id: 8},
  {worker_id: 7, appointment_id: 9},
  {worker_id: 8, appointment_id: 9},
  {worker_id: 9, appointment_id: 10}

])
