-- Revert: schemas/agentic_db_app_public/tables/notes/columns/entity_id/alterations/alt0000002313


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN entity_id DROP NOT NULL;


