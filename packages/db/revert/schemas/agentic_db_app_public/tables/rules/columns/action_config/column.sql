-- Revert: schemas/agentic_db_app_public/tables/rules/columns/action_config/column


ALTER TABLE "agentic_db_app_public".rules 
  DROP COLUMN action_config RESTRICT;


