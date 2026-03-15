-- Deploy: schemas/agent_db_app_public/tables/notifications/alterations/alt0000001534
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column


ALTER TABLE agent_db_app_public.notifications 
  DISABLE ROW LEVEL SECURITY;

