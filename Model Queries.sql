--Query 1 Show the appointments for a doctor for tomorrow.
Select		d.DentistID, d.FName as DentistFirstName, d.LName as DentistLastName, 
			p.PatientID, p.PatientFName, p.PatientLName, 
			a.AppointmentDate, a.AppointmentTime
From		Appointment a, Dentist d, Patient p
Where		d.DentistID = a.DentistID and p.PatientID = a.PatientID and 
			AppointmentDate=CONVERT(DATE,(DATEADD(DAY,1,GETDATE())))and d.DentistID=2;

--Query 2 Show me a patients next appointment.
Select		top 1 *
From		Appointment
Where		AppointmentDate>GETDATE() and PatientID=5
Order by	AppointmentDate

--Query 3 How many teeth does a patient have.
Select		p.PatientFName,p.PatientLName,Count(pt.PatientID) As NumberOfTeeth
From		PatientTooth pt, patient p
Where		pt.IsToothPresent = 'Y' AND p.PatientID=pt.PatientID
Group by	pt.PatientID,p.PatientFName,p.PatientLName


--Query 4 Show the treatments associated with an appointment
Select		ph.AppointmentID, ph.TreatmentID, t.Description, 
			p.PatientFname, p.PatientLName, a.AppointmentDate, a.AppointmentTime
From		PatientHistory ph, Patient p, Treatment t, Appointment a
Where		ph.AppointmentID = a.AppointmentID and ph.TreatmentID = t.TreatmentID and p.Patientid = ph.PatientID
			and ph.AppointmentID = 1

--Query 5 Show an invoice
Select		i.InvoiceID, t.TreatmentID, t.Description, p.PatientFName, p.PatientLName,
			i.Amount, i.Date
From		Treatment t, Invoice i, Patient p
Where		i.TreatmentID = t.TreatmentID and i.PatientID = p.PatientID and i.Date < GETDATE(); 

--Query 6 Show the treatments that make up an invoice
Select		i.InvoiceID, ph.TreatmentID, t.Description
From		PatientHistory ph, Invoice i, Treatment t
Where		ph.PatientID = i.PatientID and ph.TreatmentID = t.TreatmentID and i.InvoiceID = 1



