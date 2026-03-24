-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/indexes/audit_logs_event_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/event/column


CREATE INDEX audit_logs_event_idx ON agentic_db_logging_public.audit_logs USING BTREE ( event );

