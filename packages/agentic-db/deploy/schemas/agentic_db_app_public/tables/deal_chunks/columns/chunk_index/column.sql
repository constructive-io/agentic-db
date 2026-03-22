-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/updated_at/alterations/alt0000005674


ALTER TABLE agentic_db_app_public.deal_chunks 
  ADD COLUMN chunk_index int;

