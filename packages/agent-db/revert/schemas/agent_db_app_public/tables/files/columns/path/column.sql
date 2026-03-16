-- Revert: schemas/agent_db_app_public/tables/files/columns/path/column


ALTER TABLE "agent_db_app_public".files 
  DROP COLUMN path RESTRICT;


