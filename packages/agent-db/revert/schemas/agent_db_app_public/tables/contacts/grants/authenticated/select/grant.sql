-- Revert: schemas/agent_db_app_public/tables/contacts/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.contacts FROM authenticated;


