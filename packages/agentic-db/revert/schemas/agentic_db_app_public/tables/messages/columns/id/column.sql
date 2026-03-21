-- Revert: schemas/agentic_db_app_public/tables/messages/columns/id/column


ALTER TABLE agentic_db_app_public.messages 
  DROP COLUMN id RESTRICT;


