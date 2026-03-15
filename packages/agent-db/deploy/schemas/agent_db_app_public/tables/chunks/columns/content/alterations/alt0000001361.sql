-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/content/alterations/alt0000001361
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/content/column
-- requires: schemas/agent_db_app_public/tables/chunks/columns/repository_id/column


ALTER TABLE agent_db_app_public.chunks 
  ALTER COLUMN content SET NOT NULL;

