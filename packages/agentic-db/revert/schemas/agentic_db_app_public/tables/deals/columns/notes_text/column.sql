-- Revert: schemas/agentic_db_app_public/tables/deals/columns/notes_text/column


ALTER TABLE agentic_db_app_public.deals 
  DROP COLUMN notes_text RESTRICT;


