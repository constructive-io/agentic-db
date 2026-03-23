-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/alterations/alt0000001377
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".runtime_config 
  DISABLE ROW LEVEL SECURITY;

