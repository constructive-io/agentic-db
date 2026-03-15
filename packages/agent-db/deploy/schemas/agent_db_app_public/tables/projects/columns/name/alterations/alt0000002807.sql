-- Deploy: schemas/agent_db_app_public/tables/projects/columns/name/alterations/alt0000002807
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/name/column
-- requires: schemas/agent_db_app_public/tables/projects/columns/updated_at/alterations/alt0000002806


ALTER TABLE "agent_db_app_public".projects 
  ALTER COLUMN name SET NOT NULL;

