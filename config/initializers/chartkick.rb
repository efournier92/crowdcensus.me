Chartkick.options = {
  height: "180px",
}

module Color
  VIOLET  = ["#434669", "#7b829e", "#aaacb8"]
  BOURBON = ["#3d2e43", "#897a8d", "#b5b0b7"]
  GREEN   = ["#4fa100", "#87be49", "#b3c699"]
  BLUE    = ["#38517a", "#84a0d2", "#a0c3ff"]
  BROWN   = ["#7a705e", "#a4987f", "#cbbc9d"]
  RED     = ["#960000", "#cc0000", "#fe8484"]
  YELLOW  = ["#ef9b0f", "#ffbf00", "#fffacd"]
  PINK    = ["#6e4361", "#ac6a9a", "#d080ba"]

  def self.pick
    palette = [VIOLET, BOURBON, GREEN, BLUE, BROWN, RED, YELLOW, PINK]
    palette.sample
  end
end
