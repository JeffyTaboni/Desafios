DECLARE @Potencia INT 
DECLARE @Valor VARCHAR(8)
DECLARE @PercorrendoValor INT 
DECLARE @Soma NUMERIC(20,8)
DECLARE @Item INT

SET @Soma = 0
SET @Valor = '11001001'
SET @Potencia = LEN(@Valor)-1
SET @PercorrendoValor = 1

WHILE NOT @Potencia < 0 
BEGIN
	SET @Item = SUBSTRING(@Valor,@PercorrendoValor,1)
	SET @PercorrendoValor = @PercorrendoValor + 1
	
	SET @Soma = @Soma + (POWER(2, @Potencia) * @Item)
	SET @Potencia = @Potencia-1
END

PRINT CONVERT(VARCHAR(30),@Soma)