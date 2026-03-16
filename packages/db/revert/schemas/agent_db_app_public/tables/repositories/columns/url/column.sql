-- Revert: schemas/agent_db_app_public/tables/repositories/columns/url/column


ALTER TABLE "agent_db_app_public".repositories 
  DROP COLUMN url RESTRICT;


