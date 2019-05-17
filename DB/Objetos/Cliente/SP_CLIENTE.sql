if exists (select * from sysobjects where id = object_id('dbo.SP_CLIENTE'))    drop PROCEDURE dbo.SP_CLIENTE 
GO 

CREATE PROCEDURE dbo.SP_CLIENTE (@idCliente    INT,    
                                 @CPF          VARCHAR(14),    
                                 @RG           VARCHAR(12),    
                                 @Bairro       VARCHAR(50),    
                                 @Telefone     VARCHAR(11),    
                                 @Data_Nasc    DATETIME,    
                                 @CEP          VARCHAR(9),    
                                 @Endereco     VARCHAR(255),    
                                 @Num_Endereco INT,     
                                 @Cidade       VARCHAR(50),    
                                 @UF           VARCHAR(2),    
                                 @Complemento  VARCHAR(255),    
                                 @Nome         VARCHAR(50),    
                                 @Email        VARCHAR(50),    
                                 @bloqueado    VARCHAR(1),    
                                 @operacao     VARCHAR(1)) AS    
 BEGIN     
  -- SELECT    
  IF (@operacao = 'S')    
  BEGIN    
   IF (@idCliente IS NULL)    
   BEGIN    
    SELECT * FROM   dbo.CLIENTE     
   END    
   ELSE IF (@idCliente IS NOT NULL)    
     BEGIN    
        SELECT * FROM dbo.CLIENTE WHERE  IdCliente = @idCliente    
     END    
  END    
    
    
  -- INSERT     
  IF (@operacao = 'I')    
  BEGIN    
   INSERT INTO dbo.CLIENTE (CPF,RG,Bairro,Telefone,Data_Nasc,CEP,Endereco,Num_Endereco,Cidade,UF,Complemento,Nome,Email,bloqueado)    
   VALUES (@CPF,@RG,@Bairro,@Telefone,@Data_Nasc,@CEP,@Endereco,@Num_Endereco, @Cidade,@UF,@Complemento,@Nome,@Email,@bloqueado)    
  END    
    
    
  -- UPDATE     
  IF (@operacao = 'U')    
  BEGIN    
   UPDATE  dbo.CLIENTE    
   SET     CPF          = @CPF,    
           RG           = @RG,    
           Bairro       = @Bairro,    
           Telefone     = @Telefone,    
           Data_Nasc    = @Data_Nasc,    
           CEP          = @CEP,    
           Endereco     = @Endereco,    
           Num_Endereco = @Num_Endereco,     
           Cidade       = @Cidade,    
           UF           = @UF,    
           Complemento  = @Complemento,    
           Nome         = @Nome,    
           Email        = @Email,    
           bloqueado    = @bloqueado    
   WHERE   IdCliente = @idCliente    
  END    
    
  -- DELETE    
  IF (@operacao = 'D')    
  BEGIN    
   DELETE dbo.CLIENTE    
   FROM   dbo.CLIENTE    
   WHERE  IdCliente = @idCliente    
  END    
    
 END
GO