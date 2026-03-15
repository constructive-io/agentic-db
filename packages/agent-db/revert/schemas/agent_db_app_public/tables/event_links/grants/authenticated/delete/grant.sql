-- Revert: schemas/agent_db_app_public/tables/event_links/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".event_links FROM authenticated;


