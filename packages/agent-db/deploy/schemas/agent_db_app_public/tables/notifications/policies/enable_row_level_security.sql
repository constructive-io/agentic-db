-- Deploy: schemas/agent_db_app_public/tables/notifications/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column


ALTER TABLE agent_db_app_public.notifications 
  ENABLE ROW LEVEL SECURITY;

