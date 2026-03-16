-- Revert: schemas/agentic_db_app_public/tables/user_settings/columns/entity_id/alterations/alt0000001412


ALTER TABLE "agentic_db_app_public".user_settings 
  ALTER COLUMN entity_id DROP NOT NULL;


