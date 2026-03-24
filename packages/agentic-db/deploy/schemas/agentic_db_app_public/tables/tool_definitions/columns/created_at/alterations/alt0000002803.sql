-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/created_at/alterations/alt0000002803
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/created_at/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  ALTER COLUMN created_at SET NOT NULL;

