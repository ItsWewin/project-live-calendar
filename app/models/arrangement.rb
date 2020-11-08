class Arrangement < ActiveRecord::Base

  class << self
    def find_by_day(day)
      time_selected = DateTime.parse(day)

      self.where('start_time BETWEEN ? AND ?', time_selected.beginning_of_day, time_selected.end_of_day)
    end

    def get_all_days
      start_time = Time.now.to_date
      end_ime = self.order(start_time: :asc).last.start_time.to_date

      time_list = [start_time]

      loop do

        start_time += 1.day

        break if start_time > end_ime

        puts "start_time: #{start_time}"

        time_list = time_list.push(start_time)
      end

      time_list.uniq
    end

    def is_existed_with_id?(id)
      self.find(id).present?
    end
  end
end
