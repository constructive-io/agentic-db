-- Deploy: schemas/agent_db_app_public/tables/rules/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/tags/column


ALTER TABLE "agent_db_app_public".rules 
  ADD COLUMN embedding_text text;

