-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/stage/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/name/alterations/alt0000005568


ALTER TABLE agentic_db_app_public.deals 
  ADD COLUMN stage text;

