-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/columns/id/column


ALTER TABLE agent_db_app_public.calendar_accounts 
  DROP COLUMN id RESTRICT;


