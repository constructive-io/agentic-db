-- Revert: schemas/agentic_db_app_public/tables/places/columns/description/column


ALTER TABLE agentic_db_app_public.places 
  DROP COLUMN description RESTRICT;


