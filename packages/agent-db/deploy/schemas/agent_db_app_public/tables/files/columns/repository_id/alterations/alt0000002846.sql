-- Deploy: schemas/agent_db_app_public/tables/files/columns/repository_id/alterations/alt0000002846
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/files/columns/repository_id/column


ALTER TABLE "agent_db_app_public".files 
  ALTER COLUMN repository_id SET NOT NULL;

