-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/created_at/column


ALTER TABLE "agentic_db_app_public".conversations 
  DROP COLUMN created_at RESTRICT;


