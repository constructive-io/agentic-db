-- Revert: schemas/agentic_db_app_public/tables/messages/columns/role/column


ALTER TABLE agentic_db_app_public.messages 
  DROP COLUMN role RESTRICT;


