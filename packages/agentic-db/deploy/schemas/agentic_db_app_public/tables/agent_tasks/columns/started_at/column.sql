-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE agentic_db_app_public.agent_tasks 
  ADD COLUMN started_at timestamptz;

