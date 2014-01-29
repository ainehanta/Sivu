require 'pdfkit'

html = File.open("article/index.html") do |f|
  f.read
end

kit = PDFKit.new(html)
kit.to_file("article.pdf")
