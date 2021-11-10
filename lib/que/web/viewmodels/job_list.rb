module Que::Web::Viewmodels
  class JobList
    extend Forwardable
    attr_reader :page_jobs, :pager, :search

    def_delegators :@pager, :total, :next_page, :prev_page, :current_page, :page_count

    def initialize(page_jobs, pager, search = nil)
      @page_jobs = page_jobs.map{|j| Job.new(j)}
      @pager = pager
      @search = search && search.gsub('%', '')
    end
  end
end
