-- Revert: schemas/agentic_db_app_public/tables/task_notes/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".task_notes FROM authenticated;


