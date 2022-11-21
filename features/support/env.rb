require 'json_matchers'
require 'cucumber'
require 'faker'
require 'httparty'
require 'report_builder'
require 'rubycritic'
require 'rspec'
require 'pry'
require 'json-schema'
require 'json_matchers/rspec'
require 'rexml'

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")
DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENVIRONMENT}/data.yml")

JsonMatchers.schema_root = './features/contracts/schemas/poc'

def validate_response_body(payload)
    payload.is_a?(HTTParty::Response) ? payload.body.nil? || payload.to_s.empty? : payload.nil?
  end
  
  def print_log(url: nil, payload_envio: nil, payload_resposta: nil, headers: nil)
    unless validate_response_body(payload_envio)
      log("\n =============== Payload de envio: =============== \n #{JSON.pretty_generate(JSON.parse(payload_envio))}\n")
    end
    log("\n =============== URL: ================ \n #{url.request.last_uri}\n") unless validate_response_body(url)
    unless validate_response_body(payload_resposta)
      log("\n =============== Payload de resposta: =============== \n #{JSON.pretty_generate(JSON.parse(payload_resposta.to_s))}")
    end
    unless validate_response_body(headers)
      puts("\n =============== Headers: ================ \n #{JSON.pretty_generate(headers)}")
    end
  end

