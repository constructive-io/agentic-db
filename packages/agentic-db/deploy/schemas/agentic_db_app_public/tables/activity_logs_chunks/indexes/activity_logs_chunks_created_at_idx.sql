-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/indexes/activity_logs_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/created_at/column


CREATE INDEX activity_logs_chunks_created_at_idx ON "agentic_db_app_public".activity_logs_chunks ( created_at );

