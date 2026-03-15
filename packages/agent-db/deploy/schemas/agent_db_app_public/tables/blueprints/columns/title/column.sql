-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/updated_at/alterations/alt0000001066


ALTER TABLE agent_db_app_public.blueprints 
  ADD COLUMN title text;

