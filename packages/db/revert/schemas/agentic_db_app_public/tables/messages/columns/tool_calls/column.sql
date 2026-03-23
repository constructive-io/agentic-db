-- Revert: schemas/agentic_db_app_public/tables/messages/columns/tool_calls/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN tool_calls RESTRICT;


