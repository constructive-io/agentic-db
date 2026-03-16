-- Deploy: schemas/agent_db_app_public/tables/skills/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/category/column


ALTER TABLE "agent_db_app_public".skills 
  ADD COLUMN is_active bool;

