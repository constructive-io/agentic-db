-- Revert: schemas/agent_db_app_public/tables/tags/columns/color/column


ALTER TABLE "agent_db_app_public".tags 
  DROP COLUMN color RESTRICT;


