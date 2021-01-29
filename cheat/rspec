Command line examples:

    rspec --tag ~slow:true #filters
    rspec --tag ~slow:true --tag issue:137
    rspec --require spec/instafail
    rspec --format Rspec::Instafail
    rspec --profile

Custom profiles

    rspec --options current-iteration.opts

    # in ./current-iteration.opts
    --tag iteration:27

Configuration options

    Rspec.configure  do |config|
      config.treat_symbols_as_metadata_keys_with_true_values = true
      config.run_all_when_everything_filtered = true
      config.filter_run_including :focus => true
      config.filter_run_excluding :slow => true
      config.alias_example_to :pending, :pending => true
      config.alias_example_to :next, :pending => 'Next Iteration'
      config.fail_fast = true
    end

.rspec

    -I app/models # include lib path

Passing in options with Zeus

    zeus rspec --tag fragile --tty spec/

Operators

    expect(foo).to be < 10

Tips

- minimum valid object
- test to true
- control values using let


Request specs

    config.include Capybara::DSL, type: :request

Short syntax

    it { is_expected.to be_pending }

Generate HTML report

    bin/rspec spec --format html --out tmp/features.html --order defined
