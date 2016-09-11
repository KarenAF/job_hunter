json.array! @networkings.each do |networking|
  json.id networking.id
  json.first_name networking.first_name
  json.last_name networking.last_name
  json.date_contacted networking.date_contacted
  json.email networking.email
  json.job_id networking.job_id
  json.emailed networking.emailed
  json.phoned networking.phoned
  json.letter_sent networking.letter_sent
  json.friendly_emailed networking.friendly_emailed
  json.friendly_phoned networking.friendly_phoned
  json.friendly_lettered networking.friendly_lettered
  json.notes networking.notes
end
