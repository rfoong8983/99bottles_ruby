class Bottles
  def bottle_count_in_words(bottle_count)
    return "#{bottle_count} bottle" if bottle_count == 1
    return "no more bottles" if bottle_count == 0
    return "99 bottles" if bottle_count == -1

    "#{bottle_count} bottles"
  end

  def take_down_lyric(bottle_count)
    return "Take it down and pass it around, " if bottle_count == 1
    return "Go to the store and buy some more, " if bottle_count == 0

    "Take one down and pass it around, "
  end

  def verse(bottle_count)
    "#{bottle_count_in_words(bottle_count).capitalize} of milk on the wall, " +
    "#{bottle_count_in_words(bottle_count)} of milk.\n" +
    "#{take_down_lyric(bottle_count)}" +
    "#{bottle_count_in_words(bottle_count - 1)} of milk on the wall.\n"
  end

  def verses(end_count, start_count)
    counts = *(start_count..end_count)
    counts.reverse.map do |count|
      verse(count)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end
end