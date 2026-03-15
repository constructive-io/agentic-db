-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/indexes/audit_logs_event_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/event/column


CREATE INDEX audit_logs_event_idx ON agent_db_logging_public.audit_logs USING BTREE ( event );

