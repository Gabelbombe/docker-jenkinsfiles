import hudson.model.*
import jenkins.model.*

Thread.start {
  sleep 10000
  println "[info] Setting agent for JNLP"

  def env = System.getenv()
  int port = env['JENKINS_SLAVE_AGENT_PORT'].toInteger()
  Jenkins.instance.setSlaveAgentPort(port)

  println "[info] Done!"
}
