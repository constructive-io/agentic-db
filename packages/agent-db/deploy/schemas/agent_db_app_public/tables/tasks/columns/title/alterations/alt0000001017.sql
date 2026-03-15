-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/title/alterations/alt0000001017
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/title/column
-- requires: schemas/agent_db_app_public/tables/tasks/columns/updated_at/alterations/alt0000001016


ALTER TABLE agent_db_app_public.tasks 
  ALTER COLUMN title SET NOT NULL;

