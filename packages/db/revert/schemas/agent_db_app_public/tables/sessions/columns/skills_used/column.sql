-- Revert: schemas/agent_db_app_public/tables/sessions/columns/skills_used/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN skills_used RESTRICT;


