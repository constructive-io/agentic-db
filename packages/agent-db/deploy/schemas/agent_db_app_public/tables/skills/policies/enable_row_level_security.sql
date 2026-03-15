-- Deploy: schemas/agent_db_app_public/tables/skills/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/embedding/column


ALTER TABLE agent_db_app_public.skills 
  ENABLE ROW LEVEL SECURITY;

