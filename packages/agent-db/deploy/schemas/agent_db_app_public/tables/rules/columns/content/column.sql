-- Deploy: schemas/agent_db_app_public/tables/rules/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/title/alterations/alt0000001903


ALTER TABLE "agent_db_app_public".rules 
  ADD COLUMN content text;

