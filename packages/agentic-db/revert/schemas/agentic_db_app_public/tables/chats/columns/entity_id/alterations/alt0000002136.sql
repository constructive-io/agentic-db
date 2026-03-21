-- Revert: schemas/agentic_db_app_public/tables/chats/columns/entity_id/alterations/alt0000002136


ALTER TABLE "agentic_db_app_public".chats 
  ALTER COLUMN entity_id DROP NOT NULL;


