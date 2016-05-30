require 'package'

class Redis < Package
  version '3.2.0'
  source_url 'http://download.redis.io/releases/redis-3.2.0.tar.gz'
  source_sha1 '0c1820931094369c8cc19fc1be62f598bc5961ca'

  depends_on 'buildessential'

  def self.build
    system "CC='gcc' make"
  end

  def self.install
    system "make", "PREFIX=#{CREW_DEST_DIR}/usr/local", "install"
    puts "-----------------"
    puts "Installation success!"
    puts "To start the redis server: redis-server --daemonize yes"
    puts "To connect to the server: redis-cli"
  end
end
