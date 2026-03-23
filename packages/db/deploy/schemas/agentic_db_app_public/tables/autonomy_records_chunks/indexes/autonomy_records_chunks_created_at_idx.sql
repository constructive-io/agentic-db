-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/indexes/autonomy_records_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/created_at/column


CREATE INDEX autonomy_records_chunks_created_at_idx ON "agentic_db_app_public".autonomy_records_chunks ( created_at );

