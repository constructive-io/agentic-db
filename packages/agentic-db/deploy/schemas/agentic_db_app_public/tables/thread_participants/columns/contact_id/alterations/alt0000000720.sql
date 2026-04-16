-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/columns/contact_id/alterations/alt0000000720
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_tools/indexes/skill_tools_tool_definition_id_idx


ALTER TABLE agentic_db_app_public.thread_participants 
  ALTER COLUMN contact_id SET NOT NULL;

