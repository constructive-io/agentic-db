-- Revert: schemas/agent_db_app_public/tables/lists/columns/created_at/column


ALTER TABLE "agent_db_app_public".lists 
  DROP COLUMN created_at RESTRICT;


