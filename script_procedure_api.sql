DELIMITER $$
create procedure povoar (in autorId VARCHAR(11), in atrRna VARCHAR(13), in atrPnome VARCHAR(100), in atrUnome VARCHAR(100))
BEGIN
	INSERT INTO autor (atr_id,atr_rna,atr_pnome,atr_unome)
    VALUES (autorId, atrRna, atrPnome, atrUnome);
END $$
DELIMITER ;

DELIMITER $$
create procedure povoar_editora (in edtrid VARCHAR(10), in edtrcnpj VARCHAR(14), in edtrnome VARCHAR(50))
BEGIN
	INSERT INTO editora (edtr_id,edtr_cnpj,edtr_nome)
    VALUES (edtrid, edtrcnpj, edtrnome);
END $$
DELIMITER ;


DELIMITER $$
create procedure povoar_editora_autor (in autorId VARCHAR(11), in editoraId VARCHAR(10))
BEGIN
	INSERT INTO editora_has_autor (editora_edtr_id, autor_atr_id)
    VALUES (autorId, EditoraId);
END $$
DELIMITER ;


DELIMITER $$
create procedure povoar_emprestimo (IN socioId VARCHAR(10), IN exemplarId VARCHAR(100), IN dataEmprestimo DATE, IN dataDevolucao DATE)
BEGIN
	INSERT INTO emprestimo (socio_socio_id,exemplares_expl_id,emprt_data_emprestimo,emprt_data_devolucao)
    VALUES (socioId, exemplarId, dataEmprestimo, dataDevolucao);
END $$
DELIMITER ;

DELIMITER $$
create procedure povoar_emprestimo (IN socioId VARCHAR(10), IN exemplarId VARCHAR(100), IN dataEmprestimo DATE, IN dataDevolucao DATE)
BEGIN
	INSERT INTO emprestimo (socio_socio_id,exemplares_expl_id,emprt_data_emprestimo,emprt_data_devolucao)
    VALUES (socioId, exemplarId, dataEmprestimo, dataDevolucao);
END $$
DELIMITER ;

DELIMITER $$
create procedure povoar_socio (IN socioId VARCHAR(10), IN pNome VARCHAR(100), IN dataEmprestimo DATE, IN dataDevolucao DATE)
BEGIN
	INSERT INTO emprestimo (socio_socio_id,exemplares_expl_id,emprt_data_emprestimo,emprt_data_devolucao)
    VALUES (socioId, exemplarId, dataEmprestimo, dataDevolucao);
END $$
DELIMITER ;