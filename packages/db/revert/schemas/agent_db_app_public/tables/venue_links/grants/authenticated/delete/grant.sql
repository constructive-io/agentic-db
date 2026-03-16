-- Revert: schemas/agent_db_app_public/tables/venue_links/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".venue_links FROM authenticated;


