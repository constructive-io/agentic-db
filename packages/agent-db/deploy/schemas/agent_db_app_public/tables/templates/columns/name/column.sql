-- Deploy: schemas/agent_db_app_public/tables/templates/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/updated_at/alterations/alt0000004728


ALTER TABLE "agent_db_app_public".templates 
  ADD COLUMN name text;

