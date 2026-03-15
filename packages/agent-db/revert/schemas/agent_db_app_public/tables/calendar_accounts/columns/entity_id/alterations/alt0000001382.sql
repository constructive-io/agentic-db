-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/columns/entity_id/alterations/alt0000001382


ALTER TABLE agent_db_app_public.calendar_accounts 
  ALTER COLUMN entity_id DROP NOT NULL;


