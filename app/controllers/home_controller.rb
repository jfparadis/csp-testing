class HomeController < ApplicationController
    def index
        @testcase_json = replace_host(TestCase.all.sort{|x,y| x.id <=> y.id}.to_json)
    end

    def results
        @results = Result.find(:all, :order => "id desc", :limit => 50)
    end

    def about

    end
end
