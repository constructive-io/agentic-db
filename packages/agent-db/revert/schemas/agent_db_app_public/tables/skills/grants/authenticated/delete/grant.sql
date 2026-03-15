-- Revert: schemas/agent_db_app_public/tables/skills/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.skills FROM authenticated;


