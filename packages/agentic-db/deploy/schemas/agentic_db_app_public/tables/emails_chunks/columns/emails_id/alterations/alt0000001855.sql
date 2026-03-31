-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/columns/emails_id/alterations/alt0000001855
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/columns/emails_id/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  ALTER COLUMN emails_id SET NOT NULL;

