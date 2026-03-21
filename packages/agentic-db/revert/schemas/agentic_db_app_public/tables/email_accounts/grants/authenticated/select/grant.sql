-- Revert: schemas/agentic_db_app_public/tables/email_accounts/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".email_accounts FROM authenticated;


