-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/notes/column


ALTER TABLE agentic_db_app_public.hiking_trails 
  DROP COLUMN notes RESTRICT;


