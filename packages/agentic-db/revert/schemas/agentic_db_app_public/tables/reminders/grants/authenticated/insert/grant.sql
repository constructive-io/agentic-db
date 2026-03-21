-- Revert: schemas/agentic_db_app_public/tables/reminders/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".reminders FROM authenticated;


