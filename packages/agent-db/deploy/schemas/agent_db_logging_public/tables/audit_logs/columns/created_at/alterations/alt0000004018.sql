-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/created_at/alterations/alt0000004018
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/created_at/column


COMMENT ON COLUMN "agent_db_logging_public".audit_logs.created_at IS 'Timestamp when the audit event was recorded';

