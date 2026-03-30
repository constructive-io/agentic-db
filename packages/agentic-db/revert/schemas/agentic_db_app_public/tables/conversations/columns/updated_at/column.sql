-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".conversations 
  DROP COLUMN updated_at RESTRICT;


