-- Revert: schemas/agent_db_app_public/tables/skills/columns/file_path/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN file_path RESTRICT;


