-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/autonomy_record_id/alterations/alt0000002109
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/autonomy_record_id/column


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  ALTER COLUMN autonomy_record_id SET NOT NULL;

