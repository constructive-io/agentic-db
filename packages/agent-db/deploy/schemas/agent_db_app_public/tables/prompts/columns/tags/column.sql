-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/is_active/alterations/alt0000004277


ALTER TABLE "agent_db_app_public".prompts 
  ADD COLUMN tags citext[];

