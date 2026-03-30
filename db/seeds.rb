require 'csv'

CSV.foreach('db/personal_infomation.csv', headers: true) do |row|
  address = [
    row['jusho1'],
    row['jusho2'],
    row['jusho3'],
    row['jusho4'],
    row['jusho5']
  ].compact.join

  User.create(
    no: row['no'],
    name: row['namae'],
    rubi: row['rubi'],
    gender: row['seibetu'],
    phone: row['denwa'],
    mobile: row['keitai'],
    email: row['mairu'],
    post_code: row['yuubinbango'],
    address: address,
    birthday: row['tanjobi']
  )
end