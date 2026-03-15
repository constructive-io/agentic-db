-- Deploy: schemas/agent_db_app_public/tables/projects/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/updated_at/alterations/alt0000004486


ALTER TABLE "agent_db_app_public".projects 
  ADD COLUMN name text;

