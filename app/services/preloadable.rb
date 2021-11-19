module Preloadable
  PRELOADER = ActiveRecord::Associations::Preloader

  def preload!(**args)
    args.each do |key, records|
      preloadable = preloadables[key]
      PRELOADER.new.preload(records, preloadable) if preloadable
    end
  end

  def includes!(**args)
    args.each do |key, scope|
      preloadable = preloadables[key]
      scope.includes!(preloadable) if preloadable
    end
  end

  def preloadables
    {}
  end
end