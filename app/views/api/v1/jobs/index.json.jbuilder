json.array! @jobs.each do |job|
  json.id job.id
  json.company job.company
  json.position job.position
  json.source job.source
  json.status job.status
  json.found_date job.found_date
  json.listing_url job.listing_url
  json.job_type job.job_type
  json.address job.address
  json.city job.city
  json.state job.state
  json.zip_code job.zip_code
  json.phone_number job.phone_number
  json.company_website job.company_website
  json.hourly_wage job.hourly_wage
  json.salary job.salary
  json.applied_date job.applied_date
  json.interview_date job.interview_date
  json.offer_date job.offer_date
  json.rating job.rating
  json.notes job.notes
  json.user_id job.user_id
end
