-- Deploy: schemas/agent_db_app_public/tables/attachments/columns/size_bytes/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/mime_type/column


ALTER TABLE agent_db_app_public.attachments 
  ADD COLUMN size_bytes int;

