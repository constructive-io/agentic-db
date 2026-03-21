-- Revert: schemas/agentic_db_app_public/tables/chats/constraints/chats_pkey/constraint


ALTER TABLE "agentic_db_app_public".chats 
  DROP CONSTRAINT chats_pkey;


