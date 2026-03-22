-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".habit_chunks FROM authenticated;


