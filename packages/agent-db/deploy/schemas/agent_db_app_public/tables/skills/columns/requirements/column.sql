-- Deploy: schemas/agent_db_app_public/tables/skills/columns/requirements/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/interface/column


ALTER TABLE "agent_db_app_public".skills 
  ADD COLUMN requirements jsonb;

