-- Deploy: schemas/agent_db_app_public/tables/tools/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/name/alterations/alt0000004392


ALTER TABLE "agent_db_app_public".tools 
  ADD COLUMN description text;

