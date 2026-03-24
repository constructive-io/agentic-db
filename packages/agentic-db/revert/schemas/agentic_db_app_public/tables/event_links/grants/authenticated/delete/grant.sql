-- Revert: schemas/agentic_db_app_public/tables/event_links/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".event_links FROM authenticated;


