# wkhtml2pdf Ruby interface
# http://code.google.com/p/wkhtmltopdf/
#

#if Rails.env.staging? || Rails.env.production?
#  exe_path = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
#else
#  exe_path = Rails.root.join('bin', 'wkhtmltopdf').to_s
#  # exe_path = '/usr/local/bin/wkhtmltopdf'
#end
#
WICKED_PDF = {
  #:wkhtmltopdf => '/usr/local/bin/wkhtmltopdf',
  #:layout => "pdf.html",
  :exe_path => Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
}

#class WickedPdf
#  WICKED_PDF = {
#       :exe_path => "#{Rails.root}/bin/wkhtmltopdf-amd64",
#       :wkhtmltopdf => "#{Rails.root}/bin/wkhtmltopdf-amd64"
#  }
#end
#  def initialize(wkhtmltopdf_binary_path = nil)
#    @exe_path = wkhtmltopdf_binary_path
#    @exe_path ||= WICKED_PDF[:exe_path] unless WICKED_PDF.empty?
#    @exe_path ||= `which wkhtmltopdf`.chomp
#    raise "Location of wkhtmltopdf unknown" if @exe_path.empty?
#    raise "Bad wkhtmltopdf's path" unless File.exists?(@exe_path)
#    raise "Wkhtmltopdf is not executable" unless File.executable?(@exe_path)
#  end
#
#  def pdf_from_string(string, options=nil)
#    command_for_stdin_stdout = "#{@exe_path} #{options} - - -q" # -q for no errors on stdout
#    p "*"*15 + command_for_stdin_stdout + "*"*15 if Rails.env == 'development'
#    Open3.popen3(command_for_stdin_stdout) do |stdin, stdout, stderr|
#      stdin.write(string.force_encoding('UTF-8'))
#      stdin.close
#      pdf = stdout.read
#      raise "PDF could not be generated!\n#{stderr.read}" if pdf.length == 0
#      pdf
#    end
#  end
#end

#WickedPdf.config = { exe_path: wkhtmltopdf_path, wkhtmltopdf: wkhtmltopdf_path }
