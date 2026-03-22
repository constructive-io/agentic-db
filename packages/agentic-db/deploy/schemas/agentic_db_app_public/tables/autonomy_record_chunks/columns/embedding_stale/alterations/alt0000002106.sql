-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/embedding_stale/alterations/alt0000002106
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  ALTER COLUMN embedding_stale SET NOT NULL;

