-- Revert: schemas/agent_db_app_public/tables/venues/columns/search_tsv/column


ALTER TABLE "agent_db_app_public".venues 
  DROP COLUMN search_tsv RESTRICT;


