defmodule ElxrYtWbScrpr do
  use Hound.Helpers
  def last_video_from() do
    IO.puts "starting"
    Hound.start_session
    navigate_to "https://www.youtube.com/channel/UC0l2QTnO1P2iph-86HHilMQ/videos"
    Process.sleep(5000)
    last_video = page_source()
                  |> Floki.find("#video-title")
                  |> Floki.attribute("href")
                  |> Enum.at(0)    
    navigate_to "https://www.youtube.com/#{last_video}"
    Process.sleep(10000)
    Hound.end_session
  end
end
