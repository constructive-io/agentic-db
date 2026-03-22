-- Deploy: schemas/agentic_db_app_public/tables/skills/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/rules/triggers/rules_embedding_stale_update_tg


ALTER TABLE agentic_db_app_public.skills 
  ENABLE ROW LEVEL SECURITY;

