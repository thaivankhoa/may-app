namespace :setup do
  desc "TODO"
  task devs: :environment do
    ruby = ProgrammingLanguage.create(:name => "ruby")
    python = ProgrammingLanguage.create(:name => "python")
    csharp = ProgrammingLanguage.create(:name => "c#")
    cplusplus= ProgrammingLanguage.create(:name => "c++")
    java = ProgrammingLanguage.create(:name => "java")
    js = ProgrammingLanguage.create(:name => "javascript")
    php = ProgrammingLanguage.create(:name => "php")

    vi = Language.create(:code => "vi")
    en = Language.create(:code => "en")
    jp = Language.create(:code => "jp")
    fr = Language.create(:code => "fr")

    100.times do |n|
      email = "example-#{n+1}@gmail.com"

      dev = Developer.create(:email => email)

      ProgrammingLanguage.order('RANDOM()').limit(rand(1..7)).shuffle.each do |pro|
        dev.programming_languages << pro
      end

      Language.order('RANDOM()').limit(rand(1..4)).shuffle.each do |lan|
        dev.languages << lan
      end
    end
  end

end
