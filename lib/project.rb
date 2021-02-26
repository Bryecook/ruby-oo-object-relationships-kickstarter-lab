class Project

    attr_reader :title

    def initialize(title)
        @title=title

    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array=[]
        ProjectBacker.all.each do |object|
            if object.project==self
                array << object.backer
            end
        end
        array
    end

end
