-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/metadata/column


ALTER TABLE agentic_db_app_public.conversations_chunks 
  DROP COLUMN metadata RESTRICT;


