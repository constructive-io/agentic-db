-- Revert: schemas/agent_db_app_public/tables/venue_images/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".venue_images FROM authenticated;


