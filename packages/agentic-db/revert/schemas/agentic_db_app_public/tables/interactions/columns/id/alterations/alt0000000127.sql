-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/id/alterations/alt0000000127


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN id DROP NOT NULL;


