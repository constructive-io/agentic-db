-- Deploy: schemas/agent_db_app_public/tables/attachments/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000000937


ALTER TABLE agent_db_app_public.attachments 
  ENABLE ROW LEVEL SECURITY;

