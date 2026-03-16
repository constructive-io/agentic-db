-- Revert: schemas/agent_db_app_public/tables/files/columns/created_at/column


ALTER TABLE "agent_db_app_public".files 
  DROP COLUMN created_at RESTRICT;


