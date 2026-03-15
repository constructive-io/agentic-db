-- Revert: schemas/agent_db_app_public/tables/tools/columns/output_schema/column


ALTER TABLE "agent_db_app_public".tools 
  DROP COLUMN output_schema RESTRICT;


