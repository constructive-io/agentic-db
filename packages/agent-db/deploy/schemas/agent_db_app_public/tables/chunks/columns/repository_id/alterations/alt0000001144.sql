-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/repository_id/alterations/alt0000001144
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/repository_id/column
-- requires: schemas/agent_db_app_public/tables/chunks/constraints/chunks_file_id_fkey/constraint


ALTER TABLE agent_db_app_public.chunks 
  ALTER COLUMN repository_id SET NOT NULL;

