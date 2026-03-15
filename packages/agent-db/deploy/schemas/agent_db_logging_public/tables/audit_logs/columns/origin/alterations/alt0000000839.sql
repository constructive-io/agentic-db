-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/origin/alterations/alt0000000839
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/origin/column


COMMENT ON COLUMN agent_db_logging_public.audit_logs.origin IS E'Request origin (domain) where the auth event occurred';

