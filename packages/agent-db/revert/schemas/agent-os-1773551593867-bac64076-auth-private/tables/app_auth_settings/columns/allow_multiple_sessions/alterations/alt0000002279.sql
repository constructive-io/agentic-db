-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/allow_multiple_sessions/alterations/alt0000002279


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  ALTER COLUMN allow_multiple_sessions DROP NOT NULL;


