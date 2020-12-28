class AcceptancesController < ApplicationController
  def new
    # フィールドに代入したオブジェクトをviewに渡すことができる
    # からのAcceptanceオブジェクトを渡すことができる。
    @acceptance = Acceptance.new
  end

  def create
    # ユーザの入力値を受け取る
    # paramsには何が入ってくるかわからず危険
    # require :acceotanceオブジェクトのacceptingフィールド以外の値は消去
    #@acceptance = params.require(:acceptance).permit(:accepting)
    @acceptance = Acceptance.new(acceptance_params)

    #validationチェック
    if @acceptance.valid?
      puts "承諾されました"
      # 書籍一覧に遷移
      redirect_to books_path
    else
      # newアクションをもう一度
      render :new
    end
  end

  private
  def acceptance_params
    # ユーザの入力値を受け取る
    # paramsには何が入ってくるかわからず危険
    # require :acceotanceオブジェクトのacceptingフィールド以外の値は消去
    params.require(:acceptance).permit(:accepting)
  end
end
