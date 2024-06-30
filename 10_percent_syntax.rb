# frozen_string_literal: true

# %は文字列をダブルクォートの扱いで展開する
# ""とかを\"みたいにエスケープしないで良い
cocoa_comment = %(Cocoa: "Rabbit House" is my home)
p cocoa_comment

chino_comment = %(Chino: Cocoa-san said #{cocoa_comment}, but "Rabbit House" is our family's home)
p chino_comment

# %qはシングルクォーとの扱いなので変数展開ができない
chino_comment2 = %q(Chino: Cocoa-san said #{cocoa_comment})
p chino_comment2

# %Wは配列を作成する
chimame_group = %w[chino maya megu]
p chimame_group

# %Wは変数展開もできる
comments = %W[#{cocoa_comment} #{chino_comment}]
p comments

# %wは変数展開ができない
comments2 = %w[#{cocoa_comment} #{chino_comment}]
p comments2

# %iはシンボルを作成する。%Iだと変数も展開できるが割愛
drinks = %i[cappucchino cocoa kilimanjaro ujimatsu-tea]
p drinks

# %xは外部実行コマンドを実行できる状態にする
d = %x(date) # rubocop:disable Style/CommandLiteral
p d
