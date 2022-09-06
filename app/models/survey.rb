class Survey < ApplicationRecord
  belongs_to :user

  TERROIR_FRAIS = [
    'Alsace-Lorraine',
    'Beaujolais',
    'Bourgogne',
    'Champagne',
    'Jura-Bugey-Savoie',
    'Loire'
  ]

  TERROIR_MEDDITERRANEEN = [
    'Bordeaux',
    'Corse',
    'Languedoc-Roussillon',
    'Provence',
    'Rhône',
    'Sud-Ouest'
  ]


  TERROIR_FINESSE = [
    'Bordeaux',
    'Rhône',
    'Loire',
    'Bourgogne',
    'Provence'
  ]

  TERROIR_PUISSANCE = [
    'Sud-Ouest',
    'Rhône',
    'Languedoc-Roussillon',
    'Corse',
    'Bordeaux'
  ]

  def sommelier(answer_2, answer_3)
    if answer_2 == 'Finesse'
      return TERROIR_FRAIS if answer_3 == 'Fraicheur'

      TERROIR_MEDDITERRANEEN
    else
      return TERROIR_FINESSE if answer_3 == 'Fraicheur'

      TERROIR_PUISSANCE
    end
  end
end
