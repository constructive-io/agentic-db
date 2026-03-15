-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/default_session_duration/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
  DROP COLUMN default_session_duration RESTRICT;


