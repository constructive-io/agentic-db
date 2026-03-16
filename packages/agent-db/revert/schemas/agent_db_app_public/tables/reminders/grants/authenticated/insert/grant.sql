-- Revert: schemas/agent_db_app_public/tables/reminders/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".reminders FROM authenticated;


