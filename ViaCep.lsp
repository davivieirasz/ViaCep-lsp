Definir Alfa aHTTP;
Definir Alfa aRetorno;
Definir Alfa aCEP;
Definir Alfa aURL;
Definir Alfa aCod;
Definir Alfa aConvertido;

@Padrão de codificação de caracteres (charset)@
aCod = "WINDOWS-1252";

@CEP para consulta@
aCEP = "88880000";

aURL = "https://viacep.com.br/ws/" + aCEP + "/json/";

@cria objeto HTTP@
HttpObjeto(aHTTP);

@chamada GET@
HttpGet(aHTTP, aURL, aRetorno);

@Altera a codificação de um texto contido em uma variável@
ConverteCodificacaoString(aRetorno, aCod, aConvertido);

@Retorna as informações da API@
Mensagem(Retorna, aConvertido);