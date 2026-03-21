-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/updated_at/alterations/alt0000001727


ALTER TABLE "agentic_db_app_public".deals 
  ADD COLUMN name text;

