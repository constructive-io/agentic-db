-- Revert: schemas/agent_db_app_public/tables/venue_images/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.venue_images FROM authenticated;


