-- Deploy: schemas/agent_db_app_public/tables/rules/columns/kind/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/content/column


ALTER TABLE "agent_db_app_public".rules 
  ADD COLUMN kind text;

