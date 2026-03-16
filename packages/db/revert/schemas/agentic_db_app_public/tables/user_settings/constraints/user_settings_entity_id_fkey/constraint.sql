-- Revert: schemas/agentic_db_app_public/tables/user_settings/constraints/user_settings_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".user_settings 
  DROP CONSTRAINT user_settings_entity_id_fkey;


