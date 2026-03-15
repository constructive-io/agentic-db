-- Revert: schemas/agent_db_app_public/tables/tasks/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.tasks FROM authenticated;


