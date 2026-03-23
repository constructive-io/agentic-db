-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/id/alterations/alt0000003151
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx



ALTER TABLE agentic_db_app_public.tool_definitions 
    ALTER COLUMN id SET DEFAULT uuidv7();

