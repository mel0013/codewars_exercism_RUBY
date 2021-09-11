# Method to return a log line's message
# LogLineParser.message('[ERROR]: Invalid operation')
# => "Invalid operation"
# LogLineParser.message('[WARNING]:  Disk almost full\r\n')
# => "Disk almost full"

# Method to return log line's level in lowercase
# LogLineParser.log_level('[ERROR]: Invalid operation')
# => "error"

# Method that reformats the log line, putting the message first and the log level after it in parentheses:
# LogLineParser.reformat('[INFO]: Operation completed')
# => "Operation completed (info)"

class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    "#{@line}".gsub(/^\D[A-Z]+\D{2}/, '').strip
  end

  def log_level
    "#{@line}"[/^\D[A-Z]+\D{2}/].gsub(/\W/, '').downcase
  end

  def reformat
    "#{message} (#{log_level})" # you can call an instance method inside another method
  end
end
