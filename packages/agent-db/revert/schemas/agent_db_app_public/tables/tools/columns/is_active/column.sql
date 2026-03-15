-- Revert: schemas/agent_db_app_public/tables/tools/columns/is_active/column


ALTER TABLE "agent_db_app_public".tools 
  DROP COLUMN is_active RESTRICT;


