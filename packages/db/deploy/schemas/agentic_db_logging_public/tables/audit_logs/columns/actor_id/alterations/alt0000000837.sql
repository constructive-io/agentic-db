-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/actor_id/alterations/alt0000000837
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/actor_id/column


COMMENT ON COLUMN "agentic_db_logging_public".audit_logs.actor_id IS 'User who performed the authentication action';

