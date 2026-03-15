-- Revert: schemas/agent_db_app_public/tables/habits/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.habits FROM authenticated;


