# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: 'admin@admin', password: 'password')

11.times do |n|
User.create!(email: "test#{n + 1}@test.com",
 			password: 'password',
 			family_name: '田中',
 			first_name: "太郎#{n + 1}",
 			family_name_kana: 'タナカ',
 			first_name_kana: 'タロウ',
 			address: "東京#{n + 1}",
 			telephone_number: '00000000000')
end
ConstructionSite.create(name: "弊社置場",
						 address: "千葉県千葉市",
						 prime_contractor: "弊社",
						 foremen: "太郎1",
						 caution: "弊社の置場です",
						 period: '2020-1-1',
						 period_end: '2020-1-1'
	)
ConstructionSite.create(name: "品川住宅解体工事",
						 address: "東京都品川区",
						 prime_contractor: "株式会社１",
						 foremen: "太郎1",
						 caution: "住宅地のため、近隣に要注意です",
						 period: '2020-8-1',
						 period_end: '2020-9-30'
	)
ConstructionSite.create(name: "横浜住宅解体工事",
						 address: "神奈川県横浜市",
						 prime_contractor: "株式会社２",
						 foremen: "太郎2",
						 caution: "住宅地のため、近隣に要注意です",
						 period: '2020-9-15',
						 period_end: '2020-10-15'
	)
ConstructionSite.create(name: "倉庫解体工事",
						 address: "神奈川県川崎市",
						 prime_contractor: "株式会社２",
						 foremen: "太郎3",
						 caution: "工場内ルールに注意。",
						 period: '2020-11-15',
						 period_end: '2021-2-28'
	)
ConstructionSite.create(name: "東京都墨田区計画",
						 address: "東京都墨田区",
						 prime_contractor: "株式会社３",
						 foremen: "太郎4",
						 caution: "社宅の解体工事です。役所工事です。",
						 period: '2020-11-15',
						 period_end: '2021-2-28'
	)
ConstructionSite.create(name: "小学校改修工事",
						 address: "東京都江戸川区",
						 prime_contractor: "弊社",
						 foremen: "太郎5",
						 caution: "小学校内トイレの改修工事です。",
						 period: '2020-8-1',
						 period_end: '2021-8-25'
	)

Machine.create(name: "pc210①",
				construction_site_id: "1"
	)
Machine.create(name: "pc210②",
				construction_site_id: "3"
	)
Machine.create(name: "pc350",
				construction_site_id: "2",
	)
Machine.create(name: "ミニユンボ",
				construction_site_id: "5",
	)
Machine.create(name: "コンプレーサー",
				construction_site_id: "1",
	)

Car.create(name: "４tトラック①")
Car.create(name: "３tトラック①")
Car.create(name: "４tトラック②")
Car.create(name: "８tトラック①")
Car.create(name: "ユニック①")

Reservation.create(content: "アタッチメントの運搬です",
					start_time: "2020-9-15 12:00:00",
					finish_at: "2020-9-15 13:00:00",
					construction_site_id: "1",
					car_id: "1",
	)
Reservation.create(content: "アタッチメントの運搬です",
					start_time: "2020-8-15 13:00:00",
					finish_at: "2020-8-15 17:00:00",
					construction_site_id: "2",
					car_id: "2",
	)
Reservation.create(content: "ゴミの搬出です",
					start_time: "2020-7-31 8:00:00",
					finish_at: "2020-7-31 12:00:00",
					construction_site_id: "2",
					car_id: "2",
	)
Reservation.create(content: "コンテナの交換",
					start_time: "2020-7-31 13:00:00",
					finish_at: "2020-7-31 17:00:00",
					construction_site_id: "3",
					car_id: "2",
	)
Reservation.create(content: "からビンの回収",
					start_time: "2020-8-12 13:00:00",
					finish_at: "2020-8-12 17:00:00",
					construction_site_id: "3",
					car_id: "2",
	)
Reservation.create(content: "ゴミの搬出",
					start_time: "2020-8-13 8:00:00",
					finish_at: "2020-8-13 17:00:00",
					construction_site_id: "3",
					car_id: "1",
	)
Reservation.create(content: "ゴミの搬出",
					start_time: "2020-9-23 8:00:00",
					finish_at: "2020-9-23 17:00:00",
					construction_site_id: "4",
					car_id: "2",
	)

AttendanceRecord.create(user_id: "1",
						construction_site_id: "1",
						start_time: "2020-8-30 8:00:00",
						finish_at: "2020-8-30 17:00:00",
	)
AttendanceRecord.create(user_id: "1",
						construction_site_id: "1",
						start_time: "2020-8-31 8:00:00",
						finish_at: "2020-8-31 17:00:00",
	)

10.times do |n|
AttendanceRecord.create(user_id: "1",
						construction_site_id: "1",
						start_time: "2020-9-#{n + 1} 8:00:00",
						finish_at: "2020-9-#{n + 1} 17:00:00"
	)
end

10.times do |n|
AttendanceRecord.create(user_id: "2",
						construction_site_id: "2",
						start_time: "2020-9-#{n + 1} 8:00:00",
						finish_at: "2020-9-#{n + 1} 17:00:00"
	)
end

DailyReport.create(construction_site_id: "1",
					content: "清掃",
					start_time: "2020-9-1",
					company_people: "田中、渡辺"
	)

5.times do |n|
DailyReport.create(construction_site_id: "6",
					content: "土間はつり",
					start_time: "2020-9-#{n + 1}",
					company_people: "田中",
					care_people: "5",
					interior_people: "6",
	)
end

DailyReport.create(construction_site_id: "6",
					content: "土間はつり 終了",
					start_time: "2020-9-7",
					company_people: "田中",
					care_people: "2",
					interior_people: "2",
	)

5.times do |n|
DailyReport.create(construction_site_id: "5",
					content: "建屋解体",
					start_time: "2020-9-#{n + 1}",
					company_people: "田中",
					care_people: "2",
					scaffold_people: "3",
	)
end

DailyReport.create(construction_site_id: "5",
					content: "建屋解体 終了",
					start_time: "2020-9-7",
					company_people: "田中",
					care_people: "2"
	)


Photo.create(
	construction_site_id: "2",
    image: open("./public/images/construction_site1.jpg"),
    explanation: "上屋解体を始めました"
	)
Photo.create(
	construction_site_id: "2",
    image: open("./public/images/construction_site2.jpg"),
    explanation: "上屋解体を進めています"
	)
Photo.create(
	construction_site_id: "2",
    image: open("./public/images/construction_site0.jpg"),
    explanation: "来週には上屋はなくなると思います"
	)
Photo.create(
	construction_site_id: "6",
    image: open("./public/images/construction_site7.jpg"),
    explanation: "A型バリケードを設置しました"
	)
Photo.create(
	construction_site_id: "6",
    image: open("./public/images/construction_site10.jpg"),
    explanation: "B型フェンスも設置しました"
	)
Photo.create(
	construction_site_id: "6",
    image: open("./public/images/construction_site8.jpg"),
    explanation: "校庭に鉄板を敷きました"
	)
Photo.create(
	construction_site_id: "5",
    image: open("./public/images/construction_site11.jpg"),
    explanation: "地中工事中です"
	)
Photo.create(
	construction_site_id: "6",
    image: open("./public/images/construction_site6.jpg"),
    explanation: "発電機を設置しました"
	)
Photo.create(
	construction_site_id: "5",
    image: open("./public/images/construction_site12.jpg"),
    explanation: "掘削してます"
	)

Photo.create(
	construction_site_id: "6",
    image: open("./public/images/construction_site3.jpg"),
    explanation: "校庭の一部掘削です"
	)
Photo.create(
	construction_site_id: "6",
    image: open("./public/images/construction_site4.jpg"),
    explanation: "明日に溜まった残土を搬出予定です"
	)
Photo.create(
	construction_site_id: "4",
    image: open("./public/images/construction_site13.jpg"),
    explanation: "資材を揚重しました"
	)
Photo.create(
	construction_site_id: "6",
    image: open("./public/images/construction_site9.jpg"),
    explanation: "ガラが少しでそうです"
	)





