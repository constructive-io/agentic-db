-- Revert: schemas/agentic_db_app_public/tables/venue_links/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".venue_links FROM authenticated;


