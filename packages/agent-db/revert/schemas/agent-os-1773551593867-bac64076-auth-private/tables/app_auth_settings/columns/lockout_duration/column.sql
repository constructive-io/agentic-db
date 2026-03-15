-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/lockout_duration/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  DROP COLUMN lockout_duration RESTRICT;


