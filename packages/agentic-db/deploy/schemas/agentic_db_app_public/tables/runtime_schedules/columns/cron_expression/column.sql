-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/cron_expression/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/name/alterations/alt0000006026


ALTER TABLE agentic_db_app_public.runtime_schedules 
  ADD COLUMN cron_expression text;

