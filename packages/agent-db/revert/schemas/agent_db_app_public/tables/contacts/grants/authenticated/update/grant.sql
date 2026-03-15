-- Revert: schemas/agent_db_app_public/tables/contacts/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.contacts FROM authenticated;


