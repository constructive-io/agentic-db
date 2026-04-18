-- Revert: schemas/agentic_db_app_public/tables/images/columns/created_at/alterations/alt0000000657


ALTER TABLE agentic_db_app_public.images 
  ALTER COLUMN created_at DROP NOT NULL;


