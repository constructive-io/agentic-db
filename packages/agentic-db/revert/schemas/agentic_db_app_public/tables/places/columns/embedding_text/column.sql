-- Revert: schemas/agentic_db_app_public/tables/places/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.places 
  DROP COLUMN embedding_text RESTRICT;


