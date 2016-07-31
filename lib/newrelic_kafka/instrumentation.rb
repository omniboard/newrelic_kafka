# encoding: utf-8
require "new_relic/agent"

DependencyDetection.defer do
  named :kafka

  # skipping async for now
  # Kafka::Client::AsyncProducer
  depends_on do
    defined?(Kafka::Producer)
  end

  executes do
    ::NewRelic::Agent.logger.info "Installing Kafka ruby-kafka instrumentation"
  end

  executes do
    require "new_relic/agent/datastores"

    [Kafka::Producer].each do |klass|
      NewRelic::Agent::Datastores.trace klass, :deliver_messages, "Kafka"
    end
  end
end
