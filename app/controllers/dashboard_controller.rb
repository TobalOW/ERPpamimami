class DashboardController < ApplicationController
  def index
    @user = current_user
    date = DateTime.now.utc

      depositsbymonth = current_user.user_payments.select('deposits.created_at').where('deposits.created_at >= ? and deposits.created_at <= ?', date.beginning_of_year, date.utc.end_of_year).group_by_month_of_year('deposits.created_at').sum('deposits.total')
      ordersbymonth = current_user.orders.select('orders.created_at').where('orders.created_at >= ? and orders.created_at <= ?', date.beginning_of_year, date.utc.end_of_year).group_by_month_of_year('orders.created_at').sum('orders.total')

      names = []
      datas = []
      depositsmonth = []
      ordersmonth = []


      depositsbymonth.each { |key,value| depositsmonth.push(value) }
      ordersbymonth.each { |key,value| ordersmonth.push(value) }

      @data = {
		  labels: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre" ],
		  datasets: [
		    {
		        label: "Ventas Año 2017",
		        backgroundColor: "rgba(151,187,205,0.2)",
		        borderColor: "rgba(151,187,205,1)",
		        data: depositsmonth
		    }
		  ]
		}
      @data1 = {
		  labels: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre" ],
		  datasets: [
		    {
		        label: "Ventas Año 2017",
		        backgroundColor: "rgba(151,187,205,0.2)",
		        borderColor: "rgba(151,187,205,1)",
		        data: ordersmonth
		    }
		  ]
		}
		@options = { height: 150 }
		@options2 = { height: 150 }

  end
end
