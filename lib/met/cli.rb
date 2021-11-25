module Met
  class CLI
    def initialize(argv)
      @argv = argv
    end

    def run
      puts Met.artwork((1..500_000).to_a.sample).preview
    end
  end
end
