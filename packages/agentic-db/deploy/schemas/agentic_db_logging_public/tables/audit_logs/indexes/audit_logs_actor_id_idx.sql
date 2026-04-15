-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/indexes/audit_logs_actor_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/actor_id/column


CREATE INDEX audit_logs_actor_id_idx ON agentic_db_logging_public.audit_logs USING BTREE ( actor_id );

