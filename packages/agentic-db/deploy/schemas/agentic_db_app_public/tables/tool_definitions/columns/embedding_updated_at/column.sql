-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/embedding_updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table


ALTER TABLE agentic_db_app_public.tool_definitions 
  ADD COLUMN embedding_updated_at timestamptz;

