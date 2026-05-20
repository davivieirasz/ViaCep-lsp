Definir Alfa aHTTP;
Definir Alfa aRetorno;
Definir Alfa aCEP;
Definir Alfa aURL;
Definir Alfa aCod;
Definir Alfa aConvertido;
Definir Numero nCEP;
Definir Numero nTipSai;

EntradaValor("Consultar CEP", "Digite o CEP", 1, "zzzzzzz9", "", 0, aCEP, nCEP, nTipSai);

@usuário cancelou@
Se (nTipSai <> 1)
{
   Cancel(1);
}

@CEP vazio@
Se (nCEP = 0)
{
   Mensagem(Erro, "Informe um CEP válido.");
   Cancel(1);
}

IntParaAlfa(nCEP, aCEP);

aURL = "https://viacep.com.br/ws/" + aCEP + "/json/";

HttpObjeto(aHTTP);

HttpGet(aHTTP, aURL, aRetorno);

@Padrão de codificação de caracteres (charset)@
aCod = "WINDOWS-1252";

@Altera a codificação de um texto contido em uma variável@
ConverteCodificacaoString(aRetorno, aCod, aConvertido);

Mensagem(Retorna, aConvertido);

nMensagem =  Mensagem(Retorna, "Deseja Continuar?  [&Sim, &Não]"); 

Se (nMensagem = 0)  
{ 
  Regra (61);
};  
