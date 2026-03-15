-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/context_summary/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/status/alterations/alt0000004364


ALTER TABLE "agent_db_app_public".sessions 
  ADD COLUMN context_summary text;

