# 🚀 Passo a Passo para Utilização

### Etapa 1: Criando um Novo Repositório a Partir do Template

1.  **Navegue até o seu template no GitHub**:
    Vá para a página principal do seu repositório de template no GitHub (ex: `https://github.com/Jcnok/Template-bootcamp`).

2.  **Use o template para criar um novo repositório**:
    No canto superior superior direito da página do repositório, clique no botão verde **"Use this template"**.

3.  **Configure o novo repositório**:
    * **Owner**: Selecione a conta ou organização onde o novo repositório será criado.
    * **Repository name**: Defina o nome do seu novo repositório de bootcamp. Siga o padrão recomendado: `bootcamp-[nome]-[ano]` (ex: `bootcamp-python-data-science-2024`).
    * **Description (optional)**: Adicione uma breve descrição.
    * **Public ou Private**: Escolha a visibilidade do seu repositório.
    * Clique em **"Create repository from template"**.

4.  **Clone o novo repositório localmente**:
    Após a criação, clone o novo repositório para sua máquina. Abra seu terminal ou Git Bash e execute:

    ```bash
    git clone [https://github.com/seu-usuario/nome-do-seu-novo-bootcamp.git](https://github.com/seu-usuario/nome-do-seu-novo-bootcamp.git)
    cd nome-do-seu-novo-bootcamp
    ```

---

### Etapa 2: Personalizando o Repositório Base

Agora que você tem o repositório clonado, é hora de personalizá-lo para o seu bootcamp específico:

1.  **Edite o `README.md` principal**:
    Abra o arquivo `README.md` na raiz do seu repositório. **Atualize a descrição, objetivos de aprendizado e a tabela de desafios** para refletir o conteúdo do seu bootcamp.

2.  **Ajuste as dependências**:
    * **Se estiver usando Poetry**: Abra o arquivo `pyproject.toml`. Na seção `[tool.poetry.dependencies]`, **adicione ou remova as bibliotecas Python** necessárias para o seu bootcamp. Faça o mesmo para as dependências de desenvolvimento em `[tool.poetry.group.dev.dependencies]`. Após as alterações, execute `poetry install` no terminal para instalar as novas dependências.
    * **Se estiver usando `requirements.txt`**: Abra o arquivo `requirements.txt`. **Liste todas as bibliotecas Python e suas versões** necessárias, uma por linha. Por exemplo:
        ```
        pandas==2.0.0
        numpy==1.24.0
        matplotlib==3.7.0
        ```
        Para instalar, execute `pip install -r requirements.txt`.

3.  **Verifique o `.gitignore` e a `LICENSE`**:
    Certifique-se de que o arquivo `.gitignore` está configurado para ignorar arquivos e pastas que não devem ser versionados. Se precisar, **atualize o arquivo `LICENSE`** com a licença apropriada para o seu bootcamp.

---

### Etapa 3: Utilizando o Script `create_challenge.sh`

O script `create_challenge.sh` é uma ferramenta poderosa para automatizar a criação da estrutura de pastas e arquivos para cada novo desafio do seu bootcamp.

#### **O que o script faz?**

O `create_challenge.sh` cria automaticamente a seguinte estrutura dentro da pasta `projetos/` para um novo desafio:

```
projetos/
└── desafio_XX/
├── README.md           # Um README.md pré-preenchido para o desafio
├── src/                # Pasta para o código principal do desafio
│   └── main.py         # Um arquivo main.py básico
├── img/                # Pasta para imagens do desafio
├── data/               # Pasta opcional para dados do desafio
├── notebooks/          # Pasta opcional para notebooks Jupyter
└── requirements.txt    # Um requirements.txt básico para as dependências do desafio
```

Ele também preenche o `README.md`, `main.py`, `requirements.txt` com um conteúdo inicial, economizando tempo e garantindo a padronização.

#### **Como usar o `create_challenge.sh` em detalhes?**

1.  **Certifique-se de que o script é executável**:
    No seu terminal, navegue até a raiz do seu repositório de bootcamp. O arquivo `create_challenge.sh` deve estar lá. Caso ainda não tenha permissão de execução, conceda-a com:

    ```bash
    chmod +x create_challenge.sh
    ```

2.  **Execute o script para criar um novo desafio**:
    O script aceita dois argumentos: o **número do desafio** e o **nome do desafio**.

    **Sintaxe**:

    ```bash
    ./create_challenge.sh <numero_desafio> <nome_do_desafio>
    ```

    * `<numero_desafio>`: Um número inteiro para o desafio (ex: `1`, `2`, `10`). O script formatará para `01`, `02`, etc.
    * `<nome_do_desafio>`: O nome do desafio (ex: "Análise de Dados com Pandas", "Modelagem Preditiva"). **Use aspas se o nome tiver espaços.**

    **Exemplos de uso**:

    * Para criar o **Desafio 01 - Análise de Dados**:
        ```bash
        ./create_challenge.sh 1 "Análise de Dados"
        ```

    * Para criar o **Desafio 05 - Construção de Modelos de ML**:
        ```bash
        ./create_challenge.sh 5 "Construção de Modelos de ML"
        ```

3.  **Verifique a estrutura criada**:
    Após a execução do script, você verá uma mensagem de confirmação como:
    `✅ Desafio 01 criado em projetos/desafio_01`

    Verifique a pasta `projetos/` para confirmar que a nova estrutura de desafio foi criada conforme esperado.

4.  **Comece a desenvolver o desafio**:
    Navegue até a pasta do desafio recém-criado (ex: `cd projetos/desafio_01`) e comece a trabalhar no seu código em `src/main.py`, adicione dados em `data/` se necessário, e escreva seus testes em `tests/test_main.py`. Lembre-se de instalar as dependências específicas do desafio listadas em `requirements.txt` dentro da pasta do desafio.

---

### 💡 Dicas Adicionais

* **Commit frequente**: Faça commits regulares no Git para registrar seu progresso.
* **Atualize o `README.md` principal**: Sempre que adicionar um novo desafio, lembre-se de atualizar a tabela de `📁 Estrutura dos Projetos` no `README.md` principal para refletir o novo desafio e seu status.
* **Documente seus aprendizados**: Use a seção `📝 Notas` no `README.md` de cada desafio para registrar observações importantes e aprendizados.
