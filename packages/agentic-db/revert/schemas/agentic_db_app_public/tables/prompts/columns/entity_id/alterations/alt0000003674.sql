-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/entity_id/alterations/alt0000003674


ALTER TABLE agentic_db_app_public.prompts 
  ALTER COLUMN entity_id DROP NOT NULL;


