class Starvault < Formula
  desc "Local AI conversation archives, incremental backup, attachments and MCP"
  homepage "https://github.com/cpython666/starvault"
  url "https://github.com/cpython666/starvault/releases/download/v0.1.1/StarVault-0.1.1-source.tar.gz"
  sha256 "11e9d0978bb0a86bc8029dbe0ea605c6f04dd2f1613737f4b4ba263155629882"
  license "MIT"

  depends_on "python@3.14"

  def install
    # The backend uses only the standard library. No pip/network build step.
    libexec.install Dir["*.py"].reject { |path| path.start_with?("test_") }
    (libexec/"skills").install "skills/use-chat-history-vault"
    (libexec/"bin").mkpath
    (libexec/"bin/python").make_symlink formula_opt_bin("python@3.14")/"python3.14"
    (bin/"starvault").write <<~SH
      #!/bin/bash
      export PYTHONPATH="#{libexec}"
      exec "#{libexec}/bin/python" -m chat_history_vault "$@"
    SH
    (bin/"starvault").chmod 0755
    (bin/"chat-history-vault").make_symlink bin/"starvault"
  end

  test do
    assert_match "StarVault", shell_output("#{bin}/starvault --version")
    assert_path_exists Pathname.new(shell_output("#{bin}/starvault skill-path").strip)/"SKILL.md"
    archive = testpath/"archive"
    archive.mkpath
    output = shell_output("#{bin}/starvault call vault_status --archive #{archive}")
    assert_equal 0, JSON.parse(output)["conversations"]
  end
end
