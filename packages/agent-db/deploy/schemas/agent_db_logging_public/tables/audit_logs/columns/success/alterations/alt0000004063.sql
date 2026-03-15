-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/success/alterations/alt0000004063
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/success/column


COMMENT ON COLUMN "agent_db_logging_public".audit_logs.success IS 'Whether the authentication attempt succeeded';

