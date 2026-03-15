-- Revert: schemas/agent_db_app_public/tables/contact_emails/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".contact_emails FROM authenticated;


