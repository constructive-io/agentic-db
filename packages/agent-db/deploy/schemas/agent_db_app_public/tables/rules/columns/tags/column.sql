-- Deploy: schemas/agent_db_app_public/tables/rules/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/is_active/alterations/alt0000002734


ALTER TABLE "agent_db_app_public".rules 
  ADD COLUMN tags citext[];

