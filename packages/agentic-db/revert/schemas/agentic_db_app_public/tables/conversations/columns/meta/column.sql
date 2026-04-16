-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/meta/column


ALTER TABLE agentic_db_app_public.conversations 
  DROP COLUMN meta RESTRICT;


