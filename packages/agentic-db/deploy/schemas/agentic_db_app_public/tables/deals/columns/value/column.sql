-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/value/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/stage/alterations/alt0000003715


ALTER TABLE agentic_db_app_public.deals 
  ADD COLUMN value numeric;

