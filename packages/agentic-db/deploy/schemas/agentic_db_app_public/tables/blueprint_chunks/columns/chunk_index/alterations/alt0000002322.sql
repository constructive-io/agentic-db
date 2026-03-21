-- Deploy: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/chunk_index/alterations/alt0000002322
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/table
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/updated_at/alterations/alt0000002321


ALTER TABLE "agentic_db_app_public".blueprint_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

