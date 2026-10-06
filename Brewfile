# Load all Brewfiles from the Brewfiles/ directory
Dir.glob(File.join(File.dirname(__FILE__), "Brewfiles", "*")).sort.each do |f|
  instance_eval File.read(f), f
end
