-- Revert: schemas/agentic_db_app_public/tables/runtime_config/constraints/runtime_configs_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".runtime_config 
  DROP CONSTRAINT runtime_configs_entity_id_fkey;


