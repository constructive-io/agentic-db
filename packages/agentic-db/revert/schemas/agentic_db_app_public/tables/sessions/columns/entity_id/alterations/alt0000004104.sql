-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/entity_id/alterations/alt0000004104


ALTER TABLE agentic_db_app_public.sessions 
  ALTER COLUMN entity_id DROP NOT NULL;


