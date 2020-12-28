class Acceptance
    #validatesを使用するためのmix-in
    include ActiveModel::Model
    #acceptingというフィールドをもつ
    attr_accessor :accepting

    #acceptingフィールドはチェックが必要
    validates :accepting,acceptance: {accept: 'yes'}
end