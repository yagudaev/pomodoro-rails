class Components::Timer < Matestack::Ui::Component
  def response
    div do
      async id: 'time', rerender_on: 'start-timer' do
        plain rand(10)
      end
      onclick emit: 'start-timer' do
        button text: "Play", class: "block mt-2 bg-green-300 px-3 py-1 rounded-sm"
      end
    end
  end

  def time
    @time ||= 0
    @time += 1
    @time
  end
end
