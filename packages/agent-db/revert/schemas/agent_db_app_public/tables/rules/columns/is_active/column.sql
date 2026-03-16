-- Revert: schemas/agent_db_app_public/tables/rules/columns/is_active/column


ALTER TABLE "agent_db_app_public".rules 
  DROP COLUMN is_active RESTRICT;


