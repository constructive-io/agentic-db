-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".conversations 
  DROP COLUMN entity_id RESTRICT;


