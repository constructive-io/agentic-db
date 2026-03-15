-- Revert: schemas/agent_db_app_public/tables/reminders/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".reminders FROM authenticated;


