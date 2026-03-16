-- Revert: schemas/agent_db_app_public/tables/tags/columns/usage_count/column


ALTER TABLE "agent_db_app_public".tags 
  DROP COLUMN usage_count RESTRICT;


