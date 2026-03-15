-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/embedding/column


ALTER TABLE agent_db_app_public.interactions 
  ADD COLUMN entity_id uuid;

