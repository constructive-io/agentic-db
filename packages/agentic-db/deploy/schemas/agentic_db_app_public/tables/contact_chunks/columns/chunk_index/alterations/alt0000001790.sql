-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/columns/chunk_index/alterations/alt0000001790
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/updated_at/alterations/alt0000001789


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

