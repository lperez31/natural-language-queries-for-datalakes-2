CREATE TABLE [Invoice]
(
    [InvoiceId] INTEGER  NOT NULL,
    [CustomerId] INTEGER  NOT NULL,
    [InvoiceDate] DATETIME  NOT NULL,
    [BillingAddress] NVARCHAR(70),
    [BillingCity] NVARCHAR(40),
    [BillingState] NVARCHAR(40),
    [BillingCountry] NVARCHAR(40),
    [BillingPostalCode] NVARCHAR(10),
    [Total] NUMERIC(10,2)  NOT NULL,
    CONSTRAINT [PK_Invoice] PRIMARY KEY  ([InvoiceId]),
    FOREIGN KEY ([CustomerId]) REFERENCES [Customer] ([CustomerId]) 
                ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- <METADATA CHANNEL="sqlite" DATABASE="Chinook.db" TABLE="Invoice">
-- - Description: Contains information about customer invoices or orders.
-- - Data:
-- -- CustomerId: The unique identifier of the customer who placed the order
-- -- InvoiceDate: The date the invoice was created
-- -- BillingAddress: The billing address for the invoice
-- -- BillingCity: The city of the billing address
-- -- BillingState: The state or province of the billing address
-- -- BillingCountry: The country of the billing address
-- -- BillingPostalCode: The postal code or zip code of the billing address
-- -- Total: The total amount of the invoice
-- - Relationships:
-- -- (Invoice.CustomerId → Customer.CustomerId) - Table containing information about customers
-- </METADATA>

-- File: Chinook.Invoice.txt 
-- InvoiceId: INTEGER FROM 1 TO 412 like [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
-- CustomerId: INTEGER FROM 1 TO 59 like [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
-- InvoiceDate: TEXT FROM 2021-01-01 00:00:00 TO 2025-12-22 00:00:00 like ['2025-12-04 00:00:00', '2025-11-03 00:00:00', '2025-10-03 00:00:00', '2025-09-02 00:00:00', '2025-08-02 00:00:00', '2025-07-02 00:00:00', '2025-06-01 00:00:00', '2025-05-01 00:00:00', '2025-03-31 00:00:00', '2025-02-28 00:00:00']
-- BillingAddress: TEXT FROM 1 Infinite Loop TO Via Degli Scipioni, 43 like ['Via Degli Scipioni, 43', 'Ullevålsveien 14', 'Theodor-Heuss-Straße 34', 'Tauentzienstraße 8', 'Sønder Boulevard 51', 'Rua dos Campeões Europeus de Viena, 4350', 'Rua da Assunção 53', 'Rua Dr. Falcão Filho, 155', 'Rotenturmstraße 4, 1010 Innere Stadt', 'Rilská 3174/6']
-- BillingCity: TEXT FROM Amsterdam TO Yellowknife like ['São Paulo', 'Prague', 'Paris', 'Mountain View', 'London', 'Berlin', 'Yellowknife', 'Winnipeg', 'Warsaw', 'Vienne']
-- BillingState: TEXT FROM AB TO WI like [None, 'SP', 'CA', 'ON', 'WI', 'WA', 'VV', 'UT', 'TX', 'RM']
-- BillingCountry: TEXT FROM Argentina TO United Kingdom like ['USA', 'Canada', 'France', 'Brazil', 'Germany', 'United Kingdom', 'Portugal', 'Czech Republic', 'India', 'Sweden']
-- BillingPostalCode: TEXT FROM 00-358 TO X1A 1N6 like [None, 'X1A 1N6', 'V6C 1G8', 'T6G 2C7', 'SW1V 3EN', 'R3L 2B9', 'N1 5LH', 'M6J 1V1', 'K2P 1L7', 'H2G 1A7']
-- Total: NUMERIC FROM 0.99 TO 25.86 like [1.98, 3.96, 5.94, 0.99, 8.91, 13.86, 3.98, 1.99, 21.86, 18.86]
-- 
