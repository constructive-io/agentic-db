-- Revert: schemas/agent_db_app_public/tables/contacts/columns/search_tsv/column


ALTER TABLE "agent_db_app_public".contacts 
  DROP COLUMN search_tsv RESTRICT;


