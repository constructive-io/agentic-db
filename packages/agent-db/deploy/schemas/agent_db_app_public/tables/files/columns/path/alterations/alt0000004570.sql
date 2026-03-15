-- Deploy: schemas/agent_db_app_public/tables/files/columns/path/alterations/alt0000004570
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/path/column
-- requires: schemas/agent_db_app_public/tables/files/columns/repository_id/column


ALTER TABLE "agent_db_app_public".files 
  ALTER COLUMN path SET NOT NULL;

