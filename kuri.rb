# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Kuri < Formula
  homepage "https://github.com/bannzai/Kuri/"
  url "https://github.com/bannzai/Kuri/blob/master/brew/kuri.zip"
  sha256 "41e4d654b0c50f7e4025e0a69c6b7b7b6456502cbd097dfe84621bb501de409d"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

     #Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    ## system "cmake", ".", *std_cmake_args
    bin.install 'kuri'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test kuri`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
