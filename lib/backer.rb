require 'pry'
class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select { |pb| pb.backer == self}
        project_backers.map {|pb| pb.project}
    end

end

