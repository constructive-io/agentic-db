-- Deploy: schemas/agent_db_app_public/tables/threads/columns/title/alterations/alt0000001180
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/title/column
-- requires: schemas/agent_db_app_public/tables/threads/columns/updated_at/alterations/alt0000001179


ALTER TABLE agent_db_app_public.threads 
  ALTER COLUMN title SET NOT NULL;

