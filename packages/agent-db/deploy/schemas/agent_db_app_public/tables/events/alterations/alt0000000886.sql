-- Deploy: schemas/agent_db_app_public/tables/events/alterations/alt0000000886
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/embedding/column


ALTER TABLE agent_db_app_public.events 
  DISABLE ROW LEVEL SECURITY;

