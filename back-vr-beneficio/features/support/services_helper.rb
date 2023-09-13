Dir[File.join(File.dirname(__FILE__), '../starts_services/*_start.rb')].each { |file| require file }

module Page
  def api_vrpat
    @api_vrpat = ApiVrPatStart.new
  end
end
