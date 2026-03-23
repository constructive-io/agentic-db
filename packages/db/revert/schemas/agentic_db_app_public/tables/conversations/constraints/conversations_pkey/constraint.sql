-- Revert: schemas/agentic_db_app_public/tables/conversations/constraints/conversations_pkey/constraint


ALTER TABLE "agentic_db_app_public".conversations 
  DROP CONSTRAINT conversations_pkey;


