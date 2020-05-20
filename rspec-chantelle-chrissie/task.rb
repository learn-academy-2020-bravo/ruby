class Task
    def initialize title, description, status = 'in progress'
        @title = title
        @description = description
        @status = status
    end

    def title
        @title
    end

    def description
        @description
    end

    def status
        @status
    end
end