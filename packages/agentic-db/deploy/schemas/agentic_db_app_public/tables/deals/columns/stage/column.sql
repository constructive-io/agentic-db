-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/stage/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table


ALTER TABLE "agentic_db_app_public".deals 
  ADD COLUMN stage text;

