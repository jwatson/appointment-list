import Foundation

struct RawAppointment {
    /// The name of the patient that has scheduled the appointment
    let patientName: String
    /// The date of birth of the patient
    let patientDateOfBirth: String
    /// The time that the appointment starts
    let startTime: String
    /// In Minutes
    let duration: Int
}

// Make function public to use in the playground
// public func generateRawAppointments() {
func generateRawAppointments() {
    let count = 40
    let firstNames = ["Poonam", "Ryan", "Amy", "John", "Rachel", "Thomas", "Nicole", "Martin", "Vidya", "Jim", "Sherry", "Stephen", "Susan", "Jeremy", "Brittany", "Abuzer", "Janna", "Beto", "Deepa", "Ken", "Cindy"]
    let lastNames = ["Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller", "Wilson", "Moore", "Taylor", "Anderson", "Thomas",  "Jackson", "White", "Harris", "Martin", "Thompson", "Garcia", "Martinez", "Robinson", "Clark", "Rodriguez", "Lewis", "Lee", "Walker", "Hall", "Allen", "Young", "Hernandez"]
    
    let minute: TimeInterval = 60
    let hour = minute * 60
    let day = hour * 24
    
    let ageFormatter = DateFormatter()
    ageFormatter.dateFormat = "MMMM d, YYYY"
    let ageDateRange = DateInterval(
        start: DateComponents(calendar: .current, year: 1940, month: 1, day: 1).date!,
        end: Calendar.current.date(byAdding: .day, value: -7, to: Date())!
    )
    print("ageDateRange: \(ageDateRange)")
    
    let appointmentFormatter = ISO8601DateFormatter()
    let appointmentStartTimes = DateInterval(
        start: Date().addingTimeInterval(-7 * day),
        end: Date().addingTimeInterval(7 * day)
    )
    
    let appointments: [RawAppointment] = (0...count).map { _ in
        let birthDate = ageDateRange.randomDate
        let appointmentTime = appointmentStartTimes.randomDateIn(hours: ((hour * 8)..<(hour * 17)))
        let duration = (0...60).randomElement()!
        
        return RawAppointment(
            patientName: "\(firstNames.randomElement()!) \(lastNames.randomElement()!)",
            patientDateOfBirth: ageFormatter.string(from: birthDate),
            startTime: appointmentFormatter.string(from: appointmentTime),
            duration: duration
        )
    }
    let strings = appointments.map { "RawAppointment(patientName: \"\($0.patientName)\", patientDateOfBirth: \"\($0.patientDateOfBirth)\", startTime: \"\($0.startTime)\", duration: \($0.duration))" }
    print("[\n\t\(strings.joined(separator: ",\n\t"))\n]")
}

extension DateInterval {
    var randomDate: Date {
        let duration = end.timeIntervalSince(start)
        print("duration: \(duration)")
        let range: Range<TimeInterval> = (duration >= 0) ? (0..<duration) : (duration..<0)
        let timeInterval = Double.random(in: range)
        return start.addingTimeInterval(timeInterval)
    }
    
    func randomDateIn(hours: Range<TimeInterval>) -> Date {
        let day = Calendar.current.startOfDay(for: randomDate)
        let timeInterval = Double.random(in: hours)
        return day.addingTimeInterval(timeInterval)
    }
}
