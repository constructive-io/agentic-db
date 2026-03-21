-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/archive_index/alterations/alt0000004239


ALTER TABLE agentic_db_app_public.session_archives 
  ALTER COLUMN archive_index DROP NOT NULL;


