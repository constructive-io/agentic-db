-- Revert: schemas/agentic_db_app_public/tables/email_recipients/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".email_recipients FROM authenticated;


