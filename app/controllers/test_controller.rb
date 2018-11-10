class TestController < ApplicationController
  def get
    # response = Person.all.joins(:role).where(roles: {billable: true})
    # response = Role.where(billable: true)
    # response = Role.billable
    # response = Person.joins(:role).merge(Role.billable)
    # response = Person.billable
    response = Person.all
    Person.billable.to_sql
    render :json => response
  end
end
