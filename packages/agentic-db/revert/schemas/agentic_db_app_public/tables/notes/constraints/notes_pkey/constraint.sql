-- Revert: schemas/agentic_db_app_public/tables/notes/constraints/notes_pkey/constraint


ALTER TABLE agentic_db_app_public.notes 
  DROP CONSTRAINT notes_pkey;


