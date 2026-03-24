-- Revert: schemas/agentic_db_app_public/tables/itinerary_items/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.itinerary_items 
  DISABLE ROW LEVEL SECURITY;


