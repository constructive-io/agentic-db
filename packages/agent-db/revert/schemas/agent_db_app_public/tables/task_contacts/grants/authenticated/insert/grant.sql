-- Revert: schemas/agent_db_app_public/tables/task_contacts/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.task_contacts FROM authenticated;


