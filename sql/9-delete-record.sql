USE metro_cdmx;

SELECT id FROM stations WHERE name = 'Merced';
SELECT id FROM stations WHERE name = 'Lázaro de Guerrero';
DELETE FROM stations WHERE id IN (164, 165);
DELETE FROM stations WHERE name = 'Benito Cárdenas';

-- mysql -u toreohm -p < sql/9-delete-record.sql