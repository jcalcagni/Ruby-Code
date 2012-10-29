class Class
 
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_hist_name = attr_name+'_history'
 
    #getter
    self.class_eval("def #{attr_name};@#{attr_name};end")
 
    #setter
    self.class_eval %Q{
      def #{attr_name}=(val)
        # add to history
        @#{attr_hist_name} = [nil] if @#{attr_hist_name}.nil?
        @#{attr_hist_name} << val
 
        # set the value itself
        @#{attr_name}=val
      end
 
      def #{attr_hist_name};@#{attr_hist_name};end}
 
  end
 
end

class Foo
    attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
puts f.bar_history.to_s