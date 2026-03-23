-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/alterations/alt0000001358
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  DISABLE ROW LEVEL SECURITY;

