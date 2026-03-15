-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/updated_at/alterations/alt0000004512


ALTER TABLE "agent_db_app_public".repositories 
  ADD COLUMN name text;

