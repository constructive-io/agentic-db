-- Revert: schemas/agent_db_app_public/tables/task_notes/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".task_notes FROM authenticated;


