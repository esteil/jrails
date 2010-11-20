class JrailsGenerator < Rails::Generator::Base
  def manifest
    prefix = "public/javascripts"
    record do |m|
      m.directory "config"
      m.file 'config/jrails.yml', 'config/jrails.yml'
      m.directory "#{prefix}/jquery"
      m.directory "#{prefix}/jrails"
      ['','min.'].each do |i|
        m.file "#{prefix}/jquery/jquery.#{i}js",          "#{prefix}/jquery/jquery.#{i}js"
        m.file "#{prefix}/jquery/jquery-ui.#{i}js" ,      "#{prefix}/jquery/jquery-ui.#{i}js"
        m.file "#{prefix}/jquery/jquery-ui-i18n.#{i}js",  "#{prefix}/jquery/jquery-ui-i18n.#{i}js"
        m.file "#{prefix}/jrails/jrails.#{i}js",          "#{prefix}/jrails/jrails.#{i}js"
      end
    end
  end
end
