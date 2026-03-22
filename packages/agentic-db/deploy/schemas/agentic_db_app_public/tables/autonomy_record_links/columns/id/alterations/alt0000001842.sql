-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/id/alterations/alt0000001842
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/indexes/autonomy_record_chunks_autonomy_record_id_idx



ALTER TABLE "agentic_db_app_public".autonomy_record_links 
    ALTER COLUMN id SET DEFAULT uuidv7();

