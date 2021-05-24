# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?

# name: "꽃향기 향수",
#  price: 80000,
#  category_id: 1,
#  description: "뿌리면 꽃향기가 솔솔",
#  status: "active",
#  stock: 100,
#  capacity: "30ml",
#  created_at: Thu, 13 May 2021 14:12:21 KST +09:00,
#  updated_at: Sat, 15 May 2021 15:35:37 KST +09:00,
#  images:
#   ["https://nonfiction.kr/web/product/small/20191122/109f249109a6dc94fc48329b70a9e911.jpg",
#    "https://nonfiction.kr/web/product/extra/small/202009/6a739cba512656ba0b06276801952ebe.jpg",
#    "https://nonfiction.kr/web/product/extra/small/202104/e61d4d4176e4e3d3e6bb196b48b1811e.jpg",
#    "https://nonfiction.kr/web/product/extra/small/20200213/78b33b9b1b76f606dc653f447c734e04.jpg"]>

# id: 3,
#   name: "상큼한 바디워시",
#   price: 30000,
#   category_id: 2,
#   description: "상큼한 오렌지향 바디워시",
#   status: "active",
#   stock: 60,
#   capacity: "300ml",
#   created_at: Thu, 13 May 2021 15:59:20 KST +09:00,
#   updated_at: Sat, 15 May 2021 15:36:50 KST +09:00,
#   images:
#    ["https://nonfiction.kr/web/product/small/20191125/cadad7f62b12222471828f449c472935.jpg",
#     "https://nonfiction.kr/web/product/extra/small/20200213/7ab0fadbea375f8b6c093b536a9aa216.jpg"]>]


# id: 5,
# name: "뽀득뽀득 비누",
# price: 9500,
# category_id: 4,
# description: "세정력이 좋은 비누",
# status: "active",
# stock: 130,
# capacity: "50g",
# created_at: Thu, 13 May 2021 16:00:53 KST +09:00,
# updated_at: Sat, 15 May 2021 15:56:22 KST +09:00,
# images:
#  ["https://assets.hermes.com/is/image/hermesproduct/eau-d-orange-verte-perfumed-soap--24736-front-1-300-0-1000-1000_b.jpg"]>]

Item.create(name: "로즈 오 드 퍼퓸", price: 135000, category_id: 1, description: "장미 향이지만 활기찬 시소 향, 우드, 스파이스, 흙내음, 가벼운 스모크가 더해진 미묘하고 풍성한 노트로 부드러우면서 강렬한 향수", status: "active", stock: 230, capacity: "50ml", images: ["https://www.aesop.com/medias/Aesop-Ro-zu-Eau-de-Parfum-50mL-Hybris-Large-684x668px.png?context=bWFzdGVyfGltYWdlc3wxNDg5MzN8aW1hZ2UvcG5nfGltYWdlcy9oNzcvaDE3Lzk1MDc3MjI5NTI3MzQucG5nfGE2MWFjMTZjMGNkZDNjNzMyYjZlZGM4OGUxZmYyODRjMWVlMzY1Y2MzMTY1ZmFhODEzZTYzMmMzZWQ0MzRjYTk"])
Item.create(name: "휠 오 드 퍼퓸", price: 140000, category_id: 1, description: "숲을 연상시키며 짙은 그린, 흙내음이 조화롭게 어우러지는 향수", status: "active", stock: 170, capacity: "50ml", images: ["https://www.aesop.com/medias/Aesop-Fragrance-Hwyl-Eau-de-Parfum-50mL-Hybris-Large-684x668px.png?context=bWFzdGVyfGltYWdlc3wxNDQxMDV8aW1hZ2UvcG5nfGltYWdlcy9oNzEvaGU5Lzk1MDc3MjM0MTE0ODYucG5nfGEyMDlhZjJjMDQ5ZWI5MDFjMjI5M2FkZDk1NTBkNjdjMmIzY2Y4ZmQ0ZDkwYzAzMzM2YjM1MDNlMTU4MzRkNzk"])
Item.create(name: "시트러스 향수", price: 75000, category_id: 1, description: "상큼하고 시원한 시트러스향 향수", status: "active", stock: 10, capacity: "30ml", images: ["https://t1.daumcdn.net/cfile/tistory/99AE7C355B8FA46442"])
Item.create(name: "비누향 향수", price: 90000, category_id: 1, description: "막 씻고나온 듯한 비누향이 나는 향수", status: "active", stock: 20, capacity: "30ml", images: ["http://image.sivillage.com/upload/C00001/goods/org/026/190425000289026.jpg?RS=1000&SP=1"])
Item.create(name: "스크럽 바디워시", price: 38000, category_id: 2, description: "스크럽용도로 사용할 수 있는 바디워시", status: "active", stock: 530, capacity: "300ml", images: ["https://www.aesop.com/medias/Aesop-Body-A-Rose-By-Any-Other-Name-Body-Cleanser-100mL-Hybris-Large-835x962px.png?context=bWFzdGVyfGltYWdlc3wxMjY1NTJ8aW1hZ2UvcG5nfGltYWdlcy9oOTMvaGE1Lzk1NTg4ODI3MTM2MzAucG5nfDM1OGYwOTcxYTMzNzJlYmRkY2U5YTg2ZTRjYTdhY2JhNzYwN2FmNzA2NjE1ZWQ0MWNlYjk0Y2QxMGU0YjYwNDY"])
Item.create(name: "달달한 바디로션", price: 25000, category_id: 2, description: "달달하고 포근한 향의 바디로션", status: "active", stock: 930, capacity: "100ml", images: ["https://nonfiction.kr/web/product/small/202009/434dcb00aaf0c122a008a5a14270dd60.jpg"])
Item.create(name: "알로에 젤리 바디워시", price: 43000, category_id: 2, description: "알로에 베라 성분을 함유하여 피부를 진정시키고 촉촉하게 세정해 주는 바디 클렌저", status: "active", stock: 330, capacity: "500ml", images: ["https://www.kiehls.co.kr/dw/image/v2/AAWH_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/ko_KR/dw36926eec/Kiehls_ECOMM_2000/BODY/Scented_Cleansers_and_Scrubs/made-for-all/made-for-all-wash_Packshot.jpg?sw=465&sh=390&sm=fit&q=70"])
Item.create(name: "배스 앤드 샤워 바디워시", price: 43000, category_id: 2, description: "피부를 건조함으로부터 보호하여 촉촉하고 부드럽게 만들어주는 자몽향 바디클렌저.", status: "active", stock: 330, capacity: "500ml", images: ["https://www.kiehls.co.kr/dw/image/v2/AAWH_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw34c406b5/Kiehls_ECOMM_2000/BODY/Scented_Cleansers_and_Scrubs/Bath_and_Shower_Liquid_Body_Cleanser/Bath_and_Shower_Liquid_Body_Cleanser_Grapefruit_3700194712259_8.4fl.oz..jpg?sw=465&sh=390&sm=fit&q=70"])
Item.create(name: "아로마 핸드밤", price: 22000, category_id: 3, description: "피부의 부드러움과 촉촉함을 유지시켜 주는 핸드 밤", status: "active", stock: 130, capacity: "75ml", images: ["https://www.aesop.com/medias/Large-PNG-Aesop-Hand-Reverence-Aromatique-Hand-Balm-75mL-large.png?context=bWFzdGVyfGltYWdlc3wxNTA1ODN8aW1hZ2UvcG5nfGltYWdlcy9oODAvaDFlLzg4NDE3MjA1OTQ0NjIucG5nfGIyYjYyMzNmYjA4MTU2ZWM4YTE2M2FlY2FlYTViNzcyZDJjNzgyM2UzODFhYzc2ZGQ1NzQyMzM3N2Y2YmE4ZDI"])
Item.create(name: "보태니컬 핸드밤", price: 22000, category_id: 3, description: "지친 손과 큐티클에 풍부한 수분을 공급해주는 핸드 밤", status: "active", stock: 330, capacity: "75ml", images: ["https://www.aesop.com/medias/Aesop-Body-Resurrection-Aromatique-Hand-Balm-75mL-large.png?context=bWFzdGVyfGltYWdlc3w0NjYyNDh8aW1hZ2UvcG5nfGltYWdlcy9oYjEvaDNjLzg3OTc0MzkzNjEwNTQucG5nfGU1NWI5MGViY2I2Y2M4MDM4MTIyYTk0YTk2NGZlOTNlMDUzNTYzZTA2NjIyNDA0M2NiN2JhNDNiMjRiYTU1OTI"])
Item.create(name: "집중보습 핸드크림", price: 21000, category_id: 3, description: "손 피부가 많이 건조한 분들을 위한 풍부한 질감의 집중 보습 트리트먼트", status: "active", stock: 380, capacity: "75ml", images: ["https://www.kiehls.co.kr/dw/image/v2/AAWH_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw385d2c7a/Kiehls_ECOMM_2000/BODY/Hand_and_Foot_Treatments/Ultimate_Strength_Hand_Salve/Ultimate_Strength_Hand_Salve_3700194708498_2.5fl.oz..jpg?sw=465&sh=390&sm=fit&q=70"])
Item.create(name: "네츄럴 핸드크림", price: 20000, category_id: 3, description: "부드럽고 라이트한 텍스처와 내추럴한 향의 핸드 크림", status: "active", stock: 330, capacity: "75ml", images: ["https://www.kiehls.co.kr/dw/image/v2/AAWH_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/ko_KR/dwd7fa2d9f/images/New_Nov_Dec16/3605971455803.jpg?sw=465&sh=390&sm=fit&q=70"])

Item.create(name: "글리세린 솝", price: 10000, category_id: 4, description: "고급스러운 거품으로 피부를 부드럽게 클렌징", status: "active", stock: 1030, capacity: "75g", images: ["https://www.kiehls.co.kr/dw/image/v2/AAWH_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw8210820d/images/BODY/HRTG21_GLYC_UNSCNT_SOAP_140G/HRTG21_GLYC_UNSCNT_SOAP_140G-3605972401069-140g-1.jpg?sw=465&sh=390&sm=fit&q=70"])
Item.create(name: "프레쉬 솝", price: 11000, category_id: 4, description: "클렌징과 보습을 동시에 해주는 2 in1의 허브와 무향의 글리세린 솝", status: "active", stock: 730, capacity: "75g", images: ["https://www.kiehls.co.kr/dw/image/v2/AAWH_PRD/on/demandware.static/-/Sites-kiehls-master-catalog/ko_KR/dw4dde8b07/images/BODY/HRTG21_GLYC_SCENT_SOAP_140G/HRTG21_GLYC_SCENT_SOAP_140G-3605972401021-140g-1.jpg?sw=465&sh=390&sm=fit&q=70"])

[Category, Item].each do |cls|
  GenerateSeed.exec(cls)
end
