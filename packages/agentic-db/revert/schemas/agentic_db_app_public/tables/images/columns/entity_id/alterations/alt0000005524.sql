-- Revert: schemas/agentic_db_app_public/tables/images/columns/entity_id/alterations/alt0000005524


ALTER TABLE agentic_db_app_public.images 
  ALTER COLUMN entity_id DROP NOT NULL;


