class Networking < ActiveRecord::Base
  belongs_to :job 
  belongs_to :user


  def friendly_emailed
    if emailed == true
      return "yes"
    else
      return "no"
    end
  end
  def friendly_phoned
    if phoned == true
      return "yes"
    else
      return "no"
    end
  end
  def friendly_lettered
    if letter_sent == true
      return "yes"
    else
      return "no"
    end
  end    
end
