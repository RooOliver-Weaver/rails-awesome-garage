module ApplicationHelper
  def default_car_image(car_brand)
    default_images = {
      "Audi" => "audi-a4.jpg",
      "BMW" => "bmw-x5.jpg",
      "Chevrolet" => "chevrolet-impala.jpg",
      "Ford" => "ford-mustang.jpg",
      "Honda" => "honda-civic.jpg",
      "Hyundai" => "hyundai.jpg",
      "Mazda" => "mazda.jpg",
      "Nissan" => "nissan.jpg",
      "Tesla" => "tesla-model-3.jpg",
      "Toyota" => "toyota-prius.jpg"
    }

    default_images[car_brand] || "car-placeholder.jpg"
  end
end
