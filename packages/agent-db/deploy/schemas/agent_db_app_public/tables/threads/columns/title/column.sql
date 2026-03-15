-- Deploy: schemas/agent_db_app_public/tables/threads/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/updated_at/alterations/alt0000001179


ALTER TABLE agent_db_app_public.threads 
  ADD COLUMN title text;

