-- Deploy: schemas/agent_db_app_public/tables/companies/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/main_image_id/column


ALTER TABLE agent_db_app_public.companies 
  ENABLE ROW LEVEL SECURITY;

