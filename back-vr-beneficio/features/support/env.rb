require 'cucumber'
require 'site_prism'
require 'report_builder'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'faker'
require 'json'

require_relative 'services_helper.rb' 
World Page

AMB = ENV['AMB']

case AMB
when AMB.empty?
  raise "Constante AMB está vazia.\nPor favor, especificar Ambiente: (prod, ti, qa)."
  RSpec.configure do |config|
    config.filter_run_excluding type: :feature
  end
end

BASE_URL = YAML.load_file(File.dirname(__FILE__) + "/ambientes/ambientes.yml")[AMB] 

ReportBuilder.configure do |config|
  config.json_path = "results/report.json" 
  config.report_path = "results/report" 
  config.report_types = [:html] 
  config.report_title = "Report de testes API VRPAT" 
  config.color = "blue" 
  config.additional_info = {ambiente: ENV['AMB'], url: BASE_URL['base_url']}
end

at_exit do
  ReportBuilder.build_report
end
