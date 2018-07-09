class Monster < ActiveRecord::Base

  def to_json(lang = :en)
    if lang == :en
      {
        "name": "Mr. " + name,
        "home": home,
        "creepiness": creepiness
      }
    elsif lang == :fr
      {
        "nom": "M. " + name,
        "domicile": home,
        "terrifiant": creepiness
      }
    end
  end

end
