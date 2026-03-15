-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/url/alterations/alt0000000946
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/url/column
-- requires: schemas/agent_db_app_public/tables/attachments/columns/updated_at/alterations/alt0000000945


ALTER TABLE agent_db_app_public.attachments 
  ALTER COLUMN url SET NOT NULL;

