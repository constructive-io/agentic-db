-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/updated_at/alterations/alt0000001854


ALTER TABLE "agentic_db_app_public".calendars 
  ALTER COLUMN updated_at DROP NOT NULL;


