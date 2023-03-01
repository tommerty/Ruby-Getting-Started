# Compare unique words from two pieces of text
## Steps
1. Copy your main text into `file.txt` - (by default, this is Romeo & Juliet taken from [shakespeare.folger.edu](https://shakespeare.folger.edu/downloads/txt/romeo-and-juliet_TXT_FolgerShakespeare.txt))
2. Paste in your reference text in `referece.txt` - (by default, this is Hamlet taken from [shakespeare.folger.edu](https://shakespeare.folger.edu/downloads/txt/hamlet_TXT_FolgerShakespeare.txt))
3. run `ruby comparison_tool.rb`

This will output you the top 40 unique words, sorted by count, and also give you a summary of the total unique words that are in `file.txt` that don't appear in `reference.txt`.
