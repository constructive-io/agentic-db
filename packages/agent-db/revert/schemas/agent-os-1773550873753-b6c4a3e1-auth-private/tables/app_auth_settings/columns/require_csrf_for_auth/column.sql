-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/require_csrf_for_auth/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
  DROP COLUMN require_csrf_for_auth RESTRICT;


