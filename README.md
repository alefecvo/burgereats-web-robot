# Projeto de Automação de Testes Web com RobotFramework

Este é um exemplo básico de um projeto de automação de testes web usando o Robot Framework e SeleniumLibrary para execução no Chrome, para automação de testes do site https://buger-eats.vercel.app/.

Vamos la...

## Estrutura do Projeto

- `pages/`: Contém arquivos com locators e keyword para interagir com elementos da página Web.
- `steps/`: Contém arquivos com as keywords com os passos de execução, chamando as Pages.
- `tests/`: Contém os arquivos de Tests com cenários de testes a serem executados, chamado os Steps.
- `resources/`: Contém os arquivos de recursos, para inicialização dos testes, abertura e fechamento do browser Chrome.
- `results/`: Contém os resultados dos testes.
- `requirements.txt`: Lista de dependências do projeto.
- `README.md`: Documentação do projeto.

## Como Executar

1. Instale as dependências:
    ```bash
    pip3 install -r requirements.txt
    ```

2. Execute os testes:
    ```bash
    robot -d results tests/
    ```

3. Execute os testes informando Browser ou Handless:
    ```bash
    robot -v  HEADLESS:S -v BROWSER:chrome -d results tests/
    ```

    ```bash
    robot -v  HEADLESS:N -v BROWSER:firefox -d results tests/
    ```


