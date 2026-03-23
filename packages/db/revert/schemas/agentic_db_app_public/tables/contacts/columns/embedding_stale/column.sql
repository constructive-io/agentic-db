-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN embedding_stale RESTRICT;


