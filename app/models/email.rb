class Email
  attr_accessor :subject, :recipients, :body

  def initialize(params)
    renderer = Redcarpet::Render::HTML.new
    markdown = Redcarpet::Markdown.new(renderer)

    @subject    = params[:subject]
    @recipients = params[:recipients]
    @body       = markdown.render(params[:body]).gsub("\n", '')
  end
end