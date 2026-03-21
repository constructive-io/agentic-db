-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/conversation_id/column


ALTER TABLE agentic_db_app_public.blueprints 
  DROP COLUMN conversation_id RESTRICT;


