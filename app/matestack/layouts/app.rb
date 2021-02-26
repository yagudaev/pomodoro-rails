class Layouts::App < Matestack::Ui::App
  def response
    heading size: 1, text: "Pomodoro", class: "mt-2 ml-2"
    main class: "px-4 py-2" do
      yield_page
    end
  end
end
