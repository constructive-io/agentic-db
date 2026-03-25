-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".emails_chunks 
  ADD COLUMN chunk_index integer;

