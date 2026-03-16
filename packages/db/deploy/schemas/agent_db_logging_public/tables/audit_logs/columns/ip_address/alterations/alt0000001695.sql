-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/ip_address/alterations/alt0000001695
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/ip_address/column


COMMENT ON COLUMN "agent_db_logging_public".audit_logs.ip_address IS 'IP address of the client that initiated the auth event';

