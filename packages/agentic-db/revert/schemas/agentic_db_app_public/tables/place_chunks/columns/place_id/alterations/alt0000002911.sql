-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/place_id/alterations/alt0000002911


ALTER TABLE agentic_db_app_public.place_chunks 
  ALTER COLUMN place_id DROP NOT NULL;


