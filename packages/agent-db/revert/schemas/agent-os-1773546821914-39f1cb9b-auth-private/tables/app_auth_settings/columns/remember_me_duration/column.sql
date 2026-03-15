-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/remember_me_duration/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
  DROP COLUMN remember_me_duration RESTRICT;


