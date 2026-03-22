-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/id/column


ALTER TABLE agentic_db_app_public.conversations 
  DROP COLUMN id RESTRICT;


