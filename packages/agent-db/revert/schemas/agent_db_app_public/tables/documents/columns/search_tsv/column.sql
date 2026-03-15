-- Revert: schemas/agent_db_app_public/tables/documents/columns/search_tsv/column


ALTER TABLE "agent_db_app_public".documents 
  DROP COLUMN search_tsv RESTRICT;


