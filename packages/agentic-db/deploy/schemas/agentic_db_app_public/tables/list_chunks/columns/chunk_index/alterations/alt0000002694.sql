-- Deploy: schemas/agentic_db_app_public/tables/list_chunks/columns/chunk_index/alterations/alt0000002694
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/list_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/updated_at/alterations/alt0000002693


ALTER TABLE "agentic_db_app_public".list_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

