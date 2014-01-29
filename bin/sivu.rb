require 'pdfkit'

#config margin, dpi and page size

html = File.open("article/index.html") do |f|
  f.read
end

kit = PDFKit.new(html,
                 :page_size=>'A4',
                 :margin_top=>'0in',
                 :margin_right=>'0in',
                 :margin_left=>'0in',
                 :margin_bottom=>'0in',
                 :dpi=>'300')
kit.to_file("article.pdf")
