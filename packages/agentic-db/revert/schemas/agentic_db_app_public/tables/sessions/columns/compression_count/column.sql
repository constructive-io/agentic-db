-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/compression_count/column


ALTER TABLE agentic_db_app_public.sessions 
  DROP COLUMN compression_count RESTRICT;


