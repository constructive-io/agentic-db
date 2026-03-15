-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/default_session_duration/alterations/alt0000000655


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
  ALTER COLUMN default_session_duration DROP NOT NULL;


