-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/entity_id/alterations/alt0000001185


ALTER TABLE agent_db_app_public.blueprints 
  ALTER COLUMN entity_id DROP NOT NULL;


