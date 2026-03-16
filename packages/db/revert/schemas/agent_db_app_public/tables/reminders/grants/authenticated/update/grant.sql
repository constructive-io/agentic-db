-- Revert: schemas/agent_db_app_public/tables/reminders/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".reminders FROM authenticated;


