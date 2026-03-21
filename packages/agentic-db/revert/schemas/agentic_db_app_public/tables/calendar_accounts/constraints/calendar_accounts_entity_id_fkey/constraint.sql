-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/constraints/calendar_accounts_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.calendar_accounts 
  DROP CONSTRAINT calendar_accounts_entity_id_fkey;


