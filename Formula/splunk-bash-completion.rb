class SplunkBashCompletion < Formula
  desc "Completion for Atom Package Manager"
  homepage "https://github.com/plambert/splunk_command_completion"
  url "https://github.com/plambert/splunk_command_completion/archive/v1.0.3.tar.gz"
  sha256 "e441cd3737acb9fdcede0c6c54610a89834af01be029a4518a4af97819b270f8"

  bottle :unneeded

  def install
    bash_completion.install "splunk"
  end

  test do
    assert_match "-F fSplunkComplete",
      shell_output("source #{bash_completion}/splunk && complete -p splunk")
  end
end
