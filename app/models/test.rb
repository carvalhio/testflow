class Test < ApplicationRecord
  belongs_to :subject
  belongs_to :grade
  belongs_to :shift
  belongs_to :professor

  enum status: {pending: "Pendente", received: "Recebido", completed: "Concu�do"}
end
