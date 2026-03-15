-- Revert: schemas/agent_db_app_public/tables/messages/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.messages FROM authenticated;


