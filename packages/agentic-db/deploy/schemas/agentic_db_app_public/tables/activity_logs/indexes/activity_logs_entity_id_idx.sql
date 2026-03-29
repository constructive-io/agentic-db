-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/indexes/activity_logs_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX activity_logs_entity_id_idx ON agentic_db_app_public.activity_logs USING BTREE ( entity_id );

