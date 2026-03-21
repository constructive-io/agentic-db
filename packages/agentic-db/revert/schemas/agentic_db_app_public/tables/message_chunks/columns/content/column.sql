-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.message_chunks 
  DROP COLUMN content RESTRICT;


