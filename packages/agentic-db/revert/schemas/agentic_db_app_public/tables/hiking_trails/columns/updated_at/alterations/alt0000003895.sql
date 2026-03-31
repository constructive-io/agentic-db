-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/updated_at/alterations/alt0000003895


ALTER TABLE agentic_db_app_public.hiking_trails 
  ALTER COLUMN updated_at DROP NOT NULL;


