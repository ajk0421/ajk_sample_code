def password_validation(password)
  return "パスワードの文字数が足りません" if password.size < 8

  /[A-Z]+[a-z]+[0-9]+/.match?(password) ? "登録が完了しました。" : "入力内容に誤りがあります"
end

puts <<~text
  パスワードを登録してください。
  ----------------------------------
  ・半角英数字で入力してください
  ・必ず、英大文字(ABC~)、英小文字(abc~)、英数字(123~)を一文字以上入れてください
  ・(-~_+)などの記号は使えません
  ・８文字以上のパスワードにしてくください
  ----------------------------------
text
password = gets.chomp

puts password_validation(password)
