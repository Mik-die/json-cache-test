Employer.create id: 1, name: 'Mikhail', phone: '11-222-3333', approved: true

Event.create id: 1, title: 'Birthday', employer_id: 1

birthday = Time.parse("2016-04-18 10:00")

Job.create title: 'Cooking', pay_rate: 12.0, employer_id: 1, event_id: 1, shifts_attributes: {
  '1' => {start_time: birthday, end_time: birthday + 4.hours },
  '2' => {start_time: birthday + 4.hours, end_time: birthday + 8.hours },
}

Job.create title: 'Serving', pay_rate: 10.0, employer_id: 1, event_id: 1, shifts_attributes: {
  '1' => {start_time: birthday + 2.hours, end_time: birthday + 12.hours },
  '2' => {start_time: birthday + 2.hours, end_time: birthday + 12.hours },
  '3' => {start_time: birthday + 2.hours, end_time: birthday + 12.hours },
}

Job.create title: 'Cleaning', pay_rate: 8.0, employer_id: 1, event_id: 1, shifts_attributes: {
  '1' => {start_time: birthday - 2.hours, end_time: birthday + 4.hours },
  '2' => {start_time: birthday + 4.hours, end_time: birthday + 10.hours },
  '3' => {start_time: birthday + 10.hours, end_time: birthday + 14.hours },
}

Job.create title: 'Driver', pay_rate: 15.0, employer_id: 1, shifts_attributes: {
  '1' => {start_time: Time.current, end_time: Time.current + 4.hours }
}
