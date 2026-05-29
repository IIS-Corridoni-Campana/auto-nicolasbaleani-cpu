-- crea_tabelle.sql

CREATE TABLE Costruttore (
    id_costruttore INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    nazione TEXT NOT NULL,
    citta_sede TEXT NOT NULL
);

CREATE TABLE Auto (
    targa TEXT PRIMARY KEY,
    modello TEXT NOT NULL,
    cilindrata INTEGER NOT NULL,
    alimentazione TEXT NOT NULL,
    tipo_auto TEXT NOT NULL,
    anno_produzione INTEGER NOT NULL,
    disponibile INTEGER NOT NULL,

    id_costruttore INTEGER NOT NULL,

    FOREIGN KEY (id_costruttore)
        REFERENCES Costruttore(id_costruttore)
);

CREATE TABLE Cliente (
    codice_fiscale TEXT PRIMARY KEY,
    nome TEXT NOT NULL,
    cognome TEXT NOT NULL,
    telefono TEXT,
    data_nascita DATE NOT NULL
);

CREATE TABLE Patente (
    numero_patente TEXT PRIMARY KEY,
    tipo_patente TEXT NOT NULL,
    data_rilascio DATE NOT NULL,
    data_scadenza DATE NOT NULL,

    codice_fiscale TEXT UNIQUE NOT NULL,

    FOREIGN KEY (codice_fiscale)
        REFERENCES Cliente(codice_fiscale)
);

CREATE TABLE Noleggio (
    id_noleggio INTEGER PRIMARY KEY AUTOINCREMENT,
    data_inizio DATE NOT NULL,
    data_fine DATE NOT NULL,
    costo_totale REAL NOT NULL,

    targa TEXT NOT NULL,
    codice_fiscale TEXT NOT NULL,

    FOREIGN KEY (targa)
        REFERENCES Auto(targa),

    FOREIGN KEY (codice_fiscale)
        REFERENCES Cliente(codice_fiscale)
);