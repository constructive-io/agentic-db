-- Deploy: schemas/agentic_db_app_public/tables/execution_log/indexes/execution_logs_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/entity_id/column


CREATE INDEX execution_logs_entity_id_idx ON agentic_db_app_public.execution_log USING BTREE ( entity_id );

