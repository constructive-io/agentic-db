-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/entity_id/alterations/alt0000001428


ALTER TABLE "agentic_db_app_public".conversations 
  ALTER COLUMN entity_id DROP NOT NULL;


