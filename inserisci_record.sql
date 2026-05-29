-- inserisci_record.sql

INSERT INTO Costruttore(nome, nazione, citta_sede)
VALUES
('Fiat', 'Italia', 'Torino'),
('BMW', 'Germania', 'Monaco');

INSERT INTO Auto
VALUES
('AB123CD', 'Panda', 1200, 'Benzina',
'Citycar', 2022, 1, 1),

('EF456GH', 'X5', 3000, 'Diesel',
'SUV', 2023, 1, 2);

INSERT INTO Cliente
VALUES
('RSSMRA80A01H501Z',
'Mario',
'Rossi',
'3331234567',
'1980-01-01');

INSERT INTO Patente
VALUES
('PAT12345',
'B',
'2015-06-01',
'2025-06-01',
'RSSMRA80A01H501Z');

INSERT INTO Noleggio
(data_inizio, data_fine, costo_totale,
 targa, codice_fiscale)

VALUES
('2026-05-01',
 '2026-05-10',
 450.00,
 'AB123CD',
 'RSSMRA80A01H501Z');