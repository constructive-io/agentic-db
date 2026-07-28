-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/subject/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN subject RESTRICT;


