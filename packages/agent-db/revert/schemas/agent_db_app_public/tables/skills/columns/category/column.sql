-- Revert: schemas/agent_db_app_public/tables/skills/columns/category/column


ALTER TABLE "agent_db_app_public".skills 
  DROP COLUMN category RESTRICT;


