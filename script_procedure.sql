DELIMITER $$
CREATE PROCEDURE povoar_autor(IN caminho VARCHAR(100), IN tabela VARCHAR(30))
BEGIN

    SET @query = CONCAT('
    
        LOAD DATA INFILE ''', caminho,'''
        INTO TABLE '''tabela,'''
        FIELD TERMINED BY '',''
        ENCLOSED BY ''"''
        LINES TERMINED BY ''\N''
        IGNORE 1 ROWS
    ');

    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END $$ 
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE povoar_autor(IN caminho VARCHAR(100), IN tabela VARCHAR(30))
BEGIN

    SET @query = CONCAT('
    
        LOAD DATA INFILE ''', caminho,'''
        INTO TABLE '''tabela,'''
        FIELD TERMINED BY '',''
        ENCLOSED BY ''"''
        LINES TERMINED BY ''\N''
        IGNORE 1 ROWS
    ');

    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END $$ 
DELIMITER ;