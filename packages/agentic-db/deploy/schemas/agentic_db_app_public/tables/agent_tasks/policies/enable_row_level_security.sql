-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ENABLE ROW LEVEL SECURITY;

