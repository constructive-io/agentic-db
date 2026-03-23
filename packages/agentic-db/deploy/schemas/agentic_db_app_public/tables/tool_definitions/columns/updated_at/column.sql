-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.tool_definitions 
  ADD COLUMN updated_at timestamptz;

