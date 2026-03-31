-- Revert: schemas/agentic_db_app_public/tables/contact_emails/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".contact_emails FROM authenticated;


