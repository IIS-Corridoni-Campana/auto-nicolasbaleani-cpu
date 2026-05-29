-- USA QUESTO FILE PER CREARE LE QUERY SQL
SELECT * FROM Auto;
SELECT *
FROM Auto
WHERE disponibile = 1;
SELECT
    Cliente.nome,
    Cliente.cognome,
    Auto.modello,
    Noleggio.data_inizio,
    Noleggio.data_fine

FROM Noleggio

JOIN Cliente
ON Noleggio.codice_fiscale = Cliente.codice_fiscale

JOIN Auto
ON Noleggio.targa = Auto.targa;