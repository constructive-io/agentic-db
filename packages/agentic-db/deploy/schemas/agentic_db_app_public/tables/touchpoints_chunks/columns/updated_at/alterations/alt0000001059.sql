-- Deploy: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/updated_at/alterations/alt0000001059
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".touchpoints_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

