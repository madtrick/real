class Barrier
  def self.whitelisted_emails
    @whitelisted_emails ||= ENV['whitelisted_emails'].split(',')
  end
end
