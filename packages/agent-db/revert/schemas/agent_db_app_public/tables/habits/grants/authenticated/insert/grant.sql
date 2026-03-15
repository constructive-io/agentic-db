-- Revert: schemas/agent_db_app_public/tables/habits/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.habits FROM authenticated;


