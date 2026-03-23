-- Revert: schemas/agentic_db_app_public/tables/itinerary_items_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.itinerary_items_chunks 
  DISABLE ROW LEVEL SECURITY;


