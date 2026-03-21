-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/entity_id/column


ALTER TABLE agentic_db_app_public.sessions 
  DROP COLUMN entity_id RESTRICT;


