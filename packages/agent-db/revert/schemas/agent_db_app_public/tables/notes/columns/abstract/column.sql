-- Revert: schemas/agent_db_app_public/tables/notes/columns/abstract/column


ALTER TABLE "agent_db_app_public".notes 
  DROP COLUMN abstract RESTRICT;


