-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/conversation_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/trigger_conditions/column


ALTER TABLE agent_db_app_public.blueprints 
  ADD COLUMN conversation_id uuid;

