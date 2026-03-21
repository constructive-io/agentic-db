-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/columns/entity_id/alterations/alt0000004446


ALTER TABLE agentic_db_app_public.calendar_accounts 
  ALTER COLUMN entity_id DROP NOT NULL;


