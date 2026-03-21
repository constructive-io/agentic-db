-- Deploy: schemas/agentic_db_app_public/tables/chats/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agentic_db_app_public".chats 
  ENABLE ROW LEVEL SECURITY;

