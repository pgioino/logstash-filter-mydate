# encoding: utf-8
require "logstash/filters/date"
require "logstash/namespace"

# This example filter will replace the contents of the default 
# message field with whatever you specify in the configuration.
#
# It is only intended to be used as an example.
#class LogStash::Filters::Example < LogStash::Filters::Base
class LogStash::Filters::MyDate < LogStash::Filters::Date

  # Setting the config_name here is required. This is how you
  # configure this filter from your Logstash config.
  #
  # filter {
  #   example {
  #     message => "My message..."
  #   }
  # }
  #
  config_name "mydate"
  
  # Replace the message with this value.
  #config :message, :validate => :string, :default => "Hello World!"
  

  #public
  def register
    # Add instance variables 
  end # def register

  public
  def filter(event)

    #if @message
      # Replace the event message with our message as configured in the
      # config file.
      #event["message"] = @message
    #end

    # filter_matched should go in the last line of our successful code
    #filter_matched(event)

    @logger.debug? && @logger.debug("Event: ", :value => value, :event => event)
    filter_matched(event)
  end # def filter
end # class LogStash::Filters::Example
