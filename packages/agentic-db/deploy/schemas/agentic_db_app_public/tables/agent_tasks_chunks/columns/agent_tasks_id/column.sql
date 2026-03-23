-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/agent_tasks_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".agent_tasks_chunks 
  ADD COLUMN agent_tasks_id uuid;

