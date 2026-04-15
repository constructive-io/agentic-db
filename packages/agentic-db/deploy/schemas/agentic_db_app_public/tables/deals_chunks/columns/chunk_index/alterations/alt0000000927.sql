-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/columns/chunk_index/alterations/alt0000000927
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".deals_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

