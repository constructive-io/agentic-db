-- Revert: schemas/agent_db_app_public/tables/habits/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.habits FROM authenticated;


