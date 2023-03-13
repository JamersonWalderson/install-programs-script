# install-programs-script
Este script tem como objetivo automatizar a instalação de diversos aplicativos e dependências no sistema operacional Linux. Para executar o script, siga as instruções abaixo:

- Abra o terminal e navegue até o diretório onde o script foi salvo.
Execute o seguinte comando para dar permissão de execução ao script:
<pre>
chmod +x nome_do_script.sh
</pre>

- Em seguida, execute o script com o seguinte comando:
<pre>
./script.sh
</pre>

- Aguarde até que o script termine de executar.
- 
Caso ocorra algum erro durante a execução, o script irá exibir uma mensagem de erro na tela indicando qual foi o problema.

# Pré-requisitos
Antes de executar este script, é necessário ter o Linux Mint instalado no computador e uma conexão com a internet. O script foi testado na versão 20.1 do Linux Mint.

# O que o script faz
O script tem como objetivo instalar diversos aplicativos e dependências no sistema operacional Linux. A lista de aplicativos a serem instalados está definida no array flatpaklist. Além disso, o script também verifica se o Flatpak está instalado e configurado corretamente, e atualiza os pacotes Flatpak. Por fim, o script também instala o Git, uma ferramenta de controle de versão muito utilizada por desenvolvedores.

# Observações
- Este script foi escrito com base em testes realizados na versão 20.1 do Linux Mint. Caso você esteja usando uma versão diferente do sistema operacional, pode ser necessário fazer ajustes no script para que ele funcione corretamente.
- O script pode demorar alguns minutos para ser executado, dependendo da velocidade da sua conexão com a internet e do hardware do seu computador.
