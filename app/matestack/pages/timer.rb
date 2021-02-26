class Pages::Timer < Matestack::Ui::Page
  def response
    div do
      plain "00:00"
      button text: "Play", class: "block mt-2 bg-green-300 px-3 py-1 rounded-sm"
    end
  end
end
