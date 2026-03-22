-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/status/column


ALTER TABLE "agentic_db_app_public".conversations 
  DROP COLUMN status RESTRICT;


