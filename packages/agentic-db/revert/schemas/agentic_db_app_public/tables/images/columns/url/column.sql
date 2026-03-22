-- Revert: schemas/agentic_db_app_public/tables/images/columns/url/column


ALTER TABLE agentic_db_app_public.images 
  DROP COLUMN url RESTRICT;


