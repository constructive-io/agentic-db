-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/skills_used/column


ALTER TABLE "agentic_db_app_public".sessions 
  DROP COLUMN skills_used RESTRICT;


