-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/message_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".tool_executions 
  ADD COLUMN message_id uuid;

