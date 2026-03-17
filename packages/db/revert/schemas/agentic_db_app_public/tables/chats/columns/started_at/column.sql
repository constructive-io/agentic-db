-- Revert: schemas/agentic_db_app_public/tables/chats/columns/started_at/column


ALTER TABLE "agentic_db_app_public".chats 
  DROP COLUMN started_at RESTRICT;


