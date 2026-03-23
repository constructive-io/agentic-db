-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/columns/count/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table


ALTER TABLE agentic_db_status_public.app_achievements 
  ADD COLUMN count int;

