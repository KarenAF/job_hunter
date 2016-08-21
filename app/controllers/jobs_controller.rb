class JobsController < ApplicationController
  def index
    @jobs1 = Job.where(status: "not_yet_applied")
    @jobs2 = Job.where(status: "applying_to")
    @jobs3 = Job.where(status: "applied_to")
    @jobs4 = Job.where(status: "interview_set_up")
    @jobs5 = Job.where(status: "interviewed_with")
    render 'index.html.erb'
  end

  def new
    @job = Job.new
    render 'new.html.erb'
  end

  def show
    @job = Job.find_by(id: params['id'])
    render 'show.html.erb'
  end

  def create
    @job = Job.new(
      user_id: 1,
      company: params['company'],
      position: params['position'],
      source: params['source'],
      status: params['status'],
      found_date: params['found_date'] || DateTime.now,
      listing_url: params['listing_url'],
      job_type: params['job_type'],
      address: params['address'],
      city: params['city'],
      state: params['state'],
      zip_code: params['zip_code'],
      phone_number: params['phone_number'],
      company_website: params['company_website'],
      hourly_wage: params['hourly_wage'],
      salary: params['salary'],
      applied_date: params['applied_date'],
      interview_date: params['interview_date'],
      offer_date: params['offer_date'],
      rating: params['rating'],
      notes: params['notes']
    )
    @job.save
    flash[:success] = "job listing successfully saved"
    redirect_to '/jobs'
  end

end
