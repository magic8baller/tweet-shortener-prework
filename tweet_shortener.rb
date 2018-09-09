def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for, four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

=begin
1. Write a method, `word_substituter` that takes in a string of a tweet as an argument and shortens that string based on the allowed substitutes. Use your `dictionary` method that contains your dictionary hash to compare the words in the tweet against the keys in the hash. If there are any matches, replace the word in the tweet with the associated substitute from the hash.
  * **Hint:** How can you iterate over every word in a tweet and compare it to the hash keys? Convert the tweet into an array to enable this. Then, make sure to convert it back into a string to return the shortened tweet at the end of the method.
  * **Hint:** How can you grab all of the keys of the hash for the purpose of comparing them to the words in the tweet? Use the `.keys` method.
=end
def word_substituter(long_tweet)
  long_tweet.split.map do |word|
    dictionary.each do |key, value|
      word = value if dictionary.keys.include?(word.downcase) #same as word[word.downcase] = value
    end
    word
  end.join(' ')
end

def bulk_tweet_shortener(tweets)

end
