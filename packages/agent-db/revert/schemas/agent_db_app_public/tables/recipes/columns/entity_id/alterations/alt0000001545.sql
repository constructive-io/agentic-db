-- Revert: schemas/agent_db_app_public/tables/recipes/columns/entity_id/alterations/alt0000001545


ALTER TABLE agent_db_app_public.recipes 
  ALTER COLUMN entity_id DROP NOT NULL;


