-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/mime_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/filename/column


ALTER TABLE agent_db_app_public.attachments 
  ADD COLUMN mime_type text;

