require 'sinatra'
require "rhymer"


get '/rhyme' do
  rhymer = Rhymer::Parser.new("今日はとても良い天気ですね。こんな日は自然に元気>になります。")
  body = ''
  rhymer.rhymes.each do |rhyme|
    body << [rhyme[0], rhyme[1]].join(" ")
  end

  body
end
