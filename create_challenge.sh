#!/bin/bash

# Script para criar nova estrutura de desafio
if [ $# -eq 0 ]; then
    echo "Uso: ./create_challenge.sh <numero_desafio> <nome_desafio>"
    exit 1
fi

CHALLENGE_NUM=$1
CHALLENGE_NAME=$2
CHALLENGE_DIR="projetos/desafio_$(printf "%02d" $CHALLENGE_NUM)"

# Criar estrutura de pastas
mkdir -p "$CHALLENGE_DIR"/{src,img,data,notebooks}

# Criar arquivos base
cat > "$CHALLENGE_DIR/README.md" << EOF
# Desafio $(printf "%02d" $CHALLENGE_NUM) - $CHALLENGE_NAME

## 📋 Descrição
Descrição detalhada do desafio e objetivos.

## 🎯 Objetivos
- [ ] Objetivo 1
- [ ] Objetivo 2
- [ ] Objetivo 3

## 🛠️ Tecnologias Utilizadas
- Python 3.x
- Bibliotecas específicas

## 📁 Estrutura do Projeto
\`\`\`
desafio_XX/
├── README.md
├── src/
│   └── main.py
├── tests/
│   └── test_main.py
├── data/              # Se aplicável
├── notebooks/         # Se aplicável
└── requirements.txt
\`\`\`

## 🚀 Como Executar

### Pré-requisitos
- Python 3.11+
- Dependências listadas em requirements.txt

### Instalação
\`\`\`bash
cd projetos/desafio_XX
pip install -r requirements.txt
\`\`\`

### Execução
\`\`\`bash
python src/main.py
\`\`\`

### 📊 Resultados
* Descreva os resultados obtidos e aprendizados.

###🔗 Links Úteis

* Documentação relevante
* Tutoriais utilizados

###📝 Notas
* Observações importantes e aprendizados durante o desenvolvimento.

EOF

# Criar arquivo main.py básico
cat > "$CHALLENGE_DIR/src/main.py" << EOF
"""
Desafio $(printf "%02d" $CHALLENGE_NUM) - $CHALLENGE_NAME
"""

def main():
    print("Desafio $(printf "%02d" $CHALLENGE_NUM) - $CHALLENGE_NAME")
    # Seu código aqui

if __name__ == "__main__":
    main()
EOF

# Criar requirements.txt básico
cat > "$CHALLENGE_DIR/requirements.txt" << EOF
# Dependências específicas do desafio
pandas>=2.0.0
numpy>=1.24.0
matplotlib>=3.7.0
EOF

echo "✅ Desafio $(printf "%02d" $CHALLENGE_NUM) criado em $CHALLENGE_DIR"