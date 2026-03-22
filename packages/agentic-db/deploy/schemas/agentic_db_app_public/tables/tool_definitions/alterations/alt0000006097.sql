-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/alterations/alt0000006097
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/tool_results/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  DISABLE ROW LEVEL SECURITY;

