-- Revert: schemas/agent_db_app_public/tables/sessions/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.sessions FROM authenticated;


