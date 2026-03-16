-- Revert: schemas/agent_db_app_public/tables/email_accounts/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".email_accounts FROM authenticated;


