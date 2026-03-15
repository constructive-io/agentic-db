-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE agent_db_app_public.blueprints 
  ADD COLUMN entity_id uuid;

