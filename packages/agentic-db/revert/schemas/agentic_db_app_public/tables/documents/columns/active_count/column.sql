-- Revert: schemas/agentic_db_app_public/tables/documents/columns/active_count/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN active_count RESTRICT;


