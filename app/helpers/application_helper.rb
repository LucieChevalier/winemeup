module ApplicationHelper

  def category_to_image(category)
    image = {
      'Sud-Ouest': 'sud.jpg',
      'Rhône': 'rhone.jpg',
      'Alsace-Lorraine': 'alsace.jpg',
      'Beaujolais': 'beaujolais.jpg',
      'Bourgogne': 'bourgogne.jpg',
      'Champagne': 'champagne.jpg',
      'Jura-Bugey-Savoie': 'jura.jpg',
      'Loire': 'loire.jpg',
      'Bordeaux': 'bordeaux.jpg',
      'Corse': 'corse.jpg',
      'Languedoc-Roussillon': 'languedoc.jpg',
      'Provence': 'provence.jpg'
    }
    image[category.to_sym]
  end
end
