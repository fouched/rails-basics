class LogDemoController < ApplicationController

  def index
    Rails.logger.debug("A debug msg")
    Rails.logger.info("A info msg") # default level for production - change in config/environments
    Rails.logger.warn("A warn msg")
    Rails.logger.error("A error msg")
    Rails.logger.fatal("A fatal msg")
  end

end
