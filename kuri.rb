# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
 class Kuri < Formula
  desc "Automatically generates necessary code for iOS CleanArchitecture and imports it into Xcode project."
  homepage ""
  url "https://github.com/bannzai/Kuri/releases/download/0.3.2/kuri.zip"
  sha256 "f01eb47392d80b64ec467abf499460649f4f7bdc3a45f416711e66532004606d"
   # depends_on "cmake" => :build
   def install
    # ENV.deparallelize  # if your formula fails when building in parallel
     # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end
   test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Kuri`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
