-- Revert: schemas/agentic_db_app_public/tables/goal_habits/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".goal_habits FROM authenticated;


