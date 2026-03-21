-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/blueprint_id/alterations/alt0000004353


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  ALTER COLUMN blueprint_id DROP NOT NULL;


