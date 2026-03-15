-- Revert: schemas/agent_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000001548


ALTER TABLE agent_db_app_public.recipes 
  ALTER COLUMN updated_at DROP NOT NULL;


