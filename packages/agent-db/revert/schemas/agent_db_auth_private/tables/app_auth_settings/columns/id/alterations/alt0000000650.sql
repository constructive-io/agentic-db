-- Revert: schemas/agent_db_auth_private/tables/app_auth_settings/columns/id/alterations/alt0000000650


ALTER TABLE agent_db_auth_private.app_auth_settings 
  ALTER COLUMN id DROP NOT NULL;


