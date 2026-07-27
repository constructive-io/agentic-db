-- Revert: schemas/agentic_db_app_public/tables/images/columns/id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.images 
  ALTER COLUMN id DROP NOT NULL;


