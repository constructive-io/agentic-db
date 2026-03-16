-- Revert: schemas/agent_db_app_public/tables/notes/columns/active_count/column


ALTER TABLE "agent_db_app_public".notes 
  DROP COLUMN active_count RESTRICT;


