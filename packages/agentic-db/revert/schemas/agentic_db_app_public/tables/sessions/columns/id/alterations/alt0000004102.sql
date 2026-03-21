-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/id/alterations/alt0000004102


ALTER TABLE agentic_db_app_public.sessions 
  ALTER COLUMN id DROP NOT NULL;


