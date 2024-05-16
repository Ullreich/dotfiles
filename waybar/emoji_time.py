import datetime

hour = datetime.datetime.now().hour

emoji_array = [" "," " ," " ," " ," " ," " ," " ," " ," " ," " ," " ," "]
print(emoji_array[hour%12])
