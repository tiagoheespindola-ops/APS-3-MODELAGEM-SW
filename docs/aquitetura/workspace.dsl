workspace "Sistema de Alertas de Desperdicio" {

    model {
        gestor = person "Gestor do Campus" {
            description "Responsavel por investigar os alertas."
        }

        sistema = softwareSystem "Sistema de Monitoramento e Alertas" {

            interface = container "Interface Web" {
                technology "React"
                description "Apresenta alertas e ocorrencias."
            }

            api = container "API" {
                technology "Node.js / REST"
                description "Recebe e processa os dados."
            }

            monitor = container "Servico de Monitoramento" {
                technology "Node.js"
                description "Analisa consumo, presenca e sessoes."
            }

            notificacao = container "Servico de Notificacao" {
                technology "Node.js"
                description "Envia alertas para a gestao."
            }

            banco = container "Banco de Dados" {
                technology "PostgreSQL 16"
                description "Armazena telemetria e ocorrencias."
            }

            fila = container "Mensageria" {
                technology "RabbitMQ / AMQP"
                description "Distribui os alertas."
            }
        }

        sensores = softwareSystem "Sensores IoT" {
            description "Coletam consumo eletrico e presenca."
        }

        gestor -> sistema.interface "Consulta alertas" "HTTPS"
        sensores -> sistema.api "Envia dados" "MQTT"
        sistema.interface -> sistema.api "Solicita informacoes" "REST / HTTPS"
        sistema.api -> sistema.monitor "Encaminha telemetria" "REST"
        sistema.monitor -> sistema.banco "Consulta e registra dados" "SQL"
        sistema.monitor -> sistema.fila "Publica alertas" "AMQP"
        sistema.fila -> sistema.notificacao "Entrega mensagens" "AMQP"
        sistema.notificacao -> sistema.banco "Registra notificacoes" "SQL"
        sistema.notificacao -> sistema.interface "Disponibiliza alertas" "HTTPS"
    }

    views {
        container sistema "C4Containers" {
            include *
            autoLayout lr
        }

        theme default
    }
}
