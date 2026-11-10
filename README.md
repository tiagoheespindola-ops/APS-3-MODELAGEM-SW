# APS 3 — Emissão de Alertas de Desperdício

Curso: Engenharia de Software — 3º Período  
Disciplina: Modelagem de Software  
Instituição: UniSenai  
Docente: Prof. Sidney L. da Silva

## 1. Apresentação

Este projeto tem como objetivo desenvolver um sistema
para identificar desperdícios de energia elétrica
nos laboratórios do campus.

O sistema recebe informações dos sensores de consumo
elétrico e presença de pessoas. A partir desses dados,
verifica se existe consumo elevado em um laboratório
que não está sendo utilizado.

Quando identifica uma possível situação de desperdício,
o sistema registra a ocorrência e envia automaticamente
um alerta para a gestão do campus.

Assim, os responsáveis podem investigar o problema
e tomar as medidas necessárias.

## 2. Funcionamento

1. Os sensores coletam os dados.
2. O sistema recebe as informações.
3. Verifica se existe uma sessão ativa.
4. Analisa o consumo e a presença de pessoas.
5. Identifica possíveis desperdícios.
6. Registra a ocorrência.
7. Envia uma notificação para a gestão.

## 3. Tecnologias propostas

| Tecnologia | Utilização |
|---|---|
| React | Interface Web |
| Node.js | Processamento |
| PostgreSQL | Banco de dados |
| MQTT | Comunicação com sensores |
| RabbitMQ | Envio de alertas |
| ESP32 | Coleta de informações |

## 4. Artefatos de Modelagem

### 4.1 Diagrama de Sequência

Arquivo: `docs/diagramas/sequencia.mmd`

Representa a comunicação entre os sensores, o sistema,
o banco de dados e o serviço de notificações.

### 4.2 Diagrama de Atividades

Arquivo: `docs/diagramas/atividades.mmd`

Representa as etapas de coleta, análise dos dados
e envio dos alertas, incluindo a execução paralela.

### 4.3 Diagrama de Estados

Arquivo: `docs/diagramas/estados.mmd`

Representa os estados de uma ocorrência de desperdício,
desde sua identificação até sua resolução.

### 4.4 Arquitetura C4

Arquivo: `docs/arquitetura/workspace.dsl`

Apresenta os principais contêineres do sistema,
suas tecnologias e formas de comunicação.

## 5. Decisão Arquitetural

Arquivo: `docs/arquitetura/adr-0001.md`

Foi escolhido o RabbitMQ para realizar o envio
assíncrono de alertas, permitindo que o monitoramento
continue funcionando enquanto as notificações
são processadas.

## 6. Conclusão

O projeto apresenta uma solução para identificar
e comunicar possíveis desperdícios de energia
nos laboratórios do campus.

Com o uso de sensores e notificações automáticas,
a gestão poderá acompanhar as ocorrências e tomar
providências para evitar gastos desnecessários.

Os diagramas desenvolvidos ajudam a compreender
o funcionamento do sistema, a comunicação entre
os serviços e o ciclo de vida das ocorrências.

A documentação foi organizada utilizando
Diagramas como Código, facilitando sua manutenção
e futuras alterações.

---

APS 3 — Modelagem de Software
UniSenai — Engenharia de Software