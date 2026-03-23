-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.itinerary_items FROM authenticated;


