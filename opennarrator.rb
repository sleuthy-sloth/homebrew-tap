class Opennarrator < Formula
  desc "Open-source audiobook creator — convert ebooks to M4B using open-source TTS"
  homepage "https://github.com/sleuthy-sloth/opennarrator"
  url "https://github.com/sleuthy-sloth/opennarrator/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1f7ba8e7c2df2a2e093764b9e696ce5d3232092f171256d942ecac095d4e0eb5"
  license "MIT"

  depends_on "python@3.12"
  depends_on "ffmpeg"

  def install
    venv = libexec/"venv"
    system "python3.12", "-m", "venv", venv
    system venv/"bin/pip", "install", buildpath
    system venv/"bin/pip", "install", "kokoro", "soundfile", "torch"
    bin.install_symlink venv/"bin/opennarrator"
  end

  def caveats
    <<~EOS
      OpenNarrator is installed!

      Quick start:
        opennarrator convert --demo     # test the pipeline in 60 seconds
        opennarrator convert book.epub  # convert an ebook
        on                              # launch the web UI (http://localhost:8080)

      Voices:
        opennarrator voices list
        opennarrator preview af_bella

      The Kokoro model downloads automatically on first conversion (~300MB).
    EOS
  end

  test do
    system bin/"opennarrator", "--help"
  end
end
