-- Revert: schemas/agent_db_app_public/tables/event_notes/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".event_notes FROM authenticated;


