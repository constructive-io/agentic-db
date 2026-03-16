-- Revert: schemas/agentic_db_app_public/tables/user_settings/columns/key/alterations/alt0000001417


ALTER TABLE "agentic_db_app_public".user_settings 
  ALTER COLUMN key DROP NOT NULL;


