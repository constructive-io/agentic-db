-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/target_count/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/frequency/alterations/alt0000006292


ALTER TABLE agentic_db_app_public.habits 
  ADD COLUMN target_count int;

