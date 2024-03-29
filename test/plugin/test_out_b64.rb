require 'helper'
# require 'time'

class B64OutputTest < Test::Unit::TestCase
  # TMP_DIR = File.dirname(__FILE__) + "/../tmp"

  def setup
    Fluent::Test.setup
    # FileUtils.rm_rf(TMP_DIR)
    # FileUtils.mkdir_p(TMP_DIR)
  end

  CONFIG = %[
  ]
  # CONFIG = %[
  #   path #{TMP_DIR}/out_file_test
  #   compress gz
  #   utc
  # ]

  def create_driver(conf = CONFIG)
    Fluent::Test::BufferedOutputTestDriver.new(Fluent::B64Output).configure(conf)
  end

  def test_configure
    #### set configurations
    # d = create_driver %[
    #   path test_path
    #   compress gz
    # ]
    #### check configurations
    # assert_equal 'test_path', d.instance.path
    # assert_equal :gz, d.instance.compress
  end

  def test_format
    d = create_driver

    # time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    # d.emit({"a"=>1}, time)
    # d.emit({"a"=>2}, time)

    # d.expect_format %[2011-01-02T13:14:15Z\ttest\t{"a":1}\n]
    # d.expect_format %[2011-01-02T13:14:15Z\ttest\t{"a":2}\n]

    # d.run
  end

  def test_write
    d = create_driver

    # time = Time.parse("2011-01-02 13:14:15 UTC").to_i
    # d.emit({"a"=>1}, time)
    # d.emit({"a"=>2}, time)

    # ### FileOutput#write returns path
    # path = d.run
    # expect_path = "#{TMP_DIR}/out_file_test._0.log.gz"
    # assert_equal expect_path, path

    # data = Zlib::GzipReader.open(expect_path) {|f| f.read }
    # assert_equal %[2011-01-02T13:14:15Z\ttest\t{"a":1}\n] +
    #                 %[2011-01-02T13:14:15Z\ttest\t{"a":2}\n],
    #              data
  end
end
