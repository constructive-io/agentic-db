-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/rules/indexes/rules_agent_id_idx


ALTER TABLE agentic_db_app_public.skills 
  ADD COLUMN agent_id uuid;

