-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.itinerary_items FROM authenticated;


