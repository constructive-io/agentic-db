-- Revert: schemas/agent_db_app_public/tables/reminders/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".reminders FROM authenticated;


