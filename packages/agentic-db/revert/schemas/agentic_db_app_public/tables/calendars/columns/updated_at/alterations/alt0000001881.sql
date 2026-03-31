-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/updated_at/alterations/alt0000001881


ALTER TABLE "agentic_db_app_public".calendars 
  ALTER COLUMN updated_at DROP NOT NULL;


