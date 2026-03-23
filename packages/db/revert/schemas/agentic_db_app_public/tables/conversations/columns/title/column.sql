-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/title/column


ALTER TABLE "agentic_db_app_public".conversations 
  DROP COLUMN title RESTRICT;


