-- Revert: schemas/agent_db_app_public/tables/email_accounts/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".email_accounts FROM authenticated;


