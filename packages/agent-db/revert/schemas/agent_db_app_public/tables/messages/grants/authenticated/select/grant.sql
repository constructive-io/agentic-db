-- Revert: schemas/agent_db_app_public/tables/messages/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.messages FROM authenticated;


