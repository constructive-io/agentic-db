-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/file_id/alterations/alt0000002847
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/file_id/column
-- requires: schemas/agent_db_app_public/tables/files/constraints/files_repository_id_fkey/constraint


ALTER TABLE "agent_db_app_public".chunks 
  ALTER COLUMN file_id SET NOT NULL;

