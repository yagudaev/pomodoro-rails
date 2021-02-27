class Components::Timer < Matestack::Ui::Component
  def response
    div do
      # replaces the html
      async id: 'time', rerender_on: 'start-timer' do
        plain time
      end
      onclick emit: 'start-timer' do
        button text: "Play", class: "block mt-2 bg-green-300 px-3 py-1 rounded-sm"
      end
    end
  end

  def time
    session[:start_timestamp] ||= Time.now.to_i
    start_time = Time.at(session[:start_timestamp])
    elapsed_time = Time.now - start_time
    elapsed_duration = ActiveSupport::Duration.build(elapsed_time)
    elapsed_parts = elapsed_duration.parts
    minutes = (elapsed_parts[:minutes] || 0)
    seconds = (elapsed_parts[:seconds] || 0)
    "#{minutes.floor.to_s.rjust(2, '0')}:#{seconds.floor.to_s.rjust(2, '0')}"
  end
end
