-- Revert: schemas/agent_db_app_public/tables/event_notes/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".event_notes FROM authenticated;


