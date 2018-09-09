def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(long_tweet)
  long_tweet.split.map do |word|
    dictionary.each do |key, value|
      word = dictionary[word.downcase] if dictionary.keys.include?(word.downcase)
    end
    word
  end.join(' ')
end

# here 'tweets' = array
def bulk_tweet_shortener(tweets)
  tweets.map { |tweet| puts word_substituter(tweet) }
end
