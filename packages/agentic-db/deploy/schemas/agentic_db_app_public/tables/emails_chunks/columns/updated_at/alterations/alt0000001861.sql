-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/columns/updated_at/alterations/alt0000001861
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

