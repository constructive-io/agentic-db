-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/entity_id/alterations/alt0000005310


ALTER TABLE agentic_db_app_public.venues_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


