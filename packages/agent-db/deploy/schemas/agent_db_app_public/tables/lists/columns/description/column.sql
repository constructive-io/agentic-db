-- Deploy: schemas/agent_db_app_public/tables/lists/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/name/alterations/alt0000004741


ALTER TABLE "agent_db_app_public".lists 
  ADD COLUMN description text;

