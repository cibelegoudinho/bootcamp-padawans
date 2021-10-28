Algoritmo "ONGarniza"

Var
   opcao, opcaoAgenda, i, j: caracter
   nomeOng, local, hora, doacoes, telefoneContato : caracter
   nome, email, cnpjCad, cnpjAcesso, senhaCad, senhaAcesso, endereco, telefone: caracter
Inicio

   funcao menu(): caracter
   inicio
      escreval("1 - Cadastrar ONG's")
      escreval("2 - Acesso ONG's")
      escreval("3 - Próximos eventos")
      escreval("4 - Agenda")
      escreval("0 - Sair")
      escreva("Escolha uma opcao: ")
      leia(i)
      retorne i
   fimFuncao
   
   funcao menuAgenda(): caracter
   inicio
      escreval("1 - visualizar eventos")
      escreval("2 - cadastrar evento")
      escreval("3 - Retornar ao menu")
      escreva("Escolha uma opcao: ")
      leia(j)
      retorne j
   fimFuncao
   
   procedimento cadastra()
   inicio
       escreva("Digite o nome da ONG: ")
       leia(nome)
       escreva("Digite o CNPJ: ")
       leia(cnpjCad)
       escreva("Digite o email: ")
       leia(email)
       escreva("Digite o endereco: ")
       leia(endereco)
       escreva("Digite o telefone: ")
       leia(telefone)
       escreva("Digite uma senha: ")
       leia(senhaCad)
       escreval("Fim de cadastro.")
       escreval("")
   fimProcedimento
   
   procedimento acesso()
    inicio
      escreva("Insira o CNPJ: ")
      leia(cnpjAcesso)
      escreva("Insira a senha: ")
      leia(senhaAcesso)
      //logica da senha
      se(cnpjCad = cnpjAcesso) entao
         se(senhaCad = senhaAcesso) entao
           escreval("Acesso bem sucedido")
         senao
           escreval("Usuario ou senha invalidos")
         fimSe
         senao
         escreval("Usuario ou senha invalidos")
      fimSe
      escreval("")
   fimProcedimento

   procedimento eventos()
   inicio
     escreval("*Listagem dos eventos*")
   fimProcedimento
   
   procedimento agenda()
   inicio
      opcaoAgenda <- menuAgenda()
      enquanto (opcaoAgenda <> "3") faca
      escolha (opcaoAgenda)
      caso "1"
         eventos()
         opcaoAgenda <- "3"
      caso "2"
       escreva("Digite o Nome da ONG: ")
       leia(nomeOng)
       escreva("Digite o Local: ")
       leia(local)
       escreva("Digite o horário: ")
       leia(hora)
       escreva("Digite o Doações: ")
       leia(doacoes)
       escreva("Digite o telefone para contato: ")
       leia(telefoneContato)
       escreva("Evento agendado")
       opcaoAgenda <- "3"
      fimEscolha
      fimEnquanto
   fimProcedimento

   opcao <- menu()
   enquanto (opcao <> "0") faca

    escolha(opcao)
     caso "1"
     cadastra()
     opcao <- menu()

     caso "2"
     acesso()
     opcao <- menu()
     
     caso "3"
     eventos()
     opcao <- menu()
     
     caso "4"
     agenda()
     opcao <- menu()
    fimEscolha
   fimEnquanto

Fimalgoritmo