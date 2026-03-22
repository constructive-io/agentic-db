-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/budget/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/status/alterations/alt0000006212


ALTER TABLE agentic_db_app_public.trips 
  ADD COLUMN budget numeric;

