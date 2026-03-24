-- Revert: schemas/agentic_db_app_public/tables/places/columns/id/column


ALTER TABLE agentic_db_app_public.places 
  DROP COLUMN id RESTRICT;


