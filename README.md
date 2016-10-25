# BREG_MIPS
### Trabalho 5 de Organizacão e Arquitetura de Computadores

## Objetivo
Projetar, simular e sintetizar um banco de registradores similar ao utilizado no MIPS, no ambiente *Quartus* / *ModelSim-Altera*.

## Características da ULA
  - Uma entrada **opcode**, que indica a operação a ser realizada;
  - Duas entradas de dados: **A** e **B**;
  - Uma Saída de dados: **Z**;
  - Sinal **Zero**: detecta valor zero na saída Z;
  - Sinal **Overflow**: ativo quando a operação de soma ou subtração gerar resultado
  que ultrapasse o limite de representação em 32 bits;
  - Sinal **Vai**: indicação de vai-um no último bit da ULA;
  - Operações realizadas em **Complemento de 2**.
  
## Características do Banco de Registradores
  - 32 registradores de 32 bits cada;
  - Dois barramentos de leitura;
  - Um barramento para escrita de dado, que depende de habilitação;
  - Registrador 0 (índice zero) é constante, não pode ser alterado. Qualquer leitura deste registrador retorna o valor zero e escritas não afetam o seu valor.
  
## Gerando um arquivo TestBench pelo *Quartus II*
  - Vá em **Assignments->Settings->EDA Tool Settings->Simulation** e verifique a ferramenta que será utilzada para a simulação, especifique o diretório em que o *Test Bench* será gerado (padrão = *simulation\modelsim\*), e desligue a opção de *NativeLink*;
  - Clique em **Processing->Start->Start Test Bench Template Writer**;
  - Edite o aqruivo gerado no diretório especificado de acordo com suas necessidades.
  
## Simulação utilizando o *ModelSim*
  - Crie um projeto no menu **File->New->Project...**, adicione os arquivos **.VHD** e **.VHT** ao projeto criado;
  - Compile os arquivos selecionando no menu **Compile**, a opção **Compile Order**, e logo em seguida **Auto Generate**;
  - Inicialiaze a simulação clicando no menu **Simulate->Start Simulation...** e selecionando o *Test Bench* (arquivo **.VHT**) para a simulação;
  - Adicione os sinais desejados na **Wave** clicando com o botão direito no sinal, e logo depois em **Add to..->Wave->Signals in Design**.  
  - Clique em **View->Wave** para visualizar os sinais adicionados na tela;
  - Vá ao menu **Simulate** e clique em **Run**.
  
## Tutoriais utilizados
  - Código *"latch_ffd"* disponibilizado pelo Professor no ambiente *Moodle*.
  - https://pt.wikipedia.org/wiki/VHDL
  - https://www.altera.com/support/support-resources/design-examples/design-software/simulation/modelsim/simulation-manual-howto.html
  - https://www.youtube.com/watch?v=VTMelKXXmho


