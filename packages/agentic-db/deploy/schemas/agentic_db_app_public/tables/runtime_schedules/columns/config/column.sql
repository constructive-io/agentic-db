-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/config/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/is_active/alterations/alt0000001383


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  ADD COLUMN config jsonb;

