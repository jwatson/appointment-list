import UIKit
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

let rawAppointments = [
    RawAppointment(patientName: "Deepa Taylor", patientDateOfBirth: "April 28, 1997", startTime: "2019-08-27T12:13:33Z", duration: 45),
    RawAppointment(patientName: "Ryan Jones", patientDateOfBirth: "January 3, 2005", startTime: "2019-09-03T17:03:15Z", duration: 41),
    RawAppointment(patientName: "Sherry Thompson", patientDateOfBirth: "May 20, 1948", startTime: "2019-08-31T15:55:28Z", duration: 35),
    RawAppointment(patientName: "Deepa Jones", patientDateOfBirth: "May 2, 1970", startTime: "2019-09-02T15:35:30Z", duration: 52),
    RawAppointment(patientName: "Jim Hernandez", patientDateOfBirth: "September 17, 1950", startTime: "2019-08-28T12:16:51Z", duration: 25),
    RawAppointment(patientName: "Stephen Jones", patientDateOfBirth: "August 24, 1997", startTime: "2019-08-30T18:57:15Z", duration: 1),
    RawAppointment(patientName: "Beto Hall", patientDateOfBirth: "June 29, 1975", startTime: "2019-09-01T14:31:06Z", duration: 47),
    RawAppointment(patientName: "Jeremy White", patientDateOfBirth: "November 18, 2007", startTime: "2019-08-31T17:24:29Z", duration: 43),
    RawAppointment(patientName: "Nicole Brown", patientDateOfBirth: "April 3, 1976", startTime: "2019-09-03T17:03:30Z", duration: 49),
    RawAppointment(patientName: "John Clark", patientDateOfBirth: "November 15, 1964", startTime: "2019-08-29T12:08:20Z", duration: 24),
    RawAppointment(patientName: "Cindy Anderson", patientDateOfBirth: "November 30, 1948", startTime: "2019-09-02T16:15:37Z", duration: 37),
    RawAppointment(patientName: "Rachel Brown", patientDateOfBirth: "April 18, 1961", startTime: "2019-08-25T14:50:12Z", duration: 6),
    RawAppointment(patientName: "Jeremy Taylor", patientDateOfBirth: "April 30, 1959", startTime: "2019-08-29T20:03:48Z", duration: 17),
    RawAppointment(patientName: "Jim Young", patientDateOfBirth: "April 23, 1999", startTime: "2019-08-30T20:05:43Z", duration: 41),
    RawAppointment(patientName: "Rachel Johnson", patientDateOfBirth: "December 14, 1990", startTime: "2019-09-03T15:01:57Z", duration: 60),
    RawAppointment(patientName: "Brittany Thompson", patientDateOfBirth: "September 1, 2006", startTime: "2019-09-02T12:10:26Z", duration: 12),
    RawAppointment(patientName: "Brittany Martinez", patientDateOfBirth: "December 12, 2015", startTime: "2019-09-01T18:11:10Z", duration: 27),
    RawAppointment(patientName: "Abuzer Thomas", patientDateOfBirth: "November 28, 1952", startTime: "2019-09-05T19:44:02Z", duration: 16),
    RawAppointment(patientName: "Sherry Allen", patientDateOfBirth: "July 30, 1977", startTime: "2019-09-03T20:19:24Z", duration: 51),
    RawAppointment(patientName: "Cindy Taylor", patientDateOfBirth: "December 2, 1969", startTime: "2019-09-01T15:51:58Z", duration: 33),
    RawAppointment(patientName: "Susan Hernandez", patientDateOfBirth: "October 23, 1964", startTime: "2019-08-24T15:11:24Z", duration: 2),
    RawAppointment(patientName: "Abuzer White", patientDateOfBirth: "May 15, 1964", startTime: "2019-09-01T13:59:04Z", duration: 6),
    RawAppointment(patientName: "Martin Walker", patientDateOfBirth: "March 5, 1989", startTime: "2019-09-04T13:43:22Z", duration: 58),
    RawAppointment(patientName: "Rachel Jones", patientDateOfBirth: "October 24, 1949", startTime: "2019-09-01T20:24:54Z", duration: 50),
    RawAppointment(patientName: "Vidya Jackson", patientDateOfBirth: "February 4, 2008", startTime: "2019-09-01T16:02:35Z", duration: 21),
    RawAppointment(patientName: "Poonam Thomas", patientDateOfBirth: "October 25, 2003", startTime: "2019-08-28T15:37:40Z", duration: 28),
    RawAppointment(patientName: "Poonam White", patientDateOfBirth: "June 16, 1953", startTime: "2019-08-25T20:21:21Z", duration: 51),
    RawAppointment(patientName: "Martin White", patientDateOfBirth: "March 20, 1956", startTime: "2019-08-31T17:40:51Z", duration: 30),
    RawAppointment(patientName: "Nicole Martin", patientDateOfBirth: "April 10, 2006", startTime: "2019-08-26T17:44:15Z", duration: 22),
    RawAppointment(patientName: "Stephen Wilson", patientDateOfBirth: "July 31, 1955", startTime: "2019-08-24T13:18:06Z", duration: 23),
    RawAppointment(patientName: "Thomas Thompson", patientDateOfBirth: "January 7, 2016", startTime: "2019-09-01T16:40:24Z", duration: 34),
    RawAppointment(patientName: "Sherry White", patientDateOfBirth: "May 29, 2010", startTime: "2019-08-31T16:40:01Z", duration: 59),
    RawAppointment(patientName: "Janna Harris", patientDateOfBirth: "October 27, 1940", startTime: "2019-09-01T20:26:05Z", duration: 12),
    RawAppointment(patientName: "Brittany Johnson", patientDateOfBirth: "June 8, 1988", startTime: "2019-09-03T18:49:33Z", duration: 32),
    RawAppointment(patientName: "Jim Williams", patientDateOfBirth: "October 26, 2015", startTime: "2019-09-04T20:58:10Z", duration: 10),
    RawAppointment(patientName: "Sherry Rodriguez", patientDateOfBirth: "January 26, 2009", startTime: "2019-08-26T20:45:27Z", duration: 55),
    RawAppointment(patientName: "Sherry Allen", patientDateOfBirth: "February 27, 1976", startTime: "2019-09-04T19:50:16Z", duration: 23),
    RawAppointment(patientName: "Abuzer Wilson", patientDateOfBirth: "September 9, 1954", startTime: "2019-09-05T15:29:37Z", duration: 11),
    RawAppointment(patientName: "Martin Williams", patientDateOfBirth: "September 7, 1987", startTime: "2019-08-27T15:24:46Z", duration: 1),
    RawAppointment(patientName: "Abuzer Davis", patientDateOfBirth: "April 28, 1991", startTime: "2019-08-29T15:48:03Z", duration: 3),
    RawAppointment(patientName: "Janna Rodriguez", patientDateOfBirth: "August 10, 1969", startTime: "2019-08-27T18:07:45Z", duration: 26)
]

// Question 1
// What is the average duration of all the appointments?

// Question 2
// Find all of the appointments with patients under 10 years old

// Question 3
// Design new data structs that can be used in an application

// Question 4
// Please transform the raw appointments into the new data structs

// Question 5
// How many patients have overlapping appointments?
