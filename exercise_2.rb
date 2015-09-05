class User
  
  FEATURES = ['create', 'update', 'delete']
  
  FEATURES.each do |f|
    define_method "can_#{f}!" do
      @features[f] = true
    end
    
    define_method "can_#{f}?" do
      !!@features[f]
    end
  end
  
  define_method "cannot_#{f}!" do
    @features[f] = false
  end 
  
  def initialize
    @features = {}
  end
end
