-- Revert: schemas/agentic_db_app_public/tables/messages/columns/subject/column


ALTER TABLE agentic_db_app_public.messages 
  DROP COLUMN subject RESTRICT;


