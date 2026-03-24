-- Revert: schemas/agentic_db_app_public/tables/task_projects/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".task_projects FROM authenticated;


