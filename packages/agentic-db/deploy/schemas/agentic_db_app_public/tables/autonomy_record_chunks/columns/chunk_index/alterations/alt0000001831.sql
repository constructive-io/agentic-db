-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/chunk_index/alterations/alt0000001831
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/updated_at/alterations/alt0000001830


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

