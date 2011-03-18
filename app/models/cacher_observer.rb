class CacherObserver < ActiveRecord::Observer
  observe Node, Element # This sweeper is going to keep an eye on the Node model

  private
  def expire_cached_content(record)
    # Expire a fragment model.class.to_s == 'Recruition'
    expire_fragment(%r{.*#{record.class.to_s.tableize}_cache})
  end

  alias_method :after_save, :expire_cached_content
  alias_method :after_destroy, :expire_cached_content
end

