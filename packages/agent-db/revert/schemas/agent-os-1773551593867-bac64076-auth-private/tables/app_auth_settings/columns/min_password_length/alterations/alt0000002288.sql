-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000002288


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  ALTER COLUMN min_password_length DROP NOT NULL;


