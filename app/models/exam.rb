class Exam < ApplicationRecord
  belongs_to :grade
  belongs_to :subject
  belongs_to :shift
  belongs_to :professor

  validates :step, presence: true
  validates :exam_type, presence: true, inclusion: { in: %w[Global Parcial] }
  validates :date, presence: true
  validates :status, presence: true, inclusion: { in: %w[Pendente Recebido Concluido] }
end
