-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/columns/chunk_index/alterations/alt0000001001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/updated_at/alterations/alt0000001000


ALTER TABLE "agentic_db_app_public".deal_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

