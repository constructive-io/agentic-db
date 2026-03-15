-- Deploy: schemas/agent_db_app_public/tables/attachments/indexes/attachments_attachable_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/attachments/table
-- requires: schemas/agent_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agent_db_app_public/tables/attachments/columns/attachable_type/column


CREATE INDEX attachments_attachable_type_idx ON agent_db_app_public.attachments USING BTREE ( attachable_type );

