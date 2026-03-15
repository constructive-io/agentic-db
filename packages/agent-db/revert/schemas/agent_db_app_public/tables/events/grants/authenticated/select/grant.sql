-- Revert: schemas/agent_db_app_public/tables/events/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.events FROM authenticated;


