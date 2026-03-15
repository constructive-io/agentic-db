-- Revert: schemas/agent_db_app_public/tables/contact_emails/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.contact_emails FROM authenticated;


