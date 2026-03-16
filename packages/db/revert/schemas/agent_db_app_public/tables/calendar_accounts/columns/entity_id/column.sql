-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/columns/entity_id/column


ALTER TABLE "agent_db_app_public".calendar_accounts 
  DROP COLUMN entity_id RESTRICT;


