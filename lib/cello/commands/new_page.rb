class Cello::Commands::NewPage
  class << self
    def run(url=ARGV)
      Cello::PageObjects::Recorder.record url
    end
  end
end

