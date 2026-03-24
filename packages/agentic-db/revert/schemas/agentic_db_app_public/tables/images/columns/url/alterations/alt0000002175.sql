-- Revert: schemas/agentic_db_app_public/tables/images/columns/url/alterations/alt0000002175


ALTER TABLE agentic_db_app_public.images 
  ALTER COLUMN url DROP NOT NULL;


