-- Revert: schemas/agentic_db_app_public/tables/raw_contact_emails/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".raw_contact_emails FROM authenticated;


