Page.find_or_create_by slug: 'welcome'
blocks = [
  { 'Преимущества' => :advantages },
  { 'Портфолио' => :portfolio },
  { 'Наша команда' => :team },
  { 'Рассылка' => :getting_email },
  { 'Блог' => :blogs } ]

blocks.each_with_index do |b, index|
  title = b.keys.first
  block = Block.find_by_title title
  Block.create title: title, text: 'text', order_number: index + 1, view_name: b.values.first unless block
end
