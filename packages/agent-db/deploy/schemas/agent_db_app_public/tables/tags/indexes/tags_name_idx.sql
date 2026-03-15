-- Deploy: schemas/agent_db_app_public/tables/tags/indexes/tags_name_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/name/column
-- requires: schemas/agent_db_app_public/tables/contacts/indexes/contacts_github_username_idx


CREATE INDEX tags_name_idx ON agent_db_app_public.tags USING BTREE ( name );

