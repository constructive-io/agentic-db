-- Deploy: schemas/agent_db_app_public/tables/ideas/columns/status/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/source/column


ALTER TABLE "agent_db_app_public".ideas 
  ADD COLUMN status text;

