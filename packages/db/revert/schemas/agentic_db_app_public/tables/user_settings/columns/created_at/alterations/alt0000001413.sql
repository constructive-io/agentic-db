-- Revert: schemas/agentic_db_app_public/tables/user_settings/columns/created_at/alterations/alt0000001413


ALTER TABLE "agentic_db_app_public".user_settings 
  ALTER COLUMN created_at DROP NOT NULL;


