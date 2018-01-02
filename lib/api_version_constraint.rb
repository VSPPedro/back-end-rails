class ApiVersionConstraint
    def initialize(options)
      @verion = options[:version]
      @default = options[:default]
    end
    
    def matches?(req)
      @default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{@version}")
    end
end