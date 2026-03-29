-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/type/alterations/alt0000003475


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN type DROP NOT NULL;


