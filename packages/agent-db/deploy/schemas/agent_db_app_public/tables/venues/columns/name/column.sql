-- Deploy: schemas/agent_db_app_public/tables/venues/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/updated_at/alterations/alt0000004073


ALTER TABLE "agent_db_app_public".venues 
  ADD COLUMN name text;

