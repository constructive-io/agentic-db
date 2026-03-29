-- Revert: schemas/agentic_db_app_public/tables/notes/columns/id/alterations/alt0000005145


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN id DROP NOT NULL;


