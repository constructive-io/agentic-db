-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000000679


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
  ALTER COLUMN min_password_length DROP NOT NULL;


