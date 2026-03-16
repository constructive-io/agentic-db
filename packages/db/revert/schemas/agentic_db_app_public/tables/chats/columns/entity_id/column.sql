-- Revert: schemas/agentic_db_app_public/tables/chats/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".chats 
  DROP COLUMN entity_id RESTRICT;


